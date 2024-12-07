" vi:set ts=8 sts=8 sw=8 tw=0:
"
" Menu Translations:	Japanese (EUC-JP)
" Last Translator:	MURAOKA Taro  <koron.kaoriya@gmail.com>
" Last Change:		20-Feb-2022.
"
" Copyright (C) 2001-2022 MURAOKA Taro <koron.kaoriya@gmail.com>,
"			  vim-jp <http://vim-jp.org/>
"
" THIS FILE IS DISTRIBUTED UNDER THE VIM LICENSE.
"
" Generated from menu_ja_jp.utf-8.vim, DO NOT EDIT

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding euc-jp

" Help menu
menutrans &Help			�إ��(&H)
menutrans &Overview<Tab><F1>	��ά(&O)<Tab><F1>
menutrans &User\ Manual		�桼�����ޥ˥奢��(&U)
menutrans &How-To\ links	&How-to���
menutrans &Credits		���쥸�å�(&C)
menutrans Co&pying		�������(&P)
menutrans &Sponsor/Register	���ݥ󥵡�/��Ͽ(&S)
menutrans O&rphans		�ɻ�(&R)
menutrans &Version		�С���������(&V)
menutrans &About		Vim�ˤĤ���(&A)

let g:menutrans_help_dialog = "�إ�פ򸡺����������ޥ�ɤ⤷����ñ������Ϥ��Ƥ�������:\n\n�����⡼�ɤΥ��ޥ�ɤˤ� i_ ����Ƭ���ղä��ޤ�. (��: i_CTRL-X)\n���ޥ�ɥ饤���Խ����ޥ�ɤˤ� c_ ����Ƭ���ղä��ޤ�. (��: c_<Del>)\n���ץ�����̾���ˤ� ' ���ղä��ޤ�. (��: 'shiftwidth')"

" File menu
menutrans &File				�ե�����(&F)
menutrans &Open\.\.\.<Tab>:e		����(&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	ʬ�䤷�Ƴ���(&L)\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	���֥ڡ����ǳ���<Tab>:tabnew
menutrans &New<Tab>:enew		��������(&N)<Tab>:enew
menutrans &Close<Tab>:close		�Ĥ���(&C)<Tab>:close
menutrans &Save<Tab>:w			��¸(&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	̾�����դ�����¸(&A)\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	��ʬɽ��(&D)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	�ѥå���̤�ɽ��(&B)\.\.\.
menutrans &Print			����(&P)
menutrans Sa&ve-Exit<Tab>:wqa		��¸���ƽ�λ(&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			��λ(&X)<Tab>:qa

" Edit menu
menutrans &Edit				�Խ�(&E)
menutrans &Undo<Tab>u			���ä�(&U)<Tab>u
menutrans &Redo<Tab>^R			�⤦���٤��(&R)<Tab>^R
menutrans Rep&eat<Tab>\.		�����֤�(&E)<Tab>\.
menutrans Cu&t<Tab>"+x			�ڤ���(&T)<Tab>"+x
menutrans &Copy<Tab>"+y			���ԡ�(&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		Ž���դ�(&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		����Ž��(&B)<Tab>[p
menutrans Put\ &After<Tab>]p		���Ž��(&A)<Tab>]p
menutrans &Delete<Tab>x			�ä�(&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		��������(&S)<Tab>ggVG
menutrans &Find\.\.\.			����(&F)\.\.\.
menutrans &Find<Tab>/			����(&F)<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	�ִ�(&L)\.\.\.
menutrans Find\ and\ Rep&lace<Tab>:%s	�ִ�(&L)<Tab>:%s
menutrans Find\ and\ Rep&lace<Tab>:s	�ִ�(&L)<Tab>:s
"menutrans Options\.\.\.			���ץ����(&O)\.\.\.
menutrans Settings\ &Window		���ꥦ����ɥ�(&W)
menutrans Startup\ &Settings		��ư��������(&S)

" Edit/Global Settings
menutrans &Global\ Settings		��������(&G)
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!
	\	�ѥ�����Ĵ����(&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignoring\ Case<Tab>:set\ ic!
	\	�羮ʸ����������(&I)<Tab>:set\ ic!
menutrans Toggle\ &Showing\ Matched\ Pairs<Tab>:set\ sm!
	\	�ޥå�ɽ������(&S)<Tab>:set\ sm!
menutrans &Context\ lines		����������չԿ�(&C)
menutrans &Virtual\ Edit		�����Խ�(&V)
menutrans Never				̵��
menutrans Block\ Selection		�֥��å������
menutrans Insert\ mode			�����⡼�ɻ�
menutrans Block\ and\ Insert		�֥��å�/�����⡼�ɻ�
menutrans Always			���
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!
	\	����(�鿴��)�⡼������(&M)<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatibility<Tab>:set\ cp!
	\	Vi�ߴ��⡼������(&O)<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		�����ѥ�(&P)\.\.\.
menutrans Ta&g\ Files\.\.\.		�����ե�����(&G)\.\.\.
"
" GUI options
menutrans Toggle\ &Toolbar		�ġ���С�ɽ������(&T)
menutrans Toggle\ &Bottom\ Scrollbar	����������С�(��)ɽ������(&B)
menutrans Toggle\ &Left\ Scrollbar	����������С�(��)ɽ������(&L)
menutrans Toggle\ &Right\ Scrollbar	����������С�(��)ɽ������(&R)

let g:menutrans_path_dialog = "�ե�����θ����ѥ������Ϥ��Ƥ�������:\n�ǥ��쥯�ȥ�̾�ϥ���� ( , ) �Ƕ��ڤäƤ�������."
let g:menutrans_tags_dialog = "�����ե������̾�������Ϥ��Ƥ�������:\n̾���ϥ���� ( , ) �Ƕ��ڤäƤ�������."

" Edit/File Settings

" Boolean options
menutrans F&ile\ Settings		�ե���������(&I)
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!
	\	���ֹ�ɽ������(&N)<Tab>:set\ nu!
menutrans Toggle\ Relati&ve\ Line\ Numbering<Tab>:set\ rnu!
	\	���й��ֹ�ɽ������(&V)<Tab>:set\ rnu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!
	\ �ꥹ�ȥ⡼������(&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap!
	\	�����֤�����(&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rapping\ at\ word<Tab>:set\ lbr!
	\	ñ�����֤�����(&R)<Tab>:set\ lbr!
menutrans Toggle\ Tab\ &Expanding<Tab>:set\ et!
	\	����Ÿ������(&E)<Tab>:set\ et!
menutrans Toggle\ &Auto\ Indenting<Tab>:set\ ai!
	\	��ư����������(&A)<Tab>:set\ ai!
menutrans Toggle\ &C-Style\ Indenting<Tab>:set\ cin!
	\	C�������������(&C)<Tab>:set\ cin!

" other options
menutrans &Shiftwidth			���ե���(&S)
menutrans Soft\ &Tabstop		���եȥ�����������(&T)
menutrans Te&xt\ Width\.\.\.		�ƥ�������(&X)\.\.\.
menutrans &File\ Format\.\.\.		���Ե�������(&F)\.\.\.

let g:menutrans_textwidth_dialog = "�ƥ����Ȥ���('textwidth')�����ꤷ�Ƥ������� (0��������̵����):"
let g:menutrans_fileformat_dialog = "�ե�������Ϥκݤβ��Ե���η���������Ǥ�������."
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n����󥻥�(&C)"

menutrans Show\ C&olor\ Schemes\ in\ Menu	���ơ��ޤ��˥塼��ɽ��(&O)
menutrans C&olor\ Scheme		���ơ�������(&O)
menutrans Show\ &Keymaps\ in\ Menu	�����ޥåפ��˥塼��ɽ��(&K)
menutrans &Keymap			�����ޥå�(&K)
menutrans None				�ʤ�

" Programming menu
menutrans &Tools			�ġ���(&T)
menutrans &Jump\ to\ this\ tag<Tab>g^]	����������(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		���(&B)<Tab>^T
menutrans Build\ &Tags\ File		�����ե��������(&T)
menutrans &Make<Tab>:make		�ӥ��(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		���顼�ꥹ��(&L)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	��å������ꥹ��(&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		���Υ��顼��(&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	���Υ��顼��(&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	�Ť��ꥹ��(&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	�������ꥹ��(&E)<Tab>:cnew
menutrans Error\ &Window		���顼������ɥ�(&W)
menutrans &Update<Tab>:cwin		����(&U)<Tab>:cwin
menutrans &Open<Tab>:copen		����(&O)<Tab>:copen
menutrans &Close<Tab>:cclose		�Ĥ���(&C)<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	HEX���Ѵ�(&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	HEX������Ѵ�(&R)<Tab>%!xxd\ -r
menutrans Show\ Compiler\ Se&ttings\ in\ Menu	����ѥ���������˥塼��ɽ��(&T)
menutrans Se&t\ Compiler		����ѥ�������(&T)

" Tools.Spelling Menu
menutrans &Spelling			���ڥ��(&S)
menutrans &Spell\ Check\ On		���ڥ�����å�ͭ��(&S)
menutrans Spell\ Check\ &Off		���ڥ�����å�̵��(&O)
menutrans To\ &Next\ error<Tab>]s	���Υ��顼(&N)<Tab>]s
menutrans To\ &Previous\ error<Tab>[s	���Υ��顼(&P)<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=	��������(&C)<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	�����򷫤��֤�(&R)<Tab>:spellrepall
menutrans Set\ language\ to\ "en"	�����\ "en"\ �����ꤹ��
menutrans Set\ language\ to\ "en_au"	�����\ "en_au"\ �����ꤹ��
menutrans Set\ language\ to\ "en_ca"	�����\ "en_ca"\ �����ꤹ��
menutrans Set\ language\ to\ "en_gb"	�����\ "en_gb"\ �����ꤹ��
menutrans Set\ language\ to\ "en_nz"	�����\ "en_nz"\ �����ꤹ��
menutrans Set\ language\ to\ "en_us"	�����\ "en_us"\ �����ꤹ��
menutrans &Find\ More\ Languages	¾�θ���򸡺�����(&F)

let g:menutrans_spell_change_ARG_to = '"%s"\ ���ѹ�'
let g:menutrans_spell_add_ARG_to_word_list = '"%s"\ ��ñ��ꥹ�Ȥ��ɲ�'
let g:menutrans_spell_ignore_ARG = '"%s"\ ��̵��'

" Tools.Fold Menu
menutrans &Folding			�޾���(&F)
" open close folds
menutrans &Enable/Disable\ folds<Tab>zi	ͭ��/̵������(&E)<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	��������Ԥ�ɽ��(&V)<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	��������Ԥ�����ɽ��(&W)<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	�޾��ߤ��Ĥ���(&L)<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	���޾��ߤ��Ĥ���(&C)<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	�޾��ߤ򳫤�(&P)<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	���޾��ߤ򳫤�(&O)<Tab>zR
" fold method
menutrans Fold\ Met&hod			�޾�����ˡ(&H)
menutrans M&anual			��ư(&A)
menutrans I&ndent			����ǥ��(&N)
menutrans E&xpression			��ɾ��(&X)
menutrans S&yntax			���󥿥å���(&Y)
menutrans &Diff				��ʬ(&D)
menutrans Ma&rker			�ޡ�����(&R)
" create and delete folds
menutrans Create\ &Fold<Tab>zf		�޾��ߺ���(&F)<Tab>zf
menutrans &Delete\ Fold<Tab>zd		�޾��ߺ��(&D)<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	���޾��ߺ��(&A)<Tab>zD
" moving around in folds
menutrans Fold\ col&umn\ width		�޾��ߥ������(&U)

menutrans &Update		����(&U)
menutrans &Get\ Block		�֥��å����(&G)
menutrans &Put\ Block		�֥��å�Ŭ��(&P)

" Names for buffer menu.
menutrans &Buffers		�Хåե�(&B)
menutrans &Refresh\ menu	��˥塼���ɹ�(&R)
menutrans &Delete		���(&D)
menutrans &Alternate		΢������(&A)
menutrans &Next			���ΥХåե�(&N)
menutrans &Previous		���ΥХåե�(&P)
let g:menutrans_no_file = "[̵̾]"

" Window menu
menutrans &Window			������ɥ�(&W)
menutrans &New<Tab>^Wn			��������(&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		ʬ��(&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	΢�Хåե���ʬ��(&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	��ľʬ��(&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	�ե����륨�����ץ�����(&X)
menutrans &Close<Tab>^Wc		�Ĥ���(&C)<Tab>^Wc
menutrans Move\ &To			��ư(&T)
menutrans &Top<Tab>^WK			��(&T)<Tab>^WK
menutrans &Bottom<Tab>^WJ		��(&B)<Tab>^WJ
menutrans &Left\ side<Tab>^WH		��(&L)<Tab>^WH
menutrans &Right\ side<Tab>^WL		��(&R)<Tab>^WL
menutrans Close\ &Other(s)<Tab>^Wo	¾���Ĥ���(&O)<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			����(&X)<Tab>^Ww
menutrans P&revious<Tab>^WW		����(&R)<Tab>^WW
menutrans &Equal\ Size<Tab>^W=	Ʊ���⤵��(&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		������(&M)<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		�Ǿ����(&i)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		��������(&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		�Ǿ�����(&H)<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		��˥����ơ������(&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		���˥����ơ������(&D)<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		�ե��������(&N)\.\.\.

" The popup menu
menutrans &Undo			���ä�(&U)
menutrans Cu&t			�ڤ���(&T)
menutrans &Copy			���ԡ�(&C)
menutrans &Paste		Ž���դ�(&P)
menutrans &Delete		���(&D)
menutrans Select\ Blockwise	����֥��å�����
menutrans Select\ &Word		ñ������(&W)
menutrans Select\ &Sentence	ʸ����(&S)
menutrans Select\ Pa&ragraph	��������(&R)
menutrans Select\ &Line		������(&L)
menutrans Select\ &Block	�֥��å�����(&B)
menutrans Select\ &All		���٤�����(&A)

" The GUI toolbar (for Win32 or GTK)
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		�ե�����򳫤�
    tmenu ToolBar.Save		���ߤΥե��������¸
    tmenu ToolBar.SaveAll	���٤ƤΥե��������¸
    tmenu ToolBar.Print		����
    tmenu ToolBar.Undo		���ä�
    tmenu ToolBar.Redo		�⤦���٤��
    tmenu ToolBar.Cut		����åץܡ��ɤ��ڤ���
    tmenu ToolBar.Copy		����åץܡ��ɤإ��ԡ�
    tmenu ToolBar.Paste		����åץܡ��ɤ���Ž���դ�
    tmenu ToolBar.Replace	���� / �ִ�...
    tmenu ToolBar.FindNext	���򸡺�
    tmenu ToolBar.FindPrev	���򸡺�
    if 0	" disabled; These are in the Windows menu
      tmenu ToolBar.New		����������ɥ�����
      tmenu ToolBar.WinSplit	������ɥ�ʬ��
      tmenu ToolBar.WinMax	������ɥ����粽
      tmenu ToolBar.WinMin	������ɥ��Ǿ���
      tmenu ToolBar.WinClose	������ɥ����Ĥ���
    endif
    tmenu ToolBar.LoadSesn	���å�����ɹ�
    tmenu ToolBar.SaveSesn	���å������¸
    tmenu ToolBar.RunScript	Vim������ץȼ¹�
    tmenu ToolBar.Make		�ץ��������Ȥ�Make
    tmenu ToolBar.Shell		������򳫤�
    tmenu ToolBar.RunCtags	tags����
    tmenu ToolBar.TagJump	����������
    tmenu ToolBar.Help		Vim�إ��
    tmenu ToolBar.FindHelp	Vim�إ�׸���
  endfun
endif

" Syntax menu
menutrans &Syntax		���󥿥å���(&S)
menutrans &Show\ File\ Types\ in\ Menu	�б��������˥塼��ɽ��(&S)
menutrans Set\ '&syntax'\ only	'syntax'��������(&S)
menutrans Set\ '&filetype'\ too	'filetype'������(&F)
menutrans &Off			̵����(&O)
menutrans &Manual		��ư����(&M)
menutrans A&utomatic		��ư����(&U)
menutrans on/off\ for\ &This\ file
	\	����/��������(&T)
menutrans Co&lor\ test		���顼�ƥ���(&L)
menutrans &Highlight\ test	�ϥ��饤�ȥƥ���(&H)
menutrans &Convert\ to\ HTML	HTML�إ���С���(&C)

let &cpo = s:keepcpo
unlet s:keepcpo

" filler to avoid the line above being recognized as a modeline
" filler
