" Menu Translations:	Hungarian (Magyar)
" Original Translation:	Zolt�n �rp�dffy
" Maintained By:	Kontra Gergely <kgergely@mcl.hu>
" Last Change:		2020 Apr 23
" Original translations
" I'm working on defining (unaccented) hotkeys for everything.
" I want to remove y and z hotkeys, because on the hungarian keymap they're at
" a differrent place.
" I also want to avoid g and j shortcuts, because you cannot see, wheter
" they're underlined or not.
" If the hotkeys are not uniq (pressing the hotkey doesn't executes the menu,
" just one menupoint is selected), or you find any other undesired behaviour,
" please report it to me.
" All kind of feedback is welcome.
"
" Igyekeztem mindenhez gyorsbillenty�t rendelni, lehet�leg nem �kezeteset.
" Tov�bbi tennival� az y �s z gyorsbillenty�k kiirt�sa, ezenk�v�l a g, j
" billenty�k irt�sa is, mivel ez ut�bbiak al�h�zott v�ltozat�t nem k�nny�
" felismerni.
" Amennyiben valahol nem egy�rtelm�k a gyorsbillenty�k (a gyorsbillenty�t
" le�tve nem hajt�dik v�gre a kiszemelt men�pont, hanem csak kiv�laszt�dik,
" vagy m�sik men�pont v�laszt�dik ki), vagy egy�b hib�t tal�lsz, k�rlek jelezd
" nekem a fenti email c�men.
" Mindennem� visszajelz�st sz�vesen fogadok.

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding iso-8859-2

" Help menu
menutrans &Help			&S�g�
menutrans &Overview<Tab><F1>	�&ttekint�s<Tab><F1>
menutrans &How-to\ links	&HOGYAN\ linkek
menutrans &User\ Manual		&K�zik�nyv
menutrans &Credits		&Szerz�k,\ k�sz�netek
menutrans Co&pying		&V�djegy
menutrans O&rphans		�rv�&k
menutrans &Find\.\.\.		Ke&res�s\.\.\.
menutrans &Version		&Verzi�
menutrans &About		&N�vjegy
" File menu
menutrans &File				&F�jl
menutrans &Open\.\.\.<Tab>:e		Meg&nyit�s\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	Megnyit�s\ �j\ a&blakba\.\.\.<Tab>:sp
menutrans &New<Tab>:enew		�j\ dok&umentum<Tab>:enew
menutrans &Close<Tab>:close		Be&z�r�s<Tab>:close
menutrans &Save<Tab>:w			&Ment�s<Tab>:w
menutrans Split\ &Diff\ with\.\.\.	�ssze&hasonl�t�s\.\.\.
menutrans Split\ Patched\ &By\.\.\.	�sszehasonl�t�s\ &patch\ -el\.\.\.
menutrans Save\ &As\.\.\.<Tab>:sav	Ment�&s\ m�sk�nt\.\.\.<Tab>:w
menutrans &Print			Nyomt&at�s
menutrans Sa&ve-Exit<Tab>:wqa		Ment�s\ �s\ k&il�p�s<Tab>:wqa
menutrans E&xit<Tab>:qa			&Kil�p�s<Tab>:qa

" Edit menu
menutrans &Edit				S&zerkeszt�s
menutrans &Undo<Tab>u			&Visszavon�s<Tab>u
menutrans &Redo<Tab>^R			M�&gis<Tab>^R
menutrans Rep&eat<Tab>\.		&Ism�t<Tab>\.
menutrans Cu&t<Tab>"+x			&Kiv�g�s<Tab>"+x
menutrans &Copy<Tab>"+y			&M�sol�s<Tab>"+y
menutrans &Paste<Tab>"+gP		&Beilleszt�s<Tab>"+gP
menutrans Put\ &Before<Tab>[p		Berak�s\ e&l�<Tab>[p
menutrans Put\ &After<Tab>]p		Berak�s\ &m�g�<Tab>]p
menutrans &Delete<Tab>x			&T�rl�s<Tab>x
menutrans &Select\ all<Tab>ggVG		A&z\ �sszes\ kijel�l�se<Tab>ggvG
menutrans &Find\.\.\.			Ke&res�s\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	Keres�s\ �s\ c&sere\.\.\.
menutrans Find\ and\ Rep&lace<Tab>:%s	Keres�s\ �s\ c&sere<Tab>:%s
menutrans Find\ and\ Rep&lace		Keres�s\ �s\ c&sere
menutrans Find\ and\ Rep&lace<Tab>:s	Keres�s\ �s\ c&sere<Tab>:s
menutrans Settings\ &Window		&Ablak\ be�ll�t�sai
menutrans &Global\ Settings		�l&tal�nos\ be�ll�t�sok
menutrans F&ile\ Settings		&F�jl\ be�ll�t�sok
menutrans C&olor\ Scheme		&Sz�nek
menutrans &Keymap			Billent&y�zetkioszt�s

" Edit.Global Settings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	&Minta\ kiemel�s\ BE/KI<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!	&Kis/nagybet�\ azonos/k�l�nb�z�<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!	&Z�r�jelp�r\ mutat�sa\ BE/KI<Tab>:set\ sm!
menutrans &Context\ lines		&Kurzor\ ablak\ sz�l�t�l
menutrans &Virtual\ Edit		&Virtu�lis\ szerkeszt�s
menutrans Never				&Soha
menutrans Block\ Selection		&Blokk\ kijel�l�sekor
menutrans Insert\ mode			S&z�veg\ bevitelekor
menutrans Block\ and\ Insert		Bl&okk\ kijel�l�sekor\ �s\ sz�veg\ bevitelekor
menutrans Always			&Mindig
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	&Sz�vegbeviteli\ m�d\ BE/KI<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!	&Vi\ kompat�bilis\ m�d\ BE/Ki<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		Ke&res�si\ �tvonal\.\.\.
menutrans Ta&g\ Files\.\.\.		&Tag\ f�jl\.\.\.
menutrans Toggle\ &Toolbar		&Eszk�zt�r\ BE/KI
menutrans Toggle\ &Bottom\ Scrollbar	&V�zszintes\ G�rget�s�v\ BE/KI
menutrans Toggle\ &Left\ Scrollbar	&Bal\ g�rget�s�v\ BE/KI
menutrans Toggle\ &Right\ Scrollbar	&Jobb\ g�rget�s�v\ BE/KI
menutrans None				Nincs

" Edit.File Settings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	Sorsz�&moz�s\ BE/KI<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		&Lista\ m�d\ BE/KI<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		Sor&t�r�s\ BE/KI<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	Sort�r�s\ s&z�v�gekn�l\ BE/KI<tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		&Tab\ kifejt�s\ BE/KI<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		&Automatikus\ beh�z�s\ BE/KI<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		&C-beh�z�s\ BE/KI<Tab>:set\ cin!
menutrans &Shiftwidth					&Beh�z�s\ m�rt�ke\ ('sw')
menutrans Soft\ &Tabstop				T&abul�l�s\ m�rt�ke\ ('sts')
menutrans Te&xt\ Width\.\.\.				&Sz�veg\ sz�less�ge\.\.\.
menutrans &File\ Format\.\.\.				&F�jlform�tum\.\.\.

" Tools menu
menutrans &Tools			&Eszk�z�k
menutrans &Jump\ to\ this\ tag<Tab>g^]	&Ugr�s\ a\ taghoz<Tab>g^]
menutrans Jump\ &back<Tab>^T		Ugr�s\ &vissza<Tab>^T
menutrans Build\ &Tags\ File		&Tag\ f�jl\ k�sz�t�se
menutrans &Folding			&Behajt�sok
menutrans &Make<Tab>:make		&Ford�t�s<Tab>:make
menutrans &List\ Errors<Tab>:cl		&Hib�k\ list�ja<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	�&zenetek\ list�ja<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		&K�vetkez�\ &hiba<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	&El�z�\ hiba<Tab>:cp
menutrans &Older\ List<Tab>:cold	&R�gebbi\ lista<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	&�jabb\ lista<Tab>:cnew
menutrans Error\ &Window		Hibaablak
menutrans &Update<Tab>:cwin		&Friss�t�s<Tab>:cwin
menutrans &Open<Tab>:copen		M&egnyit�s<Tab>:copen
menutrans &Close<Tab>:cclose		Be&z�r�s<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	Norm�l->HEX\ n�zet<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	HEX->Norm�l\ n�zet<Tab>:%!xxd\ -r
menutrans &Set\ Compiler		Ford�t�\ &megad�sa

" Tools.Folding
menutrans &Enable/Disable\ folds<Tab>zi	Behajt�sok\ BE&/KI<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	&Aktu�lis\ sor\ l�tszik<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	&Csak\ aktu�lis\ sor\ l�tszik<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	K�vetkez�\ szint\ be&z�r�sa<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	�sszes\ hajt�s\ &bez�r�sa<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	K�vetkez�\ szint\ ki&nyit�sa<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	�sszes\ hajt�s\ &kinyit�sa<Tab>zR
menutrans Fold\ Met&hod			Behajt�sok\ &l�trehoz�sa
menutrans M&anual			&K�zi
menutrans I&ndent			Be&h�z�s
menutrans E&xpression			Ki&fejez�s
menutrans S&yntax			&Szintaxis
menutrans &Diff				&Diff-k�l�nbs�g
menutrans Ma&rker			&Jel�l�s
menutrans Create\ &Fold<Tab>zf		�&j\ behajt�s<Tab>zf
menutrans &Delete\ Fold<Tab>zd		Behajt�s\ &t�rl�se<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	�ss&zes\ behajt�s\ t�rl�se<Tab>zD
menutrans Fold\ col&umn\ width		Behajt�sok\ a\ &marg�n\ x\ oszlopban

" Tools.Diff
menutrans &Update		&Friss�t�s
menutrans &Get\ Block		Block\ &BE
menutrans &Put\ Block		Block\ &KI



" Names for buffer menu.
menutrans &Buffers		&Pufferok
menutrans &Refresh\ menu	&Friss�t�s
menutrans Delete		&T�rl�s
menutrans &Alternate		&Csere
menutrans &Next			&K�vetkez�
menutrans &Previous		&El�z�

" Window menu
menutrans &Window			&Ablak
menutrans &New<Tab>^Wn			�&j<Tab>^Wn
menutrans S&plit<Tab>^Ws		&Feloszt�s<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	Feloszt�s\ &#-val<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	Feloszt�s\ F�&gg�legesen<Tab>^Wv
menutrans Split\ File\ E&xplorer	�j\ &int�z�
menutrans &Close<Tab>^Wc		Be&z�r�s<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	&T�bbi\ bez�r�sa<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			&K�vetkez�<Tab>^Ww
menutrans P&revious<Tab>^WW		&El�z�<Tab>^WW
menutrans &Equal\ Size<Tab>^W=		&Azonos\ magass�g<Tab>^W=
menutrans &Max\ Height<Tab>^W_		Ma&x\ magass�g<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		&Min\ magass�g<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		Max\ &sz�less�g<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		Mi&n\ sz�less�g<Tab>^W1\|
menutrans Move\ &To			&Elmozd�t�s
menutrans &Top<Tab>^WK			&Fel<Tab>^WK
menutrans &Bottom<Tab>^WJ		&Le<Tab>^WJ
menutrans &Left\ side<Tab>^WH		&Balra<Tab>^WH
menutrans &Right\ side<Tab>^WL		&Jobbra<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR		G�rd�t�s\ &felfel�<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		G�rd�t�s\ &lefel�<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		&Bet�t�pus\.\.\.

" The popup menu
menutrans &Undo			&Visszavon�s
menutrans Cu&t			&Kiv�g�s
menutrans &Copy			&M�sol�s
menutrans &Paste		&Beilleszt�s
menutrans &Delete		&T�rl�s
menutrans Select\ Blockwise	Kijel�l�s\ blo&kk�nt
menutrans Select\ &Word		S&z�\ kijel�l�se
menutrans Select\ &Line		&Sor\ kijel�l�se
menutrans Select\ &Block	B&lokk\ kijel�l�se
menutrans Select\ &All		A&z\ �sszes\ kijel�l�se

" The GUI toolbar
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		Megnyit�s
    tmenu ToolBar.Save		Ment�s
    tmenu ToolBar.SaveAll	Mindet menti
    tmenu ToolBar.Print		Nyomtat�s
    tmenu ToolBar.Undo		Visszavon�s
    tmenu ToolBar.Redo		M�gis
    tmenu ToolBar.Cut		Kiv�g�s
    tmenu ToolBar.Copy		M�sol�s
    tmenu ToolBar.Paste		Beilleszt�s
    tmenu ToolBar.Find		Keres�s
    tmenu ToolBar.FindNext	Tov�bb keres�s
    tmenu ToolBar.FindPrev	Keres�s visszafel�
    tmenu ToolBar.Replace	Keres�s/csere
    tmenu ToolBar.LoadSesn	Munkamenet beolvas�s
    tmenu ToolBar.SaveSesn	Munkamenet ment�s
    tmenu ToolBar.RunScript	Vim program ind�t�s
    tmenu ToolBar.Make		Projekt �p�t�s
    tmenu ToolBar.Shell		Shell ind�t�s
    tmenu ToolBar.RunCtags	Tag �p�t�s
    tmenu ToolBar.TagJump	Ugr�s a kurzor alatti tagra
    tmenu ToolBar.Help		Vim s�g�
    tmenu ToolBar.FindHelp	Keres�s a Vim s�g�ban
  endfun
endif

" Syntax menu
menutrans &Syntax			Sz&intaxis
menutrans &Show\ filetypes\ in\ menu	F�jl&t�pusok\ men�
menutrans Set\ '&syntax'\ only		Csak\ '&syntax'
menutrans Set\ '&filetype'\ too		'&filetype'\ is
menutrans &Off				&Ki
menutrans &Manual			K�&zi
menutrans A&utomatic			A&utomatikus
menutrans on/off\ for\ &This\ file	&BE/KI\ enn�l\ a\ f�jln�l
menutrans Co&lor\ test			&Sz�nteszt
menutrans &Highlight\ test		Kiemel�s\ &teszt
menutrans &Convert\ to\ HTML		&HTML\ oldal\ k�sz�t�se

" dialog texts
let menutrans_no_file = "[Nincs file]"
let menutrans_help_dialog = "�rd be a k�v�nt sz�t vagy parancsot:\n\n A sz�vegbeviteli parancsok el� �rj i_-t (pl.: i_CTRL-X)\nA sorszerkesz� parancsok el� c_-t (pl.: c_<Del>)\nA v�ltoz�kat a ' jellel vedd k�r�l (pl.: 'shiftwidth')"
let g:menutrans_path_dialog = "�rd be a keresett f�jl lehets�ges el�r�si �tjait, vessz�vel elv�lasztva"
let g:menutrans_tags_dialog = "�rd be a tag f�jl lehets�ges el�r�si �tjait, vessz�vel elv�lasztva"
let g:menutrans_textwidth_dialog = "�rd be a sz�veg sz�less�g�t (0 = form�z�s kikapcsolva)"
let g:menutrans_fileformat_dialog = "V�laszd ki a f�jl form�tum�t"

let &cpo = s:keepcpo
unlet s:keepcpo
