" Name:        ak_color
" Description: slightly customized standard 'torte' colorscheme
" Author:      Alexander Korshkov <akorshkov@gmail.com>
" License:     Same as Vim

" only for 256 colors terminals

set background=dark

hi clear
let g:colors_name = 'ak_color'

let s:t_Co = &t_Co

if s:t_Co >= 256
  hi Normal ctermfg=251 ctermbg=232 cterm=NONE

  " some hl-groups implemented in torte. Used as is.
  hi Cursor ctermfg=16 ctermbg=46 cterm=NONE
  hi lCursor ctermfg=16 ctermbg=254 cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi! link Terminal Normal
  hi! link CurSearch Search
  hi! link MessageWindow Pmenu
  hi! link PopupNotification Todo

  " very standard hl-groups
  hi Comment ctermfg=111 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=217 ctermbg=NONE cterm=NONE
    hi String ctermfg=71 ctermbg=NONE cterm=NONE
    hi Boolean ctermfg=39 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=87 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=227 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=211 ctermbg=NONE cterm=NONE
  hi Type ctermfg=83 ctermbg=NONE cterm=NONE
  hi Special ctermfg=214 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=111 cterm=underline
  hi Ignore ctermfg=16 ctermbg=16 cterm=NONE
  hi Error ctermfg=231 ctermbg=196 cterm=NONE
  hi Todo ctermfg=226 ctermbg=16 cterm=reverse

  hi! link LineNrAbove LineNr
  hi! link LineNrBelow LineNr
  hi! link CursorLineFold CursorLine
  hi! link CursorLineSign CursorLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi Folded ctermfg=44 ctermbg=237 cterm=NONE
  hi Visual ctermfg=16 ctermbg=248 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=242 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=242 cterm=NONE
  hi CursorLineNr ctermfg=226 ctermbg=242 cterm=NONE
  hi SignColumn ctermfg=51 ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=51 ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=251 ctermbg=88 cterm=NONE
  hi Conceal ctermfg=254 ctermbg=248 cterm=NONE
  hi Title ctermfg=227 ctermbg=NONE cterm=bold
  hi Directory ctermfg=51 ctermbg=NONE cterm=NONE
  hi Search ctermfg=3 ctermbg=0 cterm=reverse
  hi IncSearch ctermfg=40 ctermbg=16 cterm=reverse
  hi NonText ctermfg=21 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=21 ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=231 ctermbg=160 cterm=NONE
  hi LineNr ctermfg=102 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=196 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=30 cterm=NONE
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=29 ctermbg=NONE cterm=bold
  hi Question ctermfg=46 ctermbg=NONE cterm=bold
  hi SpecialKey ctermfg=51 ctermbg=NONE cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=16 cterm=underline
  hi WildMenu ctermfg=16 ctermbg=226 cterm=NONE
  hi QuickFixLine ctermfg=16 ctermbg=184 cterm=NONE
  hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=63 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=201 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=51 ctermbg=NONE cterm=underline
  hi StatusLine ctermfg=231 ctermbg=20 cterm=bold
  hi StatusLineNC ctermfg=16 ctermbg=254 cterm=NONE
  hi VertSplit ctermfg=16 ctermbg=254 cterm=NONE
  hi TabLine ctermfg=231 ctermbg=102 cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=16 cterm=reverse
  hi TabLineSel ctermfg=251 ctermbg=16 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=16 cterm=NONE
  hi ToolbarButton ctermfg=16 ctermbg=254 cterm=bold
  hi Pmenu ctermfg=fg ctermbg=236 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel ctermfg=16 ctermbg=226 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=250 cterm=NONE
  hi DiffAdd ctermfg=231 ctermbg=65 cterm=NONE
  hi DiffChange ctermfg=231 ctermbg=67 cterm=NONE
  hi DiffText ctermfg=16 ctermbg=251 cterm=NONE
  hi DiffDelete ctermfg=231 ctermbg=133 cterm=NONE

  " standard for nvim hl groups
  hi DiagnosticError ctermfg=1 guifg=Red
  hi DiagnosticWarn ctermfg=3 guifg=Orange
  hi DiagnosticInfo ctermfg=4 guifg=LightBlue
  hi DiagnosticHint ctermfg=7 guifg=LightGrey
  hi DiagnosticUnderlineError cterm=underline gui=underline guisp=Red
  hi DiagnosticUnderlineWarn cterm=underline gui=underline guisp=Orange
  hi DiagnosticUnderlineInfo cterm=underline gui=underline guisp=LightBlue
  hi DiagnosticUnderlineHint cterm=underline gui=underline guisp=LightGrey
  hi! link DiagnosticVirtualTextError DiagnosticError
  hi! link DiagnosticVirtualTextWarn DiagnosticWarn
  hi! link DiagnosticVirtualTextInfo DiagnosticInfo
  hi! link DiagnosticVirtualTextHint DiagnosticHint
  hi! link DiagnosticFloatingError DiagnosticError
  hi! link DiagnosticFloatingWarn DiagnosticWarn
  hi! link DiagnosticFloatingInfo DiagnosticInfo
  hi! link DiagnosticFloatingHint DiagnosticHint
  hi! link DiagnosticSignError DiagnosticError
  hi! link DiagnosticSignWarn DiagnosticWarn
  hi! link DiagnosticSignInfo DiagnosticInfo
  hi! link DiagnosticSignHint DiagnosticHint

  unlet s:t_Co
  finish
endif
