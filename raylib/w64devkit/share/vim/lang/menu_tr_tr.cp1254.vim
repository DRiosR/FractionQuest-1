" Menu Translations:	Turkish
" Maintainer:		Emir SARI <bitigchi@me.com>
" Generated from menu_tr_tr.utf-8.vim, DO NOT EDIT

if exists("did_menu_trans")
   finish
endif

let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim
scriptencoding cp1254

" Top
menutrans &File	&Dosya
menutrans &Edit	D�&zen
menutrans &Tools	&Ara�lar
menutrans &Syntax	&S�zdizim
menutrans &Buffers	A&rabellekler
menutrans &Window	&Pencere
menutrans &Help	&Yard�m

" Help menu
menutrans &Overview<Tab><F1>	&Genel\ Bak��<Tab><F1>
menutrans &User\ Manual	&Kullan�m\ K�lavuzu
menutrans &How-To\ Links	&Nas�l\ Yap�l�r?
menutrans &Find\.\.\.	        &Bul\.\.\.
"--------------------
menutrans &Credits		&Te�ekk�rler
menutrans Co&pying		&Da��t�m
menutrans &Sponsor/Register	&Sponsorluk/Kay�t
menutrans O&rphans		&Yetimler
"--------------------
menutrans &Version	S�r�m\ &Bilgisi
menutrans &About	&Hakk�nda

" File menu
menutrans &Open\.\.\.<Tab>:e		&A�\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	&Yeni\ B�l�mde\ A�\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	S&ekme\ A�\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew	        Yeni\ &Sekme<Tab>:enew
menutrans &Close<Tab>:close		Ka&pat<Tab>:close
"--------------------
menutrans &Save<Tab>:w			Kayde&t<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	&Farkl�\ Kaydet\.\.\.<Tab>:sav
"--------------------
menutrans Split\ &Diff\ With\.\.\.	Ka&r��la�t�r\.\.\.
menutrans Split\ Patched\ &By\.\.\.	Ya&ma\ �le\ Kar��la�t�r\.\.\.
"--------------------
menutrans &Print		Ya&zd�r
menutrans Sa&ve-Exit<Tab>:wqa	        Kaydet\ &ve\ ��k<Tab>:wqa
menutrans E&xit<Tab>:qa		��&k<Tab>:qa

" Edit menu
menutrans &Undo<Tab>u		        &Geri\ Al<Tab>u
menutrans &Redo<Tab>^R		        &Yinele<Tab>^R
menutrans Rep&eat<Tab>\.        	Son\ Komutu\ Y&inele<Tab>\.
"--------------------
menutrans Cu&t<Tab>"+x                 &Kes<Tab>"+x
menutrans &Copy<Tab>"+y 	        K&opyala<Tab>"+y
menutrans &Paste<Tab>"+gP              Ya&p��t�r<Tab>"+gP
menutrans Put\ &Before<Tab>[p	        �&n�ne\ Koy<Tab>[p
menutrans Put\ &After<Tab>]p	        A&rkas�na\ Koy<Tab>]p
menutrans &Delete<Tab>x 	        Si&l<Tab>x
menutrans &Select\ All<Tab>ggVG	T�&m�n�\ Se�<Tab>ggVG
"--------------------
" Athena GUI only
menutrans &Find<Tab>/		                &Bul<Tab>/
menutrans Find\ and\ Rep&lace<Tab>:%s	        Bul\ &ve\ De�i�tir<Tab>:%s
" End Athena GUI only
menutrans &Find\.\.\.<Tab>/		        &Bul\.\.\.<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	        Bul\ ve\ &De�i�tir\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.<Tab>:%s	Bul\ ve\ &De�i�tir\.\.\.<Tab>:%s
menutrans Find\ and\ Rep&lace\.\.\.<Tab>:s	Bul\ ve\ &De�i�tir\.\.\.<Tab>:s
"--------------------
menutrans Settings\ &Window	&Ayarlar\ Penceresi
menutrans Startup\ &Settings	Ba�lan&g��\ Ayarlar�
menutrans &Global\ Settings	Ge&nel\ Ayarlar
menutrans F&ile\ Settings	&Dosya\ Ayarlar�
menutrans C&olor\ Scheme	&Renk\ D�zeni
menutrans &Keymap		D��me\ &E�lem
menutrans Select\ Fo&nt\.\.\.	Ya&z�tipi\ Se�\.\.\.

">>>----------------- Edit/Global settings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!    	Dizgi\ &Vurgulamas�n�\ A�/Kapat<Tab>:set\ hls!
menutrans Toggle\ &Ignoring\ Case<Tab>:set\ ic!		B�Y�K/k���k\ Harf\ &Duyarl�\ A�/Kapat<Tab>:set\ ic!
menutrans Toggle\ &Showing\ Matched\ Pairs<Tab>:set\ sm!	E�&le�en\ �kilileri\ A�/Kapat<Tab>:set\ sm!
menutrans &Context\ Lines					�&mle�le\ Oynayan\ Sat�rlar
menutrans &Virtual\ Edit					&Sanal\ D�zenleme
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!			Ekleme\ &Kipini\ A�/Kapat<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatibility<Tab>:set\ cp!		&Vi\ Uyumlu\ Kipi\ A�/Kapat<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.					&Arama\ Yolu\.\.\.
menutrans Ta&g\ Files\.\.\.					&Etiket\ Dosyalar�\.\.\.
"
menutrans Toggle\ &Toolbar		&Ara�\ �ubu�unu\ A�/Kapat
menutrans Toggle\ &Bottom\ Scrollbar	A&lt\ Kayd�rma\ �ubu�unu\ A�/Kapat
menutrans Toggle\ &Left\ Scrollbar	&Sol\ Kayd�rma\ �ubu�unu\ A�/Kapat
menutrans Toggle\ &Right\ Scrollbar	S&a�\ Kayd�rma\ �ubu�unu\ A�/Kapat

">>>->>>------------- Edit/Global settings/Virtual edit
menutrans Never		Kapal�
menutrans Block\ Selection	Blok\ Se�imi
menutrans Insert\ Mode		Ekleme\ Kipi
menutrans Block\ and\ Insert	Blok\ Se�iminde\ ve\ Ekleme\ Kipinde
menutrans Always		Her\ Zaman\ A��k
">>>----------------- Edit/File settings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!		&Sat�r\ Numaraland�rmay�\ A�/Kapat<Tab>:set\ nu!
menutrans Toggle\ Relati&ve\ Line\ Numbering<Tab>:set\ rnu!	&G�receli\ Sat�r\ Numaraland�rmay�\ A�/Kapat<Tab>:set\ nru!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!			G�&r�nmeyen\ Karakterleri\ A�/Kapat<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap!		Sa&t�r\ Kayd�rmay�\ A�/Kapat<Tab>:set\ wrap!
menutrans Toggle\ W&rapping\ at\ Word<Tab>:set\ lbr!		S�&zc�k\ Kayd�rmay�\ A�/Kapat<Tab>:set\ lbr!
menutrans Toggle\ Tab\ &Expanding-tab<Tab>:set\ et!		S&ekmeleri\ Bo�luklara\ D�n��t�rmeyi\ A�/Kapat<Tab>:set\ et!
menutrans Toggle\ &Auto\ Indenting<Tab>:set\ ai!		&Otomatik\ Girintilemeyi\ A�/Kapat<Tab>:set\ ai!
menutrans Toggle\ &C-Style\ Indenting<Tab>:set\ cin!		&C\ Tarz�\ Girintilemeyi\ A�/Kapat<Tab>:set\ cin!
">>>---
menutrans &Shiftwidth		&Girinti\ D�zeyi
menutrans Soft\ &Tabstop	&Sekme\ Geni�li�i
menutrans Te&xt\ Width\.\.\.	&Metin\ Geni�li�i\.\.\.
menutrans &File\ Format\.\.\.	&Dosya\ Bi�imi\.\.\.

" Tools menu
menutrans &Jump\ to\ This\ Tag<Tab>g^]	�&u\ Etikete\ Atla<Tab>g^]
menutrans Jump\ &Back<Tab>^T		&Geri\ D�n<Tab>^T
menutrans Build\ &Tags\ File		&Etiket\ Dosyas�\ Olu�tur
"-------------------
menutrans &Folding	&K�v�rmalar
menutrans &Spelling	&Yaz�m\ Denetimi
menutrans &Diff	K&ar��la�t�rma\ (diff)
"-------------------
menutrans &Make<Tab>:make			&Derle<Tab>:make
menutrans &List\ Errors<Tab>:cl		&Hatalar�\ Listele<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!		�&letileri\ Listele<Tab>:cl!
menutrans &Next\ Error<Tab>:cn			Bir\ &Sonraki\ Hata<Tab>:cn
menutrans &Previous\ Error<Tab>:cp		Bir\ �&nceki\ Hata<Tab>:cp
menutrans &Older\ List<Tab>:cold		Daha\ &Eski\ Hatalar<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew		Daha\ &Yeni\ Hatalar<Tab>:cnew
menutrans Error\ &Window			Hatalar\ &Penceresi
menutrans Se&t\ Compiler			De&rleyici\ Se�
menutrans Show\ Compiler\ Se&ttings\ in\ Menu	Derleyici\ Ayarlar�n�\ Men�de\ &G�ster 
"-------------------
menutrans &Convert\ to\ HEX<Tab>:%!xxd	    	HEX'e\ D�&n��t�r<Tab>:%!xxd
menutrans Conve&rt\ Back<Tab>:%!xxd\ -r	HEX'&ten\ D�n��t�r<Tab>:%!xxd\ -r
">>>---------------- Tools/Spelling
menutrans &Spell\ Check\ On			Yaz�m\ Denetimini\ &A�
menutrans Spell\ Check\ &Off			Yaz�m\ Denetimini\ &Kapat
menutrans To\ &Next\ Error<Tab>]s		Bir\ &Sonraki\ Hata<Tab>]s
menutrans To\ &Previous\ Error<Tab>[s		Bir\ �&nceki\ Hata<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=		D�&zeltme\ �ner<Tab>z=
menutrans &Repeat\ Correction<Tab>:spellrepall	D�zeltmeyi\ &Yinele<Tab>spellrepall
"-------------------
menutrans Set\ Language\ to\ "en"	Dili\ "en"\ yap
menutrans Set\ Language\ to\ "en_au"	Dili\ "en_au"\ yap
menutrans Set\ Language\ to\ "en_ca"	Dili\ "en_ca"\ yap
menutrans Set\ Language\ to\ "en_gb"	Dili\ "en_gb"\ yap
menutrans Set\ Language\ to\ "en_nz"	Dili\ "en_nz"\ yap
menutrans Set\ Language\ to\ "en_us"	Dili\ "en_us"\ yap
menutrans &Find\ More\ Languages	&Ba�ka\ Diller\ Bul
let g:menutrans_set_lang_to =		'Dil Y�kle'

" The Spelling popup menu
let g:menutrans_spell_change_ARG_to =		'D�zeltilecek:\ "%s"\ ->'
let g:menutrans_spell_add_ARG_to_word_list =	'"%s"\ s�zc���n�\ s�zl��e\ ekle'
let g:menutrans_spell_ignore_ARG =		'"%s"\ s�zc���n�\ yoksay'
">>>---------------- Folds
menutrans &Enable/Disable\ Folds<Tab>zi		&K�v�rmalar�\ A�/Kapat<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv		�&mlecin\ Oldu�u\ Sat�r�\ G�r�nt�le<Tab>zv
menutrans Vie&w\ Cursor\ Line\ Only<Tab>zMzx	Ya&ln�zca\ �mlecin\ Oldu�u\ Sat�r�\ G�r�nt�le<Tab>zMzx
menutrans C&lose\ More\ Folds<Tab>zm		&Daha\ Fazla\ K�v�rma\ Kapat<Tab>zm
menutrans &Close\ All\ Folds<Tab>zM		B�t�n\ K�&v�rmalar�\ Kapat<Tab>zM
menutrans &Open\ All\ Folds<Tab>zR		B�&t�n\ K�v�rmalar�\ A�<Tab>zR
menutrans O&pen\ More\ Folds<Tab>zr		D&aha\ Fazla\ K�v�rma\ A�<Tab>zr
menutrans Fold\ Met&hod				K�v�&rma\ Y�ntemi
menutrans Create\ &Fold<Tab>zf			K�v�rma\ &Olu�tur<Tab>zf
menutrans &Delete\ Fold<Tab>zd			K�v�rma\ &Sil<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD		T�&m\ K�v�rmalar�\ Sil<Tab>zD
menutrans Fold\ col&umn\ Width			K�v�rma\ S�tunu\ &Geni�li�i
">>>->>>----------- Tools/Folds/Fold Method
menutrans M&anual	&El\ �le
menutrans I&ndent	&Girinti
menutrans E&xpression	�&fade
menutrans S&yntax	&S�zdizim
menutrans Ma&rker	�&mleyici
">>>--------------- Tools/Diff
menutrans &Update	&G�ncelle
menutrans &Get\ Block	Blo�u\ &Al
menutrans &Put\ Block	Blo�u\ &Koy
">>>--------------- Tools/Diff/Error window
menutrans &Update<Tab>:cwin	&G�ncelle<Tab>:cwin
menutrans &Close<Tab>:cclose	&Kapat<Tab>:cclose
menutrans &Open<Tab>:copen	&A�<Tab>:copen

" Syntax menu
menutrans &Show\ File\ Types\ in\ Menu	Dosya\ T�rlerini\ Men�de\ &G�ster
menutrans Set\ '&syntax'\ only		Yaln�zca\ 'syntax'\ &Ayarla
menutrans Set\ '&filetype'\ too	'filetype'\ ��in\ &de\ Ayarla
menutrans &Off				&Kapat
menutrans &Manual			&El\ �le
menutrans A&utomatic			&Otomatik
menutrans On/Off\ for\ &This\ File	&Bu\ Dosya\ ��in\ A�/Kapat
menutrans Co&lor\ Test			&Renk\ Testi
menutrans &Highlight\ Test		&Vurgulama\ Testi
menutrans &Convert\ to\ HTML		&HTML'ye\ D�n��t�r

" Buffers menu
menutrans &Refresh\ menu	&Men�y�\ G�ncelle
menutrans Delete		&Sil
menutrans &Alternate		�&teki
menutrans &Next		So&nraki
menutrans &Previous		�n&ceki
menutrans [No\ File]		[Dosya\ Yok]

" Window menu
menutrans &New<Tab>^Wn			Yeni\ &Pencere<Tab>^Wn
menutrans S&plit<Tab>^Ws		Pencereyi\ &B�l<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	Pencereyi\ Ba�kas�na\ B�&l<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	Pencereyi\ &Dikey\ Olarak\ B�l<Tab>^Wv
menutrans Split\ File\ E&xplorer	Yeni\ B�l�&mde\ Dosya\ Gezginini\ A�
"
menutrans &Close<Tab>^Wc		Pen&cereyi\ Kapat<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	Di�er\ Pencerele&ri\ Kapat<Tab>^Wo
"
menutrans Move\ &To		&Ta��
menutrans Rotate\ &Up<Tab>^WR	&Yukar�\ Ta��<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr	&A�a��\ Ta��<Tab>^Wr
"
menutrans &Equal\ Size<Tab>^W=	&E�it\ Boyut<Tab>^W=
menutrans &Max\ Height<Tab>^W_	E&n\ B�y�k\ Y�kseklik<Tab>^W_
menutrans M&in\ Height<Tab>^W1_	En\ K���k\ Y�ksekl&ik<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|	En\ B�y�k\ Gen&i�lik<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|	En\ K���k\ Geni�li&k<Tab>^W1\|

">>>----------------- Window/Move To
menutrans &Top<Tab>^WK		&Yukar�<Tab>^WK
menutrans &Bottom<Tab>^WJ	&A�a��<Tab>^WJ
menutrans &Left\ Side<Tab>^WH	So&la<Tab>^WH
menutrans &Right\ Side<Tab>^WL	&Sa�a<Tab>^WL

" The popup menu
menutrans &Undo		&Geri\ Al
menutrans Cu&t			&Kes
menutrans &Copy		K&opyala
menutrans &Paste		&Yap��t�r
menutrans &Delete		&Sil
menutrans Select\ Blockwise	&Blok\ Bi�iminde\ Se�
menutrans Select\ &Word	S�&zc�k\ Se�
menutrans Select\ &Sentence	&T�mce\ Se�
menutrans Select\ Pa&ragraph	&Paragraf\ Se�
menutrans Select\ &Line	S&at�r\ Se�
menutrans Select\ &Block	Bl&ok\ Se�
menutrans Select\ &All		T�m�&n�\ Se�

" The GUI toolbar
if has("toolbar")
	if exists("*Do_toolbar_tmenu")
		delfun Do_toolbar_tmenu
	endif

	fun Do_toolbar_tmenu()
		tmenu ToolBar.Open	Dosya A�
		tmenu ToolBar.Save	Dosya Kaydet
		tmenu ToolBar.SaveAll	T�m Dosyalar� Kaydet
		tmenu ToolBar.Print	Yazd�r
		tmenu ToolBar.Undo	Geri Al
		tmenu ToolBar.Redo	Yinele
		tmenu ToolBar.Cut	Kes
		tmenu ToolBar.Copy	Kopyala
		tmenu ToolBar.Paste	Yap��t�r
		tmenu ToolBar.Find	Bul...
		tmenu ToolBar.FindNext	Sonrakini Bul
		tmenu ToolBar.FindPrev	�ncekini Bul
		tmenu ToolBar.Replace	Bul ve De�i�tir...
		if 0	" disabled; These are in the Windows menu
			tmenu ToolBar.New	Yeni Pencere
			tmenu ToolBar.WinSplit	Pencereyi B�l
			tmenu ToolBar.WinMax	En B�y�k Pencere Y�ksekli�i
			tmenu ToolBar.WinMin	En K���k Pencere Y�ksekli�i
			tmenu ToolBar.WinClose	Pencereyi Kapat
		endif
		tmenu ToolBar.LoadSesn	Oturum Y�kle
		tmenu ToolBar.SaveSesn	Oturum Kaydet
		tmenu ToolBar.RunScript	Betik �al��t�r
		tmenu ToolBar.Make	Derle
		tmenu ToolBar.Shell	Kabuk
		tmenu ToolBar.RunCtags	Etiket Dosyas� Olu�tur
		tmenu ToolBar.TagJump	Etikete Atla
		tmenu ToolBar.Help	Yard�m
		tmenu ToolBar.FindHelp	Yard�m Bul
	endfun
endif

" Dialog texts
" Find in help dialog
let g:menutrans_help_dialog = "Yard�m i�in komut veya s�zc�k girin:\n\nEkleme Kipi komutlar�n� aramak i�in i_ ekleyin (�rne�in i_CTRL-X)\nNormal Kip komutlar�n� aramak i�in _c ekleyin (�rne�in c_<Del>)\nSe�enekler hakk�nda yard�m almak i�in ' ekleyin (�rne�in 'shiftwidth')"

" Searh path dialog
let g:menutrans_path_dialog = "Dosya aramas� i�in yol belirtin.\nDizin adlar� virg�llerle ayr�l�r."

" Tag files dialog
let g:menutrans_tags_dialog = "Etiket dosyas� adlar� belirtin (virg�lle ay�rarak).\n"

" Text width dialog
let g:menutrans_textwidth_dialog = "Bi�imlendirme i�in metin geni�li�ini belirtin.\nBi�imlendirme iptali i�in 0 girin."

" File format dialog
let g:menutrans_fileformat_dialog = "Dosya bi�imi se�in"
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n�&ptal"
let menutrans_no_file = "[Dosya Yok]"
let &cpo = s:keepcpo
unlet s:keepcpo
