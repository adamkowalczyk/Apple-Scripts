FasdUAS 1.101.10   ��   ��    k             l     ��  ��    L F copies selected files to (new) folders, siblings to the parent folder     � 	 	 �   c o p i e s   s e l e c t e d   f i l e s   t o   ( n e w )   f o l d e r s ,   s i b l i n g s   t o   t h e   p a r e n t   f o l d e r   
  
 l     ��  ��    < 6 accepts a comma separated list of parent folder names     �   l   a c c e p t s   a   c o m m a   s e p a r a t e d   l i s t   o f   p a r e n t   f o l d e r   n a m e s      l     ��������  ��  ��        l     ����  I    ��  
�� .sysodlogaskr        TEXT  m        �   p P l e a s e   e n t e r   c o u n t r y   c o d e s   t o   c o p y   t o .   ( c o m m a   s e p a r a t e d )  �� ��
�� 
dtxt  m       �    ��  ��  ��        l    ����  r        n       !   1   	 ��
�� 
ttxt ! 1    	��
�� 
rslt  o      ���� 0 	userinput 	userInput��  ��     " # " l     �� $ %��   $ , & split input using standard delimeters    % � & & L   s p l i t   i n p u t   u s i n g   s t a n d a r d   d e l i m e t e r s #  ' ( ' l    )���� ) r     * + * n     , - , 2   ��
�� 
cwor - o    ���� 0 	userinput 	userInput + o      ����  0 userinputarray userInputArray��  ��   (  . / . l     ��������  ��  ��   /  0 1 0 l     ��������  ��  ��   1  2 3 2 l   � 4���� 4 O    � 5 6 5 X    � 7�� 8 7 k   , � 9 9  : ; : l  , ,��������  ��  ��   ;  < = < r   , 3 > ? > n   , / @ A @ m   - /��
�� 
ctnr A o   , -���� 0 thefile theFile ? o      ���� "0 theparentfolder theParentFolder =  B C B r   4 A D E D c   4 = F G F n   4 9 H I H m   7 9��
�� 
ctnr I o   4 7���� "0 theparentfolder theParentFolder G m   9 <��
�� 
ctxt E l      J���� J o      ���� ,0 thegrandparentfolder theGrandParentFolder��  ��   C  K L K l  B B��������  ��  ��   L  M N M l  B B�� O P��   O $  make new sibling folder paths    P � Q Q <   m a k e   n e w   s i b l i n g   f o l d e r   p a t h s N  R�� R X   B � S�� T S k   R � U U  V W V l  R R��������  ��  ��   W  X Y X r   R [ Z [ Z b   R W \ ] \ o   R U���� ,0 thegrandparentfolder theGrandParentFolder ] o   U V���� 0 theword theWord [ o      ���� 0 thenewfolder theNewFolder Y  ^ _ ^ Z   \ � ` a���� ` H   \ d b b l  \ c c���� c I  \ c�� d��
�� .coredoexbool        obj  d o   \ _���� 0 thenewfolder theNewFolder��  ��  ��   a I  g ����� e
�� .corecrel****      � null��   e �� f g
�� 
kocl f m   i l��
�� 
cfol g �� h i
�� 
insh h o   o r���� ,0 thegrandparentfolder theGrandParentFolder i �� j��
�� 
prdt j K   u { k k �� l��
�� 
pnam l o   x y���� 0 theword theWord��  ��  ��  ��   _  m n m l  � ���������  ��  ��   n  o p o l  � ��� q r��   q 2 , copy file to new location, replace if found    r � s s X   c o p y   f i l e   t o   n e w   l o c a t i o n ,   r e p l a c e   i f   f o u n d p  t u t l  � ��� v w��   v F @ (if non replacing, 'without' need to try catch to handle error)    w � x x �   ( i f   n o n   r e p l a c i n g ,   ' w i t h o u t '   n e e d   t o   t r y   c a t c h   t o   h a n d l e   e r r o r ) u  y z y I  � ��� { |
�� .coreclon****      � **** { c   � � } ~ } o   � ����� 0 thefile theFile ~ m   � ���
�� 
alis | ��  �
�� 
insh  c   � � � � � o   � ����� 0 thenewfolder theNewFolder � m   � ���
�� 
alis � �� ���
�� 
alrp � m   � ���
�� boovtrue��   z  ��� � l  � ���������  ��  ��  ��  �� 0 theword theWord T o   E F����  0 userinputarray userInputArray��  �� 0 thefile theFile 8 c      � � � 1    ��
�� 
sele � m    ��
�� 
list 6 m     � ��                                                                                  MACS  alis    Z  HDD                        ��8�H+   ��f
Finder.app                                                      �J�u�        ����  	                CoreServices    ��*�      �u��     ��f ��Z ��Y  -HDD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    H D D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   3  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � � � � � �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 	userinput 	userInput��  0 userinputarray userInputArray�� "0 theparentfolder theParentFolder�� ,0 thegrandparentfolder theGrandParentFolder�� 0 thenewfolder theNewFolder��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  ' � �  2����  ��  ��   � ������ 0 thefile theFile�� 0 theword theWord �  �� ������������ �������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� 0 	userinput 	userInput
�� 
cwor��  0 userinputarray userInputArray
�� 
sele
�� 
list
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| 
ctnr�{ "0 theparentfolder theParentFolder
�z 
ctxt�y ,0 thegrandparentfolder theGrandParentFolder�x 0 thenewfolder theNewFolder
�w .coredoexbool        obj 
�v 
cfol
�u 
insh
�t 
prdt
�s 
pnam�r 
�q .corecrel****      � null
�p 
alis
�o 
alrp�n 
�m .coreclon****      � ****�� ����l O��,E�O��-E�O� � �*�,�&[��l kh  ��,E` O_ �,a &E` O c�[��l kh _ �%E` O_ j  *�a a _ a a �la  Y hO�a &a _ a &a ea  OP[OY��[OY��U � � � �  d e � �l ��l  �   ��k�j�i�h�g�f�e�d�c�b�a�`�_�^�] � � � �  d e�k  �j  �i  �h  �g  �f  �e  �d  �c  �b  �a  �`  �_  �^  �]   �  � �  ��\ � �  ��[ � �  ��Z � �  ��Y � �  ��X
�X 
sdsk
�Y 
cfol � � � � 
 U s e r s
�Z 
cfol � � � �  a d a m
�[ 
cfol � � � �  t e s t
�\ 
cfol � � � �  u k � � � � ( H D D : U s e r s : a d a m : t e s t : � � � � , H D D : U s e r s : a d a m : t e s t : d e��  ��   ascr  ��ޭ