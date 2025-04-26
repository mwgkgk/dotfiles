local M = {}

function M.status()
    -- Close existing window if it exists
    if M.win_id and vim.api.nvim_win_is_valid(M.win_id) then
        vim.api.nvim_win_close(M.win_id, true)
    end

    -- Get git info
    local git_status = vim.fn.systemlist('git status -s -u')
    local current_branch = vim.fn.systemlist('git rev-parse --abbrev-ref HEAD')[1]
    local current_branch = current_branch and current_branch or 'HEAD'  -- fallback if not in git repo
    local commit_log = vim.fn.systemlist('git log --oneline origin/' .. current_branch .. '..HEAD')

    -- Prepare content (filter out empty lines)
    local popup_text = {}
    for _, line in ipairs(git_status) do
        if line ~= '' then table.insert(popup_text, line) end
    end

    if #commit_log > 0 then
        if #popup_text > 0 then
            table.insert(popup_text, '')
        end
        for _, line in ipairs(commit_log) do
            if line ~= '' then table.insert(popup_text, line) end
        end
    end

    if #popup_text == 0 then
        popup_text = {'No changes on ' .. current_branch}
    end

    -- Calculate dimensions
    local width = 0
    for _, line in ipairs(popup_text) do
        width = math.max(width, #line)
    end
    width = math.min(width + 2, vim.o.columns - 5)  -- cap width to not exceed screen
    local height = #popup_text

    -- Create buffer and window
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, popup_text)

    local opts = {
        relative = 'cursor',
        width = width,
        height = height,
        col = 0,
        row = 1,
        anchor = 'NW',
        style = 'minimal',
        border = 'none',
        focusable = false,
        noautocmd = true,
    }

    M.win_id = vim.api.nvim_open_win(buf, false, opts)
    
    -- Set buffer options using new API
    vim.api.nvim_set_option_value('filetype', 'git', { buf = buf })
    vim.api.nvim_set_option_value('modifiable', false, { buf = buf })
    vim.api.nvim_set_option_value('bufhidden', 'wipe', { buf = buf })

    -- Set window options using new API
    vim.api.nvim_set_option_value('winhl', 'Normal:Pmenu', { win = M.win_id })

    -- Close on movement
    M.close_events = {
        'CursorMoved', 'CursorMovedI', 'BufLeave', 'InsertEnter',
        'WinScrolled', 'TabClosed', 'TabEnter', 'FocusLost'
    }
    
    M.close_au = vim.api.nvim_create_autocmd(M.close_events, {
        callback = function()
            if M.win_id and vim.api.nvim_win_is_valid(M.win_id) then
                vim.api.nvim_win_close(M.win_id, true)
                vim.api.nvim_del_autocmd(M.close_au)
                M.win_id = nil
            end
        end,
        desc = 'Close git popup on movement'
    })
end

return M
