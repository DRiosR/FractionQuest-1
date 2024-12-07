" Menu Translations:	Slovak
" Translated By:	Martin Lacko <lacko@host.sk>
" Last Change:		2020 Apr 23
" Original translations

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding cp1250

" Help menu
menutrans &Help			&Pomocn�k
menutrans &Overview<Tab><F1>	&Preh�ad<Tab><F1>
menutrans &User\ Manual		Po&u��vate�sk�\ manu�l
menutrans &How-to\ links	&Tipy
menutrans &Find\.\.\.		&N�js�\.\.\.
menutrans &Credits		Po�&akovanie
menutrans O&rphans		Si&roty
menutrans Co&pying		&Licencia
menutrans &Version		&Verzia
menutrans &About		&O\ programe

" File menu
menutrans &File				&S�bor
menutrans &Open\.\.\.<Tab>:e		&Otvori�\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	Ot&vori�\ v\ novom\ okne\.\.\.<Tab>:sp
menutrans &New<Tab>:enew		&Nov�<Tab>:enew
menutrans &Close<Tab>:close		&Zatvori�<Tab>:close
menutrans &Save<Tab>:w			&Ulo�i�<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	Ulo�i�\ &ako\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	Otvor&i�\ porovnanie\ v\ novom\ okne\ s\.\.\.
menutrans Split\ Patched\ &By\.\.\.	Otvo&ri�\ aktualizovan�\ s\.\.\.
menutrans &Print			&Tla�
menutrans Sa&ve-Exit<Tab>:wqa		U&lo�i�-Koniec<Tab>:wqa
menutrans E&xit<Tab>:qa			&Koniec<Tab>:qa

" Edit menu
menutrans &Edit				&�pravy
menutrans &Undo<Tab>u			&Sp�<Tab>u
menutrans &Redo<Tab>^R			Z&ru�i�\ sp�<Tab>^R
menutrans Rep&eat<Tab>\.		&Opakova�<Tab>\.
menutrans Cu&t<Tab>"+x			&Vystrihn��<Tab>"+x
menutrans &Copy<Tab>"+y			&Kop�rova�<Tab>"+y
menutrans &Paste<Tab>"+gP		V&lo�i�<Tab>"+gP
menutrans Put\ &Before<Tab>[p		Vlo�i�\ &pred<Tab>[p
menutrans Put\ &After<Tab>]p		Vlo�i�\ za<Tab>]p
menutrans &Select\ all<Tab>ggVG		Vy&bra�\ v�etko<Tab>ggVG
menutrans &Delete<Tab>x			Vy&maza�<Tab>x
menutrans &Find\.\.\.			&N�js�\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	N&ahradi�\.\.\.
menutrans Settings\ &Window		Mo&�nosti
menutrans &Global\ Settings		&Glob�lne\ mo�nosti
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	Prepn��\ paletu\ zv�raz�ovania<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!	Prepn��\ &ignorovanie\ ve�kosti<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!	Prepn��\ &uk�za�\ zhodu<Tab>:set\ sm!
menutrans &Context\ lines		&Kontextov�\ riadky
menutrans &Virtual\ Edit		&Virtu�lne\ �pravy
menutrans Never				Nikdy
menutrans Block\ Selection		Blokov�\ v�ber
menutrans Insert\ mode			Re�im\ vkladania
menutrans Block\ and\ Insert		Blok\ a\ vkladanie
menutrans Always			V�dy
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	Prepn��\ re�i&m\ vkladania<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!	Prepn��\ vi\ kompatibilitu<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		Cesta\ &h�adania\.\.\.
menutrans Ta&g\ Files\.\.\.		Ta&gov�\ s�bory\.\.\.
menutrans Toggle\ &Toolbar		Prepn��\ &panel
menutrans Toggle\ &Bottom\ Scrollbar	Prepn��\ spodn�\ posuvn�k
menutrans Toggle\ &Left\ Scrollbar	Prepn��\ �av�\ posuvn�k
menutrans Toggle\ &Right\ Scrollbar	Prepn��\ prav�\ posuvn�k
menutrans F&ile\ Settings		Nastavenia\ s�boru
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	Prepn��\ ��slova&nie\ riadkov<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		Prepn��\ re�im\ &zoznamu<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		Prepn��\ z&alamovanie\ riadkov<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	Prepn��\ za&lamovanie\ slov<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		Prepn��\ roz��r&en�\ tabul�tory<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		Prepn��\ automatick�\ &odsadzovanie<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		Prepn��\ &C-odsadzovanie<Tab>:set\ cin!
menutrans &Shiftwidth			&��rka\ �iftu
menutrans Soft\ &Tabstop		&Softv�rov�\ tabul�tor
menutrans Te&xt\ Width\.\.\.		��rka\ te&xtu\.\.\.
menutrans &File\ Format\.\.\.		&Form�t\ s�boru\.\.\.
menutrans C&olor\ Scheme		Far&ebn�\ sch�ma

" Programming menu
menutrans &Tools			&N�stroje
menutrans &Jump\ to\ this\ tag<Tab>g^]	&Sko�i�\ na\ zna�ku<Tab>g^]
menutrans Jump\ &back<Tab>^T		Sk&o�i�\ sp�<Tab>^T
menutrans Build\ &Tags\ File		&Vytvori�\ s�bor\ zna�iek
menutrans &Folding			&Vn�ranie
menutrans &Enable/Disable\ folds<Tab>zi	Zapn��/Vypn��\ vn�rani&e<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	Zobrazi�\ kurzoro&v�\ riadok<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	Zobrazi�\ iba\ kurzorov�\ riadok<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	Zatvori�\ viac\ vnoren�<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	Zatvor&i�\ v�etky\ vnorenia<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	O&tvori�\ viac\ vnoren�<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	&Otvori�\ v�etky\ vnorenia<Tab>zR
menutrans Fold\ Met&hod			Met�&da\ vn�rania
menutrans M&anual			M&anu�lne
menutrans I&ndent			Odsade&nie
menutrans E&xpression			&V�raz
menutrans S&yntax			S&yntax
menutrans &Diff				Roz&diel
menutrans Ma&rker			Zna&�kova�
menutrans Create\ &Fold<Tab>zf		Vyt&vori�\ vnorenie<Tab>zf
menutrans &Delete\ Fold<Tab>zd		V&ymaza�\ vnorenie<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	Vymaza�\ v�etky\ vnorenia<Tab>zD
menutrans Fold\ column\ &width		��rka\ &vkladan�ho\ st�pca
menutrans &Diff				&Rozdiely
menutrans &Update			Akt&ualizova�
menutrans &Get\ Block			Zob&ra�\ blok
menutrans &Put\ Block			&Vlo�i�\ blok
menutrans Error\ &Window		Chybov�\ &okno
menutrans &Update<Tab>:cwin		Akt&ualizova�<Tab>:cwin
menutrans &Open<Tab>:copen		&Otvori�<Tab>:copen
menutrans &Close<Tab>:cclose		&Zatvori�<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	&Konvertova�\ do\ HEX<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	Konve&rtova�\ sp�<Tab>:%!xxd\ -r
menutrans &Make<Tab>:make		&Make<Tab>:make
menutrans &List\ Errors<Tab>:cl		V�pis\ &ch�b<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	V�p&is\ spr�v<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		�a&l�ia\ chyba<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	&Predch�dzaj�ca\ chyba<Tab>:cp
menutrans &Older\ List<Tab>:cold	Sta&r��\ zoznam<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	Nov��\ &zoznam<Tab>:cnew
menutrans Error\ &Window<Tab>:cwin	Chybov�\ o&kno<Tab>:cwin
menutrans &Set\ Compiler		Vyberte\ k&ompil�tor
menutrans Convert\ to\ HEX<Tab>:%!xxd	Prvies�\ do\ �es&tn�stkov�ho\ form�tu<Tab>:%!xxd
menutrans Convert\ back<Tab>:%!xxd\ -r	Pr&evies�\ sp�<Tab>:%!xxd\ -r

" Names for buffer menu.
menutrans &Buffers		&Vyrovn�vacia\ pam�
menutrans &Refresh\ menu	Obnovi�
menutrans &Delete		Vymaza�
menutrans &Alternate		Zmeni�
menutrans &Next			�&al�ia
menutrans &Previous		&Predch�dzaj�ca
menutrans [No\ File]		[�iadny\ s�bor]

" Window menu
menutrans &Window			&Okn�
menutrans &New<Tab>^Wn			&Nov�<Tab>^Wn
menutrans S&plit<Tab>^Ws		&Rozdeli�<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	Ro&zdeli�\ na\ #<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	Rozdeli�\ &vertik�lne<Tab>^Wv
menutrans Split\ File\ E&xplorer	Otvori�\ pri&eskumn�ka
menutrans &Close<Tab>^Wc		Zatvor&i�<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	Zatvori�\ i&n�<Tab>^Wo
menutrans Move\ &To			Presun�&�
menutrans &Top<Tab>^WK			Na&hor<Tab>^WK
menutrans &Bottom<Tab>^WJ		Nado&l<Tab>^WJ
menutrans &Left\ side<Tab>^WH		V&�avo<Tab>^WJ
menutrans &Right\ side<Tab>^WL		Vprav&o<Tab>^WL
menutrans Ne&xt<Tab>^Ww			�&al�ie<Tab>^Ww
menutrans P&revious<Tab>^WW		&Predch�dzaj�ce<Tab>^WW
menutrans &Equal\ Size<Tab>^W=		Rovnak�\ v��&ka<Tab>^W=
menutrans &Max\ Height<Tab>^W_		&Maxim�lna\ v��ka<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		Minim�lna\ v�&�ka<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		Maxim�lna\ ��rka<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		Minim�lna\ �irka<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		Rotova&�\ nahor<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		Rotova�\ na&dol<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		Vy&bra�\ p�smo\.\.\.

" The popup menu
menutrans &Undo			&Sp�
menutrans Cu&t			&Vystrihn��
menutrans &Copy			&Kop�rova�
menutrans &Paste		V&lo�i�
menutrans &Delete		V&ymaza�
menutrans Select\ Blockwise	Vybra�\ blokovo
menutrans Select\ &Word		Vybra�\ sl&ovo
menutrans Select\ &Line		Vybra�\ &riadok
menutrans Select\ &Block	Vybra�\ &blok
menutrans Select\ &All		Vybra�\ v�&etko

" The GUI toolbar
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		Otvori� s�bor
    tmenu ToolBar.Save		Ulo�i� s�bor
    tmenu ToolBar.SaveAll	Ulo�i� v�etky
    tmenu ToolBar.Print		Tla�
    tmenu ToolBar.Undo		Sp�
    tmenu ToolBar.Redo		Opakova�
    tmenu ToolBar.Cut		Vystrihn��
    tmenu ToolBar.Copy		Kop�rova�
    tmenu ToolBar.Paste		Vlo�i�
    tmenu ToolBar.Find		N�js�...
    tmenu ToolBar.FindNext	N�js� �al�ie
    tmenu ToolBar.FindPrev	N�js� predch�dzaj�ce
    tmenu ToolBar.Replace	Nahradi�...
    if 0	" disabled; These are in the Windows menu
      tmenu ToolBar.New		Nov� okno
      tmenu ToolBar.WinSplit	Rozdeli� okno
      tmenu ToolBar.WinMax	Maximalizova� okno
      tmenu ToolBar.WinMin	Minimalizova� okno
      tmenu ToolBar.WinVSplit	Rozdeli� okno vertik�lne
      tmenu ToolBar.WinMaxWidth	Maximalizova� ��rku okna
      tmenu ToolBar.WinMinWidth	Minimalizova� ��rku okna
      tmenu ToolBar.WinClose	Zatvori� okno
    endif
    tmenu ToolBar.LoadSesn	Na��ta� sedenie
    tmenu ToolBar.SaveSesn	Ulo�i� sedenie
    tmenu ToolBar.RunScript	Spusti� skript
    tmenu ToolBar.Make		Spusti� make
    tmenu ToolBar.Shell		Spusti� �el
    tmenu ToolBar.RunCtags	Spusti� ctags
    tmenu ToolBar.TagJump	Sko�i� na tag pod kurzorom
    tmenu ToolBar.Help		Pomocn�k
    tmenu ToolBar.FindHelp	N�js� pomocn�ka k...
  endfun
endif

" Syntax menu
menutrans &Syntax		&Syntax
menutrans Set\ '&syntax'\ only	Nastavi�\ iba\ 'syntax'
menutrans Set\ '&filetype'\ too	Nastavi�\ aj\ 'filetype'
menutrans &Off			&Vypn��
menutrans &Manual		&Ru�ne
menutrans A&utomatic		A&utomaticky
" menutrans o&n\ (this\ file)	&Zapn��\ (pre\ tento\ s�bor)
" menutrans o&ff\ (this\ file)	Vyp&n��\ (pre\ tento\ s�bor )
menutrans on/off\ for\ &This\ file	Zapn��/vypn��\ pre\ &tento\ s�bor
menutrans Co&lor\ test		Test\ &farieb
menutrans &Highlight\ test	&Test\ zv�raz�ovania
menutrans &Convert\ to\ HTML	&Previes�\ do\ HTML

let &cpo = s:keepcpo
unlet s:keepcpo
