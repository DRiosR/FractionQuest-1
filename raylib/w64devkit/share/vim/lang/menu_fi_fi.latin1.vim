" Menu Translations:	Finnish
" Maintainer:		Flammie Pirinen <flammie@iki.fi>
" Last Change:		2020 Apr 23
" Original translations

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

" Translations should be in latin1, if it requires latin9 or even unicode,
" change this:
if &enc != "cp1252" && &enc != "iso-8859-15" && &enc != "iso-8859-1"
  scriptencoding latin1
endif

" Accels: TMYSPIO
menutrans &File				&Tiedosto
" Accels: AJTUSNIDPOE
menutrans &Open\.\.\.<Tab>:e			&Avaa\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp		Avaa\ &jaettuna\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew		Avaa\ &tabissa\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew			&Uusi<Tab>:enew
menutrans &Close<Tab>:close			&Sulje<Tab>:close
" -SEP1-
menutrans &Save<Tab>:w				Talle&nna<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav		Tallenna\ n&imell�\.\.\.<Tab>:sav
" -SEP2-
menutrans Split\ &Diff\ with\.\.\.		Jaa\ &diffill�\.\.\.
menutrans Split\ Patched\ &By\.\.\.		Jaa\ &patchilla\.\.\.
" -SEP3-
menutrans &Print				Tul&osta
" -SEP4-
menutrans Sa&ve-Exit<Tab>:wqa			Tall&enna\ ja\ lopeta<Tab>:wqa
menutrans E&xit<Tab>:qa				&Lopeta<Tab>:qa


menutrans &Edit				&Muokkaa
" Accels: KPTLOIEJSAHRUYKVNF
menutrans &Undo<Tab>u				&Kumoa<Tab>u
menutrans &Redo<Tab>^R				&Palauta<Tab>^R
menutrans Rep&eat<Tab>\.			&Toista<Tab>\.
" -SEP1-
menutrans Cu&t<Tab>"+x				&Leikkaa<Tab>"+x
menutrans &Copy<Tab>"+y				K&opioi<Tab>"+y
menutrans &Paste<Tab>"+gP			L&iit�<Tab>"+gP
menutrans Put\ &Before<Tab>[p			Lis��\ &ennen<Tab>[p
menutrans Put\ &After<Tab>]p			Lis��\ &j�lkeen<Tab>]p
menutrans &Delete<Tab>x				Poi&sta<Tab>x
menutrans &Select\ All<Tab>ggVG			V&alitse\ kaikki<Tab>ggVG
" -SEP2-
menutrans &Find\.\.\.				&Hae\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.		Hae\ ja\ ko&rvaa\.\.\.
menutrans &Find<Tab>/				&Hae<Tab>/
menutrans Find\ and\ Rep&lace<Tab>:%s		Hae\ ja\ ko&rvaa<Tab>:%s
menutrans Find\ and\ Rep&lace<Tab>:s		Hae\ ja\ ko&rvaa<Tab>:s
" -SEP3-
menutrans Settings\ &Window			Aset&usikkuna
menutrans Startup\ &Settings		&K�ynnistysasetukset
menutrans &Global\ Settings			&Yleiset\ asetukset
" Submenu:
" Accels: KOSHVYIATLEPR
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	&Korostus<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		&Ohita\ kirjaintaso<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		&Suljekorostus<Tab>:set\ sm!

menutrans &Context\ lines				&Huomioitavat\ kontekstirivit
" Subsubmenu:
" Accels: ELSOA
menutrans &Virtual\ Edit				&Virtuaalimuokkaus
menutrans Never							&Ei\ koskaan
menutrans Block\ Selection					&Lohkovalinta
menutrans Insert\ mode						&Sy�tt�tila
menutrans Block\ and\ Insert					L&ohkosy�tt�tila
menutrans Always						&Aina

menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		S&y�tt�tila<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!		V&i-tila<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.				H&akupolku\.\.\.
menutrans Ta&g\ Files\.\.\.				&T�gitiedostot\.\.\.
" -SEP1-
menutrans Toggle\ &Toolbar				Ty�ka&lupalkki
menutrans Toggle\ &Bottom\ Scrollbar			Vaakavi&erityspalkki
menutrans Toggle\ &Left\ Scrollbar			Vasen\ &pystyvierityspalkki
menutrans Toggle\ &Right\ Scrollbar			Oikea\ pystyvie&rityspalkki

let g:menutrans_path_dialog = "Anna tiedostojen hakupolku.\nErota hakemistot pilkuin."
let g:menutrans_tags_dialog = "Anna t�gitiedostojen nimet.\nErota tidostot pilkuin."

menutrans F&ile\ Settings			Tiedostoasetu&kset
" Submenu:
" Accels: NLRSTACIBEM
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	Rivi&numerointi<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		&Listaustila<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		&Rivitys<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	&Sanoittainen\ rivitys<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		Muuta\ &tabit\ v�leiksi<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		&Automaattinen\ sisennys<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		&C-kielen\ sisennys<Tab>:set\ cin!
" -SEP2-
menutrans &Shiftwidth					S&isennysleveys
menutrans Soft\ &Tabstop				N�enn�ista&bulointi
menutrans Te&xt\ Width\.\.\.				Tekstinl&eveys\.\.\.
menutrans &File\ Format\.\.\.				Tiedosto&muoto\.\.\.

let g:menutrans_textwidth_dialog = "Anna uusi tekstin leveys\n(0 poistaa k�yt�st�)"
let g:menutrans_fileformat_dialog = "Anaa tiedoston kirjoitusmuoto."
let g:menutrans_fileformat_choices = " &Unix \n &Dos \n &Mac \n &Peru "

menutrans C&olor\ Scheme			&V�riteema
menutrans &Keymap				&N�pp�inkartta
menutrans None					Ei\ mik��n
menutrans Select\ Fo&nt\.\.\.			Valitse\ &fontti\.\.\.


menutrans &Tools			T&y�kalut
" Accels: ___OTDM__
menutrans &Jump\ to\ this\ tag<Tab>g^]		Siirry\ t�giin<Tab>g^]
menutrans Jump\ &back<Tab>^T			Siirry\ takaisin<Tab>^T
menutrans Build\ &Tags\ File			Luo\ t�gitiedosto

" -SEP1-
menutrans &Spelling			&Oikeinkirjoitus
" Submenu:
" Accels: OSEKT
menutrans &Spell\ Check\ On			&Oikaisuluku\ p��lle
menutrans Spell\ Check\ &Off			&Oikaisuluku\ pois\ p��lt�
menutrans To\ &Next\ error<Tab>]s		&Seuraavaan\ virheeseen<Tab>]s
menutrans To\ &Previous\ error<Tab>[s		&Edelliseen\ virheeseen<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=		Ehdota\ &korjausta<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	&Toista\ korjaus<Tab>:spellrepall

menutrans Set\ language\ to\ "en"		Aseta\ kieleksi\ en
menutrans Set\ language\ to\ "en_au"		Aseta\ kieleksi\ en_au
menutrans Set\ language\ to\ "en_ca"		Aseta\ kieleksi\ en_ca
menutrans Set\ language\ to\ "en_gb"		Aseta\ kieleksi\ en_gb
menutrans Set\ language\ to\ "en_nz"		Aseta\ kieleksi\ en_nz
menutrans Set\ language\ to\ "en_us"		Aseta\ kieleksi\ en_us

menutrans &Find\ More\ Languages		Hae\ lis��\ kieli�



menutrans &Folding				&Taitokset
" Accels: TNVSAPEOKL
menutrans &Enable/Disable\ folds<Tab>zi			&Taitokset<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv			&N�yt�\ kursorin\ rivi<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx		N�yt�\ &vain\ kursorin\ rivi<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm			&Sulje\ lis��\ taitoksia<Tab>zm
menutrans &Close\ all\ folds<Tab>zM			&Sulje\ kaikki\ taitokset<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr			&Avaa\ lis��\ taitoksia<Tab>zr
menutrans &Open\ all\ folds<Tab>zR			&Avaa\ kaikki\ taitokset<Tab>zR
" -SEP1-
menutrans Fold\ Met&hod					Taitteluta&pa
" Submenu:
" Accels: MILSDM
menutrans M&anual						&Manuaalinen
menutrans I&ndent						S&isennys
menutrans E&xpression						I&lmaus
menutrans S&yntax						&Syntaksi
menutrans &Diff							&Diff
menutrans Ma&rker						&Merkit

menutrans Create\ &Fold<Tab>zf				T&ee\ taitos<Tab>zf
menutrans &Delete\ Fold<Tab>zd				P&oista\ taitos<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD			Poista\ &kaikki\ taitokset<Tab>zD
" -SEP2-
menutrans Fold\ col&umn\ width				Taitossarakkeen\ &leveys

menutrans &Diff					&Diffit
" Submenu:
" Accels: PHL
menutrans &Update					&P�ivit�
menutrans &Get\ Block					&Hae\ lohko
menutrans &Put\ Block					&Lis��\ lohko

" -SEP2-
menutrans &Make<Tab>:make			&Make<Tab>:make
menutrans &List\ Errors<Tab>:cl			Virheluettelo<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!		Virheviestit<Tab>:cl!
menutrans &Next\ Error<Tab>:cn			Seuraava\ virhe<Tab>:cn
menutrans &Previous\ Error<Tab>:cp		Edellinen\ virhe<Tab>:cp
menutrans &Older\ List<Tab>:cold		Edellinen\ lista<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew		Seuraava\ lista<Tab>:cnew

menutrans Error\ &Window			Virheikkuna
" Submenu:
" Accels: PAS
menutrans &Update<Tab>:cwin				&P�ivit�<Tab>:cwin
menutrans &Open<Tab>:copen				&Avaa<Tab>:copen
menutrans &Close<Tab>:cclose				&Sulje<Tab>:cclose

menutrans Se&T\ Compiler			Ase&ta\ k��nt�j�
" -SEP3-
menutrans &Convert\ to\ HEX<Tab>:%!xxd		Muunna\ heksoiksi<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r		Muunna\ takaisin<Tab>:%!xxd\ -r


menutrans &Syntax			&Syntaksi
" Accels: NSFPMAT
menutrans &Show\ filetypes\ in\ menu		&N�yt�\ tiedostotyypit\ valikossa
" -SEP1-
menutrans Set\ '&syntax'\ only			Aseta\ vain\ &syntax
menutrans Set\ '&filetype'\ too			Aseta\ my�s\ &filetype
menutrans &Off					&Pois\ p��lt�
" -SEP3-
menutrans Co&lor\ test				Testaa\ v�rit
menutrans &Highlight\ test			Testaa\ korostukset
menutrans &Convert\ to\ HTML			Muunna\ HTML:ksi
" -SEP2-
menutrans &Off					&Pois\ p��lt�
menutrans &Manual				&Manuaalinen
menutrans A&utomatic				&Automaattinen
menutrans on/off\ for\ &This\ file		Kytke\ &t�lle\ tiedostolle

" The Start Of The Syntax Menu
menutrans ABC\ music\ notation		ABC\ (notation\ musicale)
menutrans AceDB\ model			Mod�le\ AceDB
menutrans Apache\ config		Config\.\ Apache
menutrans Apache-style\ config		Config\.\ style\ Apache
menutrans ASP\ with\ VBScript		ASP\ avec\ VBScript
menutrans ASP\ with\ Perl		ASP\ avec\ Perl
menutrans Assembly			Assembleur
menutrans BC\ calculator		Calculateur\ BC
menutrans BDF\ font			Fonte\ BDF
menutrans BIND\ config			Config\.\ BIND
menutrans BIND\ zone			Zone\ BIND
menutrans Cascading\ Style\ Sheets	Feuilles\ de\ style\ en\ cascade
menutrans Cfg\ Config\ file		Fichier\ de\ config\.\ \.cfg
menutrans Cheetah\ template		Patron\ Cheetah
menutrans commit\ file			Fichier\ commit
menutrans Generic\ Config\ file		Fichier\ de\ config\.\ g�n�rique
menutrans Digital\ Command\ Lang	DCL
menutrans DNS/BIND\ zone		Zone\ BIND/DNS
menutrans Dylan\ interface		Interface
menutrans Dylan\ lid			LID
menutrans Elm\ filter\ rules		R�gles\ de\ filtrage\ Elm
menutrans ERicsson\ LANGuage		Erlang\ (langage\ Ericsson)
menutrans Essbase\ script		Script\ Essbase
menutrans Eterm\ config			Config\.\ Eterm
menutrans Exim\ conf			Config\.\ Exim
menutrans Fvwm\ configuration		Config\.\ Fvwm
menutrans Fvwm2\ configuration		Config\.\ Fvwm2
menutrans Fvwm2\ configuration\ with\ M4	Config\.\ Fvwm2\ avec\ M4
menutrans GDB\ command\ file		Fichier\ de\ commandes\ GDB
menutrans HTML\ with\ M4		HTML\ avec\ M4
menutrans Cheetah\ HTML\ template	Patron\ Cheetah\ pour\ HTML
menutrans IDL\Generic\ IDL		IDL\IDL\ g�n�rique
menutrans IDL\Microsoft\ IDL		IDL\IDL\ Microsoft
menutrans Indent\ profile		Profil\ Indent
menutrans Inno\ setup			Config\.\ Inno
menutrans InstallShield\ script		Script\ InstallShield
menutrans KDE\ script			Script\ KDE
menutrans LFTP\ config			Config\.\ LFTP
menutrans LifeLines\ script		Script\ LifeLines
menutrans Lynx\ Style			Style\ Lynx
menutrans Lynx\ config			Config\.\ Lynx
menutrans Man\ page			Page\ Man
menutrans MEL\ (for\ Maya)		MEL\ (pour\ Maya)
menutrans 4DOS\ \.bat\ file		Fichier\ \.bat\ 4DOS
menutrans \.bat\/\.cmd\ file		Fichier\ \.bat\ /\ \.cmd
menutrans \.ini\ file			Fichier\ \.ini
menutrans Module\ Definition		D�finition\ de\ module
menutrans Registry			Extrait\ du\ registre
menutrans Resource\ file		Fichier\ de\ ressources
menutrans Novell\ NCF\ batch		Batch\ Novell\ NCF
menutrans NSIS\ script			Script\ NSIS
menutrans Oracle\ config		Config\.\ Oracle
menutrans Palm\ resource\ compiler	Compil\.\ de\ resources\ Palm
menutrans PHP\ 3-4			PHP\ 3\ et\ 4
menutrans Postfix\ main\ config		Config\.\ Postfix
menutrans Povray\ scene\ descr		Sc�ne\ Povray
menutrans Povray\ configuration		Config\.\ Povray
menutrans Purify\ log			Log\ Purify
menutrans Readline\ config		Config\.\ Readline
menutrans RCS\ log\ output		Log\ RCS
menutrans RCS\ file			Fichier\ RCS
menutrans RockLinux\ package\ desc\.	Desc\.\ pkg\.\ RockLinux
menutrans Samba\ config			Config\.\ Samba
menutrans SGML\ catalog			Catalogue\ SGML
menutrans SGML\ DTD			DTD\ SGML
menutrans SGML\ Declaration		D�claration\ SGML
menutrans Shell\ script			Script\ shell
menutrans sh\ and\ ksh			sh\ et\ ksh
menutrans Sinda\ compare		Comparaison\ Sinda
menutrans Sinda\ input			Entr�e\ Sinda
menutrans Sinda\ output			Sortie\ Sinda
menutrans SKILL\ for\ Diva		SKILL\ pour\ Diva
menutrans Smarty\ Templates		Patrons\ Smarty
menutrans SNNS\ network			R�seau\ SNNS
menutrans SNNS\ pattern			Motif\ SNNS
menutrans SNNS\ result			R�sultat\ SNNS
menutrans Snort\ Configuration		Config\.\ Snort
menutrans Squid\ config			Config\.\ Squid
menutrans Subversion\ commit		Commit\ Subversion
menutrans TAK\ compare			Comparaison\ TAK
menutrans TAK\ input			Entr�e\ TAK
menutrans TAK\ output			Sortie\ TAK
menutrans TeX\ configuration		Config\.\ TeX
menutrans TF\ mud\ client		TF\ (client\ MUD)
menutrans Tidy\ configuration		Config\.\ Tidy
menutrans Trasys\ input			Entr�e\ Trasys
menutrans Command\ Line			Ligne\ de\ commande
menutrans Geometry			G�om�trie
menutrans Optics			Optiques
menutrans Vim\ help\ file		Fichier\ d'aide\ Vim
menutrans Vim\ script			Script\ Vim
menutrans Viminfo\ file			Fichier\ Viminfo
menutrans Virata\ config		Config\.\ Virata
menutrans Wget\ config			Config\.\ wget
menutrans Whitespace\ (add)		Espaces\ et\ tabulations
menutrans WildPackets\ EtherPeek\ Decoder	D�codeur\ WildPackets\ EtherPeek
menutrans X\ resources			Resources\ X
menutrans XXD\ hex\ dump		Sortie\ hexa\.\ de\ xxd
menutrans XFree86\ Config		Config\.\ XFree86

menutrans &Buffers			&Puskurit
" Accels: VPASE
menutrans Dummy					Dummy
menutrans &Refresh\ menu			P�ivit�\ &valikko
menutrans &Delete				&Poista
menutrans &Alternate				V&aihda
menutrans &Next					&Seuraava
menutrans &Previous				&Edellinen
" -SEP-
" (Alphabet menus)
menutrans &others				&muut
let g:menutrans_no_file = "[Ei tiedostoja]"


menutrans &Window			&Ikkuna
" Accels: UJPTSMIYAKOL
menutrans &New<Tab>^Wn				&Uusi\ ikkuna<Tab>^Wn
menutrans S&plit<Tab>^Ws			&Jaa<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^		&Jaa\ #<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv		Jaa\ &pystysuunnassa<Tab>^Wv
menutrans Split\ File\ E&xplorer		Jaa\ &tiedostonhallinnalle
" -SEP1-
menutrans &Close<Tab>^Wc			&Sulje<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo		Sulje\ &muut<Tab>^Wo
" -SEP2-
menutrans Move\ &To				S&iirr�
" Submenu:
" Accels: YAOV
menutrans &Top<Tab>^WK					&Yl�s<Tab>^WK
menutrans &Bottom<Tab>^WJ				&Alas<Tab>^WJ
menutrans &Left\ side<Tab>^WH				&Oikealle<Tab>^WH
menutrans &Right\ side<Tab>^WL				&Vasemmalle<Tab>^WL

menutrans Rotate\ &Up<Tab>^WR			Vaihda\ &ylemm�s<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr			Vaihda\ &alemmas<Tab>^Wr
" -SEP3-
menutrans &Equal\ Size<Tab>^W=			Saman\ &kokoisiksi<Tab>^W=
menutrans &Max\ Height<Tab>^W_			Enimm�isk&orkeuteen<Tab>^W_
menutrans M&in\ Height<Tab>^W1_			V�himm�isk&orkeuteen<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|			Enimm�is&leveyteen<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|			V�himm�is&leveyteen<Tab>^W1\|

" (Plugin menus here)
menutrans Plugin			Liit�nn�iset

menutrans &Help				&Ohje
" Accels: YKUHTLROVI
menutrans &Overview<Tab><F1>			&Yleiskatsaus<Tab><F1>
menutrans &User\ Manual				&K�ytt�ohje
menutrans &How-to\ links			K&UINKA-linkkej�
menutrans &Find\.\.\.				&Hae\.\.\.
" -sep1-
menutrans &Credits				&Tekij�t
menutrans Co&pying				&Lisenssi
menutrans &Sponsor/Register			Sponsoroi/&Rekister�i
menutrans O&rphans				&Orvoista
" -sep2-
menutrans &Version				&Versio
menutrans &About				T&ietoja

let g:menutrans_help_dialog = "Anna komento tai sana, jota haetaan ohjeesta.\n\nAloita i_:ll� sy�tt�tilan komentoja varten (esim. i_CTRL-X)\nAloita c_:ll� komentorivi� varten (esim. c_<Del>)\nKirjoita asetukset puolilainausmerkkeijin (esim. 'shiftwidth')"


" PopUp

menutrans &Undo					&Kumoa
" -SEP1-
menutrans Cu&t					&Leikkaa
menutrans &Copy					&Kopioi
menutrans &Paste				L&iit�
" &Buffers.&Delete overwrites this one
menutrans &Delete				&Poista
" -SEP2-
menutrans Select\ Blockwise			Valitse\ lohkoittain
menutrans Select\ &Word				Valitse\ &sana
menutrans Select\ &Line				Valitse\ &rivi
menutrans Select\ &Block			Valitse\ &lohko
menutrans Select\ &All				Valitse\ &kaikki


" ToolBar

menutrans Open					Avaa
menutrans Save					Tallenna
menutrans SaveAll				TallennaKaikki
menutrans Print					Tulosta
" -sep1-
menutrans Undo					Kumoa
menutrans Redo					Palauta
" -sep2-
menutrans Cut					Leikkaa
menutrans Copy					Kopioi
menutrans Paste					Liit�
" -sep3-
menutrans Find					Etsi
menutrans FindNext				EtsiSeur
menutrans FindPrev				EtsiEd
menutrans Replace				Korvaa
" -sep4-
menutrans New					Uusi
menutrans WinSplit				JaaIkk
menutrans WinMax				IkkMax
menutrans WinMin				IkkMin
menutrans WinVSplit				JaaIkkV
menutrans WinMaxWidth				IkkMaxLev
menutrans WinMinWidth				IkkMinLev
menutrans WinClose				SuljeIkk
" -sep5-
menutrans LoadSesn				AvaaSess
menutrans SaveSesn				TallSess
menutrans RunScript				AjaSkripti
" -sep6-
menutrans Make					Make
menutrans RunCtags				AjaCTags
menutrans TagJump				TagHypp
" -sep7-
menutrans Help					Ohje
menutrans FindHelp				OhjeHaku

fun! Do_toolbar_tmenu()
  let did_toolbar_tmenu = 1
  tmenu ToolBar.Open				Avaa tiedosto
  tmenu ToolBar.Save				Tallenna nykyinen tiedosto
  tmenu ToolBar.SaveAll				Tallenna kaikki tiedostot
  tmenu ToolBar.Print				Tulosta
  tmenu ToolBar.Undo				Kumoa
  tmenu ToolBar.Redo				Palauta
  tmenu ToolBar.Cut				Leikkaa
  tmenu ToolBar.Copy				Kopioi
  tmenu ToolBar.Paste				Liit�
  if !has("gui_athena")
    tmenu ToolBar.Find				Hae
    tmenu ToolBar.FindNext			Hae seuraava
    tmenu ToolBar.FindPrev			Hae edellinen
    tmenu ToolBar.Replace			Korvaa
  endif
 if 0	" disabled; These are in the Windows menu
  tmenu ToolBar.New				Uusi ikkuna
  tmenu ToolBar.WinSplit			Jaa ikkuna
  tmenu ToolBar.WinMax				Maximiser fen�tre
  tmenu ToolBar.WinMin				Minimiser fen�tre
  tmenu ToolBar.WinVSplit			Fractionner verticalement
  tmenu ToolBar.WinMaxWidth			Maximiser largeur fen�tre
  tmenu ToolBar.WinMinWidth			Minimiser largeur fen�tre
  tmenu ToolBar.WinClose			Fermer fen�tre
 endif
  tmenu ToolBar.LoadSesn			Avaa sessio
  tmenu ToolBar.SaveSesn			Tallenna nykyinen sessio
  tmenu ToolBar.RunScript			Lataa vim-skripti
  tmenu ToolBar.Make				Suorita make
  tmenu ToolBar.RunCtags			Suorita CTags
  tmenu ToolBar.TagJump				Hypp�� t�giin
  tmenu ToolBar.Help				Vimin ohje
  tmenu ToolBar.FindHelp			Etsi ohjeesta
endfun

let &cpo = s:keepcpo
unlet s:keepcpo

" vim: set fileencoding=latin1
