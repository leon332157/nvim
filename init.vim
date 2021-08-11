lua require('plugin')
if has('win32')
 let &shell = 'powershell'
 let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
 let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
 let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
 set shellquote= shellxquote=
endif

" Telescope
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

set termguicolors
"NvimTreeOpen
lua require('config')
