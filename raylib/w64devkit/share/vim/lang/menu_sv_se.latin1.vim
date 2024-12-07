" Menu Translations:    Swedish
" Maintainer:		Johan Svedberg <johan@svedberg.com>
" Last Change:		2020 Apr 22
" Original translations

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

" The translations below are in latin1, but they work for cp1252 and
" iso-8859-15 without conversion as well.
if &enc != "cp1252" && &enc != "iso-8859-15"
  scriptencoding latin1
endif

" Help menu
menutrans &Help			&Hj�lp
menutrans &Overview<Tab><F1>	&�versikt<Tab><F1>
menutrans &User\ Manual		&Anv�ndarmanual
menutrans &How-to\ links	&Hur-g�ra-l�nkar
menutrans &Find\.\.\.		&S�k\.\.\.
menutrans &Credits		&Tack
menutrans Co&pying		&Kopieringsr�ttigheter
menutrans &Sponsor/Register	&Sponsra/Registrera
menutrans O&rphans		&F�r�ldral�sa
menutrans &Version		&Version
menutrans &About		&Om

" File menu
menutrans &File				&Arkiv
menutrans &Open\.\.\.<Tab>:e		&�ppna\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	�ppna\ i\ splitt-vy\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	�ppna\ flik\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		&Ny<Tab>:enew
menutrans &Close<Tab>:close		S&t�ng<Tab>:close
menutrans &Save<Tab>:w			&Spara<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	Spara\ som\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	Dela\ diff\ med\.\.\.
menutrans Split\ Patched\ &By\.\.\.	Dela\ lappad\ med\.\.\.
menutrans &Print			Skriv\ &ut
menutrans Sa&ve-Exit<Tab>:wqa		Spara\ &och\ avsluta<Tab>:wqa
menutrans E&xit<Tab>:qa			&Avsluta<Tab>:qa

" Edit menu
menutrans &Edit				&Redigera
menutrans &Undo<Tab>u			&�ngra<Tab>u
menutrans &Redo<Tab>^R			&G�r\ om<Tab>^R
menutrans Rep&eat<Tab>\.		&Repetera<Tab>\.
menutrans Cu&t<Tab>"+x			Klipp\ &ut<Tab>"+x
menutrans &Copy<Tab>"+y			&Kopiera<Tab>"+y
menutrans &Paste<Tab>"+gP		Klistra\ &in<Tab>"+gP
menutrans Put\ &Before<Tab>[p		S�tt\ in\ &f�re<Tab>[p
menutrans Put\ &After<Tab>]p		S�tt\ in\ &efter<Tab>]p
menutrans &Select\ All<Tab>ggVG		&Markera\ allt<Tab>ggVG
menutrans &Find\.\.\.			&S�k\.\.\.
menutrans &Find<Tab>/			&S�k<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	S�k\ och\ ers�tt\.\.\.
menutrans Find\ and\ Rep&lace<Tab>:%s	S�k\ och\ ers�tt<Tab>:%s
menutrans Find\ and\ Rep&lace		S�k\ och\ ers�tt
menutrans Find\ and\ Rep&lace<Tab>:s	S�k\ och\ ers�tt<Tab>:s
menutrans Settings\ &Window		In&st�llningar
menutrans &Global\ Settings		Gl&obala\ inst�llningar
menutrans F&ile\ Settings		Fi&linst�llningar
menutrans C&olor\ Scheme		F&�rgschema
menutrans &Keymap			&Tangentbordsupps�ttning

" Edit.Global Settings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	V�xla\ m�nsterframh�vning<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		V�xla\ ignorering\ av\ storlek<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		V�xla\ matchningsvisning<Tab>:set\ sm!
menutrans &Context\ lines				Sammanhangsrader
menutrans &Virtual\ Edit				Virtuell\ redigering
menutrans Never						Aldrig
menutrans Block\ Selection				Blockval
menutrans Insert\ mode					Infogningsl�ge
menutrans Block\ and\ Insert				Block\ och\ infogning
menutrans Always					Alltid
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		V�xla\ infogningsl�ge<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!		V�xla\ Vi-kompabilitet<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.				S�kv�g\.\.\.
menutrans Ta&g\ Files\.\.\.				Taggfiler\.\.\.
menutrans Toggle\ &Toolbar				V�xla\ verktygsrad
menutrans Toggle\ &Bottom\ Scrollbar			V�xla\ rullningslista\ i\ botten
menutrans Toggle\ &Left\ Scrollbar			V�xla\ v�nster\ rullningslista
menutrans Toggle\ &Right\ Scrollbar			V�xla\ h�ger\ rullningslista
menutrans None						Ingen

" Edit.File Settings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	V�xla\ radnumrering<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		V�xla\ listl�ge<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		V�xla\ radbrytning<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	V�xla\ radbrytning\ vid\ ord<tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		V�xla\ tab-expandering<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		V�xla\ auto-indentering<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		V�xla\ C-indentering<Tab>:set\ cin!
menutrans &Shiftwidth					Shiftbredd
menutrans Soft\ &Tabstop				Mjuk\ tab-stopp
menutrans Te&xt\ Width\.\.\.				Textbredd\.\.\.
menutrans &File\ Format\.\.\.				Filformat\.\.\.

" Tools menu
menutrans &Tools			&Verktyg
menutrans &Jump\ to\ this\ tag<Tab>g^]	&Hoppa\ till\ den\ h�r\ taggen<Tab>g^]
menutrans Jump\ &back<Tab>^T		Hoppa\ tillbaka<Tab>^T
menutrans Build\ &Tags\ File		Bygg\ taggfil
menutrans &Make<Tab>:make		&Bygg<Tab>:make
menutrans &List\ Errors<Tab>:cl		Listfel<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	Listmeddelande<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		N�sta\ fel<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	Tidigare\ fel<Tab>:cp
menutrans &Older\ List<Tab>:cold	&�ldre\ lista<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	&Nyare\ lista<Tab>:cnew
menutrans Error\ &Window		Felf�nster
menutrans &Update<Tab>:cwin		&Uppdatera<Tab>:cwin
menutrans &Open<Tab>:copen		&�ppna<Tab>:copen
menutrans &Close<Tab>:cclose		&St�ng<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	Konvertera\ till\ HEX<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	Konvertera\ tillbaka<Tab>:%!xxd\ -r
menutrans Se&T\ Compiler		S�tt\ &kompilerare

" Tools.Spelling
menutrans &Spelling				&Stavning
menutrans &Spell\ Check\ On			&Stavningskontroll\ p�
menutrans &Spell\ Check\ Off			Stavningskontroll\ &av
menutrans To\ &Next\ error<Tab>]s		Till\ &n�sta\ fel
menutrans To\ &Previous\ error<Tab>[s		Till\ &f�reg�ende\ fel
menutrans Suggest\ &Corrections<Tab>z=		F�resl�\ &korrigeringar
menutrans &Repeat\ correction<Tab>:spellrepall	&Upprepa\ korrigering

" Tools.Folding
menutrans &Enable/Disable\ folds<Tab>zi	V�xla\ veck<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	Visa\ mark�rrad<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	Visa\ bara\ mark�rrad<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	St�ng\ mer\ veck<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	St�ng\ alla\ veck<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	�ppna\ mer\ veck<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	�ppna\ mer\ veck<Tab>zR
menutrans Fold\ Met&hod			Veckmetod
menutrans M&anual			Manual
menutrans I&ndent			Indentering
menutrans E&xpression			Uttryck
menutrans S&yntax			Syntax
menutrans &Folding			Vikning
menutrans &Diff				Differans
menutrans Ma&rker			Markering
menutrans Create\ &Fold<Tab>zf		Skapa\ veck<Tab>zf
menutrans &Delete\ Fold<Tab>zd		Ta\ bort\ veck<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	Ta\ bort\ alla\ veck<Tab>zD
menutrans Fold\ col&umn\ width		Veckcolumnsbredd

" Tools.Diff
menutrans &Update		Uppdatera
menutrans &Get\ Block		H�mta\ block
menutrans &Put\ Block		L�mna\ block

" Names for buffer menu.
menutrans &Buffers		&Buffertar
menutrans &Refresh\ menu	Uppdatera\ meny
menutrans &Delete		Ta\ bort
menutrans &Alternate		Alternativ
menutrans &Next			&N�sta
menutrans &Previous		&Tidigare

" Window menu
menutrans &Window			&F�nster
menutrans &New<Tab>^Wn			&Nytt<Tab>^Wn
menutrans S&plit<Tab>^Ws		Dela<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	Dela\ till\ #<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	Dela\ &vertikalt<Tab>^Wv
menutrans Split\ File\ E&xplorer	Dela\ filhanterare
menutrans &Close<Tab>^Wc		&St�ng<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	&St�ng\ alla\ andra<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			N�sta<Tab>^Ww
menutrans P&revious<Tab>^WW		&Tidigare<Tab>^WW
menutrans &Equal\ Size<Tab>^W=		&Samma\ storlek<Tab>^W=
menutrans &Max\ Height<Tab>^W_		&Maximal\ storlek<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		M&inimal\ storlek<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		Maximal\ bredd<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		Minimal\ bredd<Tab>^W1\|
menutrans Move\ &To			Flytta\ till
menutrans &Top<Tab>^WK			Toppen<Tab>^WK
menutrans &Bottom<Tab>^WJ		Botten<Tab>^WJ
menutrans &Left\ side<Tab>^WH		&V�nstra\ sidan<Tab>^WH
menutrans &Right\ side<Tab>^WL		&H�gra\ sidan<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR		Rotera\ upp<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		Rotera\ ned<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		V�lj\ typsnitt\.\.\.

" The popup menu
menutrans &Undo			&�ngra
menutrans Cu&t			Klipp\ ut
menutrans &Copy			&Kopiera
menutrans &Paste		&Klistra\ in
menutrans &Delete		&Ta\ bort
menutrans Select\ Blockwise	Markera\ blockvis
menutrans Select\ &Word		Markera\ ord
menutrans Select\ &Line		Markera\ rad
menutrans Select\ &Block	Markera\ block
menutrans Select\ &All		Markera\ allt

" The GUI toolbar (for Win32 or GTK)
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		�ppna fil
    tmenu ToolBar.Save		Spara aktuell fil
    tmenu ToolBar.SaveAll	Spara alla filer
    tmenu ToolBar.Print		Skriv ut
    tmenu ToolBar.Undo		�ngra
    tmenu ToolBar.Redo		G�r om
    tmenu ToolBar.Cut		Klipp ut
    tmenu ToolBar.Copy		Kopiera
    tmenu ToolBar.Paste		Klistra in
    tmenu ToolBar.Find		S�k...
    tmenu ToolBar.FindNext	S�k n�sta
    tmenu ToolBar.FindPrev	S�k tidigare
    tmenu ToolBar.Replace	S�k och ers�tt...
    tmenu ToolBar.LoadSesn	Ladda session
    tmenu ToolBar.SaveSesn	Spara session
    tmenu ToolBar.RunScript	K�r ett Vim-skript
    tmenu ToolBar.Make		Bygg aktuellt projekt
    tmenu ToolBar.Shell		�ppna ett kommandoskal
    tmenu ToolBar.RunCtags	K�r Ctags
    tmenu ToolBar.TagJump	Hoppa till tagg under mark�r
    tmenu ToolBar.Help		Hj�lp
    tmenu ToolBar.FindHelp	S�k i hj�lp
  endfun
endif

" Syntax menu
menutrans &Syntax			&Syntax
menutrans &Show\ filetypes\ in\ menu	&Visa\ filtyper\ i\ meny
menutrans &Off				&Av
menutrans &Manual			&Manuellt
menutrans A&utomatic			Automatiskt
menutrans on/off\ for\ &This\ file	Av/P�\ f�r\ aktuell\ fil
menutrans Co&lor\ test			F�rgtest
menutrans &Highlight\ test		Framh�vningstest
menutrans &Convert\ to\ HTML		Konvertera\ till\ &HTML

" dialog texts
let menutrans_no_file = "[Ingen fil]"
let menutrans_help_dialog = "Skriv in ett kommando eller ord som du vill s�ka hj�lp p�:\n\nB�rja med i_ f�r infogningl�geskommandon (t.ex. i_CTRL-X)\nB�rja med c_ f�r kommandoradredigeringskommandon (t.ex. c_<Del>)\nB�rja med ' f�r ett inst�llningsnamn (t.ex. 'shiftwidth')"
let g:menutrans_path_dialog = "Skriv in s�kv�g f�r filer.\nSeparera katalognamn med komma"
let g:menutrans_tags_dialog = "Skriv in namn p� taggfiler.\nSeparera namn med komma."
let g:menutrans_textwidth_dialog = "V�lj ny textbredd (0 f�r att f�rhindra formatering): "
let g:menutrans_fileformat_dialog = "V�lj filformat som filen ska sparas med"

let &cpo = s:keepcpo
unlet s:keepcpo
