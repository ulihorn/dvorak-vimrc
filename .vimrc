set ts=2
set sts=2
set sw=2
set et
set ai
set nolist
set hlsearch
nmap Q <Nop>
set paste

noremap d h
" qwerty_h = move left
noremap h j
" qwerty_j = move down
noremap t k
" qwerty_k = move up
noremap n l
" qwerty_l = move right
noremap s ;
" qwerty_; = command line
noremap D ^
" qwerty_H = beginning of line
noremap H J
noremap S :
noremap T K
noremap N $
" qwerty_N = end of line

noremap j t
" dvorak_j = Jump till
noremap k d
" dvorak_k = kill (delete)
noremap l s
" dovarak_l = substitute char/line (no relation)
noremap ; n
" dvorak_; = next find
noremap J T
noremap K D
noremap L S
noremap : N

cabbr <expr> %% expand('%:p:h')
" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
