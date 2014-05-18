set nu
imap jj <Esc>
map <Enter> :tabn<enter>
map <Tab> :tabp<enter>
syntax on
set ts=4
set expandtab
set softtabstop=4
set background=dark

" colors
set t_Co=256
hi CursorLine ctermbg=7 cterm=bold
hi CursorLineNr ctermfg=238 ctermbg=235
hi LineNr ctermfg=6
hi Constant ctermfg=5
hi Statement ctermfg=1
hi MatchParen ctermfg=8 ctermbg=6 cterm=none
hi TabLineFill term=bold cterm=bold ctermbg=none
hi TabLine ctermfg=15 ctermbg=none cterm=none
hi TabLineSel ctermfg=Blue ctermbg=7 cterm=none
hi VertSplit ctermfg=235 ctermbg=235 cterm=none
hi StatusLine cterm=none ctermfg=0 ctermbg=7
hi StatusLineNC cterm=none ctermfg=7 ctermbg=235
hi Normal ctermfg=7 ctermbg=none
hi Directory ctermfg=4 cterm=none
hi Folded ctermbg=235 cterm=none
hi Comment ctermfg=4
