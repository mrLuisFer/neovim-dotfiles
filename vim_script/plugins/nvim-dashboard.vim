" For FZF
" " NOTE: If you want to use FZF, u need install ripgrep
" " https://github.com/BurntSushi/ripgrep
let g:dashboard_default_executive ='fzf'

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }

" Ascii Header
" https://github.com/glepnir/dashboard-nvim/wiki/Ascii-Header-Text
if has('win32') || has('win64') || has('win16') || has('win95')
  source ~/AppData/Local/nvim/vim_script/plugins/nvim_dashboard_ascii.vim
elseif has('unix') || has('linux')
  source $HOME/.config/nvim/vim_script/plugins/nvim_dashboard_ascii.vim
endif
