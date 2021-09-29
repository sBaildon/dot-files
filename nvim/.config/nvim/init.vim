lua require('plugins')

set nocompatible
syntax on
filetype plugin indent on
set encoding=utf-8
set autoindent

highlight clear
if exists("syntax_on")
 syntax reset
endif

let g:syntax_cmd = "skip"


"hi TSAnnotation ctermfg=7 ctermbg=none cterm=none
"hi TSAttribute ctermfg=7 ctermbg=none cterm=none
"hi TSBoolean ctermfg=7 ctermbg=none cterm=none
"hi TSCharacter ctermfg=7 ctermbg=none cterm=none
"hi TSComment ctermfg=7 ctermbg=none cterm=none
"hi TSConditional ctermfg=7 ctermbg=none cterm=none
"hi TSConstant ctermfg=7 ctermbg=none cterm=none
"hi TSConstBuiltin ctermfg=7 ctermbg=none cterm=none
"hi TSConstMacro ctermfg=7 ctermbg=none cterm=none
"hi TSConstructor ctermfg=7 ctermbg=none cterm=none
hi TSError ctermfg=7 ctermbg=none cterm=none
"hi TSException ctermfg=7 ctermbg=none cterm=none
"hi TSField ctermfg=7 ctermbg=none cterm=none
"hi TSFloat ctermfg=7 ctermbg=none cterm=none
"hi TSFunction ctermfg=7 ctermbg=none cterm=none
"hi TSFuncBuiltin ctermfg=7 ctermbg=none cterm=none
"hi TSFuncMacro ctermfg=7 ctermbg=none cterm=none
"hi TSInclude ctermfg=7 ctermbg=none cterm=none
"hi TSKeyword ctermfg=7 ctermbg=none cterm=none
"hi TSKeywordFunction ctermfg=7 ctermbg=none cterm=none
"hi TSKeywordOperator ctermfg=7 ctermbg=none cterm=none
"hi TSKeywordReturn ctermfg=7 ctermbg=none cterm=none
"hi TSLabel ctermfg=7 ctermbg=none cterm=none
"hi TSMethod ctermfg=7 ctermbg=none cterm=none
"hi TSNamespace ctermfg=7 ctermbg=none cterm=none
"hi TSNone ctermfg=7 ctermbg=none cterm=none
"hi TSNumber ctermfg=7 ctermbg=none cterm=none
"hi TSOperator ctermfg=7 ctermbg=none cterm=none
"hi TSParameter ctermfg=7 ctermbg=none cterm=none
"hi TSParameterReference ctermfg=7 ctermbg=none cterm=none
"hi TSProperty ctermfg=7 ctermbg=none cterm=none
"hi TSPunctDelimiter ctermfg=7 ctermbg=none cterm=none
"hi TSPunctBracket ctermfg=7 ctermbg=none cterm=none
"hi TSPunctSpecial ctermfg=7 ctermbg=none cterm=none
"hi TSRepeat ctermfg=7 ctermbg=none cterm=none
"hi TSString ctermfg=7 ctermbg=none cterm=none
"hi TSStringRegex ctermfg=7 ctermbg=none cterm=none
"hi TSStringEscape ctermfg=7 ctermbg=none cterm=none
"hi TSStringSpecial ctermfg=7 ctermbg=none cterm=none
"hi TSSymbol ctermfg=7 ctermbg=none cterm=none
"hi TSTag ctermfg=7 ctermbg=none cterm=none
hi TSTagAttribute ctermfg=3 ctermbg=none cterm=none
"hi TSTagDelimiter ctermfg=7 ctermbg=none cterm=none
"hi TSText ctermfg=7 ctermbg=none cterm=none
"hi TSStrong ctermfg=7 ctermbg=none cterm=none
"hi TSEmphasis ctermfg=7 ctermbg=none cterm=none
"hi TSUnderline ctermfg=7 ctermbg=none cterm=none
"hi TSStrike ctermfg=7 ctermbg=none cterm=none
"hi TSLiteral ctermfg=7 ctermbg=none cterm=none
"hi TSURI ctermfg=7 ctermbg=none cterm=none
"hi TSMath ctermfg=7 ctermbg=none cterm=none
"hi TSTextReference ctermfg=7 ctermbg=none cterm=none
"hi TSEnvironment ctermfg=7 ctermbg=none cterm=none
"hi TSEnvironmentName ctermfg=7 ctermbg=none cterm=none
"hi TSNote ctermfg=7 ctermbg=none cterm=none
"hi TSWarning ctermfg=7 ctermbg=none cterm=none
"hi TSDanger ctermfg=7 ctermbg=none cterm=none
"hi TSType ctermfg=7 ctermbg=none cterm=none
"hi TSTypeBuiltin ctermfg=7 ctermbg=none cterm=none
hi TSVariable ctermfg=1 ctermbg=none cterm=none
"hi TSVariableBuiltin ctermfg=7 ctermbg=none cterm=none

" Vim Groups
hi Normal ctermfg=7 ctermbg=none cterm=none guibg=none
hi DiffAdd ctermfg=2 ctermbg=none cterm=none
hi DiffChange ctermfg=5 ctermbg=none cterm=none
hi DiffDelete ctermfg=1 ctermbg=none cterm=none
hi LineNr ctermfg=19 ctermbg=0 cterm=none
hi CursorLineNr ctermfg=8 ctermbg=none cterm=none guibg=none
hi CursorLine ctermfg=none ctermbg=18 cterm=none
hi CursorWord cterm=underline
hi SignColumn ctermfg=none ctermbg=0 cterm=none
hi link EndOfBuffer LineNr
hi Folded ctermfg=6 ctermbg=18 cterm=none
hi Visual ctermfg=2 ctermbg=18 cterm=none
hi Search ctermfg=0 ctermbg=3 cterm=none
hi IncSearch ctermfg=3 ctermbg=none cterm=none
hi NonText ctermfg=8
hi VertSplit ctermfg=8 ctermbg=none cterm=none
hi ErrorMsg ctermfg=1 ctermbg=none cterm=none
hi WarningMsg ctermfg=3 ctermbg=none cterm=none
hi MsgArea ctermfg=7 ctermbg=none cterm=none

" Treesitter links
hi Number ctermfg=16 ctermbg=none cterm=none
hi link Float Number
hi Boolean ctermfg=6 ctermbg=none cterm=none
hi Delimiter ctermfg=7 ctermbg=none cterm=none
hi Include ctermfg=17 ctermbg=none cterm=none
hi String ctermfg=2 ctermbg=none cterm=none
hi SpecialChar ctermfg=16 ctermbg=none cterm=none
hi Identifier ctermfg=6 ctermbg=none cterm=none
hi default link Character Identifier
hi Comment ctermfg=8 ctermbg=none cterm=italic
hi Function ctermfg=4 ctermbg=none cterm=none
hi Keyword ctermfg=5 ctermbg=none cterm=bold
hi Operator ctermfg=7 ctermbg=none cterm=none
hi Label ctermfg=6  ctermbg=none cterm=none
hi Conditional ctermfg=5 ctermbg=none cterm=none
hi Type ctermfg=3 ctermbg=none cterm=none
hi Underlined ctermfg=none ctermbg=none cterm=underline
hi PreProc ctermfg=17 ctermbg=none cterm=none
hi Macro ctermfg=7  ctermbg=none cterm=none
hi Constant ctermfg=6 ctermbg=none cterm=none
hi Special ctermfg=16 ctermbg=none cterm=none
hi Todo ctermfg=0 ctermbg=3 cterm=bold
hi Error ctermfg=0 ctermbg=1 cterm=none
hi Repeat ctermfg=3 ctermbg=none cterm=none
hi Define ctermfg=none ctermbg=1 cterm=none
hi Exception ctermfg=1 ctermbg=none cterm=none

hi LspReferenceText ctermfg=6 ctermbg=none cterm=none
hi LspReferenceRead ctermfg=3 ctermbg=none cterm=none
hi LspReferenceWrite ctermfg=1 ctermbg=none cterm=none

hi LspDiagnosticsDefaultError ctermfg=1 ctermbg=none cterm=none
hi LspDiagnosticsDefaultWarning ctermfg=3 ctermbg=none cterm=none
hi LspDiagnosticsDefaultInformation ctermfg=6 ctermbg=none cterm=none
hi LspDiagnosticsDefaultHint ctermfg=2 ctermbg=none cterm=none

hi LspDiagnosticsUnderlineError cterm=undercurl
hi LspDiagnosticsUnderlineWarning cterm=undercurl
hi LspDiagnosticsUnderlineInformation cterm=undercurl
hi LspDiagnosticsUnderlineHint cterm=undercurl

hi Pmenu ctermfg=7 ctermbg=18  cterm=none
hi PmenuSel ctermfg=0 ctermbg=3 cterm=none
hi PmenuSbar ctermfg=none ctermbg=18 cterm=none
hi PmenuThumb ctermfg=none ctermbg=7 cterm=none

hi link CompeDocumentation NormalFloat
hi CompeDocumentationBorder ctermfg=3 ctermbg=0 cterm=none
hi link TelescopeBorder FloatBorder
hi NormalFloat ctermfg=7 ctermbg=0
hi FloatBorder ctermfg=8 ctermbg=0
hi FloatShadow ctermfg=3 ctermbg=0

" link to LineNr because otherwise when passing over a blank line,
" the CursorLine colours are left behind as an artifact and looks bad
hi link IndentBlanklineSpaceCharBlankline LineNr
hi link IndentBlanklineChar  LineNr

hi link NvimTreeGitDirty GitSignsChange
hi link NvimTreeGitNew GitSignsAdd
hi link NvimTreeGitDeleted GitSignsDelete
hi link NvimTreeIndentMarker LineNr
" hi link NvimTreeFolderName IncSearch
" hi link NvimTreeOpenedFolderName IncSearch
" hi link NvimTreeEmptyFolderName IncSearch
hi Whitespace ctermfg=8 ctermbg=none

hi link TelescopeMatching Search
nnoremap <silent> <leader>gr <cmd>lua vim.lsp.buf.rename()<CR>
noremap <silent> <C-u> <cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ show_header = false, border = "single" })<CR>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <C-p> <cmd>Telescope<cr>
nnoremap <leader>lf <cmd>lua vim.lsp.buf.formatting_sync()<cr>

lua << EOF
local signs = { Error = "▶", Warning = "▶", Hint = "◆", Information = "◆" }

for type, icon in pairs(signs) do
	local hl = "LspDiagnosticsSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
EOF

nnoremap <C-n> :NvimTreeToggle<CR>

" don't wrap lines
set nowrap

nnoremap <silent> <leader>uc :TSHighlightCapturesUnderCursor<cr>

let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names

" keep 7 lines around the cursor on the screen
set scrolloff=7

" clear search highlight
map <silent> <leader><cr> :noh<cr>

" show matching braces
set showmatch

" linenumbers
set number

" cursor x,y position in corner
set ruler

" disable mouse
set mouse=

" signcolumn always showing, and make it blend
set signcolumn=auto

" highlight current line, and alt colour for
" line number
set cursorline

" search in realtime, highlight all matches,
" and be smart about capitalisation
set incsearch hlsearch ignorecase smartcase

" jump to last edit position, and use zz
" to place cursor center of screen
autocmd BufRead * silent! normal! g`"zz

" quick swap buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc

autocmd BufWritePre * :call DeleteTrailingWS()
