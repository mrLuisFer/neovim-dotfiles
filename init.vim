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
"-----------------------------------------------------------------

"-------------------------------Windows Scroll-------------------------------"
" For disable scroll in windows you need install NeovimQt
" https://github.com/equalsraf/neovim-qt
if has("win32") || has("win64")
	" Enable GUI Scrollbar
	if exists(':GuiScrollBar')
		GuiScrollBar 1
	endif

	" Right Click Context Menu (Copy-Cut-Paste)
	nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
	inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
	vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
endif
"-----------------------------------------------------------------

"-------------------------------Sources-------------------------------"
if has("win32") || has("win64")
	source ~/AppData/Local/nvim/pluginCalls/windows.vim
elseif has("unix") || has("osxdarwin")
	source $HOME/.config/nvim/pluginCalls/unix.vim
else
	echoerr "Unsupported platform"
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

set cmdheight=1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

set background=dark

if has('termguicolors')
  set termguicolors
endif
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
"
" these are just examples, if you want more colorschemes, 
" please type `:colorschemes + TAB` and show all available colorschemes
"-----------------------------------------------------------------

