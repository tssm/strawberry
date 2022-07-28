" strawberry-dark, a vim colourscheme by nightsense
"
" generated with a theme template adapted from
" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)

"=== SET COLOUR VARIABLES =======================================

" GUI colours
if &background ==# 'dark'
  let s:g0 = '2b1d24'
  let s:g1 = '3b2c33'
  let s:g2 = '75616b'
  let s:g3 = '8a7680'
  let s:g4 = '9e8b95'
  let s:g5 = 'b5a3ac'
  let s:g6 = 'f0dde6'
  let s:g7 = 'fff0f7'
  let s:g8 = 'bf5858'
  let s:g9 = 'b56f45'
  let s:gA = 'ab8e38'
  let s:gB = '508a50'
  let s:gC = '458a8a'
  let s:gD = '557b9e'
  let s:gE = '8b6a9e'
  let s:gF = 'ab6a7a'
else
  let s:g0 = 'fff0f7'
  let s:g1 = 'f0dde6'
  let s:g2 = 'b5a3ac'
  let s:g3 = '9e8b95'
  let s:g4 = '8a7680'
  let s:g5 = '75616b'
  let s:g6 = '3b2c33'
  let s:g7 = '2b1d24'
  let s:g8 = 'f55050'
  let s:g9 = 'e06a26'
  let s:gA = 'd4ac35'
  let s:gB = '219e21'
  let s:gC = '1b9e9e'
  let s:gD = '468dd4'
  let s:gE = 'a26fbf'
  let s:gF = 'd46a84'
endif
let g:terminal_color_0  = '#' . s:g0
let g:terminal_color_1  = '#' . s:g8
let g:terminal_color_2  = '#' . s:gB
let g:terminal_color_3  = '#' . s:gA
let g:terminal_color_4  = '#' . s:gD
let g:terminal_color_5  = '#' . s:gE
let g:terminal_color_6  = '#' . s:gC
let g:terminal_color_7  = '#' . s:g5
let g:terminal_color_8  = '#' . s:g3
let g:terminal_color_9  = '#' . s:g9
let g:terminal_color_10 = '#' . s:g1
let g:terminal_color_11 = '#' . s:g2
let g:terminal_color_12 = '#' . s:g4
let g:terminal_color_13 = '#' . s:g6
let g:terminal_color_14 = '#' . s:gF
let g:terminal_color_15 = '#' . s:g7

"=== OTHER PREPARATION ==========================================

hi clear
syntax reset
let colors_name = 'strawberry'

" highlighting function
fun! <sid>h(x, gf, gb, a, s)
  if a:gf != '' | exe 'hi ' . a:x . ' guifg=#' . a:gf | endif
  if a:gb != '' | exe 'hi ' . a:x . ' guibg=#' . a:gb | endif
  if a:a  != '' | exe 'hi ' . a:x . ' gui='    . a:a  | endif
  if a:s  != '' | exe 'hi ' . a:x . ' guisp=#' . a:s  | endif
endfun


"=== BASIC HIGHLIGHTING =========================================

" cursor + status line + selected tab
cal <sid>h('Cursor'           , s:g0 , s:gF , 'none'      , ''  )
cal <sid>h('StatusLine'       , s:g0 , s:gF , 'none'      , ''  )
cal <sid>h('StatusLineTerm'   , s:g0 , s:gF , 'none'      , ''  )
cal <sid>h('TabLineSel'       , s:g0 , s:gF , 'none'      , ''  )
cal <sid>h('TermCursor'       , s:g0 , s:gF , 'none'      , ''  )

" line numbers
cal <sid>h('CursorLineNr'     , s:g0 , s:g3 , 'none'      , ''  )
cal <sid>h('LineNr'           , s:g4 , s:g1 , 'none'      , ''  )

" basic text
cal <sid>h('Bold'             , ''   , ''   , 'bold'      , ''  )
cal <sid>h('Directory'        , s:g5 , ''   , 'bold'      , ''  )
cal <sid>h('Italic'           , ''   , ''   , 'italic'    , ''  )
cal <sid>h('Normal'           , s:g5 , s:g0 , 'none'      , ''  )
cal <sid>h('Underlined'       , s:g5 , ''   , 'underline' , ''  )

" commented-out text
cal <sid>h('Comment'          , s:g3 , ''   , 'none'      , ''  )
cal <sid>h('Conceal'          , s:g3 , ''   , 'none'      , ''  )
cal <sid>h('EndOfBuffer'      , s:g3 , ''   , 'none'      , ''  )
cal <sid>h('Ignore'           , s:g3 , ''   , 'none'      , ''  )
cal <sid>h('NonText'          , s:g3 , ''   , 'none'      , ''  )

" highlighted background
cal <sid>h('ColorColumn'      , ''   , s:g1 , 'none'      , ''  )
cal <sid>h('CursorColumn'     , ''   , s:g1 , 'none'      , ''  )
cal <sid>h('CursorLine'       , ''   , s:g1 , 'none'      , ''  )
cal <sid>h('QuickFixLine'     , ''   , s:g1 , 'none'      , ''  )
cal <sid>h('StatusLineNC'     , s:g5 , s:g1 , 'none'      , ''  )
cal <sid>h('StatusLineTermNC' , s:g5 , s:g1 , 'none'      , ''  )
cal <sid>h('TabLineFill'      , ''   , s:g1 , 'none'      , ''  )
cal <sid>h('TermCursorNC'     , ''   , s:g1 , 'none'      , ''  )

" muted text on highlighted background
cal <sid>h('DiffChange'       , s:g4 , s:g1 , 'none'      , ''  )
cal <sid>h('FoldColumn'       , s:g4 , s:g1 , 'none'      , ''  )
cal <sid>h('Folded'           , s:g4 , s:g1 , 'none'      , ''  )
cal <sid>h('SignColumn'       , s:g4 , s:g1 , 'none'      , ''  )
cal <sid>h('TabLine'          , s:g4 , s:g1 , 'none'      , ''  )
cal <sid>h('VisualNOS'        , s:g4 , s:g1 , 'none'      , ''  )

" strongly highlighted background
cal <sid>h('MatchParen'       , s:g6 , s:g2 , 'none'      , ''  )
cal <sid>h('Pmenu'            , s:g6 , s:g2 , 'none'      , ''  )
cal <sid>h('Visual'           , s:g6 , s:g2 , 'none'      , ''  )

" selected menu item
cal <sid>h('PmenuSel'         , s:g0 , s:g5 , 'none'      , ''  )
cal <sid>h('WildMenu'         , s:g0 , s:g6 , 'none'      , ''  )

" solid lines
cal <sid>h('PmenuSbar'        , s:g1 , s:g1 , 'none'      , ''  )
cal <sid>h('PmenuThumb'       , s:g4 , s:g4 , 'none'      , ''  )
cal <sid>h('VertSplit'        , s:g2 , s:g2 , 'none'      , ''  )


"=== ALERT/SYNTAX HIGHLIGHTING ==================================

" RED for warning elements
cal <sid>h('DiffDelete'       , s:g8 , s:g0 , 'reverse'   , ''  )
cal <sid>h('Error'            , s:g8 , s:g0 , 'reverse'   , ''  )
cal <sid>h('ErrorMsg'         , s:g8 , s:g0 , 'none'      , ''  )
cal <sid>h('SpellBad'         , ''   , ''   , 'undercurl' , s:g8)
cal <sid>h('TooLong'          , s:g8 , ''   , 'none'      , ''  )
cal <sid>h('WarningMsg'       , s:g8 , s:g0 , 'none'      , ''  )

" ORANGE for preliminary elements
cal <sid>h('Define'           , s:g9 , ''   , 'none'      , ''  )
cal <sid>h('IncSearch'        , s:g9 , s:g0 , 'reverse'   , ''  )
cal <sid>h('Include'          , s:g9 , ''   , 'none'      , ''  )
cal <sid>h('Macro'            , s:g9 , ''   , 'none'      , ''  )
cal <sid>h('PreCondit'        , s:g9 , ''   , 'none'      , ''  )
cal <sid>h('PreProc'          , s:g9 , ''   , 'none'      , ''  )
cal <sid>h('SpellCap'         , ''   , ''   , 'undercurl' , s:g9)
cal <sid>h('Title'            , s:g9 , ''   , 'none'      , ''  )

" YELLOW for highlighted elements
if &background ==# 'dark'
  cal <sid>h('DiffText'       , s:gA , s:g0 , 'reverse'   , ''  )
  cal <sid>h('Search'         , s:gA , s:g0 , 'reverse'   , ''  )
  cal <sid>h('Todo'           , s:gA , s:g0 , 'reverse'   , ''  )
else
  cal <sid>h('DiffText'       , s:gA , s:g6 , 'reverse'   , ''  )
  cal <sid>h('Search'         , s:gA , s:g6 , 'reverse'   , ''  )
  cal <sid>h('Todo'           , s:gA , s:g6 , 'reverse'   , ''  )
endif

" GREEN for action elements
cal <sid>h('Conditional'      , s:gB , ''   , 'none'      , ''  )
cal <sid>h('DiffAdd'          , s:gB , s:g0 , 'reverse'   , ''  )
cal <sid>h('Exception'        , s:gB , ''   , 'none'      , ''  )
cal <sid>h('Keyword'          , s:gB , ''   , 'none'      , ''  )
cal <sid>h('Label'            , s:gB , ''   , 'none'      , ''  )
cal <sid>h('ModeMsg'          , s:gB , ''   , 'none'      , ''  )
cal <sid>h('MoreMsg'          , s:gB , ''   , 'none'      , ''  )
cal <sid>h('Operator'         , s:gB , ''   , 'none'      , ''  )
cal <sid>h('Question'         , s:gB , ''   , 'none'      , ''  )
cal <sid>h('Repeat'           , s:gB , ''   , 'none'      , ''  )
cal <sid>h('Statement'        , s:gB , ''   , 'none'      , ''  )

" TEAL for object types
cal <sid>h('SpellLocal'       , ''   , ''   , 'undercurl' , s:gC)
cal <sid>h('StorageClass'     , s:gC , ''   , 'none'      , ''  )
cal <sid>h('Structure'        , s:gC , ''   , 'none'      , ''  )
cal <sid>h('Type'             , s:gC , ''   , 'none'      , ''  )
cal <sid>h('Typedef'          , s:gC , ''   , 'none'      , ''  )

" BLUE for constants
cal <sid>h('Boolean'          , s:gD , ''   , 'none'      , ''  )
cal <sid>h('Character'        , s:gD , ''   , 'none'      , ''  )
cal <sid>h('Constant'         , s:gD , ''   , 'none'      , ''  )
cal <sid>h('Float'            , s:gD , ''   , 'none'      , ''  )
cal <sid>h('Number'           , s:gD , ''   , 'none'      , ''  )
cal <sid>h('String'           , s:gD , ''   , 'none'      , ''  )

" PURPLE for special text
cal <sid>h('Debug'            , s:gE , ''   , 'none'      , ''  )
cal <sid>h('Delimiter'        , s:gE , ''   , 'none'      , ''  )
cal <sid>h('Special'          , s:gE , ''   , 'none'      , ''  )
cal <sid>h('SpecialChar'      , s:gE , ''   , 'none'      , ''  )
cal <sid>h('SpecialComment'   , s:gE , ''   , 'none'      , ''  )
cal <sid>h('SpecialKey'       , s:gE , ''   , 'none'      , ''  )
cal <sid>h('SpellRare'        , ''   , ''   , 'undercurl' , s:gE)
cal <sid>h('Tag'              , s:gE , ''   , 'none'      , ''  )

" PINK for object names
cal <sid>h('Function'         , s:gF , ''   , 'none'      , ''  )
cal <sid>h('Identifier'       , s:gF , ''   , 'none'      , ''  )


"=== OPTIONS ====================================================

" disable highlighted CursorLineNr
if exists('g:strawberryCursorLineNr')
if g:strawberryCursorLineNr == 'off'
cal <sid>h('CursorLineNr'     , s:g4 , s:g1 , 'none'      , ''  )
endif
endif

" disable LineNr background altogether
if exists('g:strawberryLineNr')
if g:strawberryLineNr == 'off'
cal <sid>h('CursorLineNr'     , s:g4 , s:g0 , 'none'      , ''  )
cal <sid>h('LineNr'           , s:g4 , s:g0 , 'none'      , ''  )
endif
endif
