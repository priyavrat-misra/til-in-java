let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/til-in-java/README.md
set stal=2
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabrewind
edit ~/til-in-java/README.md
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 33 + 20) / 41)
exe '2resize ' . ((&lines * 4 + 20) / 41)
argglobal
let s:l = 659 - ((23 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
659
normal! 011|
wincmd w
argglobal
terminal ++curwin ++cols=172 ++rows=4 
let s:l = 1 - ((0 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 33 + 20) / 41)
exe '2resize ' . ((&lines * 4 + 20) / 41)
tabnext
edit ~/til-in-java/code/oops/polymorphism/User.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 95 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 95 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 76 + 86) / 172)
exe '4resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 76 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/polymorphism/UserTest.java") | buffer ~/til-in-java/code/oops/polymorphism/UserTest.java | else | edit ~/til-in-java/code/oops/polymorphism/UserTest.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/polymorphism/Staff.java") | buffer ~/til-in-java/code/oops/polymorphism/Staff.java | else | edit ~/til-in-java/code/oops/polymorphism/Staff.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/polymorphism/Editor.java") | buffer ~/til-in-java/code/oops/polymorphism/Editor.java | else | edit ~/til-in-java/code/oops/polymorphism/Editor.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 95 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 95 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 76 + 86) / 172)
exe '4resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 76 + 86) / 172)
tabnext
edit ~/til-in-java/code/oops/inheritance/p1/A1.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 52 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 62 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 62 + 86) / 172)
exe '4resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 56 + 86) / 172)
exe '5resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 5resize ' . ((&columns * 56 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/inheritance/p1/B1.java") | buffer ~/til-in-java/code/oops/inheritance/p1/B1.java | else | edit ~/til-in-java/code/oops/inheritance/p1/B1.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/inheritance/p2/B2.java") | buffer ~/til-in-java/code/oops/inheritance/p2/B2.java | else | edit ~/til-in-java/code/oops/inheritance/p2/B2.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/inheritance/p1/C1.java") | buffer ~/til-in-java/code/oops/inheritance/p1/C1.java | else | edit ~/til-in-java/code/oops/inheritance/p1/C1.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/inheritance/p2/C2.java") | buffer ~/til-in-java/code/oops/inheritance/p2/C2.java | else | edit ~/til-in-java/code/oops/inheritance/p2/C2.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 52 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 62 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 62 + 86) / 172)
exe '4resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 56 + 86) / 172)
exe '5resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 5resize ' . ((&columns * 56 + 86) / 172)
tabnext
edit ~/til-in-java/code/oops/abstraction/AbstractSuperclass.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe 'vert 3resize ' . ((&columns * 85 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/abstraction/AbstractSubclass.java") | buffer ~/til-in-java/code/oops/abstraction/AbstractSubclass.java | else | edit ~/til-in-java/code/oops/abstraction/AbstractSubclass.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/abstraction/ConcreteSubclass.java") | buffer ~/til-in-java/code/oops/abstraction/ConcreteSubclass.java | else | edit ~/til-in-java/code/oops/abstraction/ConcreteSubclass.java | endif
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe 'vert 3resize ' . ((&columns * 85 + 86) / 172)
tabnext
edit ~/til-in-java/code/binding/p1/A.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe 'vert 3resize ' . ((&columns * 85 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/binding/p1/B.java") | buffer ~/til-in-java/code/binding/p1/B.java | else | edit ~/til-in-java/code/binding/p1/B.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/binding/p1/C.java") | buffer ~/til-in-java/code/binding/p1/C.java | else | edit ~/til-in-java/code/binding/p1/C.java | endif
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe 'vert 3resize ' . ((&columns * 85 + 86) / 172)
tabnext
edit ~/til-in-java/code/binding/p2/Main.java
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 85 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 85 + 86) / 172)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 86 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/binding/p2/Rectangle.java") | buffer ~/til-in-java/code/binding/p2/Rectangle.java | else | edit ~/til-in-java/code/binding/p2/Rectangle.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/binding/p2/Shape.java") | buffer ~/til-in-java/code/binding/p2/Shape.java | else | edit ~/til-in-java/code/binding/p2/Shape.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/binding/p2/Circle.java") | buffer ~/til-in-java/code/binding/p2/Circle.java | else | edit ~/til-in-java/code/binding/p2/Circle.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 85 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 85 + 86) / 172)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 86 + 86) / 172)
tabnext
edit ~/til-in-java/code/oops/interfaces/A.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe '3resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 86 + 86) / 172)
exe '4resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 85 + 86) / 172)
exe '5resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 5resize ' . ((&columns * 85 + 86) / 172)
exe '6resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 6resize ' . ((&columns * 85 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/interfaces/B.java") | buffer ~/til-in-java/code/oops/interfaces/B.java | else | edit ~/til-in-java/code/oops/interfaces/B.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/interfaces/AbstractA.java") | buffer ~/til-in-java/code/oops/interfaces/AbstractA.java | else | edit ~/til-in-java/code/oops/interfaces/AbstractA.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/interfaces/X.java") | buffer ~/til-in-java/code/oops/interfaces/X.java | else | edit ~/til-in-java/code/oops/interfaces/X.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/interfaces/C.java") | buffer ~/til-in-java/code/oops/interfaces/C.java | else | edit ~/til-in-java/code/oops/interfaces/C.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/til-in-java/code/oops/interfaces/Main.java") | buffer ~/til-in-java/code/oops/interfaces/Main.java | else | edit ~/til-in-java/code/oops/interfaces/Main.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe '3resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 86 + 86) / 172)
exe '4resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 85 + 86) / 172)
exe '5resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 5resize ' . ((&columns * 85 + 86) / 172)
exe '6resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 6resize ' . ((&columns * 85 + 86) / 172)
tabnext 1
set stal=1
badd +659 ~/til-in-java/README.md
badd +1 ~/til-in-java/code/oops/polymorphism/User.java
badd +1 ~/til-in-java/code/oops/inheritance/p1/A1.java
badd +1 ~/til-in-java/code/oops/abstraction/AbstractSuperclass.java
badd +1 ~/til-in-java/code/binding/p1/A.java
badd +1 ~/til-in-java/code/binding/p2/Main.java
badd +1 ~/til-in-java/code/oops/interfaces/A.java
badd +9 ~/til-in-java/code/oops/polymorphism/UserTest.java
badd +1 ~/til-in-java/code/oops/polymorphism/Staff.java
badd +1 ~/til-in-java/code/oops/polymorphism/Editor.java
badd +1 ~/til-in-java/code/oops/inheritance/p1/B1.java
badd +1 ~/til-in-java/code/oops/inheritance/p2/B2.java
badd +1 ~/til-in-java/code/oops/inheritance/p1/C1.java
badd +1 ~/til-in-java/code/oops/inheritance/p2/C2.java
badd +1 ~/til-in-java/code/oops/abstraction/AbstractSubclass.java
badd +1 ~/til-in-java/code/oops/abstraction/ConcreteSubclass.java
badd +1 ~/til-in-java/code/binding/p1/B.java
badd +1 ~/til-in-java/code/binding/p1/C.java
badd +1 ~/til-in-java/code/binding/p2/Rectangle.java
badd +1 ~/til-in-java/code/binding/p2/Shape.java
badd +1 ~/til-in-java/code/binding/p2/Circle.java
badd +1 ~/til-in-java/code/oops/interfaces/B.java
badd +1 ~/til-in-java/code/oops/interfaces/AbstractA.java
badd +1 ~/til-in-java/code/oops/interfaces/X.java
badd +1 ~/til-in-java/code/oops/interfaces/C.java
badd +1 ~/til-in-java/code/oops/interfaces/Main.java
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
