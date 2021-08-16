let g:nvim_tree_side = 'left'
let g:nvim_tree_width = 30
let g:nvim_tree_ignore = [ '.git', '.cache' ] "empty by default
let g:nvim_tree_gitignore = 0 "0 by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 0
let g:nvim_tree_auto_ignore_ft = [ 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 0
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 0
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_auto_resize = 1 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }

let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'git': {
    \   'unstaged': "✗ ",
    \   'staged': "✓ ",
    \   'unmerged': " ",
    \   'renamed': "➜ ",
    \   'untracked': "★ ",
    \   'deleted': " ",
    \   'ignored': "◌ "
    \   },
    \ 'folder': {
    \   'arrow_open': " ",
    \   'arrow_closed': " ",
    \   'default': " ",
    \   'open': " ",
    \   'empty': " ",
    \   'empty_open': " ",
    \   'symlink': " ",
    \   'symlink_open': " ",
    \   },
    \   'lsp': {
    \     'hint': " ",
    \     'info': " ",
    \     'warning': " ",
    \     'error': " ",
    \   }
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>e :NvimTreeOpen<CR>
" NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them

highlight NvimTreeFolderIcon guibg=blue

" -----------------------------------------------------------------------
" Default actions
"   move around like in any vim buffer
" <CR> or o on .. will cd in the above directory
" <C-]> will cd in the directory under the cursor
" <BS> will close current opened directory or parent
" type a to add a file. Adding a directory requires leaving a leading / at the end of the path.
" you can add multiple directories by doing foo/bar/baz/f and it will add foo bar and baz directories and f as a file
" 
" type r to rename a file
" type <C-r> to rename a file and omit the filename on input
" type x to add/remove file/directory to cut clipboard
" type c to add/remove file/directory to copy clipboard
" type y will copy name to system clipboard
" type Y will copy relative path to system clipboard
" type gy will copy absolute path to system clipboard
" type p to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
" type d to delete a file (will prompt for confirmation)
" type ]c to go to next git item
" type [c to go to prev git item
" type - to navigate up to the parent directory of the current file/directory
" type s to open a file with default system application or a folder with default file manager (if you want to change the command used to do it see :h g:nvim_tree_system_open_command and :h g:nvim_tree_system_open_command_args)
" if the file is a directory, <CR> will open the directory otherwise it will open the file in the buffer near the tree
" if the file is a symlink, <CR> will follow the symlink (if the target is a file)
" <C-v> will open the file in a vertical split
" <C-x> will open the file in a horizontal split
" <C-t> will open the file in a new tab
" <Tab> will open the file as a preview (keeps the cursor in the tree)
" I will toggle visibility of folders hidden via |g:nvim_tree_ignore|
" H will toggle visibility of dotfiles (files/folders starting with a .)
" R will refresh the tree
" Double left click acts like <CR>
" Double right click acts like <C-]>
" -----------------------------------------------------------------------
