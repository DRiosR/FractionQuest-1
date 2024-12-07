" vi:set ts=8 sts=8 sw=8 tw=0:
"
" Menu Translations:	Japanese (CP932)
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

scriptencoding cp932

" Help menu
menutrans &Help			�w���v(&H)
menutrans &Overview<Tab><F1>	�T��(&O)<Tab><F1>
menutrans &User\ Manual		���[�U�[�}�j���A��(&U)
menutrans &How-To\ links	&How-to�����N
menutrans &Credits		�N���W�b�g(&C)
menutrans Co&pying		���쌠���(&P)
menutrans &Sponsor/Register	�X�|���T�[/�o�^(&S)
menutrans O&rphans		�ǎ�(&R)
menutrans &Version		�o�[�W�������(&V)
menutrans &About		Vim�ɂ���(&A)

let g:menutrans_help_dialog = "�w���v�������������R�}���h�������͒P�����͂��Ă�������:\n\n�}�����[�h�̃R�}���h�ɂ� i_ ��擪�ɕt�����܂�. (��: i_CTRL-X)\n�R�}���h���C���ҏW�R�}���h�ɂ� c_ ��擪�ɕt�����܂�. (��: c_<Del>)\n�I�v�V�����̖��O�ɂ� ' ��t�����܂�. (��: 'shiftwidth')"

" File menu
menutrans &File				�t�@�C��(&F)
menutrans &Open\.\.\.<Tab>:e		�J��(&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	�������ĊJ��(&L)\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	�^�u�y�[�W�ŊJ��<Tab>:tabnew
menutrans &New<Tab>:enew		�V�K�쐬(&N)<Tab>:enew
menutrans &Close<Tab>:close		����(&C)<Tab>:close
menutrans &Save<Tab>:w			�ۑ�(&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	���O��t���ĕۑ�(&A)\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	�����\��(&D)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	�p�b�`���ʂ�\��(&B)\.\.\.
menutrans &Print			���(&P)
menutrans Sa&ve-Exit<Tab>:wqa		�ۑ����ďI��(&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			�I��(&X)<Tab>:qa

" Edit menu
menutrans &Edit				�ҏW(&E)
menutrans &Undo<Tab>u			������(&U)<Tab>u
menutrans &Redo<Tab>^R			������x���(&R)<Tab>^R
menutrans Rep&eat<Tab>\.		�J��Ԃ�(&E)<Tab>\.
menutrans Cu&t<Tab>"+x			�؂���(&T)<Tab>"+x
menutrans &Copy<Tab>"+y			�R�s�[(&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		�\��t��(&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		�O�ɓ\��(&B)<Tab>[p
menutrans Put\ &After<Tab>]p		��ɓ\��(&A)<Tab>]p
menutrans &Delete<Tab>x			����(&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		�S�đI��(&S)<Tab>ggVG
menutrans &Find\.\.\.			����(&F)\.\.\.
menutrans &Find<Tab>/			����(&F)<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	�u��(&L)\.\.\.
menutrans Find\ and\ Rep&lace<Tab>:%s	�u��(&L)<Tab>:%s
menutrans Find\ and\ Rep&lace<Tab>:s	�u��(&L)<Tab>:s
"menutrans Options\.\.\.			�I�v�V����(&O)\.\.\.
menutrans Settings\ &Window		�ݒ�E�B���h�E(&W)
menutrans Startup\ &Settings		�N�����̐ݒ�(&S)

" Edit/Global Settings
menutrans &Global\ Settings		�S�̐ݒ�(&G)
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!
	\	�p�^�[�������ؑ�(&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignoring\ Case<Tab>:set\ ic!
	\	�召������ʐؑ�(&I)<Tab>:set\ ic!
menutrans Toggle\ &Showing\ Matched\ Pairs<Tab>:set\ sm!
	\	�}�b�`�\���ؑ�(&S)<Tab>:set\ sm!
menutrans &Context\ lines		�J�[�\�����Ӎs��(&C)
menutrans &Virtual\ Edit		���z�ҏW(&V)
menutrans Never				����
menutrans Block\ Selection		�u���b�N�I����
menutrans Insert\ mode			�}�����[�h��
menutrans Block\ and\ Insert		�u���b�N/�}�����[�h��
menutrans Always			�펞
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!
	\	�}��(���S��)���[�h�ؑ�(&M)<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatibility<Tab>:set\ cp!
	\	Vi�݊����[�h�ؑ�(&O)<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		�����p�X(&P)\.\.\.
menutrans Ta&g\ Files\.\.\.		�^�O�t�@�C��(&G)\.\.\.
"
" GUI options
menutrans Toggle\ &Toolbar		�c�[���o�[�\���ؑ�(&T)
menutrans Toggle\ &Bottom\ Scrollbar	�X�N���[���o�[(��)�\���ؑ�(&B)
menutrans Toggle\ &Left\ Scrollbar	�X�N���[���o�[(��)�\���ؑ�(&L)
menutrans Toggle\ &Right\ Scrollbar	�X�N���[���o�[(�E)�\���ؑ�(&R)

let g:menutrans_path_dialog = "�t�@�C���̌����p�X����͂��Ă�������:\n�f�B���N�g�����̓J���} ( , ) �ŋ�؂��Ă�������."
let g:menutrans_tags_dialog = "�^�O�t�@�C���̖��O����͂��Ă�������:\n���O�̓J���} ( , ) �ŋ�؂��Ă�������."

" Edit/File Settings

" Boolean options
menutrans F&ile\ Settings		�t�@�C���ݒ�(&I)
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!
	\	�s�ԍ��\���ؑ�(&N)<Tab>:set\ nu!
menutrans Toggle\ Relati&ve\ Line\ Numbering<Tab>:set\ rnu!
	\	���΍s�ԍ��\���ؑ�(&V)<Tab>:set\ rnu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!
	\ ���X�g���[�h�ؑ�(&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrapping<Tab>:set\ wrap!
	\	�s�ܕԂ��ؑ�(&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rapping\ at\ word<Tab>:set\ lbr!
	\	�P��ܕԂ��ؑ�(&R)<Tab>:set\ lbr!
menutrans Toggle\ Tab\ &Expanding<Tab>:set\ et!
	\	�^�u�W�J�ؑ�(&E)<Tab>:set\ et!
menutrans Toggle\ &Auto\ Indenting<Tab>:set\ ai!
	\	�����������ؑ�(&A)<Tab>:set\ ai!
menutrans Toggle\ &C-Style\ Indenting<Tab>:set\ cin!
	\	C���ꎚ�����ؑ�(&C)<Tab>:set\ cin!

" other options
menutrans &Shiftwidth			�V�t�g��(&S)
menutrans Soft\ &Tabstop		�\�t�g�E�F�A�^�u��(&T)
menutrans Te&xt\ Width\.\.\.		�e�L�X�g��(&X)\.\.\.
menutrans &File\ Format\.\.\.		���s�L���I��(&F)\.\.\.

let g:menutrans_textwidth_dialog = "�e�L�X�g�̕�('textwidth')��ݒ肵�Ă������� (0�Ő��`�𖳌���):"
let g:menutrans_fileformat_dialog = "�t�@�C���o�͂̍ۂ̉��s�L���̌`����I��ł�������."
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n�L�����Z��(&C)"

menutrans Show\ C&olor\ Schemes\ in\ Menu	�F�e�[�}�����j���[�ɕ\��(&O)
menutrans C&olor\ Scheme		�F�e�[�}�I��(&O)
menutrans Show\ &Keymaps\ in\ Menu	�L�[�}�b�v�����j���[�ɕ\��(&K)
menutrans &Keymap			�L�[�}�b�v(&K)
menutrans None				�Ȃ�

" Programming menu
menutrans &Tools			�c�[��(&T)
menutrans &Jump\ to\ this\ tag<Tab>g^]	�^�O�W�����v(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		�߂�(&B)<Tab>^T
menutrans Build\ &Tags\ File		�^�O�t�@�C���쐬(&T)
menutrans &Make<Tab>:make		�r���h(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		�G���[���X�g(&L)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	���b�Z�[�W���X�g(&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		���̃G���[��(&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	�O�̃G���[��(&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	�Â����X�g(&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	�V�������X�g(&E)<Tab>:cnew
menutrans Error\ &Window		�G���[�E�B���h�E(&W)
menutrans &Update<Tab>:cwin		�X�V(&U)<Tab>:cwin
menutrans &Open<Tab>:copen		�J��(&O)<Tab>:copen
menutrans &Close<Tab>:cclose		����(&C)<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	HEX�֕ϊ�(&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	HEX����t�ϊ�(&R)<Tab>%!xxd\ -r
menutrans Show\ Compiler\ Se&ttings\ in\ Menu	�R���p�C���ݒ�����j���[�ɕ\��(&T)
menutrans Se&t\ Compiler		�R���p�C���ݒ�(&T)

" Tools.Spelling Menu
menutrans &Spelling			�X�y�����O(&S)
menutrans &Spell\ Check\ On		�X�y���`�F�b�N�L��(&S)
menutrans Spell\ Check\ &Off		�X�y���`�F�b�N����(&O)
menutrans To\ &Next\ error<Tab>]s	���̃G���[(&N)<Tab>]s
menutrans To\ &Previous\ error<Tab>[s	�O�̃G���[(&P)<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=	�C�����(&C)<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	�C�����J��Ԃ�(&R)<Tab>:spellrepall
menutrans Set\ language\ to\ "en"	�����\ "en"\ �ɐݒ肷��
menutrans Set\ language\ to\ "en_au"	�����\ "en_au"\ �ɐݒ肷��
menutrans Set\ language\ to\ "en_ca"	�����\ "en_ca"\ �ɐݒ肷��
menutrans Set\ language\ to\ "en_gb"	�����\ "en_gb"\ �ɐݒ肷��
menutrans Set\ language\ to\ "en_nz"	�����\ "en_nz"\ �ɐݒ肷��
menutrans Set\ language\ to\ "en_us"	�����\ "en_us"\ �ɐݒ肷��
menutrans &Find\ More\ Languages	���̌������������(&F)

let g:menutrans_spell_change_ARG_to = '"%s"\ ��ύX'
let g:menutrans_spell_add_ARG_to_word_list = '"%s"\ ��P�ꃊ�X�g�ɒǉ�'
let g:menutrans_spell_ignore_ARG = '"%s"\ �𖳎�'

" Tools.Fold Menu
menutrans &Folding			�܏��(&F)
" open close folds
menutrans &Enable/Disable\ folds<Tab>zi	�L��/�����ؑ�(&E)<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	�J�[�\���s��\��(&V)<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	�J�[�\���s������\��(&W)<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	�܏�݂����(&L)<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	�S�܏�݂����(&C)<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	�܏�݂��J��(&P)<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	�S�܏�݂��J��(&O)<Tab>zR
" fold method
menutrans Fold\ Met&hod			�܏�ݕ��@(&H)
menutrans M&anual			�蓮(&A)
menutrans I&ndent			�C���f���g(&N)
menutrans E&xpression			���]��(&X)
menutrans S&yntax			�V���^�b�N�X(&Y)
menutrans &Diff				����(&D)
menutrans Ma&rker			�}�[�J�[(&R)
" create and delete folds
menutrans Create\ &Fold<Tab>zf		�܏�ݍ쐬(&F)<Tab>zf
menutrans &Delete\ Fold<Tab>zd		�܏�ݍ폜(&D)<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	�S�܏�ݍ폜(&A)<Tab>zD
" moving around in folds
menutrans Fold\ col&umn\ width		�܏�݃J������(&U)

menutrans &Update		�X�V(&U)
menutrans &Get\ Block		�u���b�N���o(&G)
menutrans &Put\ Block		�u���b�N�K�p(&P)

" Names for buffer menu.
menutrans &Buffers		�o�b�t�@(&B)
menutrans &Refresh\ menu	���j���[�ēǍ�(&R)
menutrans &Delete		�폜(&D)
menutrans &Alternate		���֐ؑ�(&A)
menutrans &Next			���̃o�b�t�@(&N)
menutrans &Previous		�O�̃o�b�t�@(&P)
let g:menutrans_no_file = "[����]"

" Window menu
menutrans &Window			�E�B���h�E(&W)
menutrans &New<Tab>^Wn			�V�K�쐬(&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		����(&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	���o�b�t�@�֕���(&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	��������(&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	�t�@�C���G�N�X�v���[��(&X)
menutrans &Close<Tab>^Wc		����(&C)<Tab>^Wc
menutrans Move\ &To			�ړ�(&T)
menutrans &Top<Tab>^WK			��(&T)<Tab>^WK
menutrans &Bottom<Tab>^WJ		��(&B)<Tab>^WJ
menutrans &Left\ side<Tab>^WH		��(&L)<Tab>^WH
menutrans &Right\ side<Tab>^WL		�E(&R)<Tab>^WL
menutrans Close\ &Other(s)<Tab>^Wo	�������(&O)<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			����(&X)<Tab>^Ww
menutrans P&revious<Tab>^WW		�O��(&R)<Tab>^WW
menutrans &Equal\ Size<Tab>^W=	����������(&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		�ő卂��(&M)<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		�ŏ�����(&i)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		�ő啝��(&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		�ŏ�����(&H)<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		��Ƀ��[�e�[�V����(&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		���Ƀ��[�e�[�V����(&D)<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		�t�H���g�ݒ�(&N)\.\.\.

" The popup menu
menutrans &Undo			������(&U)
menutrans Cu&t			�؂���(&T)
menutrans &Copy			�R�s�[(&C)
menutrans &Paste		�\��t��(&P)
menutrans &Delete		�폜(&D)
menutrans Select\ Blockwise	��`�u���b�N�I��
menutrans Select\ &Word		�P��I��(&W)
menutrans Select\ &Sentence	���I��(&S)
menutrans Select\ Pa&ragraph	�i���I��(&R)
menutrans Select\ &Line		�s�I��(&L)
menutrans Select\ &Block	�u���b�N�I��(&B)
menutrans Select\ &All		���ׂđI��(&A)

" The GUI toolbar (for Win32 or GTK)
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		�t�@�C�����J��
    tmenu ToolBar.Save		���݂̃t�@�C����ۑ�
    tmenu ToolBar.SaveAll	���ׂẴt�@�C����ۑ�
    tmenu ToolBar.Print		���
    tmenu ToolBar.Undo		������
    tmenu ToolBar.Redo		������x���
    tmenu ToolBar.Cut		�N���b�v�{�[�h�֐؂���
    tmenu ToolBar.Copy		�N���b�v�{�[�h�փR�s�[
    tmenu ToolBar.Paste		�N���b�v�{�[�h����\��t��
    tmenu ToolBar.Replace	���� / �u��...
    tmenu ToolBar.FindNext	��������
    tmenu ToolBar.FindPrev	�O������
    if 0	" disabled; These are in the Windows menu
      tmenu ToolBar.New		�V�K�E�B���h�E�쐬
      tmenu ToolBar.WinSplit	�E�B���h�E����
      tmenu ToolBar.WinMax	�E�B���h�E�ő剻
      tmenu ToolBar.WinMin	�E�B���h�E�ŏ���
      tmenu ToolBar.WinClose	�E�B���h�E�����
    endif
    tmenu ToolBar.LoadSesn	�Z�b�V�����Ǎ�
    tmenu ToolBar.SaveSesn	�Z�b�V�����ۑ�
    tmenu ToolBar.RunScript	Vim�X�N���v�g���s
    tmenu ToolBar.Make		�v���W�F�N�g��Make
    tmenu ToolBar.Shell		�V�F�����J��
    tmenu ToolBar.RunCtags	tags�쐬
    tmenu ToolBar.TagJump	�^�O�W�����v
    tmenu ToolBar.Help		Vim�w���v
    tmenu ToolBar.FindHelp	Vim�w���v����
  endfun
endif

" Syntax menu
menutrans &Syntax		�V���^�b�N�X(&S)
menutrans &Show\ File\ Types\ in\ Menu	�Ή��`�������j���[�ɕ\��(&S)
menutrans Set\ '&syntax'\ only	'syntax'�����ݒ�(&S)
menutrans Set\ '&filetype'\ too	'filetype'���ݒ�(&F)
menutrans &Off			������(&O)
menutrans &Manual		�蓮�ݒ�(&M)
menutrans A&utomatic		�����ݒ�(&U)
menutrans on/off\ for\ &This\ file
	\	�I��/�I�t�ؑ�(&T)
menutrans Co&lor\ test		�J���[�e�X�g(&L)
menutrans &Highlight\ test	�n�C���C�g�e�X�g(&H)
menutrans &Convert\ to\ HTML	HTML�փR���o�[�g(&C)

let &cpo = s:keepcpo
unlet s:keepcpo

" filler to avoid the line above being recognized as a modeline
" filler
