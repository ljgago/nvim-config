" Maintainer: Christian Chiarulli <chrisatmachine@gmail.com>

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='onedark-night'

hi Normal guifg=#abb2bf ctermfg=249 guibg=#1e2127 ctermbg=235 gui=NONE cterm=NONE
hi Comment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi SpecialComment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi Todo guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi Underlined guifg=#56b6c2 ctermfg=73 gui=underline cterm=underline
hi Cursor guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi SignColumn guifg=NONE ctermfg=NONE guibg=#1e2127 ctermbg=235 gui=NONE cterm=NONE
hi Conceal guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi Directory guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#1e1e1e ctermfg=234 guibg=#98c379 ctermbg=114 gui=NONE cterm=NONE
hi DiffChange guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi DiffDelete guifg=#1e1e1e ctermfg=234 guibg=#e06c75 ctermbg=168 gui=NONE cterm=NONE
hi DiffText guifg=#1e1e1e ctermfg=234 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
" hi ErrorMsg guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#e06c75 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi VertSplit guifg=#181a1f ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#2c323c ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#e5c07b ctermfg=180 guibg=#5c6370 ctermbg=241 gui=NONE cterm=NONE
hi LineNr guifg=#4b5263 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi MatchParen guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen guifg=#ff9e64 ctermfg=75 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi NonText guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi PmenuSel guifg=#1e1e1e ctermfg=234 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#3b4048 ctermbg=238 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#abb2bf ctermbg=249 gui=NONE cterm=NONE
hi Question guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#1e1e1e ctermfg=234 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
hi Search guifg=#1e1e1e ctermfg=234 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
hi SpecialKey guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineNC guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineTerm guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#2c323c ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#1e2127 ctermbg=235 gui=NONE cterm=NONE
hi Terminal guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#3e4452 ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS guifg=#3e4452 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#1e1e1e ctermfg=234 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#1e1e1e ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi TSError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSError guifg=#e06c75 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctDelimiter guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctBracket guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctSpecial guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstant guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstBuiltin guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstMacro guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringRegex guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSString guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringEscape guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSCharacter guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNumber guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSBoolean guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFloat guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAnnotation guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAttribute guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNamespace guifg=#e06c75 ctermfg=201 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi TSNamespace guifg=#ff9e64 ctermfg=201 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncBuiltin guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFunction guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncMacro guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameter guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameterReference guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSMethod guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSField guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSProperty guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstructor guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConditional guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSRepeat guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLabel guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeyword guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunction guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordOperator guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSOperator guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSException guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSType guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTypeBuiltin guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStructure guifg=#e06c75 ctermfg=201 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSInclude guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariable guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariableBuiltin guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSText guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStrong guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSEmphasis guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSUnderline guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTitle guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLiteral guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSURI guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTag guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTagDelimiter guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlBold guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi htmlEndTag guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH2 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH3 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH4 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH5 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH6 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlItalic guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi htmlLink guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi htmlSpecialChar guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagN guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBold guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeBlock guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH2 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH3 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH4 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH5 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH6 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingRule guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownId guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDelimiter guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownLinkDelimiter guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi CocExplorerIndentLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferRoot guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileRoot guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferReadonly guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferModified guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferNameVisible guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileReadonly guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileModified guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileHidden guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerHelpLine guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2First guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2Second guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionShade guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySelect guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyBracket guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySpecial guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyVar guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFooter guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKey guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeySeperator guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyGroup guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyDesc guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffFileId guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi diffFile guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffNewFile guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffOldFile guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi debugPc guifg=NONE ctermfg=NONE guibg=#56b6c2 ctermbg=73 gui=NONE cterm=NONE
hi debugBreakpoint guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi VimwikiHeader1 guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader2 guifg=#98c379 ctermfg=114 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader3 guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader4 guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader5 guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader6 guifg=#c586c0 ctermfg=175 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiLink guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHeaderChar guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHR guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiList guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiTag guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiMarkers guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
