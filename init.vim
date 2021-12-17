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
set cmdheight=1
set background=dark
set termguicolors
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set showtabline=2
set scrolloff=3
set shiftwidth=2
set tabstop=2

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"------------------------Check Python3 Host Script------------------"
if has("win32") || has("win64") || has("win16")
	let g:python3_host_prog = 'C:\Python39\python.exe'
endif

function! Check_python()
	if has("python3")
		echomsg "python3 detected"
		if !exists("g:os")
			if has("win64") || has("win32") || has("win16")
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

"-------------------------------Sources-------------------------------"
if has("win32") || has("win64") || has("win16")
	source ~/AppData/Local/nvim/pluginCalls/windows.vim
	source ~/AppData/Local/nvim/ginit.vim
elseif has("unix") || has("osxdarwin")
	source $HOME/.config/nvim/pluginCalls/unix.vim
	source $HOME/.config/nvim/ginit.vim
else
	echoerr "Unsupported platform"
endif

lua require('plugins/tree_lua')
lua require('plugins/lualine')

"-------------------------------Colorscheme-------------------------------"
" colorscheme tokyonight
" colorscheme gruvbox
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
colorscheme oceanic_material
"
" these are just examples, if you want more colorschemes,
" please type `:colorschemes + TAB` and show all available colorschemes
"-----------------------------------------------------------------
