" Set custom font
" To see the all available fonts
" set guifont=*
" DOC: More fonts -> https://www.nerdfonts.com/
if exists(':GuiFont')
  GuiFont JetBrainsMono Nerd Font:h10
endif

" Disable GUI Tabline
if exists(':GuiTabline')
  GuiTabline 0
endif
"
"" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
  GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
  GuiScrollBar 1
endif
    "
"" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

