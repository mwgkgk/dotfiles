function! _vim_sexp#setup_mappings()
  xmap <silent><buffer> af              <Plug>(sexp_outer_list)
  omap <silent><buffer> af              <Plug>(sexp_outer_list)
  xmap <silent><buffer> if              <Plug>(sexp_inner_list)
  omap <silent><buffer> if              <Plug>(sexp_inner_list)
  xmap <silent><buffer> aF              <Plug>(sexp_outer_top_list)
  omap <silent><buffer> aF              <Plug>(sexp_outer_top_list)
  xmap <silent><buffer> iF              <Plug>(sexp_inner_top_list)
  omap <silent><buffer> iF              <Plug>(sexp_inner_top_list)
  xmap <silent><buffer> as              <Plug>(sexp_outer_string)
  omap <silent><buffer> as              <Plug>(sexp_outer_string)
  xmap <silent><buffer> is              <Plug>(sexp_inner_string)
  omap <silent><buffer> is              <Plug>(sexp_inner_string)
  xmap <silent><buffer> ae              <Plug>(sexp_outer_element)
  omap <silent><buffer> ae              <Plug>(sexp_outer_element)
  xmap <silent><buffer> ie              <Plug>(sexp_inner_element)
  omap <silent><buffer> ie              <Plug>(sexp_inner_element)
  nmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  xmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  omap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
  nmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  xmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  omap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
  nmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  xmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  omap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
  nmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
  xmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
  omap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
  imap <silent><buffer> <M-w>           <C-o><Plug>(sexp_move_to_next_element_head)
  nmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
  xmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
  omap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
  nmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
  xmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
  omap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
  nmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
  xmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
  omap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
  nmap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
  xmap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
  omap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
  nmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
  xmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
  omap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
  nmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
  xmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
  omap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
  nmap <silent><buffer> ==              <Plug>(sexp_indent)
  nmap <silent><buffer> =-              <Plug>(sexp_indent_top)
  imap <silent><buffer> <M-\>           <C-O><Plug>(sexp_indent_top)
  nmap <silent><buffer> <M-\>           <Plug>(sexp_indent_top)
  nmap <silent><buffer> <C-c>i          <Plug>(sexp_round_head_wrap_list)
  xmap <silent><buffer> <C-c>i          <Plug>(sexp_round_head_wrap_list)
  nmap <silent><buffer> <C-c>I          <Plug>(sexp_round_tail_wrap_list)
  xmap <silent><buffer> <C-c>I          <Plug>(sexp_round_tail_wrap_list)
  nmap <silent><buffer> <C-c>[          <Plug>(sexp_square_head_wrap_list)
  xmap <silent><buffer> <C-c>[          <Plug>(sexp_square_head_wrap_list)
  nmap <silent><buffer> <C-c>]          <Plug>(sexp_square_tail_wrap_list)
  xmap <silent><buffer> <C-c>]          <Plug>(sexp_square_tail_wrap_list)
  nmap <silent><buffer> <C-c>{          <Plug>(sexp_curly_head_wrap_list)
  xmap <silent><buffer> <C-c>{          <Plug>(sexp_curly_head_wrap_list)
  nmap <silent><buffer> <C-c>}          <Plug>(sexp_curly_tail_wrap_list)
  xmap <silent><buffer> <C-c>}          <Plug>(sexp_curly_tail_wrap_list)
  nmap <silent><buffer> <C-c>w          <Plug>(sexp_round_head_wrap_element)
  xmap <silent><buffer> <C-c>w          <Plug>(sexp_round_head_wrap_element)
  nmap <silent><buffer> <C-c><C-w>      <Plug>(sexp_round_tail_wrap_element)<Space>
  xmap <silent><buffer> <C-c><C-w>      <Plug>(sexp_round_tail_wrap_element)<Space>
  nmap <silent><buffer> <C-c>ew         <Plug>(sexp_round_tail_wrap_element)
  xmap <silent><buffer> <C-c>ew         <Plug>(sexp_round_tail_wrap_element)
  nmap <silent><buffer> <C-c>e)         <Plug>(sexp_round_tail_wrap_element)
  xmap <silent><buffer> <C-c>e)         <Plug>(sexp_round_tail_wrap_element)
  nmap <silent><buffer> <C-c>e[         <Plug>(sexp_square_head_wrap_element)
  xmap <silent><buffer> <C-c>e[         <Plug>(sexp_square_head_wrap_element)
  nmap <silent><buffer> <C-c>e]         <Plug>(sexp_square_tail_wrap_element)
  xmap <silent><buffer> <C-c>e]         <Plug>(sexp_square_tail_wrap_element)
  nmap <silent><buffer> <C-c>e{         <Plug>(sexp_curly_head_wrap_element)
  xmap <silent><buffer> <C-c>e{         <Plug>(sexp_curly_head_wrap_element)
  nmap <silent><buffer> <C-c>e}         <Plug>(sexp_curly_tail_wrap_element)
  xmap <silent><buffer> <C-c>e}         <Plug>(sexp_curly_tail_wrap_element)
  nmap <silent><buffer> <C-c>h          <Plug>(sexp_insert_at_list_head)
  nmap <silent><buffer> <C-c>l          <Plug>(sexp_insert_at_list_tail)
  nmap <silent><buffer> <C-c>@          <Plug>(sexp_splice_list)
  nmap <silent><buffer> <C-c>O          <Plug>(sexp_raise_list)
  xmap <silent><buffer> <C-c>O          <Plug>(sexp_raise_list)
  nmap <silent><buffer> <C-c>o          <Plug>(sexp_raise_element)
  xmap <silent><buffer> <C-c>o          <Plug>(sexp_raise_element)
  nmap <silent><buffer> <C-c><C-o>      <Plug>(sexp_raise_element)
  xmap <silent><buffer> <C-c><C-o>      <Plug>(sexp_raise_element)
  nmap <silent><buffer> <C-k>           <Plug>(sexp_swap_list_backward)
  xmap <silent><buffer> <C-k>           <Plug>(sexp_swap_list_backward)
  nmap <silent><buffer> <C-j>           <Plug>(sexp_swap_list_forward)
  xmap <silent><buffer> <C-j>           <Plug>(sexp_swap_list_forward)
  nmap <silent><buffer> <C-h>           <Plug>(sexp_swap_element_backward)
  xmap <silent><buffer> <C-h>           <Plug>(sexp_swap_element_backward)
  nmap <silent><buffer> <C-l>           <Plug>(sexp_swap_element_forward)
  xmap <silent><buffer> <C-l>           <Plug>(sexp_swap_element_forward)
  nmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
  xmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
  imap <silent><buffer> <M-S-j>         <Esc><Plug>(sexp_emit_head_element)a
  nmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
  xmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
  imap <silent><buffer> <M-S-k>         <Esc><Plug>(sexp_emit_tail_element)a
  nmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
  xmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
  imap <silent><buffer> <M-S-h>         <Esc><Plug>(sexp_capture_prev_element)a
  nmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
  xmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
  imap <silent><buffer> <M-S-l>         <Esc><Plug>(sexp_capture_next_element)a
  imap <silent><buffer> <BS>            <Plug>(sexp_insert_backspace)
  imap <silent><buffer> "               <Plug>(sexp_insert_double_quote)
  imap <silent><buffer> (               <Plug>(sexp_insert_opening_round)
  " imap <silent><buffer> )               <Plug>(sexp_insert_closing_round)
  imap <silent><buffer> [               <Plug>(sexp_insert_opening_square)
  " imap <silent><buffer> ]               <Plug>(sexp_insert_closing_square)
  imap <silent><buffer> {               <Plug>(sexp_insert_opening_curly)
  " imap <silent><buffer> }               <Plug>(sexp_insert_closing_curly)
endfunction
