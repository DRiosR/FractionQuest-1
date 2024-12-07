" Menu Translations:	Russian
" Maintainer:		Sergey Alyoshin <alyoshin.s@gmail.com>
" Previous Maintainer:	Vassily Ragosin <vrr[at]users.sourceforge.net>
" Last Change:		16 May 2018
" Generated from menu_ru_ru.utf-8.vim, DO NOT EDIT
" URL:			cvs://cvs.sf.net:/cvsroot/ruvim/extras/menu/menu_ru_ru.vim
"
" $Id: menu_ru_ru.vim,v 1.1 2004/06/13 16:09:10 vimboss Exp $
"
" Adopted for RuVim project by Vassily Ragosin.
" First translation: Tim Alexeevsky <realtim [at] mail.ru>,
" based on ukrainian translation by Bohdan Vlasyuk <bohdan@vstu.edu.ua>
"
"
" Quit when menu translations have already been done.
"
if exists("did_menu_trans")
   finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding koi8-r

" Top
menutrans &File				&����
menutrans &Edit				�&�����
menutrans &Tools			&�����������
menutrans &Syntax			&���������
menutrans &Buffers			&������
menutrans &Window			&����
menutrans &Help				�&������
"
"
"
" Help menu
menutrans &Overview<Tab><F1>		&�����<Tab><F1>
menutrans &User\ Manual			������&�����\ ������������
menutrans &How-To\ Links		&���\ ���\ �������\.\.\.
menutrans &Find\.\.\.			&�����
"--------------------
menutrans &Credits			&�������������
menutrans Co&pying			&���������������
menutrans &Sponsor/Register		����&��/�����������
menutrans O&rphans			&������
"--------------------
menutrans &Version			&����������\ �\ ���������
menutrans &About			&��������
"
"
" File menu
menutrans &Open\.\.\.<Tab>:e		&�������\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	��&������\ ����\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	�������\ �&������\.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		&�����<Tab>:enew
menutrans &Close<Tab>:close		&�������<Tab>:close
"--------------------
menutrans &Save<Tab>:w			&���������<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	���������\ &���\.\.\.<Tab>:sav
"--------------------
menutrans Split\ &Diff\ With\.\.\.	��&������\ �\.\.\.
menutrans Split\ Patched\ &By\.\.\.	��������\ �\ �����������\ ���&�����\.\.\.
"--------------------
menutrans &Print			��&��������
menutrans Sa&ve-Exit<Tab>:wqa		��&���\ �\ �����������<Tab>:wqa
menutrans E&xit<Tab>:qa			&�����<Tab>:qa
"
"
" Edit menu
menutrans &Undo<Tab>u			�&�������<Tab>u
menutrans &Redo<Tab>^R			�&������<Tab>^R
menutrans Rep&eat<Tab>\.		��������&�<Tab>\.
"--------------------
menutrans Cu&t<Tab>"+x			&��������<Tab>"+x
menutrans &Copy<Tab>"+y			&����������<Tab>"+y
menutrans &Paste<Tab>"+gP		��&�����<Tab>"+gP
menutrans Put\ &Before<Tab>[p		�������\ ����&�<Tab>[p
menutrans Put\ &After<Tab>]p		�������\ ��&���<Tab>]p
menutrans &Delete<Tab>x			&�������<Tab>x
menutrans &Select\ All<Tab>ggVG		�&�������\ �ӣ<Tab>ggVG
"--------------------
" Athena GUI only
menutrans &Find<Tab>/			&�����<Tab>/
menutrans Find\ and\ Rep&lace<Tab>:%s	�����\ �\ &������<Tab>:%s
" End Athena GUI only
menutrans &Find\.\.\.<Tab>/		&�����\.\.\.<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	�����\ �\ &������\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.<Tab>:%s	�����\ �\ &������\.\.\.<Tab>:%s
menutrans Find\ and\ Rep&lace\.\.\.<Tab>:s	�����\ �\ &������\.\.\.<Tab>:s
"--------------------
menutrans Settings\ &Window		����\ ���������\ &�����
menutrans Startup\ &Settings		���������\ �����&��
menutrans &Global\ Settings		&����������\ ���������
menutrans F&ile\ Settings		���������\ &������
menutrans C&olor\ Scheme		&��������\ �����
menutrans &Keymap			���������\ ��&��������
menutrans Select\ Fo&nt\.\.\.		�����\ &������\.\.\.
">>>----------------- Edit/Global settings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	���������\ &���������\ ������������<Tab>:set\ hls!
menutrans Toggle\ &Ignoring\ Case<Tab>:set\ ic!		&�������������������\ �����<Tab>:set\ ic!
menutrans Toggle\ &Showing\ Matched\ Pairs<Tab>:set\ sm!	����������\ ������\ &��������<Tab>:set\ sm!
menutrans &Context\ Lines				���&��\ ������\ �������
menutrans &Virtual\ Edit				���&��������\ ��������������
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		�����\ &�������<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatibility<Tab>:set\ cp!		&�������������\ �\ Vi<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.				&����\ ���\ ������\ ������\.\.\.
menutrans Ta&g\ Files\.\.\.				�����\ &�����\.\.\.
"
menutrans Toggle\ &Toolbar				&����������������\ ������
menutrans Toggle\ &Bottom\ Scrollbar			������\ ���������\ ���&��
menutrans Toggle\ &Left\ Scrollbar			������\ ���������\ �&����
menutrans Toggle\ &Right\ Scrollbar			������\ ���������\ ���&���
">>>->>>------------- Edit/Global settings/Virtual edit
menutrans Never						���������
menutrans Block\ Selection				���\ ���������\ �����
menutrans Insert\ Mode					�\ ������\ �������
menutrans Block\ and\ Insert				���\ ���������\ �����\ �\ �\ ������\ �������
menutrans Always					��������\ ������
">>>----------------- Edit/File settings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	&���������\ �����<Tab>:set\ nu!
menutrans Toggle\ Relati&ve\ Line\ Numbering<Tab>:set\ rnu!	��������&�����\ ���������\ �����<Tab>:set\ nru!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		������&�����\ ���������\ ��������<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap!	&�������\ �������\ �����<Tab>:set\ wrap!
menutrans Toggle\ W&rapping\ at\ Word<Tab>:set\ lbr!	�������\ &�����\ ����<Tab>:set\ lbr!
menutrans Toggle\ Tab\ &Expanding-tab<Tab>:set\ et!	���&����\ ������\ ���������<Tab>:set\ et!
menutrans Toggle\ &Auto\ Indenting<Tab>:set\ ai!	��������������\ ��������������\ &��������<Tab>:set\ ai!
menutrans Toggle\ &C-Style\ Indenting<Tab>:set\ cin!	��������������\ ��������\ �\ &�����\ C<Tab>:set\ cin!
">>>---
menutrans &Shiftwidth					����&����\ �������
menutrans Soft\ &Tabstop				������\ &���������
menutrans Te&xt\ Width\.\.\.				&������\ ������\.\.\.
menutrans &File\ Format\.\.\.				&������\ �����\.\.\.
"
"
"
" Tools menu
menutrans &Jump\ to\ This\ Tag<Tab>g^]			&�������\ �\ �����<Tab>g^]
menutrans Jump\ &Back<Tab>^T				&���������\ �����<Tab>^T
menutrans Build\ &Tags\ File				�������\ ����\ ��&���
"-------------------
menutrans &Folding					&�������
menutrans &Spelling					��&����������
menutrans &Diff						&�������\ (diff)
"-------------------
menutrans &Make<Tab>:make				��&�����������<Tab>:make
menutrans &List\ Errors<Tab>:cl				������\ �&�����<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!			������\ ���&������<Tab>:cl!
menutrans &Next\ Error<Tab>:cn				�����&����\ ������<Tab>:cn
menutrans &Previous\ Error<Tab>:cp			�&���������\ ������<Tab>:cp
menutrans &Older\ List<Tab>:cold			�����\ ����&��\ ������\ ������<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew			�����\ ���&���\ ������\ ������<Tab>:cnew
menutrans Error\ &Window				��&��\ ������
menutrans Se&t\ Compiler				�����\ &�����������
menutrans Show\ Compiler\ Se&ttings\ in\ Menu		����&����\ ���������\ �����&������\ �\ ���� 
"-------------------
menutrans &Convert\ to\ HEX<Tab>:%!xxd			�&��������\ �\ HEX<Tab>:%!xxd
menutrans Conve&rt\ Back<Tab>:%!xxd\ -r			���������\ �&�\ HEX<Tab>:%!xxd\ -r
">>>---------------- Tools/Spelling
menutrans &Spell\ Check\ On				&���\ ��������\ ������������
menutrans Spell\ Check\ &Off				��&��\ ��������\ ������������
menutrans To\ &Next\ Error<Tab>]s			&���������\ ������<Tab>]s
menutrans To\ &Previous\ Error<Tab>[s			&����������\ ������<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=			����������\ ���&��������<Tab>z=
menutrans &Repeat\ Correction<Tab>:spellrepall		���&������\ �����������\ ���\ ����<Tab>spellrepall
"-------------------
menutrans Set\ Language\ to\ "en"			����������\ ����\ "en"
menutrans Set\ Language\ to\ "en_au"			����������\ ����\ "en_au"
menutrans Set\ Language\ to\ "en_ca"			����������\ ����\ "en_ca"
menutrans Set\ Language\ to\ "en_gb"			����������\ ����\ "en_gb"
menutrans Set\ Language\ to\ "en_nz"			����������\ ����\ "en_nz"
menutrans Set\ Language\ to\ "en_us"			����������\ ����\ "en_us"
menutrans &Find\ More\ Languages			&�����\ ������\ ������
let g:menutrans_set_lang_to =				'���������� ����'
"
"
" The Spelling popup menu
"
"
let g:menutrans_spell_change_ARG_to =			'���������\ "%s"\ ��'
let g:menutrans_spell_add_ARG_to_word_list =		'��������\ "%s"\ �\ �������'
let g:menutrans_spell_ignore_ARG =			'����������\ "%s"'
">>>---------------- Folds
menutrans &Enable/Disable\ Folds<Tab>zi			���/����\ &�������<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv			�������\ ������\ �\ &��������<Tab>zv
menutrans Vie&w\ Cursor\ Line\ Only<Tab>zMzx		�������\ &������\ ������\ �\ ��������<Tab>zMzx
menutrans C&lose\ More\ Folds<Tab>zm			�������\ &������\ �������<Tab>zm
menutrans &Close\ All\ Folds<Tab>zM			�������\ &���\ �������<Tab>zM
menutrans &Open\ All\ Folds<Tab>zR			����&���\ ���\ �������<Tab>zR
menutrans O&pen\ More\ Folds<Tab>zr			���&����\ ������\ �������<Tab>zr
menutrans Fold\ Met&hod					&�����\ �������
menutrans Create\ &Fold<Tab>zf				��&�����\ �������<Tab>zf
menutrans &Delete\ Fold<Tab>zd				�&������\ �������<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD			�������\ ��&�\ �������<Tab>zD
menutrans Fold\ col&umn\ Width				&������\ �������\ �������
">>>->>>----------- Tools/Folds/Fold Method
menutrans M&anual					���&����
menutrans I&ndent					�&�����
menutrans E&xpression					&���������
menutrans S&yntax					&���������
menutrans Ma&rker					&�������
">>>--------------- Tools/Diff
menutrans &Update					�&�������
menutrans &Get\ Block					��������\ &����\ �����
menutrans &Put\ Block					��������\ &������\ �����
">>>--------------- Tools/Diff/Error window
menutrans &Update<Tab>:cwin				�&�������<Tab>:cwin
menutrans &Close<Tab>:cclose				&�������<Tab>:cclose
menutrans &Open<Tab>:copen				&�������<Tab>:copen
"
"
" Syntax menu
"
menutrans &Show\ File\ Types\ in\ Menu			��������\ ����\ ������\ ����\ &�����
menutrans Set\ '&syntax'\ only				&��������\ ������\ ��������\ 'syntax'
menutrans Set\ '&filetype'\ too				��������\ &�����\ ��������\ 'filetype'
menutrans &Off						&���������
menutrans &Manual					���&����
menutrans A&utomatic					&�������������
menutrans On/Off\ for\ &This\ File			���/����\ ���\ &�����\ �����
menutrans Co&lor\ Test					��������\ &������
menutrans &Highlight\ Test				��������\ ���&������
menutrans &Convert\ to\ HTML				�&������\ HTML\ �\ ����������
"
"
" Buffers menu
"
menutrans &Refresh\ menu				�&�������\ ����
menutrans Delete					�&������
menutrans &Alternate					&��������
menutrans &Next						�&��������
menutrans &Previous					&����������
menutrans [No\ File]					[���\ �����]
"
"
" Window menu
"
menutrans &New<Tab>^Wn					&�����\ ����<Tab>^Wn
menutrans S&plit<Tab>^Ws				&���������\ ����<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^			�������\ &��������\ ����\ �\ �����\ ����<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv			���������\ ��\ &���������<Tab>^Wv
menutrans Split\ File\ E&xplorer			�������\ ���������\ ��\ &��������\ �������
"
menutrans &Close<Tab>^Wc				&�������\ ���\ ����<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo			�������\ &���������\ ����<Tab>^Wo
"
menutrans Move\ &To					&�����������
menutrans Rotate\ &Up<Tab>^WR				��������\ ����&�<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr				��������\ �&���<Tab>^Wr
"
menutrans &Equal\ Size<Tab>^W=				�&���������\ ������<Tab>^W=
menutrans &Max\ Height<Tab>^W_				������������\ �&�����<Tab>^W_
menutrans M&in\ Height<Tab>^W1_				�����������\ ����&��<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|				������������\ &������<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|				�������&����\ ������<Tab>^W1\|
">>>----------------- Window/Move To
menutrans &Top<Tab>^WK					�&����<Tab>^WK
menutrans &Bottom<Tab>^WJ				�&���<Tab>^WJ
menutrans &Left\ Side<Tab>^WH				�&����<Tab>^WH
menutrans &Right\ Side<Tab>^WL				�&�����<Tab>^WL
"
"
" The popup menu
"
"
menutrans &Undo						�&�������
menutrans Cu&t						&��������
menutrans &Copy						&����������
menutrans &Paste					��&�����
menutrans &Delete					&�������
menutrans Select\ Blockwise				��������\ ���������
menutrans Select\ &Word					��������\ &�����
menutrans Select\ &Sentence				��������\ &�����������
menutrans Select\ Pa&ragraph				��������\ ����&����
menutrans Select\ &Line					��������\ ��&����
menutrans Select\ &Block				��������\ &����
menutrans Select\ &All					��������\ &�ӣ
"
" The GUI toolbar
"
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open					������� ����
    tmenu ToolBar.Save					��������� ����
    tmenu ToolBar.SaveAll				��������� ��� �����
    tmenu ToolBar.Print					����������
    tmenu ToolBar.Undo					��������
    tmenu ToolBar.Redo					�������
    tmenu ToolBar.Cut					��������
    tmenu ToolBar.Copy					����������
    tmenu ToolBar.Paste					�������
    tmenu ToolBar.FindNext				����� ���������
    tmenu ToolBar.FindPrev				����� ����������
    tmenu ToolBar.Replace				����� ��� ��������...
    tmenu ToolBar.LoadSesn				��������� ����� ��������������
    tmenu ToolBar.SaveSesn				��������� ����� ��������������
    tmenu ToolBar.RunScript				��������� �������� Vim
    tmenu ToolBar.Make					����������
    tmenu ToolBar.Shell					��������
    tmenu ToolBar.RunCtags				������� ���� �����
    tmenu ToolBar.TagJump				������� � �����
    tmenu ToolBar.Help					�������
    tmenu ToolBar.FindHelp				����� �������
  endfun
endif
"
"
" Dialog texts
"
" Find in help dialog
"
let g:menutrans_help_dialog = "������� ������� ��� ����� ��� ������:\n\n�������� i_ ��� ������ ������ ������ ������� (��������, i_CTRL-X)\n�������� c_ ��� ������ ������ �������� ������ (��������, �_<Del>)\n�������� ' ��� ������ ������� �� ����� (��������, 'shiftwidth')"
"
" Searh path dialog
"
let g:menutrans_path_dialog = "������� ���� ��� ������ ������.\n����� ��������� ����������� ��������."
"
" Tag files dialog
"
let g:menutrans_tags_dialog = "������� ����� ������ ����� (����� �������).\n"
"
" Text width dialog
"
let g:menutrans_textwidth_dialog = "������� ������ ������ ��� ��������������.\n��� ������ �������������� ������� 0."
"
" File format dialog
"
let g:menutrans_fileformat_dialog = "�������� ������ �����."
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n�&�����"
"
let menutrans_no_file = "[��� �����]"

let &cpo = s:keepcpo
unlet s:keepcpo
