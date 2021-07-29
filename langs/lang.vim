"------------------------------------------------------------------------------"
"                                Languages tools                               "
"------------------------------------------------------------------------------"

if exists('g:rust_lang')
  if g:rust_lang
    Plug 'rust-lang/rust.vim'
  endif
endif

if exists('g:elixir_lang')
  if g:elixir_lang
    PLug 'elixir-editors/vim-elixir'
    Plug 'mhinz/vim-mix-format'
  endif
endif

if exists('g:python_lang')
  if g:python_lang
    PLug 'ambv/black'
  endif
endif

if exists('g:editor_config')
  if g:editor_config
    Plug 'editorconfig/editorconfig-vim'
  endif
endif

if exists('g:powershell_lang')
  if g:powershell_lang
    Plug 'pprovost/vim-ps1'
  endif
endif

if exists('g:golang_lang')
  if g:golang_lang
    Plug 'fatih/vim-go'
  endif
endif

