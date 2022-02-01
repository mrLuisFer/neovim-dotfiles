"
"	██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"	██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"	██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"	██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"	██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"	╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"
" By: mrLuisFer
"--------------------------------- vim config ----------------------------
" I recommend use a Nerd Font -> https://www.nerdfonts.com/font-downloads
syntax on
syntax enable
" set relativenumber
set number
set sw=2
let mapleader = " "
set backspace=2
set guioptions-=T
set guioptions-=L
set nocompatible
" Finding files - Search down into subfolders
set inccommand=split
filetype plugin indent on
set ai "Auto indent
set si "Smart indent
set nobackup
set nowritebackup
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"------------------------Check Python3 Host Script------------------"
if has("win32") || has("win64") || has("win16") || has('win95')
	let g:python3_host_prog = 'C:\Python39\python.exe'

	function! Check_python()
		if has("python3")
			echomsg "python3 detected"
			if !exists("g:os")
				if has("win64") || has("win32") || has("win16") || has('win95')
					let g:os = "Windows"
				else
					let g:os = substitute(system("uname"), '\ņ', '', '')
				endif
			endif
			if g:os == "Windows"
				let g:python3_host_prog = system('scoop which python')
			elseif g:os == 'Linux' || g:os == 'Unix'
				let g:python3_host_prog = system('which python3')
			endif
		else
			echoerr 'Python 3 support needed'
		endif
	endfunction
endif
"--------------------- Plugin Sources ---------------------------"
if has("win32") || has("win64") || has("win16") || has('win95')
  " For Windows
  source ~/AppData/Local/nvim/pluginCalls/windows.vim
  source ~/AppData/Local/nvim/ginit.vim
elseif has("unix") || has("osxdarwin") || has('linux')
  " For Unix or Linux systems
  source $HOME/.config/nvim/pluginCalls/unix.vim
  source $HOME/.config/nvim/ginit.vim
else
  echoerr "Unsupported platform :("
endif
"-----------------------------------------------------------------
"-------------------------------Colorscheme-------------------------------"
colorscheme gruvbox
" colorscheme tokyodark
" colorscheme nord
" colorscheme abstract
" colorscheme space_vim_theme
" colorscheme edge
" colorscheme sonokai
" colorscheme everforest
" colorscheme onedark
" colorscheme miramare
" colorscheme dracula
" colorscheme OceanicNext
" colorscheme spacegray
" colorscheme embark
" colorscheme oceanic_material
" colorscheme NeoSolarized
" colorscheme material
" colorscheme onehalfdark
"
" these are just examples, if you want more colorschemes,
" please type `:colorschemes + TAB` and show all available colorschemes
"-----------------------------------------------------------------

" MAIN:
lua require('vim_opt')
lua require('plugins')

" PLUGINS:
lua require('plugins/treelua-config')
lua require('plugins/bufferline-config')
lua require('plugins/lspsaga-config')
lua require('plugins/impatient-config')
lua require('plugins/galaxyline-config')
lua require('plugins/vim_go_config')
lua require('plugins/completion-config')
lua require('plugins/tresitter-config')
lua require('plugins/treelua-config')

" THEMES:
lua require('themes/material-config')
lua require('themes/tokyodark-config')

