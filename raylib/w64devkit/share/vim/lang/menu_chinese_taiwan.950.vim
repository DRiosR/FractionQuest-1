" Menu Translations:	Traditional Chinese
" Translated By:	Hung-Te Lin	<piaip@csie.ntu.edu.tw>
" Last Change:		2012 May 01
" Generated from menu_zh_tw.utf-8.vim, DO NOT EDIT

" {{{ Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
" }}}

let s:keepcpo= &cpo
set cpo&vim

scriptencoding cp950

" {{{ Help menu: complete
menutrans &Help			���U����(&H)
" ------------------------------------------------------------------------
menutrans &Overview<Tab><F1>	��������`��(&O)<Tab><F1>
menutrans &User\ Manual		�ϥΪ̤�U(&U)
menutrans &How-to\ links	�p��@\.\.\.(&H)
menutrans &GUI			�ϫ��ɭ�(&G)
menutrans &Credits		�P��(&C)
menutrans Co&pying		���v(&P)
menutrans &Sponsor/Register		�٧U/���U(&S)
menutrans O&rphans		�@�ϩt��(&R)
" ------------------------------------------------------------------------
menutrans &Version		�{��������T(&V)
menutrans &About		����\ Vim(&A)
" }}}

" {{{ File menu: complete
menutrans &File				�ɮ�(&F)
" ------------------------------------------------------------------------
menutrans &Open\.\.\.<Tab>:e		�}��(&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	���ε����ö}��(&L)<Tab>:sp
menutrans &New<Tab>:enew		�s��s�ɮ�(&N)<Tab>:enew
menutrans &Close<Tab>:close		�����ɮ�(&C)<Tab>:close
" ------------------------------------------------------------------------
menutrans &Save<Tab>:w			�x�s(&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	�t�s�s��(&A)\.\.\.<Tab>:sav
" ------------------------------------------------------------------------
menutrans Split\ &Diff\ with\.\.\.	���(&Diff)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	����Patch(&B)\.\.\.
" ------------------------------------------------------------------------
menutrans &Print			�C�L(&P)
" ------------------------------------------------------------------------
menutrans Sa&ve-Exit<Tab>:wqa		�x�s�����}(&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			���}(&X)<Tab>:qa
" }}}

" {{{ Edit menu
menutrans &Edit				�s��(&E)
" ------------------------------------------------------------------------
menutrans &Undo<Tab>u			�_��(&U)<Tab>u
menutrans &Redo<Tab>^R			�����W���_��(&R)<Tab>^R
menutrans Rep&eat<Tab>\.		���ƤW���ʧ@(&E)<Tab>\.
" ------------------------------------------------------------------------
menutrans Cu&t<Tab>"+x			�ŤU(&T)<Tab>"+x
menutrans &Copy<Tab>"+y			�ƻs(&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		�K�W(&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		�K���Ыe(&B)<Tab>[p
menutrans Put\ &After<Tab>]p		�K���Ы�(&A)<Tab>]p
menutrans &Delete<Tab>x			�R��(&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		����(&S)<Tab>ggvG
" ------------------------------------------------------------------------
menutrans &Find\.\.\.			�M��(&F)\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	�M��è��N(&L)\.\.\.
" ------------------------------------------------------------------------
menutrans Settings\ &Window		�]�w����(&W)
menutrans &Global\ Settings		����]�w(&G)
menutrans F&ile\ Settings		�]�w���ɮ�(&I)
menutrans C&olor\ Scheme		�t��]�w(&O)
menutrans &Keymap			��L����(&K)
    " "{{{ Keymap:
    menutrans None			�L
    " }}}
menutrans Select\ Fo&nt\.\.\.		�]�w�r��(&N)\.\.\.
" }}}

" {{{ Edit.FileSettings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!    ������ܦ渹(&N)<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!	    ������ܦ����TAB(&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!	    �����۰ʧ�����(&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!    ���������ܥi���N�_�y(&R)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!	    �����i�}TAB(&E)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!	    �����۰��Y��(&A)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!	    �����ѻy���Y��(&C)<Tab>:set\ cin!
" ------------------------------------------------------------------------
menutrans &Shiftwidth				    �Y�Ƽe��(shiftwidth)(&S)
menutrans Soft\ &Tabstop			    �n�����TAB(softtabstop)(&T)
menutrans Te&xt\ Width\.\.\.			    ��r�����e��(textwidth)(&X)\.\.\.
menutrans &File\ Format\.\.\.			    �]�w�ɮ׮榡(�����@�~�t��)(&F)\.\.\.
" }}}

" {{{ Edit.GlobalSettings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls! �������G�׷j�M�r��(&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!	     ���������j�p�g(&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!	     ������ܹ����A��(&S)<Tab>:set\ sm!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!	     �����ǲ�Vi�ۮe�Ҧ�(&O)<Tab>:set\ cp!
menutrans &Context\ lines			     ����e��O�d���(scrolloff)(&C)
menutrans &Virtual\ Edit			     ��Х��N����(virtualedit)(&V)
    " {{{ Edit.GlobalSettings.VirtualEdit
    menutrans Never				     ���ϥ�
    menutrans Block\ Selection			     �϶���ܮ�
    menutrans Insert\ mode			     ���J�Ҧ���
    menutrans Block\ and\ Insert		     �϶��P���J�Ҧ�
    menutrans Always				     �@���}��
    " }}}
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	     �������J�Ҧ�(&M)<Tab>:set\ im!
menutrans Search\ &Path\.\.\.			     �j�M���|(&P)\.\.\.
menutrans Ta&g\ Files\.\.\.			     Tag\ ���ү����ɮ�(&G)\.\.\.
" ------------------------------------------------------------------------
menutrans Toggle\ &Toolbar			     �����ϥΤu��C(&T)
menutrans Toggle\ &Bottom\ Scrollbar		     �����ϥΩ��ݱ��ʶb(&B)
menutrans Toggle\ &Left\ Scrollbar		     �����ϥΥ��ݱ��ʶb(&L)
menutrans Toggle\ &Right\ Scrollbar		     �����ϥΥk�ݱ��ʶb(&R)
" }}}

" {{{ Tools menu: complete
menutrans &Tools			�u��(&T)
" ------------------------------------------------------------------------
menutrans &Jump\ to\ this\ tag<Tab>g^]	�˯���гB����������r(tag)(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		���^�˯��e����m(&B)<Tab>^T
menutrans Build\ &Tags\ File		�إ߼��ү�����\ Tags(&T)
" ------------------------------------------------------------------------
menutrans &Folding			���|(Fold)�]�w(&F)
    " {{{ Tools.Fold
    menutrans &Enable/Disable\ folds<Tab>zi	    �����ϥ�\ Folding(&E)<Tab>zi
    menutrans &View\ Cursor\ Line<Tab>zv	    �˵����h\ Fold(&V)<Tab>zv
    menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx    �u�˵���\ Fold(&W)<Tab>zMzx
    menutrans C&lose\ more\ folds<Tab>zm	    ���_�@�h\ Folds(&L)<Tab>zm
    menutrans &Close\ all\ folds<Tab>zM		    ���_�Ҧ�\ Folds(&C)<Tab>zM
    menutrans O&pen\ more\ folds<Tab>zr		    ���}�@�h\ Folds(&P)<Tab>zr
    menutrans &Open\ all\ folds<Tab>zR		    ���}�Ҧ�\ Folds(&O)<Tab>zR
    menutrans Fold\ Met&hod			    Folding\ �覡(&H)
	" {{{ Tools.Fold.Method
	menutrans M&anual		��ʫإ�(&A)
	menutrans I&ndent		�̷��Y��(&N)
	menutrans E&xpression		�ۭq�B�⦡(&X)
	menutrans S&yntax		�̷ӻy�k�]�w(&Y)
	menutrans &Diff			Diff(&D)
	menutrans Ma&rker		�аO(Marker)(&R)
	" }}}
    " ------------------------------------------------------------------------
    menutrans Create\ &Fold<Tab>zf		    �إ�\ Fold(&F)<Tab>zf
    menutrans &Delete\ Fold<Tab>zd		    �R��\ Fold(&D)<Tab>zd
    menutrans Delete\ &All\ Folds<Tab>zD	    �R���Ҧ�\ Fold(&A)<Tab>zD
    " ------------------------------------------------------------------------
    menutrans Fold\ column\ &width		    �]�w\ Fold��e(&W)
    " }}}
menutrans &Diff				Diff(&D)
    " {{{ Tools.Diff
    menutrans &Update			��s(&U)
    menutrans &Get\ Block		���o�϶�(&G)
    menutrans &Put\ Block		�K�W�϶�(&P)
    " }}}
" ------------------------------------------------------------------------
menutrans &Make<Tab>:make		����\ Make(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		�C�X�sĶ���~(&E)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	�C�X�Ҧ��T��(&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		�U�@�ӽsĶ���~�B(&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	�W�@�ӽsĶ���~�B(&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	�˵��¿��~�C��(&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	�˵��s���~�C��(&E)<Tab>:cnew
menutrans Error\ &Window		���~�T������(&W)
    " {{{ Tools.ErrorWindow
    menutrans &Update<Tab>:cwin		��s(&U)<Tab>:cwin
    menutrans &Open<Tab>:copen		�}��(&O)<Tab>:copen
    menutrans &Close<Tab>:cclose	����(&C)<Tab>:cclose
    " }}}
menutrans &Set\ Compiler		�]�w�sĶ��Compiler(&S)
" ------------------------------------------------------------------------
menutrans &Convert\ to\ HEX<Tab>:%!xxd	�ഫ��16�i��X(&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	�q16�i��X�ഫ�^��r(&R)<Tab>:%!xxd\ -r
" }}}

" {{{ Syntax menu: compete
menutrans &Syntax		    �y�k�ĪG(&S)
" ------------------------------------------------------------------------
menutrans &Show\ filetypes\ in\ menu	��ܩҦ��i���ɮ׮榡(&S)
menutrans Set\ '&syntax'\ only	    �u�ϥ�\ 'syntax'(&S)
menutrans Set\ '&filetype'\ too	    �ϥ�\ 'syntax'+'filetype'(&F)
menutrans &Off			    �����ĪG(&O)
menutrans &Manual		    ��ʳ]�w(&M)
menutrans A&utomatic		    �۰ʳ]�w(&U)
menutrans on/off\ for\ &This\ file  �u�������ɪ��ĪG�]�w(&T)
" ------------------------------------------------------------------------
menutrans Co&lor\ test		    ��m��ܴ���(&L)
menutrans &Highlight\ test	    �y�k�ĪG����(&H)
menutrans &Convert\ to\ HTML	    �ഫ��\ HTML\ �榡(&C)
" }}}

" {{{ Buffers menu: complete
menutrans &Buffers			�w�İ�(&B)
" ------------------------------------------------------------------------
menutrans &Refresh\ menu		��s(&R)
menutrans &Delete			�R��(&D)
menutrans &Alternate			�����W���s��w�İ�(&A)
menutrans &Next				�U�@��(&N)
menutrans &Previous			�e�@��(&P)
" ------------------------------------------------------------------------
" menutrans [No\ file]			[�L�ɮ�]
" }}}

" {{{ Window menu: complete
menutrans &Window			����(&W)
" ------------------------------------------------------------------------
menutrans &New<Tab>^Wn			�}�s����(&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		���ε���(&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	���Ψ�#(&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	��������(&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	�ɮ��`�ަ�����(&X)
" ------------------------------------------------------------------------
menutrans &Close<Tab>^Wc		��������(&C)<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	�����䥦����(&O)<Tab>^Wo
" ------------------------------------------------------------------------
menutrans Move\ &To			����(&T)
    " {{{ Window.MoveTo
    menutrans &Top<Tab>^WK		����(&T)<Tab>^WK
    menutrans &Bottom<Tab>^WJ		����(&B)<Tab>^WJ
    menutrans &Left\ side<Tab>^WH	����(&L)<Tab>^WH
    menutrans &Right\ side<Tab>^WL	�k��(&R)<Tab>^WL
    " }}}
menutrans Rotate\ &Up<Tab>^WR		�W������(&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		�U������(&D)<Tab>^Wr
" ------------------------------------------------------------------------
menutrans &Equal\ Size<Tab>^W=		�Ҧ���������(&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		�̤j����(&M)<Tab>^W
menutrans M&in\ Height<Tab>^W1_		�̤p����(&I)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		�̤j�e��(&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		�̤p�e��(&H)<Tab>^W1\|
" }}}

" {{{ The popup menu: complete
menutrans &Undo				�_��(&U)
" ------------------------------------------------------------------------
menutrans Cu&t				�ŤU(&T)
menutrans &Copy				�ƻs(&C)
menutrans &Paste			�K�W(&P)
menutrans &Delete			�R��(&D)
" ------------------------------------------------------------------------
menutrans Select\ Blockwise		Blockwise�����
menutrans Select\ &Word			��ܳ�r(&W)
menutrans Select\ &Line			��ܦ�(&L)
menutrans Select\ &Block		��ܰ϶�(&B)
menutrans Select\ &All			����(&A)
" }}}

" {{{ The GUI toolbar: complete
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		�}���ɮ�
    tmenu ToolBar.Save		�x�s�ثe�s�褤���ɮ�
    tmenu ToolBar.SaveAll	�x�s�����ɮ�
    tmenu ToolBar.Print		�C�L
" ------------------------------------------------------------------------
    tmenu ToolBar.Undo		�_��W���ܰ�
    tmenu ToolBar.Redo		�����W���_��ʧ@
" ------------------------------------------------------------------------
    tmenu ToolBar.Cut		�ŤU�ܰŶKï
    tmenu ToolBar.Copy		�ƻs��ŶKï
    tmenu ToolBar.Paste		�ѰŶKï�K�W
" ------------------------------------------------------------------------
    tmenu ToolBar.Find		�M��...
    tmenu ToolBar.FindNext	��U�@��
    tmenu ToolBar.FindPrev	��W�@��
    tmenu ToolBar.Replace	���N...
" ------------------------------------------------------------------------
    tmenu ToolBar.LoadSesn	���J Session
    tmenu ToolBar.SaveSesn	�x�s�ثe�� Session
    tmenu ToolBar.RunScript	���� Vim �{����
" ------------------------------------------------------------------------
    tmenu ToolBar.Make		���� Make
    tmenu ToolBar.Shell		�}�Ҥ@�өR�O�C���� DosBox
    tmenu ToolBar.RunCtags	���� ctags
    tmenu ToolBar.TagJump	����ثe��Ц�m�� tag
    tmenu ToolBar.Help		Vim ���U����
    tmenu ToolBar.FindHelp	�j�M Vim �������
  endfun
endif
" }}}

let &cpo = s:keepcpo
unlet s:keepcpo

" vim:foldmethod=marker:nowrap:foldcolumn=2:foldlevel=1
