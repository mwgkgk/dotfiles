-- enscribe: prompt for a folder name and move the file under the cursor
-- into ~/lab/walls/<foldername>/, creating that folder if needed.

local function enscribe(info)
    local view = vifm.currview()
    local entry = view.cursor.entry()

    if entry == nil then
        vifm.sb.error("enscribe: no entry under the cursor")
        return
    end
    if entry.isdir then
        vifm.sb.error("enscribe: cursor is on a directory, not a file")
        return
    end

    local folder = vifm.input{ prompt = "name: " }
    if folder == nil then
        vifm.sb.info("enscribe: cancelled")
        return
    end

    folder = folder:match("^%s*(.-)%s*$") -- trim stray whitespace
    if folder == "" then
        vifm.sb.error("enscribe: empty folder name")
        return
    end

    local destdir = vifm.expand("$HOME/lab/walls/") .. folder

    if not vifm.exists(destdir) then
        if not vifm.fs.mkdir(destdir, "create") then
            vifm.sb.error("enscribe: could not create " .. destdir)
            return
        end
    end

    local src = entry.location .. "/" .. entry.name
    local dst = destdir .. "/" .. entry.name

    if vifm.fs.mv(src, dst, "fail") then
        vifm.sb.info("enscribe: moved " .. entry.name .. " -> " .. destdir)
    else
        vifm.sb.error("enscribe: move failed (maybe " .. entry.name ..
                       " already exists there?)")
    end
end

vifm.cmds.add{
    name = "enscribe",
    description = "Move file under cursor into ~/lab/walls/<folder>/, prompting for the folder name",
    handler = enscribe,
    minargs = 0,
    maxargs = 0,
}

return {}
