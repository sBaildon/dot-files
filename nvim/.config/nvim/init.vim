lua require('plugins')

set nocompatible
syntax on
filetype plugin indent on
set encoding=utf-8
set autoindent

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
hi LineNr ctermfg=8 ctermbg=0 cterm=none
hi CursorLineNr ctermfg=7 ctermbg=none cterm=none guibg=none
hi CursorLine ctermfg=none ctermbg=18 cterm=none
hi CursorWord cterm=underline
hi SignColumn ctermfg=none ctermbg=0 cterm=none
hi EndOfBuffer ctermfg=8 ctermbg=0 cterm=none
hi Folded ctermfg=6 ctermbg=18 cterm=none
hi Visual ctermfg=none ctermbg=18 cterm=none
hi Search ctermfg=none ctermbg=none cterm=bold,reverse
hi IncSearch ctermfg=none ctermbg=3 cterm=reverse
hi NonText ctermfg=7 ctermbg=18 cterm=none
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
hi Keyword ctermfg=5 ctermbg=none cterm=none
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
hi LspDiagnosticsDefaultHint ctermfg=5 ctermbg=none cterm=none

hi Pmenu ctermfg=7 ctermbg=18  cterm=none
hi PmenuSel ctermfg=0 ctermbg=3 cterm=none
hi PmenuSbar ctermfg=none ctermbg=18 cterm=none
hi PmenuThumb ctermfg=none ctermbg=7 cterm=none

hi link CompeDocumentation NormalFloat
hi CompeDocumentationBorder ctermfg=3 ctermbg=0 cterm=none
hi NormalFloat ctermbg=0 ctermfg=7
hi FloatBorder ctermbg=0 ctermfg=7
hi FloatShadow ctermbg=0 ctermfg=3

nnoremap <silent> <leader>gr <cmd>lua vim.lsp.buf.rename()<CR>
noremap <silent> <C-u> <cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ show_header = false, border = "single" })<CR>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <C-i> i<Space><Esc>r


lua << EOF
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	virtual_text = false
	}
)

local signs = { Error = "!!", Warning = "!", Hint = "▪", Information = "▪" }

for type, icon in pairs(signs) do
	local hl = "LspDiagnosticsSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
EOF

nnoremap <C-n> :NvimTreeToggle<CR>

" don't wrap lines
set nowrap

set completeopt=menuone
inoremap <silent><expr> <C-Space> compe#complete()
"inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

nnoremap <silent> <leader>uc :TSHighlightCapturesUnderCursor<cr>

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
set signcolumn=yes:1

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
