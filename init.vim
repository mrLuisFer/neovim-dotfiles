"
"	██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"	██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"	██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"	██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"	██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"	╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"
"
" By: mrLuisFer
"--------------------------------- vim config ----------------------------
" I recommend use a Nerd Font -> https://www.nerdfonts.com/font-downloads
syntax on
syntax enable
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
" set relativenumber
set hlsearch
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set cursorline
set nocompatible
" Finding files - Search down into subfolders
set path+=**
" Add a title in your terminal
set title
" Always show tabs
set showtabline=2
scriptencoding utf-8
" set scrolloff=10
set scrolloff=2
" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
" set nowrap "No Wrap lines
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=1
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
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
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
" ---------------------------------------------------------------------
"}}}

"----------------------------------------------------------------

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
"-------------------------------------------------------------------"
"-------------------- Neovim QT - GUI Config -----------------------"
if has("win32") || has("win64") || has("win16") || has('win95')
  source ~/AppData/Local/nvim/ginit.vim
endif
"-----------------------------------------------------------------

"--------------------- Plugin Sources ---------------------------"
" Lua config
lua require('plugins')
lua require('treelua-config')
lua require('staline-config')
lua require('bufferline-config')
lua require('treesitter-config')
lua require('lua-completion-config')
lua require('lsp-installer')
lua require('lspsaga-config')
lua require('nvimlsp-config')
lua require('impatient-config')

if has("win32") || has("win64") || has("win16") || has('win95')
  source ~/AppData/Local/nvim/pluginCalls/windows.vim
elseif has("unix") || has("osxdarwin") || has('linux')
  source $HOME/.config/nvim/pluginCalls/unix.vim
else
  echoerr "Unsupported platform :("
endif
"-----------------------------------------------------------------

"--------------------------------Plugins Config--------------------------------------------
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = ' '
let g:indentLine_faster = 1

let g:indentLine_fileTypeExclude=["NvimTree"]
"--gruvbox config--
let g:gruvbox_contrast_dark = "medium"
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

set background=dark
set termguicolors
"-----------------------------------------------------------------
"-------------------------------Colorscheme-------------------------------"
" colorscheme tokyonight
colorscheme gruvbox
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
"
" these are just examples, if you want more colorschemes,
" please type `:colorschemes + TAB` and show all available colorschemes
"-----------------------------------------------------------------
