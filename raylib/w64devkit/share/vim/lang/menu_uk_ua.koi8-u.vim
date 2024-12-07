" Menu Translations:	Ukrainian
" Maintainer:		Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:		11 Oct 2001
" Generated from menu_uk_ua.utf-8.vim, DO NOT EDIT

"
" Please, see readme at htpp://www.vstu.edu.ua/~bohdan/vim before any
" complains, and even if you won't complain, read it anyway.
"

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding koi8-u

" Help menu
menutrans &Help			&��������
menutrans &Overview<Tab><F1>	&��������\ �������æ�<Tab><F1>
menutrans &User\ Manual		&��Ҧ�������\ ���\ �����������
menutrans &How-to\ links	&��-�������?
"menutrans &GUI			&GIU
menutrans &Credits		&������
menutrans Co&pying		&��������������
menutrans O&rphans		&��������\ �������
menutrans &Version		&���Ӧ�
menutrans &About		���\ &��������

" File menu
menutrans &File				&����
menutrans &Open\.\.\.<Tab>:e	    &��������\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp &���Ħ����\ צ���\.\.\.<Tab>:sp
menutrans &New<Tab>:enew	    &�����<Tab>:enew
menutrans &Close<Tab>:close	    &�������<Tab>:close
menutrans &Save<Tab>:w		    ��&���'�����<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	�����'�����\ &��\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	��&Ҧ�����\ �\.\.\.
menutrans Split\ Patched\ &By\.\.\.	��&������\.\.\.
menutrans &Print					&���������
menutrans Sa&ve-Exit<Tab>:wqa		��������\ �\ ��&���<Tab>:wqa
menutrans E&xit<Tab>:qa			&��Ȧ�<Tab>:qa

" Edit menu
menutrans &Edit				&����������
menutrans &Undo<Tab>u			&���ͦ����<Tab>u
menutrans &Redo<Tab>^R			&���������<Tab>^R
menutrans Rep&eat<Tab>\.		�&��������<Tab>\.
menutrans Cu&t<Tab>"+x			��&Ҧ����<Tab>"+x
menutrans &Copy<Tab>"+y			&��Ц�����<Tab>"+y
menutrans &Paste<Tab>"+gP		�&�������<Tab>"+gP
menutrans Put\ &Before<Tab>[p		��������\ ����&����<Tab>[p
menutrans Put\ &After<Tab>]p		��������\ �&����<Tab>]p
menutrans &Select\ all<Tab>ggVG		��&�����\ ���<Tab>ggVG
menutrans &Find\.\.\.			&������\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	��&ͦ����\.\.\.
menutrans Settings\ &Window		�����\ &�����������
menutrans &Global\ Settings		������Φ\ ��&����������
menutrans F&ile\ Settings		������������\ ���\ &�����
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	&������æ�\ ���˦�<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		�����\ ��&����������\ צ����������<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		�����\ &��������<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	����������\ ���\ &�����<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!			�������������\ ��������\ &������æ�<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		������������\ &צ�����<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		��������\ ���\ ����\ &C<Tab>:set\ cin!
menutrans &Shiftwidth								&����
menutrans Te&xt\ Width\.\.\.						&������\ ������\.\.\.
menutrans &File\ Format\.\.\.			&������\ �����\.\.\.
menutrans Soft\ &Tabstop				����æ�\ &������æ�
menutrans C&olor\ Scheme		&�������
menutrans Select\ Fo&nt\.\.\.		�������\ &�����\.\.\.


menutrans &Keymap			�����\ ���צ�����
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	��Ħ����\ &������<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		&���Ҧ�����\ \����˦\ ��\ ��̦\ ̦����<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		&��������\ �����<Tab>:set\ sm!
menutrans &Context\ lines	���˦���\ &��������\ ���˦�
menutrans &Virtual\ Edit	������\ &���������\ ���\ ���

menutrans Never			�����
menutrans Block\ Selection	��¦�\ �����
menutrans Insert\ mode		�����\ �������
menutrans Block\ and\ Insert	��¦�\ �\ �������
menutrans Always		������

menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	�����\ &�������<Tab>:set\ im!
menutrans Search\ &Path\.\.\.	&����\ ������\.\.\.
menutrans Ta&g\ Files\.\.\.	�����\ &��ͦ���\.\.\.


"
" GUI options
menutrans Toggle\ &Toolbar		������\ &���������Ԧ�
menutrans Toggle\ &Bottom\ Scrollbar	&�����\ ̦Φ���\ �����
menutrans Toggle\ &Left\ Scrollbar	&���\ ̦Φ���\ �����
menutrans Toggle\ &Right\ Scrollbar	&�����\ ̦Φ���\ �����

" Programming menu
menutrans &Tools			&�����������
menutrans &Jump\ to\ this\ tag<Tab>g^]	&�������\ ��\ ��ͦ���<Tab>g^]
menutrans Jump\ &back<Tab>^T		��&���������<Tab>^T
menutrans Build\ &Tags\ File		&��������\ ����\ ��ͦ���
" Folding
menutrans &Folding				&�������
menutrans &Enable/Disable\ folds<Tab>zi		&���������/����������\ �������<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv			&������\ �����\ �\ ��������<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx			������\ &����\ �����\ �\ ��������<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm				�������\ &¦����\ �����˦�<Tab>zm
menutrans &Close\ all\ folds<Tab>zM				�������\ &�Ӧ\ �������<Tab>zM
menutrans &Open\ all\ folds<Tab>zR				��������\ �&Ӧ\ �������<Tab>zR
menutrans O&pen\ more\ folds<Tab>zr				��������\ �&�����\ �����˦�<Tab>zr

menutrans Create\ &Fold<Tab>zf				�&�������\ �������<Tab>zf
menutrans &Delete\ Fold<Tab>zd				&��������\ �������<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD		�������&�\ �Ӧ\ �������<Tab>zD
menutrans Fold\ column\ &width				&�������\ �����\ �����˦�
menutrans Fold\ Met&hod		&�����\ ���������
menutrans M&anual			&������
menutrans I&ndent			&�������
menutrans E&xpression       �&����
menutrans S&yntax			&�����������
menutrans Ma&rker			��&������

" Diff
menutrans &Diff					��&Ҧ������
menutrans &Update				&��������
menutrans &Get\ Block			&����������\ Ҧ�����
menutrans &Put\ Block			&����������\ Ҧ�����

" Make and stuff...
menutrans &Make<Tab>:make		&��������(make)<Tab>:make
menutrans &List\ Errors<Tab>:cl		&������\ �������<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	��&����\ ��צ�������<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		&��������\ �������<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	&���������\ �������<Tab>:cp
menutrans &Older\ List<Tab>:cold	&���ۦ\ �������<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	&������Φ\ �������<Tab>:cnew
menutrans Error\ &Window	    &�����\ �������
menutrans &Update<Tab>:cwin			&��������<Tab>:cwin
menutrans &Close<Tab>:cclose		&�������<Tab>:cclose
menutrans &Open<Tab>:copen			&��������<Tab>:copen

menutrans &Set\ Compiler				����������\ &���Ц�����
menutrans &Convert\ to\ HEX<Tab>:%!xxd     ���������\ �\ ۦ����������צ\ ����<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r     ���������\ �\ �צ�����\ �����<Tab>:%!xxd\ -r

" Names for buffer menu.
menutrans &Buffers	&������
menutrans &Refresh\ menu &��������
menutrans Delete	&��������
menutrans &Alternate	&���������
menutrans &Next		&�̦������
menutrans &Previous	&�������Φ�
menutrans [No\ File]	[�����\ �����]

" Window menu
menutrans &Window			&�����
menutrans &New<Tab>^Wn			&����<Tab>^Wn
menutrans S&plit<Tab>^Ws		&���Ħ����<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	���Ħ����\ ���\ &����������\ �����<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	���Ħ����\ &�������<Tab>^Wv
"menutrans Split\ &Vertically<Tab>^Wv	&���Ħ����\ �������<Tab>^Wv
menutrans Split\ File\ E&xplorer		���Ħ����\ ���\ &���������\ ���̦�

menutrans &Close<Tab>^Wc		&�������<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	�������\ �Ӧ\ &��ۦ<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			&��������<Tab>^Ww
menutrans P&revious<Tab>^WW		&�������Τ<Tab>^WW
menutrans &Equal\ Size<Tab>^W=		&��Ҧ�����\ ���ͦ�<Tab>^W=
menutrans &Max\ Height<Tab>^W_		���&¦����\ ������<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		���&�����\ ������<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		���¦&����\ ������<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		������&��\ ������<Tab>^W1\|
menutrans Move\ &To			&�ͦ�����
menutrans &Top<Tab>^WK			��&����<Tab>^WK
menutrans &Bottom<Tab>^WJ		��&����<Tab>^WJ
menutrans &Left\ side<Tab>^WH		�&̦��<Tab>^WH
menutrans &Right\ side<Tab>^WL		�&�����<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR		&���̦���\ ������<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		�&��̦���\ ����<Tab>^Wr

" The popup menu
menutrans &Undo			&���ͦ����
menutrans Cu&t			��&Ҧ����
menutrans &Copy			&��Ц�����
menutrans &Paste		�&�������
menutrans &Delete		��&������
menutrans Select\ &Word		�������\ &�����
menutrans Select\ &Line		�������\ &�����
menutrans Select\ &Block	�������\ &����
menutrans Select\ &All		�������\ &���



" The GUI toolbar
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		�������� ����
    tmenu ToolBar.Save		�����'����� ����
    tmenu ToolBar.SaveAll		�����'����� �Ӧ �����
    tmenu ToolBar.Print		���������
    tmenu ToolBar.Undo		���ͦ����
    tmenu ToolBar.Redo		���������
    tmenu ToolBar.Cut		��Ҧ����
    tmenu ToolBar.Copy		��Ц�����
    tmenu ToolBar.Paste		��������
    tmenu ToolBar.Find		������...
    tmenu ToolBar.FindNext	������ ���������
    tmenu ToolBar.FindPrev	������ �������Φ�
    tmenu ToolBar.Replace	��ͦ����...
    tmenu ToolBar.LoadSesn	����������� ����� �����������
    tmenu ToolBar.SaveSesn	�����'����� ����� �����������
    tmenu ToolBar.RunScript	�������� ���� ������
    tmenu ToolBar.Make		��������� ������
    tmenu ToolBar.Shell		Shell
    tmenu ToolBar.RunCtags	�������� ���� ��ͦ���
    tmenu ToolBar.TagJump	������� �� ��ͦ���
    tmenu ToolBar.Help		��������
    tmenu ToolBar.FindHelp	����� � ������ڦ
  endfun
endif

" Syntax menu
menutrans &Syntax &���������
menutrans Set\ '&syntax'\ only	�������������\ ����\ '&syntax'
menutrans Set\ '&filetype'\ too	�������������\ '&filetype'\ �����
menutrans &Off			&��������
menutrans &Manual		&������
menutrans A&utomatic		&�����������
menutrans on/off\ for\ &This\ file		����������\ ���\ �����\ &�����
menutrans Co&lor\ test		����צ���\ &�����Ҧ�
menutrans &Highlight\ test	&����צ���\ ��Ħ�����
menutrans &Convert\ to\ HTML	��������\ &HTML

" dialog texts
let menutrans_no_file = "[�����\ �����]"
let menutrans_help_dialog = "���֦�� ������� ��� ����� ��� ������:\n\n������� i_ ��� ������ ������ ������� (����. i_CTRL-X)\n������� i_ ��� ���������� ������ (����. �_<Del>)\n������� ' ��� ���������� ����� ��æ� (����. 'shiftwidth')"
let g:menutrans_path_dialog = "���֦�� ���� ������ ���̦�\n���Ħ����� ����� �������Ҧ� ������."
let g:menutrans_tags_dialog = "���֦�� ����� ���̦� ��ͦ���\n���Ħ����� ����� ������."
let g:menutrans_textwidth_dialog = "���֦�� ���� ������ ������ (0 ��� צ�ͦ�� �����������)"
let g:menutrans_fileformat_dialog = "����Ҧ�� ������ �����"

let &cpo = s:keepcpo
unlet s:keepcpo
