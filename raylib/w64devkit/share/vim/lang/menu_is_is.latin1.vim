" Menu Translations:	Icelandic / �slenska
" Maintainer:		J�n Arnar Briem <jonbriem@gmail.com>
" Originally By:	J�n Arnar Briem <jonbriem@gmail.com>
" Last Change:	Sun, 24 Mar 2019 22:40:00 CEST
" Original translations
" vim:set foldmethod=marker tabstop=8:

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

" {{{ FILE / SKR�
menutrans &File				                        Skr�
menutrans &Open\.\.\.<Tab>:e		                Opna\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	                Splitt\ opna\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	            Opna\ flipa\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		                    N�\ Skr�<Tab>:enew
menutrans &Close<Tab>:close		                    Loka<Tab>:close
menutrans &Save<Tab>:w			                    Vista<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	                Vista\ sem\.\.\.<Tab>:sav
menutrans &Print			                        Prenta
menutrans Sa&ve-Exit<Tab>:wqa		                Vista\ og\ Loka<Tab>:wqa
menutrans E&xit<Tab>:qa			                    Loka<Tab>:qa

if has("diff")
    menutrans Split\ &Diff\ with\.\.\.	            Splitt\ opna\ mismun\ vi�\.\.\.
    menutrans Split\ Patched\ &By\.\.\.	            Splitt\ opna\ pl�stra�\ af\.\.\.
endif
" }}} FILE / SKR�

" {{{ EDIT / BREYTA
menutrans &Edit				                        Breyta
menutrans &Undo<Tab>u			                    Afturkalla<Tab>u
menutrans &Redo<Tab>^R			                    Endurkalla<Tab>^R
menutrans Rep&eat<Tab>\.		                    Endurtaka<Tab>\.
menutrans Cu&t<Tab>"+x			                    Klippa<Tab>"+x
menutrans &Copy<Tab>"+y			                    Afrita<Tab>"+y
menutrans &Paste<Tab>"+gP		                    L�ma<Tab>"+gP
menutrans Put\ &Before<Tab>[p		                L�ma\ Fyrir<Tab>[p
menutrans Put\ &After<Tab>]p		                L�ma\ Eftir<Tab>]p
menutrans &Delete<Tab>x			                    Ey�a<Tab>x
menutrans &Select\ All<Tab>ggVG		                Velja\ Allt<Tab>ggVG
menutrans &Find\.\.\.			                    Finna\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	                Finna\ og\ Skipta\.\.\.

" [-- SETTINGS --]
menutrans Settings\ &Window				            Stillingar\ Glugga
menutrans &Global\ Settings				            V��v�rar\ Stillingar
menutrans Startup\ &Settings				        R�sistillingar

menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	    Munsturau�kenning\ �\/af<Tab>:set\ hls!
menutrans Toggle\ &Ignoring\ Case<Tab>:set\ ic!		        Hunsa\ h�-l�gstafi\ �\/af<Tab>:set\ ic!
menutrans Toggle\ &Showing\ Matched\ Pairs<Tab>:set\ sm!	S�na\ P�run\ �\/af<Tab>:set\ sm!

menutrans &Context\ lines				            Samhengisl�nur

menutrans &Virtual\ Edit				            Skinbreytihamur
menutrans Never						                Aldrei
menutrans Block\ Selection				            B�lkval
menutrans Insert\ mode					            Innskotshamur
menutrans Block\ and\ Insert				        B�lkval\ og\ Innskotshamur
menutrans Always					                Alltaf
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		Innskotshamur\ �\/af<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatibility<Tab>:set\ cp!	Vi\ Samh�fanleiki\ �\/af<Tab>:set\ cp!

menutrans Search\ &Path\.\.\.				        Leita\ �\ Sl��\.\.\.
menutrans Ta&g\ Files\.\.\.				            Merkja\ Skr�r\.\.\.

menutrans Toggle\ &Toolbar				            T�labor�\ �\/af
menutrans Toggle\ &Bottom\ Scrollbar			    Ne�ri\ Skrunbor�i\ �\/af
menutrans Toggle\ &Left\ Scrollbar                  Vinstri\ Skrunbor�i\ �\/af
menutrans Toggle\ &Right\ Scrollbar			        H�gri\ Skrunbor�i\ �\/af

" Edit/File Settings
menutrans F&ile\ Settings				            Skr�ar-Stilingar

" Boolean options
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!		L�nun�mering\ �\/af<Tab>:set\ nu!
menutrans Toggle\ Relati&ve\ Line\ Numbering<Tab>:set\ rnu!	Afst��\ L�nun�mering\ �\/af<Tab>:set\ rnu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!			Listahamur\ �\/af<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap!		L�nuhlaup\ �\/af<Tab>:set\ wrap!
menutrans Toggle\ W&rapping\ at\ word<Tab>:set\ lbr!	L�nuhlaup\ �\ or�i\ �\/af<Tab>:set\ lbr!
menutrans Toggle\ Tab\ &Expanding<Tab>:set\ et!			Tab-v�kkun\ �\/af<Tab>:set\ et!
menutrans Toggle\ &Auto\ Indenting<Tab>:set\ ai!			Sj�lfvirkur\ Inndr�ttur\ �\/af<Tab>:set\ ai!
menutrans Toggle\ &C-Style\ Indenting<Tab>:set\ cin!	C-Inndr�ttur\ �\/af<Tab>:set\ cin!

" other options
menutrans &Shiftwidth					            Shiftbreidd
menutrans Soft\ &Tabstop			                Mj�k\ Tabstopp
menutrans Te&xt\ Width\.\.\.		                Textabreidd\.\.\.
menutrans &File\ Format\.\.\.		                Skr�arform\.\.\.
menutrans C&olor\ Scheme			                Lita�ema\.\.\.
menutrans &Keymap					                Lyklaskipan
" }}} EDIT / BREYTA

" {{{  TOOLS / T�l
if has("spell")
    menutrans &Spelling					            Stafsetning
    menutrans &Spell\ Check\ On				        Villuleit\ �
    menutrans Spell\ Check\ &Off			        Villuleit\ af
    menutrans To\ &Next\ error<Tab>]s			    N�sta\ Villa<Tab>]s
    menutrans To\ &Previous\ error<Tab>[s		    Fyrri\ Villa<Tab>[s
    menutrans Suggest\ &Corrections<Tab>z=		    Leggja\ til\ Lei�r�ttingar<Tab>z=
    menutrans &Repeat\ correction<Tab>:spellrepall	Endurtaka\ Lei�r�ttingu<Tab>:spellrepall
    menutrans Set\ language\ to\ "en"			    Stilla\ Or�ab�k\ � "en"
    menutrans Set\ language\ to\ "en_au"		    Stilla\ Or�ab�k\ � "en_au"
    menutrans Set\ language\ to\ "en_ca"		    Stilla\ Or�ab�k\ � "en_ca"
    menutrans Set\ language\ to\ "en_gb"		    Stilla\ Or�ab�k\ � "en_gb"
    menutrans Set\ language\ to\ "en_nz"		    Stilla\ Or�ab�k\ � "en_nz"
    menutrans Set\ language\ to\ "en_us"		    Stilla\ Or�ab�k\ � "en_us"
    menutrans &Find\ More\ Languages			    Finna\ fleiri\ Or�ab�kur
endif
if has("folding")
  menutrans &Folding					            F�ldun
  " open close folds
  menutrans &Enable/Disable\ folds<Tab>zi		    F�ldun\ �\/af<Tab>zi
  menutrans &View\ Cursor\ Line<Tab>zv			    Sj�\ L�nu\ Bendils<Tab>zv
  menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	    Sj�\ Eing�ngu\ L�nu\ Bendils<Tab>zMzx
  menutrans C&lose\ more\ folds<Tab>zm			    Loka\ Fleiri\ F�ldunum<Tab>zm
  menutrans &Close\ all\ folds<Tab>zM			    Loka\ �llum\ F�ldunum<Tab>zM
  menutrans O&pen\ more\ folds<Tab>zr			    Opna\ Fleiri\ Faldanir<Tab>zr
  menutrans &Open\ all\ folds<Tab>zR			    Opna\ Allar\ Faldanir<Tab>zR
  " fold method
  menutrans Fold\ Met&hod			                F�ldunar-h�ttur
  menutrans M&anual					                Handvirkur
  menutrans I&ndent					                Inndr�ttur
  menutrans E&xpression				                Seg�
  menutrans S&yntax					                M�lskipan
  menutrans &Diff					                Mismunur
  menutrans Ma&rker					                Merking
  " create and delete folds
  menutrans Create\ &Fold<Tab>zf			        B�a\ til\ F�ldun<Tab>zf
  menutrans &Delete\ Fold<Tab>zd			        Ey�a\ F�ldun<Tab>zd
  menutrans Delete\ &All\ Folds<Tab>zD		        Ey�a\ �llum\ F�ldunum<Tab>zD
  " moving around in folds
  menutrans Fold\ Col&umn\ Width			        Breidd\ F�ldunar
endif  " has folding

if has("diff")
  menutrans &Diff					                Mismunur
  menutrans &Update					                Uppf�ra
  menutrans &Get\ Block				                S�kja\ B�lk
  menutrans &Put\ Block				                Setja\ B�lk
endif

menutrans &Tools					                T�l
menutrans &Jump\ to\ this\ tag<Tab>g^]	    		St�kkva\ �\ Merki<Tab>g^]
menutrans Jump\ &back<Tab>^T			        	St�kkva\ til\ baka<Tab>^T
menutrans Build\ &Tags\ File			        	B�a\ til\ Merkjaskr�
menutrans &Make<Tab>:make				            Sm��a<Tab>:make
menutrans &List\ Errors<Tab>:cl			        	Birta\ Villur<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!		        	Birta\ Skilabo�<Tab>:cl!
menutrans &Next\ Error<Tab>:cn			        	N�sta\ Villa<Tab>:cn
menutrans &Previous\ Error<Tab>:cp		        	Fyrri\ Villa<Tab>:cp
menutrans &Older\ List<Tab>:cold		        	Eldri\ Listi<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew		        	N�rri\ Listi<Tab>:cnew

menutrans Error\ &Window				            Villugluggi
menutrans Se&t\ Compiler				            Smi�ur
menutrans &Update<Tab>:cwin				            Uppf�ra<Tab>:cwin
menutrans &Open<Tab>:copen				            Opna<Tab>:copen
menutrans &Close<Tab>:cclose				        Loka<Tab>:cclose

menutrans &Convert\ to\ HEX<Tab>:%!xxd			    Breyta\ �\ HEX<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r			    Breyta\ til\ baka<Tab>:%!xxd\ -r
" }}}  TOOLS / T�L

" {{{ SYNTAX / M�LSKIPAN
menutrans &Syntax				                    M�lskipan
menutrans &Show\ filetypes\ in\ menu		        S�na\ Skr�artegundir
menutrans Set\ '&syntax'\ only			            Stilla\ a�eins\ 'm�lskipan'\
menutrans Set\ '&filetype'\ too			            Stilla\ einnig\ 'skr�artegund'\
menutrans &Off					                    Af
menutrans &Manual				                    Handvirkt
menutrans A&utomatic				                Sj�lfvirkt
menutrans on/off\ for\ &This\ file		            �/af\ fyrir\ �essa\ skr�
menutrans Co&lor\ test				                Litapr�fun
menutrans &Highlight\ test			                Au�kenningarpr�fun
menutrans &Convert\ to\ HTML			            Breyta\ �\ HTML
" }}} SYNTAX / M�LSKIPAN

" {{{ BUFFERS / BI�MINNI
menutrans &Buffers					                Bi�minni
menutrans &Refresh\ menu			                Uppf�ra\ valmynd
menutrans Delete					                Ey�a
menutrans &Alternate				                Skipta
menutrans &Next						                N�sta
menutrans &Previous					                Fyrra
" }}} BUFFERS / BI�MINNI

" {{{ WINDOW / GLUGGI
menutrans &Window			                        Gluggi
menutrans &New<Tab>^Wn			                    N�r<Tab>^Wn
menutrans S&plit<Tab>^Ws		                    Splitta<Tab>^Ws
menutrans Split\ &Vertically<Tab>^Wv	            Splitta\ L��r�tt<Tab>^Wv
menutrans Split\ File\ E&xplorer	                Splitta\ Skr�arvafra
menutrans Sp&lit\ To\ #<Tab>^W^^	                Splitta\ �\ Flipa\ #<Tab>^W^^
menutrans &Close<Tab>^Wc		                    Loka\ Flipa<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	                Loka\ ��rum\ Flipum<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			                    N�sti<Tab>^Ww
menutrans P&revious<Tab>^WW		                    Fyrri<Tab>^WW
menutrans &Equal\ Size<Tab>^W=		                Jafn\ St�r<Tab>^W=
menutrans &Max\ Height<Tab>^W_		                H�marksh��<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		                L�gmarksh��<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		                H�marksbreidd<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		                L�gmarksbreidd<Tab>^W1\|
menutrans Move\ &To			                        F�ra
menutrans &Top<Tab>^WK			                    Upp<Tab>^WK
menutrans &Bottom<Tab>^WJ		                    Ni�ur<Tab>^WJ
menutrans &Left\ side<Tab>^WH		                Til\ Vinstri<Tab>^WH
menutrans &Right\ side<Tab>^WL		                Til\ H�gri<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR		                R�lla\ upp<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		                R�lla\ ni�ur<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		                Velja\ Leturger�\.\.\.
" }}} WINDOW / GLUGGI

" {{{ HELP / HJ�LP
menutrans &Help			                            Hj�lp
menutrans &Overview<Tab><F1>	                    Yfirlit<Tab><F1>
menutrans &User\ Manual		                        Notendahandb�k
menutrans &How-to\ links	                        Hj�lparhlekkir
menutrans &GUI			                            Myndr�nt\ Vi�m�t
menutrans &Credits		                            H�fundar
menutrans Co&pying		                            Afritun
menutrans &Sponsor/Register                         Styrkja/Skr�ning
menutrans O&rphans		                            G��ger�arstarf
menutrans &Find\.\.\.		                        Leit\.\.\.	" conflicts with Edit.Find
menutrans &Version		                            �tg�fa
menutrans &About		                            Um\ Forriti�
" }}} HELP / HJ�LP

" {{{ POPUP
menutrans &Undo				                        Til\ Baka
menutrans Cu&t				                        Klippa
menutrans &Copy				                        Afrita
menutrans &Paste			                        L�ma
menutrans &Delete			                        Ey�a
menutrans Select\ Blockwise		                    Velja\ B�lkv�st
menutrans Select\ &Word			                    Velja\ Or�
menutrans Select\ &Sentence		                    Velja\ Setningu
menutrans Select\ Pa&ragraph	                    Velja\ Efnisgrein
menutrans Select\ &Line			                    Velja\ L�nu
menutrans Select\ &Block		                    Velja\ B�lk
menutrans Select\ &All			                    Velja\ Allt
" }}} POPUP

" {{{ TOOLBAR
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		                        Opna Skr�
    tmenu ToolBar.Save		                        Vista Skr�
    tmenu ToolBar.SaveAll	                        Vista Allar Skr�r
    tmenu ToolBar.Print		                        Prenta
    tmenu ToolBar.Undo		                        Afturkalla
    tmenu ToolBar.Redo		                        Endurkalla
    tmenu ToolBar.Cut		                        Klippa
    tmenu ToolBar.Copy		                        Afrita
    tmenu ToolBar.Paste		                        L�ma
    tmenu ToolBar.Find		                        Finna...
    tmenu ToolBar.FindNext	                        Finna N�sta
    tmenu ToolBar.FindPrev	                        Finna fyrri
    tmenu ToolBar.Replace	                        Finna og Skipta...
    if 0	" disabled; These are in the Windows menu
      tmenu ToolBar.New		                        N�r
      tmenu ToolBar.WinSplit	                    Splitta Glugga
      tmenu ToolBar.WinMax	                        H�marksst�r� Glugga
      tmenu ToolBar.WinMin	                        L�gmarksst�r� Glugga
      tmenu ToolBar.WinClose	                    Loka Glugga
    endif
    tmenu ToolBar.LoadSesn	                        Hla�a Setu
    tmenu ToolBar.SaveSesn	                        Vista Setu
    tmenu ToolBar.RunScript	                        Keyra Skriptu
    tmenu ToolBar.Make		                        Sm��a
    tmenu ToolBar.Shell		                        Opna Skel
    tmenu ToolBar.RunCtags	                        Sm��a Merki
    tmenu ToolBar.TagJump	                        Hoppa � Merki
    tmenu ToolBar.Help		                        Hj�lp
    tmenu ToolBar.FindHelp	                        Finna Hj�lp...
  endfun
endif
" }}} TOOLBAR

" {{{ DIALOG TEXTS
let g:menutrans_no_file =                           "[Engin Skr�]"
let g:menutrans_help_dialog =                       "Sl�i� inn skipun e�a or�a til a� leita uppl�singa um:\n\nForskeyti� i_ fyrir �lagshamsskipanir (t.d. i_CTRL-X)\nForskeyti� c_ fyrir skipanal�nuskipanir (t.d. c_<Del>)\nForskeyti� ' fyrir nafn � valm�guleika (t.d. 'shiftbreidd')"
let g:menutrans_path_dialog =                       "Sl�i� inn leitarsl�� fyrir skr�r.\nA�skilji� m�ppur me� kommu"
let g:menutrans_tags_dialog =                       "Sl�i� inn nafn Merkjaskr�a.\nA�skilji� n�fnin me� kommu"
let g:menutrans_textwidth_dialog =                  "Sl�i� inn n�ja textabreidd (0 til a� �virkja sni�m�tun): "
let g:menutrans_fileformat_dialog =                 "Velji� Skr�arsni�"
" }}}

let &cpo = s:keepcpo
unlet s:keepcpo
