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
"
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

set termguicolors
set number
set ignorecase
set smartcase
set expandtab
let mapleader="\<SPACE>"
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0 
let g:loaded_perl_provider = 0
let g:loaded_netrwPlugin = 1
set mouse="a"


lua require('config')
" dashboard
let g:dashboard_default_executive = 'telescope'
if !has('win32')
let g:dashboard_preview_command = 'cat'
let g:dashboard_preview_file = stdpath('config')..'/logo.txt'
let g:dashboard_preview_pipeline = 'lolcat'
endif
let g:dashboard_preview_file_width = 30
let g:dashboard_preview_file_height = 13
" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" if nvim starts with a directory as an argument, cd into it and open NvimTree
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | execute 'cd '.argv()[0] | execute 'NvimTreeOpen' | wincmd l | endif
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
