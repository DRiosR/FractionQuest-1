" Menu Translations:    Czech (ISO8859-2)
" Maintainer:           Jiri Sedlak <jiri_sedlak@users.sourceforge.net>
" Previous maintainer:  Jiri Brezina
" Based on:             menu.vim (2012-10-21)
" Generated from menu_cs_cz.utf-8.vim, DO NOT EDIT

" Quit when menu translations have already been done.
if exists("did_menu_trans")
   finish
endif

let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding iso8859-2

" {{{ File menu
menutrans &File				&Soubor
menutrans &Open\.\.\.<Tab>:e		&Otev��t\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	Otev��t\ v\ no&v�m\ okn�\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	Otev��t\ tab\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		&Nov�<Tab>:enew
menutrans &Close<Tab>:close		&Zav��t<Tab>:close
menutrans &Save<Tab>:w			&Ulo�it<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	Ulo�it\ &jako\.\.\.<Tab>:sav
if has("printer") || has("unix")
   menutrans &Print			&Tisk
endif
menutrans Sa&ve-Exit<Tab>:wqa		U&lo�it\ a\ ukon�it<Tab>:wqa
menutrans E&xit<Tab>:qa			&Ukon�it<Tab>:qa

if has("diff")
   menutrans Split\ &Diff\ with\.\.\.	Rozd�lit\ okno\ -\ &Diff\.\.\.
   menutrans Split\ Patched\ &By\.\.\.	Rozd�lit\ okno\ -\ &Patch\.\.\.
endif
" }}}

" {{{ Edit menu
menutrans &Edit				�pr&avy
menutrans &Undo<Tab>u			&Zp�t<Tab>u
menutrans &Redo<Tab>^R			Z&ru�it\ vr�cen�<Tab>^R
menutrans Rep&eat<Tab>\.		&Opakovat<Tab>\.
menutrans Cu&t<Tab>"+x			&Vy��znout<Tab>"+x
menutrans &Copy<Tab>"+y			&Kop�rovat<Tab>"+y
menutrans &Paste<Tab>"+gP		V&lo�it<Tab>"+gP
menutrans Put\ &Before<Tab>[p		Vlo�it\ &p�ed<Tab>[p
menutrans Put\ &After<Tab>]p		Vlo�i&t\ za<Tab>]p
if has("win32") || has("win16")
   menutrans &Delete<Tab>x			&Smazat<Tab>x
endif
menutrans &Select\ All<Tab>ggVG		Vy&brat\ v�e<Tab>ggVG
if has("win32")  || has("win16") || has("gui_gtk") || has("gui_kde") || has("gui_motif")
   menutrans &Find\.\.\.			&Hledat\.\.\.
   menutrans Find\ and\ Rep&lace\.\.\.	&Nahradit\.\.\.
else
   menutrans Find<Tab>/ &Hledat<Tab>/
   menutrans Find\ and\ Rep&lace<Tab>:%s  &Nahradit<Tab>:%s
   menutrans Find\ and\ Rep&lace<Tab>:s   &Nahradit<Tab>:s
endif
menutrans Settings\ &Window		Nastav&en�\ okna
" {{{2 Edit -1
menutrans Startup\ &Settings  Po��te�n�\ &nastaven�
menutrans &Global\ Settings				&Glob�ln�\ nastaven�
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	&P�epnout\ zv�razn�n�\ vzoru<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		P�epnout\ ignorov�n�\ &VERZ�LEK<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		P�epnout\ &Showmatch\ \{\(\[\])\}<Tab>:set\ sm!
menutrans &Context\ lines				Zobrazit\ konte&xt\ kurzoru
menutrans &Virtual\ Edit				Virtu�ln�\ p&ozice\ kurzoru
menutrans Never						Nikdy
menutrans Block\ Selection				V�b�r\ Bloku
menutrans Insert\ mode					Insert\ m�d
menutrans Block\ and\ Insert				Blok\ a\ Insert
menutrans Always					V�dycky
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		P�epnout\ Insert\ m�&d<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!		P�epnout\ kompatibiln�\ re�im\ s\ 'vi'<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.				Nastavit\ &cestu\ k\ prohled�v�n�\.\.\.
menutrans Ta&g\ Files\.\.\.				Ta&g\ soubory\.\.\.
menutrans Toggle\ &Toolbar				P�epnout\ &Toolbar
menutrans Toggle\ &Bottom\ Scrollbar			P�&epnout\ doln�\ rolovac�\ li�tu
menutrans Toggle\ &Left\ Scrollbar			P�epnout\ &levou\ rolovac�\ li�tu
menutrans Toggle\ &Right\ Scrollbar			P�epnout\ p&ravou\ rolovac�\ li�tu
" {{{2 Edit -2
menutrans F&ile\ Settings				Nastaven�\ so&uboru
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	P�epnout\ ��slov�n�\ ��&dk�<Tab>:set\ nu!
menutrans Toggle\ relati&ve\ Line\ Numbering<Tab>:set\ rnu! P�epnout\ relativn�\ ��slov�n�\ ��&dk�<Tab>:set\ rnu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		P�epnout\ &List\ m�d<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		P�epnout\ zala&mov�n�\ ��dk�<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	P�epnout\ zl&om\ ve\ slov�<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		P�epnout\ &expand-tab<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		P�epnout\ &auto-indent<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		P�epnout\ &C-indenting<Tab>:set\ cin!
menutrans &Shiftwidth					Nastav&it\ ���ku\ od&sazen�
menutrans Soft\ &Tabstop				Nastavit\ Soft\ &Tabstop
menutrans Te&xt\ Width\.\.\.				���ka\ te&xtu\.\.\.
menutrans &File\ Format\.\.\.				&Form�t\ souboru\.\.\.
" {{{2 Edit -3
menutrans C&olor\ Scheme		Barevn�\ s&ch�ma
menutrans &Keymap			Kl�vesov�\ m&apa
if has("win32") || has("win16") || has("gui_motif") || has("gui_gtk") || has("gui_kde") || has("gui_photon") || has("gui_mac")
   menutrans Select\ Fo&nt\.\.\.		Vybrat\ p�s&mo\.\.\.
endif
" }}}1

" {{{ Programming menu
menutrans &Tools			N�st&roje
menutrans &Jump\ to\ this\ tag<Tab>g^]	&Sko�it\ na\ tag<Tab>g^]
menutrans Jump\ &back<Tab>^T		Sko�it\ &zp�t<Tab>^T
menutrans Build\ &Tags\ File		&Vytvo�it\ soubor\ tag�

if has("spell")
   menutrans &Spelling			&Kontrola\ pravopisu
   menutrans &Spell\ Check\ On		&Zapnout\ kontrolu\ pravopisu
   menutrans Spell\ Check\ &Off		&Vypnout\ kontrolu\ pravopisu
   menutrans To\ &Next\ error<Tab>]s	&Dal��\ chyba<Tab>]s
   menutrans To\ &Previous\ error<Tab>[s	&P�edchoz�\ chyba<Tab>[s
   menutrans Suggest\ &Corrections<Tab>z=	&Navrhnout\ opravy<Tab>z=
   menutrans &Repeat\ correction<Tab>:spellrepall	Zopakovat\ &opravu<Tab>:spellrepall
   menutrans Set\ language\ to\ "en"	Nastavit\ jazyk\ na\ "en"
   menutrans Set\ language\ to\ "en_au"	Nastavit\ jazyk\ na\ "en_au"
   menutrans Set\ language\ to\ "en_ca"	Nastavit\ jazyk\ na\ "en_ca"
   menutrans Set\ language\ to\ "en_gb"	Nastavit\ jazyk\ na\ "en_gb"
   menutrans Set\ language\ to\ "en_nz"	Nastavit\ jazyk\ na\ "en_nz"
   menutrans Set\ language\ to\ "en_us"	Nastavit\ jazyk\ na\ "en_us"
   menutrans &Find\ More\ Languages	Nal�zt\ dal��\ &jazyky
   let g:menutrans_set_lang_to = "Nastavit jazyk na"
endif

if has("Folding")   
   menutrans &Folding			&Skl�d�n�
   menutrans &Enable/Disable\ folds<Tab>zi &Ano/Ne<Tab>zi
   menutrans &View\ Cursor\ Line<Tab>zv	Zobrazit\ ��dek\ &kurzoru<Tab>zv
   menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx		Zobrazit\ &pouze\ ��dek\ kurzoru\ <Tab>zMzx
   menutrans C&lose\ more\ folds<Tab>zm	Slo�it\ &jednu\ �rove�\ sklad�<Tab>zm
   menutrans &Close\ all\ folds<Tab>zM	Slo�it\ v�echny\ sklady<Tab>zM
   menutrans O&pen\ more\ folds<Tab>zr	P�idat\ jednu\ �rove�\ sklad�<Tab>zr
   menutrans &Open\ all\ folds<Tab>zR	&Otev��t\ v�echny\ sklady<Tab>zR
   menutrans Fold\ Met&hod			&Metoda\ skl�d�n�
   menutrans M&anual			&Ru�n�
   menutrans I&ndent			&Odsazen�
   menutrans E&xpression	&V�raz
   menutrans S&yntax			&Syntaxe
   menutrans &Diff			&Rozd�ly
   menutrans Ma&rker			&Zna�ky
   menutrans Create\ &Fold<Tab>zf		Vytvo�it\ &sklad<Tab>zf
   menutrans &Delete\ Fold<Tab>zd		Vymazat\ skla&d<Tab>zd
   menutrans Delete\ &All\ Folds<Tab>zD	Vymazat\ v�echny\ sklady<Tab>zD
   menutrans Fold\ col&umn\ width		Sloupec\ zob&razen�\ sklad�
endif

if has("diff")
   menutrans &Update			&Obnovit
   menutrans &Get\ Block			&Sejmout\ Blok
   menutrans &Put\ Block			&Vlo�it\ Blok
endif

menutrans &Make<Tab>:make		&Make<Tab>:make
menutrans &List\ Errors<Tab>:cl		V�pis\ &chyb<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	V�p&is\ zpr�v<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		Dal��\ ch&yba<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	&P�edchoz�\ chyba<Tab>:cp
menutrans &Older\ List<Tab>:cold	Sta&r��\ seznam<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	N&ov�j��\ seznam<Tab>:cnew
menutrans Error\ &Window		Chybov�\ o&kno
menutrans SeT\ Compiler			Nas&taven�\ kompil�toru
menutrans &Update<Tab>:cwin		O&bnovit<Tab>:cwin
menutrans &Open<Tab>:copen		&Otev��t<Tab>:copen
menutrans &Close<Tab>:cclose		&Zav��t<Tab>:cclose
menutrans Se&T\ Compiler		N&astavit\ kompil�tor

menutrans &Convert\ to\ HEX<Tab>:%!xxd	P�ev�st\ do\ �estn�ctkov�ho\ form�t&u<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r P�&ev�st\ zp�t<Tab>:%!xxd\ -r
" }}}

" {{{ Syntax menu
menutrans &Syntax		Synta&xe
menutrans Set\ '&syntax'\ only	Nastavit\ pouze\ 'synta&x'
menutrans Set\ '&filetype'\ too	Nastavit\ tak�\ '&filetype'
menutrans &Off			&Vypnout
menutrans &Manual		&Ru�n�
menutrans A&utomatic		A&utomaticky
menutrans on/off\ for\ &This\ file	&P�epnout\ (pro\ tento\ soubor)
menutrans o&ff\ (this\ file)	vyp&nout\ (pro\ tento\ soubor)
menutrans Co&lor\ test		Test\ &barev
menutrans &Highlight\ test	&Test\ zv�raz�ov�n�
menutrans &Convert\ to\ HTML	P�ev�st\ &do\ HTML
menutrans &Show\ filetypes\ in\ menu	&Zobrazit\ v�b�r\ mo�nost�
" }}}

" {{{ Menu Buffers
menutrans &Buffers		&Buffery
menutrans &Refresh\ menu	&Obnovit\ menu
menutrans &Delete		Z&ru�it
menutrans &Alternate		&Zm�nit
menutrans &Next			&Dal��
menutrans &Previous		&P�edchoz�
" }}}

" {{{ Menu Window
menutrans &Window			&Okna
menutrans &New<Tab>^Wn			&Nov�<Tab>^Wn
menutrans S&plit<Tab>^Ws		&Rozd�lit<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	Ro&zd�lit\ na\ #<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	Rozd�lit\ &vertik�ln�<Tab>^Wv
menutrans Split\ File\ E&xplorer	Rozd�lit\ -\ File\ E&xplorer
menutrans Move\ &To			&P�esun
menutrans &Top<Tab>^WK			&Nahoru<Tab>^WK
menutrans &Bottom<Tab>^WJ		&Dolu<Tab>^WJ
menutrans &Left\ side<Tab>^WH		&Vlevo<Tab>^WH
menutrans &Right\ side<Tab>^WL		Vp&ravo<Tab>^WL

menutrans &Close<Tab>^Wc		Zav��&t<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	Zav��t\ &ostatn�<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			&Dal��<Tab>^Ww
menutrans P&revious<Tab>^WW		&P�edchoz�<Tab>^WW
menutrans &Equal\ Size<Tab>^W=		&Stejn�\ v��ka<Tab>^W=
menutrans &Max\ Height<Tab>^W_		Maxim�ln�\ v��&ka<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		M&inim�ln�\ v��ka<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		&Maxim�ln�\ ���ka<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		Minim�ln�\ ���k&a<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		Rotovat\ na&horu<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		Rotovat\ &dol�<Tab>^Wr

" {{{ Help menu
menutrans &Help			&N�pov�da
menutrans &Overview<Tab><F1>	&P�ehled<Tab><F1>
menutrans &User\ Manual		&U�ivatelsk�\ Manu�l
menutrans &How-to\ links	Ho&wto
menutrans &GUI			&Grafick�\ rozhran�
menutrans &Credits		&Auto�i
menutrans Co&pying		&Licen�n�\ politika
menutrans &Sponsor/Register	Sponzorov�n�/&Registrace
menutrans &Find\.\.\.		&Hledat\.\.\.
menutrans O&rphans		O&si�el�\ d�ti
menutrans &Version		&Verze
menutrans &About		&O\ aplikaci
" }}}

" {{{ The popup menu
menutrans &Undo			&Zp�t
menutrans Cu&t			&Vy��znout
menutrans &Copy			&Kop�rovat
menutrans &Paste		&Vlo�it
menutrans &Delete		&Smazat
menutrans Select\ Blockwise	Vybrat\ blokov�
menutrans Select\ &Word		Vybrat\ &slovo
menutrans Select\ Pa&ragraph Vybrat\ &odstavec
menutrans Select\ &Sentence   Vybrat\ v�&tu
menutrans Select\ &Line		Vybrat\ &��dek
menutrans Select\ &Block	Vybrat\ &blok
menutrans Select\ &All		Vybrat\ &v�e
" }}}

" {{{ The GUI toolbar
if has("toolbar")
   if exists("*Do_toolbar_tmenu")
      delfun Do_toolbar_tmenu
   endif
   fun Do_toolbar_tmenu()
      tmenu ToolBar.Open		Otev��t soubor
      tmenu ToolBar.Save		Ulo�it soubor
      tmenu ToolBar.SaveAll		Ulo�it v�echny soubory
      if has("printer") || has("unix")
         tmenu ToolBar.Print		Tisk
      endif
      tmenu ToolBar.Undo		Zp�t
      tmenu ToolBar.Redo		Zru�it vr�cen�
      tmenu ToolBar.Cut		Vy��znout
      tmenu ToolBar.Copy		Kop�rovat
      tmenu ToolBar.Paste		Vlo�it
      tmenu ToolBar.Find		Hledat...
      tmenu ToolBar.FindNext	Hledat dal��
      tmenu ToolBar.FindPrev	Hledat p�edchoz�
      tmenu ToolBar.Replace		Nahradit...
      if 0	" disabled; These are in the Windows menu
         tmenu ToolBar.New		Nov� okno
         tmenu ToolBar.WinSplit	Rozd�lit okno
         tmenu ToolBar.WinMax		Maximalizovat okno
         tmenu ToolBar.WinMin		Minimalizovat okno
         tmenu ToolBar.WinClose	Zav��t okno
      endif
      tmenu ToolBar.LoadSesn	Na��st sezen�
      tmenu ToolBar.SaveSesn	Ulo�it sezen�
      tmenu ToolBar.RunScript	Spustit skript
      tmenu ToolBar.Make		Spustit make
      tmenu ToolBar.Shell		Spustit shell
      tmenu ToolBar.RunCtags	Spustit ctags
      tmenu ToolBar.TagJump		Sko�it na tag pod kurzorem
      tmenu ToolBar.Help		N�pov�da
      tmenu ToolBar.FindHelp	Hledat n�pov�du k...
   endfun
endif
" }}}

" {{{ DIALOG TEXTS
let g:menutrans_no_file = "[��dn� soubor]"
let g:menutrans_help_dialog = "Zadejte hledan� p��kaz nebo slovo:\n\n\tP�idejte i_ pro p��kazy vkl�dac�ho re�imu (nap�. i_CTRL-X)\n\tP�idejte c_ pro p��kazy p��kazov� ��dky (nap�. c_<Del>)\n\tP�idejte ' pro jm�no volby (nap�. 'shiftwidth')"
let g:menutrans_path_dialog = "Zadejte cesty pro vyhled�v�n� soubor�. Jednotliv� cesty odd�lte ��rkou"
let g:menutrans_tags_dialog = "Zadejte jm�na soubor� s tagy. Jm�na odd�lte ��rkami."
let g:menutrans_textwidth_dialog = "Zadejte d�lku ��dku (0 pro zak�z�n� form�tov�n�):"
let g:menutrans_fileformat_dialog = "Vyberte typ konce ��dk�"
" }}}" 

let &cpo = s:keepcpo
unlet s:keepcpo



" vim:set foldmethod=marker expandtab tabstop=3 shiftwidth=3:
