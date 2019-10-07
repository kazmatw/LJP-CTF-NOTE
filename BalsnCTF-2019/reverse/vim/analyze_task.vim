
fun! Banner ()

exe "norm! ggdGiWelcome to th1s flag checker written in vim script.\nEnter the flag in Balsn{.+} format and then press <Enter>.\n\nThis script is tested with vim 8.0.1453 + default vimrc (ubuntu 18.04).\nIf it runs very slow, try to disable X11 forwarding before launching vim.\nIt should terminate in 30 seconds.\n\n>\ "
starti
call cursor(line('.'), col('.') + 1)
inoremap <CR> <Esc>:call Check()<CR>

endfun

call Banner()

fun! Check ()

try
exe "norm! ggJxJxJxJxJxJx^16ld$:s/ /_/g\<cr>
j:s/^> Balsn{\\([a-z_]\\+\\)r}$/\\1/g\<cr>
:%s/\\n//g\<cr>
^v$g?O\<esc>jo\<esc>ggmambmcmdmemfmgmhmimjmkmlmmmnmompmqmrmsmtmumvmwmxmymzggjmb`bmZ`bmY`cmX`ZmbGo\<esc>ma`amc`b:exe \"let g:l=getline('.')\"\<cr>
`co\<esc>:exe \"norm! \".(strgetchar(g:l[0:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[1:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[2:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[3:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[4:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[5:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[6:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[7:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[8:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[9:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[10:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[11:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[12:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[13:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[14:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[15:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>`cJ`cma`Xmc`Ymb`amc`bmZ`bmY`cmX`ZmbGo\<esc>ma`amc`b:exe \"let g:l=getline('.')\"\<cr>
`co\<esc>:exe \"norm! \".(strgetchar(g:l[16:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[17:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[18:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[19:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[20:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[21:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[22:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[23:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[24:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[25:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[26:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[27:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[28:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[29:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[30:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>:exe \"norm! \".(strgetchar(g:l[31:], 0) % 32 + 1).\"ax\"\<cr>
^rXo\<esc>`cJ`cma`Xmc`Ymb`amd`bV}dggmb`cmb`dmc`bmZ`bmY`bmX`cmW`dmV`emU`fmT`gmS`Ymb`ZmcGo\<esc>ma`amd`cmR`bmQ`cmP`dmO`RmbGo\<esc>ma`amc`bmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`b1jmb`bmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`b1jmb`bmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`b1jmb`bmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`d4jmd`dyy`cP`c{jmc`cma`Omd`Pmc`Qmb`ame`emf`fmR`bmQ`bmP`cmO`dmN`emM`Qmb`RmcGo\<esc>ma`amd`bmL`cmK`bmJ`cmI`dmH`emG`Kmb`LmcGo\<esc>ma`amd`byy`dP`dOX\<esc>me`d{jmd`dx`cyy`eP`dvyjPxxVy`epkJx`dxjV`ekd`ex:s/\\(x\\{32}\\)*//g\<cr>
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_D

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_D

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_D

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_E

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_D

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_D

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_D

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_C

symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_A
symbol_A * 31
process_B
process_F

check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2
check
check1
check
check2

check
check1

check
check3

:s/X\\(x\\{23}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{30}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{17}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{21}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{26}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{7}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{22}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{3}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{1}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{18}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{4}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{17}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{2}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{10}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{21}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j:s/X\\(x\\{9}\\)\\?/X/g\<cr>
:s/X\\(x\\?\\)x*/X\\1/g\<cr>
j`cJxxJxxJxxJxxJxxJxxJxxJxxJxxJxxJxxJxxJxxJxxJxx:s/X\\(x\\?\\)x*/X\\1/g\<cr>
`Xmc`Ymb`amg`bV}dggmb`cV}dggmc`dV}dggmd`eV}dggme`fV}dggmf`gkddjdd:s/^X$/Correct/g\<cr>
"
catch
    norm! ggdGiWrong
endtry


endfun

