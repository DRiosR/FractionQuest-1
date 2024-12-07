" Menu Translations:	Slovenian / Slovensko
" Maintainer:		Mojca Miklavec <mojca.miklavec.lists@gmail.com>
" Originally By:	Mojca Miklavec <mojca.miklavec.lists@gmail.com>
" Last Change:		2020 Apr 23
" vim:set foldmethod=marker tabstop=8:
" Generated from menu_sl_si.utf-8.vim, DO NOT EDIT

" TODO: add/check all '&'s

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding cp1250

" {{{ FILE / DATOTEKA
menutrans &File				&Datoteka
menutrans &Open\.\.\.<Tab>:e		&Odpri\ \.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	Odpri\ de&ljeno\ \.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	Odpri\ v\ zavi&hku\ \.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		&Nova<Tab>:enew
menutrans &Close<Tab>:close		&Zapri<Tab>:close
menutrans &Save<Tab>:w			&Shrani<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	Shrani\ &kot\ \.\.\.<Tab>:sav
menutrans &Print			Na&tisni
menutrans Sa&ve-Exit<Tab>:wqa		Shrani\ in\ &kon�aj<Tab>:wqa
menutrans E&xit<Tab>:qa			&Izhod<Tab>:qa

if has("diff")
    menutrans Split\ &Diff\ with\.\.\.	Primerjaj\ z\ (di&ff)\ \.\.\.
    menutrans Split\ Patched\ &By\.\.\.	&Popravi\ s\ (patch)\ \.\.\.
endif
" }}} FILE / DATOTEKA

" {{{ EDIT / UREDI
menutrans &Edit				&Uredi
menutrans &Undo<Tab>u			&Razveljavi<Tab>u
menutrans &Redo<Tab>^R			&Obnovi<Tab>^R
menutrans Rep&eat<Tab>\.		Po&novi<Tab>\.
menutrans Cu&t<Tab>"+x			&Izre�i<Tab>"+x
menutrans &Copy<Tab>"+y			&Kopiraj<Tab>"+y
menutrans &Paste<Tab>"+gP		&Prilepi<Tab>"+gP
menutrans Put\ &Before<Tab>[p		Vrini\ pred<Tab>[p
menutrans Put\ &After<Tab>]p		Vrini\ za<Tab>]p
menutrans &Delete<Tab>x			Iz&bri�i<Tab>x
menutrans &Select\ all<Tab>ggVG		Izberi\ vse<Tab>ggVG
menutrans &Find\.\.\.			Po&i��i\ \.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	Poi��i\ in\ &zamenjaj\ \.\.\.

" [-- SETTINGS --]
menutrans Settings\ &Window				Nastavitve\ \.\.\.
menutrans Startup\ &Settings				Za�etne\ nastavitve
menutrans &Global\ Settings				&Globalne\ nastavitve

menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	Vklju�i/izklju�i\ poudarjanje\ iskanega\ niza<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		Vklju�i/izklju�i\ lo�evanje\ velikih\ in\ malih\ �rk<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		Vklju�i/izklju�i\ kratek\ skok\ na\ pripadajo�i\ oklepaj<Tab>:set\ sm!

menutrans &Context\ lines				�t\.\ vidnih\ vrstic\ pred/za\ kurzorjem

menutrans &Virtual\ Edit				Dovoli\ polo�aj\ kazal�ka,\ kjer\ ni\ besedila
menutrans Never						Nikoli
menutrans Block\ Selection				Le\ med\ izbiranjem\ bloka
menutrans Insert\ mode					Le\ v\ na�inu\ za\ pisanje
menutrans Block\ and\ Insert				Pri\ obojem
menutrans Always					Vedno
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		Vklju�i/izklju�i\ na�in\ za\ pisanje<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!		Vklju�i/izklju�i\ zdru�ljivost\ z\ Vi-jem<Tab>:set\ cp!

menutrans Search\ &Path\.\.\.				Pot\ za\ iskanje\ \.\.\.
menutrans Ta&g\ Files\.\.\.				Ta&g-datoteke\.\.\.

menutrans Toggle\ &Toolbar				Poka�i/skrij\ Orodja
menutrans Toggle\ &Bottom\ Scrollbar			Poka�i/skrij\ spodnji\ drsnik
menutrans Toggle\ &Left\ Scrollbar			Poka�i/skrij\ levi\ drsnik
menutrans Toggle\ &Right\ Scrollbar			Poka�i/skrij\ desni\ drsnik

" Edit/File Settings
menutrans F&ile\ Settings				&Nastavitve\ datoteke

" Boolean options
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	Poka�i/skrij\ �tevilke\ vrstic<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		Poka�i/skrij\ nevidne\ znake<Tab>:set\ list! " space/tab
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		Vklju�i/izklju�i\ prelome\ vrstic<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	Vklju�i/izklju�i\ prelome\ vrstic\ med\ besedami<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		Vklju�i/izklju�i\ zamenjavo\ tabulatorjev\ s\ presledki<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		Vklju�i/izklju�i\ avtomatsko\ zamikanje\ vrstic<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		Vklju�i/izklju�i\ C-jevski\ na�in\ zamikanja\ vrstic<Tab>:set\ cin!

" other options
menutrans &Shiftwidth					�irina\ zamika\ vrstic
menutrans Soft\ &Tabstop				�irina\ &tabulatorja
menutrans Te&xt\ Width\.\.\.				�irina\ besedila\ \.\.\.
menutrans &File\ Format\.\.\.				Format\ &datoteke\ \.\.\.
menutrans C&olor\ Scheme				&Barvna\ shema\ \.\.\.
menutrans &Keymap					Razporeditev\ tip&k
menutrans Select\ Fo&nt\.\.\.				Pisava\ \.\.\.
" }}} EDIT / UREDI

" {{{  TOOLS / ORODJA
menutrans &Tools					O&rodja
menutrans &Jump\ to\ this\ tag<Tab>g^]			&Sko�i\ k\ tej\ zna�ki<Tab>g^]
menutrans Jump\ &back<Tab>^T				Sko�i\ Na&zaj<Tab>^T
menutrans Build\ &Tags\ File				Napravi\ datoteke\ z\ zna�kami\ (tag)
if has("spell")
    menutrans &Spelling					�rkovalnik
    menutrans &Spell\ Check\ On				&Vklju�i
    menutrans Spell\ Check\ &Off			&Izklju�i
    menutrans To\ &Next\ error<Tab>]s			K\ &naslednji\ napaki<Tab>]s
    menutrans To\ &Previous\ error<Tab>[s		K\ &prej�nji\ napaki<Tab>[s
    menutrans Suggest\ &Corrections<Tab>z=		Predlagaj\ popravek<Tab>z=
    menutrans &Repeat\ correction<Tab>:spellrepall	Po&novi\ popravke\ na\ vseh\ besedah<Tab>:spellrepall
    menutrans Set\ language\ to\ "en"			�rkovalnik:\ angle�ki\ "en"
    menutrans Set\ language\ to\ "en_au"		�rkovalnik:\ angle�ki\ "en_au"
    menutrans Set\ language\ to\ "en_ca"		�rkovalnik:\ angle�ki\ "en_ca"
    menutrans Set\ language\ to\ "en_gb"		�rkovalnik:\ angle�ki\ "en_gb"
    menutrans Set\ language\ to\ "en_nz"		�rkovalnik:\ angle�ki\ "en_nz"
    menutrans Set\ language\ to\ "en_us"		�rkovalnik:\ angle�ki\ "en_us"
    menutrans Set\ language\ to\ "sl"			�rkovalnik:\ slovenski\ "sl"
    menutrans Set\ language\ to\ "de"			�rkovalnik:\ nem�ki\ "de"
    menutrans Set\ language\ to\ 			�rkovalnik:\
    menutrans &Find\ More\ Languages			&Ostali\ jeziki
endif
if has("folding")
  menutrans &Folding					Zavihek
  " open close folds
  menutrans &Enable/Disable\ folds<Tab>zi		Omogo�i/onemogo�i\ zavihke<Tab>zi
  menutrans &View\ Cursor\ Line<Tab>zv			Poka�i\ vrstico\ s\ kazalcem<Tab>zv " kjer je kazalec
  menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx		Poka�i\ samo\ vrstico\ s\ kazalcem<Tab>zMzx
  menutrans C&lose\ more\ folds<Tab>zm			Zapri\ ve�\ zavihkov<Tab>zm
  menutrans &Close\ all\ folds<Tab>zM			Zapri\ vse\ zavihke<Tab>zM
  menutrans O&pen\ more\ folds<Tab>zr			Odpri\ ve�\ zavihkov<Tab>zr
  menutrans &Open\ all\ folds<Tab>zR			Odpri\ vse\ zavihke<Tab>zR
  " fold method
  menutrans Fold\ Met&hod				Ustvarjanje\ zavihkov
  menutrans M&anual					&Ro�no
  menutrans I&ndent					Glede\ na\ &poravnavo
  menutrans E&xpression					Z\ &izrazi\ (foldexpr)
  menutrans S&yntax					Glede\ na\ &sintakso
  menutrans &Diff					Razlike\ (&diff)
  menutrans Ma&rker					Z\ &markerji/ozna�bami
  " create and delete folds
  " TODO accelerators
  menutrans Create\ &Fold<Tab>zf			Ustvari\ zavihek<Tab>zf
  menutrans &Delete\ Fold<Tab>zd			Izbri�i\ zavihek<Tab>zd
  menutrans Delete\ &All\ Folds<Tab>zD			Izbri�i\ vse\ zavihke<Tab>zD
  " moving around in folds
  menutrans Fold\ column\ &width			�irina\ stolpca\ z\ zavihkom
endif  " has folding

if has("diff")
  menutrans &Diff					Razlike\ (&Diff)
  menutrans &Update					&Posodobi<Tab>
  menutrans &Get\ Block					&Sprejmi\ (spremeni\ to\ okno) " TODO: check if translation is OK
  menutrans &Put\ Block					&Po�lji\ (spremeni\ drugo\ okno)
endif

menutrans &Make<Tab>:make				Napravi\ (&make)<Tab>:make
menutrans &List\ Errors<Tab>:cl				Poka�i\ napake<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!			Poka�i\ sporo�ila<Tab>:cl!
menutrans &Next\ Error<Tab>:cn				K\ &naslednji\ napaki<Tab>:cn
menutrans &Previous\ Error<Tab>:cp			K\ &prej�nji\ napaki<Tab>:cp
menutrans &Older\ List<Tab>:cold			K\ &starej�emu\ seznamu\ napak<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew			K\ &novej�emu\ seznamu\ napak<Tab>:cnew

menutrans Error\ &Window				Okno\ z\ napakami
menutrans &Update<Tab>:cwin				&Posodobi<Tab>:cwin
menutrans &Open<Tab>:copen				&Odpri<Tab>:copen
menutrans &Close<Tab>:cclose				&Zapri<Tab>:cclose

menutrans &Set\ Compiler				Nastavi\ &prevajalnik
menutrans Se&T\ Compiler				Nastavi\ &prevajalnik " bug in original translation?

menutrans &Convert\ to\ HEX<Tab>:%!xxd			Pretvori\ v\ HE&X<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r			Povrni\ pretvo&rbo<Tab>:%!xxd\ -r
" }}}  TOOLS / ORODJA

" {{{ SYNTAX / BARVANJE KODE
menutrans &Syntax				&Barvanje\ kode
menutrans &Show\ filetypes\ in\ menu		Podprte\ vrste\ datotek
menutrans Set\ '&syntax'\ only			Samo\ barvanje\ ('&syntax')
menutrans Set\ '&filetype'\ too			Tudi\ obna�anje\ ('&filetype')
menutrans &Off					&Izklju�eno
menutrans &Manual				&Ro�no
menutrans A&utomatic				&Avtomatsko
menutrans on/off\ for\ &This\ file		Vklju�i/izklju�i\ za\ to\ datoteko
menutrans Co&lor\ test				Preizkus\ barv
menutrans &Highlight\ test			Preizkus\ barvanja\ kode
menutrans &Convert\ to\ HTML			Pretvori\ v\ &HTML
" }}} SYNTAX / BARVANJE KODE

" {{{ BUFFERS / MEDPOMNILNIK
menutrans &Buffers					&Medpomnilnik " XXX: ni najbolje: okno bi bolj pristajalo, ampak okno je �e
menutrans &Refresh\ menu				&Osve�i
menutrans Delete					&Bri�i
menutrans &Alternate					&Menjaj
menutrans &Next						&Naslednji
menutrans &Previous					&Prej�nji
menutrans [No\ File]					[Brez\ datoteke]
" }}} BUFFERS / MEDPOMNILNIK

" {{{ WINDOW / OKNO
menutrans &Window			&Okno
menutrans &New<Tab>^Wn			&Novo<Tab>^Wn
menutrans S&plit<Tab>^Ws		Razdeli<Tab>^Ws
menutrans Split\ &Vertically<Tab>^Wv	Razdeli\ navpi�no<Tab>^Ws
menutrans Split\ File\ E&xplorer	Razdeli:\ Vsebina\ mape
menutrans Sp&lit\ To\ #<Tab>^W^^	Razdeli\ v\ #<Tab>^W^^
menutrans &Close<Tab>^Wc		&Zapri<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	Zapri\ &ostala<Tab>^Wo
menutrans Move\ &To			Premakni
menutrans &Top<Tab>^WK			&Gor<Tab>^WK
menutrans &Bottom<Tab>^WJ		&Dol<Tab>^WJ
menutrans &Left\ side<Tab>^WH		&Levo<Tab>^WH
menutrans &Right\ side<Tab>^WL		&Desno<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR		Zavrti\ navzgor<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		Zavrti\ navzdol<Tab>^Wr
menutrans &Equal\ Size<Tab>^W=		&Enaka\ velikost<Tab>^W=
menutrans &Max\ Height<Tab>^W_		Najvi�je<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		Najni�je<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		Naj�ir�e<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		Najo�je<Tab>^W1\|
" }}} WINDOW / OKNO

" {{{ HELP / POMO�
menutrans &Help			&Pomo�
menutrans &Overview<Tab><F1>	Hitri\ pregled<Tab><F1>
menutrans &User\ Manual		P&riro�nik
menutrans &How-to\ links	&How-to\ kazalo
menutrans &Find\.\.\.		Po&i��i\ \.\.\.	" conflicts with Edit.Find
menutrans &Credits		&Avtorji
menutrans Co&pying		&Licenca
menutrans &Sponsor/Register	Registracija\ in\ &donacije
menutrans O&rphans		&Sirotam
menutrans &Version		&Verzija
menutrans &About		&O\ programu
" }}} HELP / POMO�

" {{{ POPUP
menutrans &Undo				&Razveljavi
menutrans Cu&t				&Izre�i
menutrans &Copy				&Kopiraj
menutrans &Paste			&Prilepi
menutrans &Delete			&Zbri�i
menutrans Select\ Blockwise		Izbiraj\ po\ blokih
menutrans Select\ &Word			Izberi\ &besedo
menutrans Select\ &Sentence		Izberi\ &stavek
menutrans Select\ Pa&ragraph		Izberi\ &odstavek
menutrans Select\ &Line			Izberi\ vrs&tico
menutrans Select\ &Block		Izberi\ b&lok
menutrans Select\ &All			Izberi\ &vse
" }}} POPUP

" {{{ TOOLBAR
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		Odpri datoteko
    tmenu ToolBar.Save		Shrani datoteko
    tmenu ToolBar.SaveAll	Shrani vse datoteke
    tmenu ToolBar.Print		Natisni
    tmenu ToolBar.Undo		Razveljavi
    tmenu ToolBar.Redo		Obnovi
    tmenu ToolBar.Cut		Izre�i
    tmenu ToolBar.Copy		Kopiraj
    tmenu ToolBar.Paste		Prilepi
    tmenu ToolBar.Find		Najdi ...
    tmenu ToolBar.FindNext	Najdi naslednje
    tmenu ToolBar.FindPrev	Najdi prej�nje
    tmenu ToolBar.Replace	Najdi in zamenjaj ...
    tmenu ToolBar.LoadSesn	Nalo�i sejo
    tmenu ToolBar.SaveSesn	Shrani trenutno sejo
    tmenu ToolBar.RunScript	Izberi Vim skripto za izvajanje
    tmenu ToolBar.Make		Napravi trenutni projekt (:make)
    tmenu ToolBar.RunCtags	Napravi zna�ke v trenutnem direktoriju (!ctags -R.)
    tmenu ToolBar.TagJump	Sko�i k zna�ki pod kurzorjem
    tmenu ToolBar.Help		Pomo� za Vim
    tmenu ToolBar.FindHelp	I��i v pomo�i za Vim
  endfun
endif
" }}} TOOLBAR

" {{{ DIALOG TEXTS
let g:menutrans_no_file = "[Brez datoteke]"
let g:menutrans_help_dialog = "Vnesite ukaz ali besedo, za katero �elite pomo�:\n\nUporabite predpono i_ za ukaze v na�inu za pisanje (npr.: i_CTRL-X)\nUporabite predpono c_ za ukaze v ukazni vrstici (command-line) (npr.: c_<Del>)\nUporabite predpono ' za imena opcij (npr.: 'shiftwidth')"
let g:menutrans_path_dialog = "Vnesite poti za iskanje datotek.\nImena direktorijev lo�ite z vejico."
let g:menutrans_tags_dialog = "Vnesite imena datotek z zna�kami ('tag').\nImana lo�ite z vejicami."
let g:menutrans_textwidth_dialog = "Vnesite novo �irino besedila (ali 0 za izklop formatiranja): "
let g:menutrans_fileformat_dialog = "Izberite format datoteke"
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n&Prekli�i"
" }}}

let &cpo = s:keepcpo
unlet s:keepcpo
