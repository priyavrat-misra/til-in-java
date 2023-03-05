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
exe '1resize ' . ((&lines * 30 + 20) / 41)
exe '2resize ' . ((&lines * 7 + 20) / 41)
argglobal
let s:l = 1067 - ((21 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1067
normal! 0384|
wincmd w
argglobal
terminal ++curwin ++cols=172 ++rows=7 
let s:l = 1 - ((0 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 30 + 20) / 41)
exe '2resize ' . ((&lines * 7 + 20) / 41)
tabnext
edit Grader.java
set splitbelow splitright
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
exe 'vert 1resize ' . ((&columns * 93 + 86) / 172)
exe 'vert 2resize ' . ((&columns * 78 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("GraderTest.java") | buffer GraderTest.java | else | edit GraderTest.java | endif
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 93 + 86) / 172)
exe 'vert 2resize ' . ((&columns * 78 + 86) / 172)
tabnext
edit exceptions/assertions/A.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 85 + 86) / 172)
exe '2resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe '3resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 86 + 86) / 172)
exe '4resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 86 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("exceptions/assertions/B.java") | buffer exceptions/assertions/B.java | else | edit exceptions/assertions/B.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("exceptions/assertions/p2/C.java") | buffer exceptions/assertions/p2/C.java | else | edit exceptions/assertions/p2/C.java | endif
let s:l = 4 - ((3 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
wincmd w
argglobal
if bufexists("exceptions/assertions/D.java") | buffer exceptions/assertions/D.java | else | edit exceptions/assertions/D.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 85 + 86) / 172)
exe '2resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 86 + 86) / 172)
exe '3resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 86 + 86) / 172)
exe '4resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 86 + 86) / 172)
tabnext
edit oops/polymorphism/User.java
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
if bufexists("oops/polymorphism/UserTest.java") | buffer oops/polymorphism/UserTest.java | else | edit oops/polymorphism/UserTest.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/polymorphism/Staff.java") | buffer oops/polymorphism/Staff.java | else | edit oops/polymorphism/Staff.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/polymorphism/Editor.java") | buffer oops/polymorphism/Editor.java | else | edit oops/polymorphism/Editor.java | endif
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
edit oops/inheritance/p1/A1.java
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
normal! 05|
wincmd w
argglobal
if bufexists("oops/inheritance/p1/B1.java") | buffer oops/inheritance/p1/B1.java | else | edit oops/inheritance/p1/B1.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/inheritance/p2/B2.java") | buffer oops/inheritance/p2/B2.java | else | edit oops/inheritance/p2/B2.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/inheritance/p1/C1.java") | buffer oops/inheritance/p1/C1.java | else | edit oops/inheritance/p1/C1.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/inheritance/p2/C2.java") | buffer oops/inheritance/p2/C2.java | else | edit oops/inheritance/p2/C2.java | endif
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
edit oops/abstraction/AbstractSuperclass.java
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
if bufexists("oops/abstraction/AbstractSubclass.java") | buffer oops/abstraction/AbstractSubclass.java | else | edit oops/abstraction/AbstractSubclass.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/abstraction/ConcreteSubclass.java") | buffer oops/abstraction/ConcreteSubclass.java | else | edit oops/abstraction/ConcreteSubclass.java | endif
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
edit binding/p1/A.java
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
if bufexists("binding/p1/B.java") | buffer binding/p1/B.java | else | edit binding/p1/B.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("binding/p1/C.java") | buffer binding/p1/C.java | else | edit binding/p1/C.java | endif
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
edit binding/p2/Main.java
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
if bufexists("binding/p2/Rectangle.java") | buffer binding/p2/Rectangle.java | else | edit binding/p2/Rectangle.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("binding/p2/Shape.java") | buffer binding/p2/Shape.java | else | edit binding/p2/Shape.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("binding/p2/Circle.java") | buffer binding/p2/Circle.java | else | edit binding/p2/Circle.java | endif
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
edit oops/interfaces/A.java
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
if bufexists("oops/interfaces/B.java") | buffer oops/interfaces/B.java | else | edit oops/interfaces/B.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/interfaces/AbstractA.java") | buffer oops/interfaces/AbstractA.java | else | edit oops/interfaces/AbstractA.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/interfaces/X.java") | buffer oops/interfaces/X.java | else | edit oops/interfaces/X.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/interfaces/C.java") | buffer oops/interfaces/C.java | else | edit oops/interfaces/C.java | endif
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("oops/interfaces/Main.java") | buffer oops/interfaces/Main.java | else | edit oops/interfaces/Main.java | endif
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
tabnext
edit exceptions/p1/Main.java
set splitbelow splitright
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
exe 'vert 1resize ' . ((&columns * 89 + 86) / 172)
exe 'vert 2resize ' . ((&columns * 82 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("exceptions/p1/HttpConnect.java") | buffer exceptions/p1/HttpConnect.java | else | edit exceptions/p1/HttpConnect.java | endif
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 86) / 172)
exe 'vert 2resize ' . ((&columns * 82 + 86) / 172)
tabnext
edit exceptions/TryWithResources.java
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext
edit collections/ListDemo.java
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
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 85 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 65 + 86) / 172)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 106 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("CustomLinkedList.java") | buffer CustomLinkedList.java | else | edit CustomLinkedList.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("collections/IteratorDemo.java") | buffer collections/IteratorDemo.java | else | edit collections/IteratorDemo.java | endif
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("collections/ListIteratorDemo.java") | buffer collections/ListIteratorDemo.java | else | edit collections/ListIteratorDemo.java | endif
let s:l = 33 - ((11 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 0
wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 86 + 86) / 172)
exe '2resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 85 + 86) / 172)
exe '3resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 65 + 86) / 172)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 106 + 86) / 172)
tabnext 1
set stal=1
badd +1003 ~/til-in-java/README.md
badd +1 Grader.java
badd +1 exceptions/assertions/A.java
badd +1 oops/polymorphism/User.java
badd +1 oops/inheritance/p1/A1.java
badd +1 oops/abstraction/AbstractSuperclass.java
badd +1 binding/p1/A.java
badd +1 binding/p2/Main.java
badd +1 oops/interfaces/A.java
badd +1 exceptions/p1/Main.java
badd +1 exceptions/TryWithResources.java
badd +1 collections/ListDemo.java
badd +1 GraderTest.java
badd +1 exceptions/assertions/B.java
badd +1 exceptions/assertions/p2/C.java
badd +1 exceptions/assertions/D.java
badd +9 oops/polymorphism/UserTest.java
badd +1 oops/polymorphism/Staff.java
badd +1 oops/polymorphism/Editor.java
badd +1 oops/inheritance/p1/B1.java
badd +1 oops/inheritance/p2/B2.java
badd +1 oops/inheritance/p1/C1.java
badd +1 oops/inheritance/p2/C2.java
badd +1 oops/abstraction/AbstractSubclass.java
badd +1 oops/abstraction/ConcreteSubclass.java
badd +1 binding/p1/B.java
badd +1 binding/p1/C.java
badd +1 binding/p2/Rectangle.java
badd +1 binding/p2/Shape.java
badd +1 binding/p2/Circle.java
badd +1 oops/interfaces/B.java
badd +1 oops/interfaces/AbstractA.java
badd +1 oops/interfaces/X.java
badd +1 oops/interfaces/C.java
badd +1 oops/interfaces/Main.java
badd +1 exceptions/p1/HttpConnect.java
badd +1 CustomLinkedList.java
badd +2 collections/IteratorDemo.java
badd +1 collections/ListIteratorDemo.java
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
