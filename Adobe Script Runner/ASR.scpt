FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Adobe Script Runner     � 	 	 (   A d o b e   S c r i p t   R u n n e r   
  
 l     ��  ��    4 . Developer:		Tomas ?ink?nas, www.rendertom.com     �   \   D e v e l o p e r : 	 	 T o m a s  ` i n kk n a s ,   w w w . r e n d e r t o m . c o m      l     ��  ��    P J Description:	Script runner for Adobe applications right from Sublime Text     �   �   D e s c r i p t i o n : 	 S c r i p t   r u n n e r   f o r   A d o b e   a p p l i c a t i o n s   r i g h t   f r o m   S u b l i m e   T e x t      l     ��  ��    Q K Repository:		https://github.com/rendertom/Sublime-Text-Adobe-Script-Runner     �   �   R e p o s i t o r y : 	 	 h t t p s : / / g i t h u b . c o m / r e n d e r t o m / S u b l i m e - T e x t - A d o b e - S c r i p t - R u n n e r      l     ��������  ��  ��        l      ��  ��   ��
	Normally, Adobe Script Runner (ASR) executes the file in the active viewer. However, in cases when you need to run a master file (i.e. index.js) instead, you can append line at the beginning of the file in viewer `// adobe-script-runner 'index.js'`. This way ASR will not execute the file in the viewer, but instead will try to resolve the path to `index.js` file (up to 10 levels-up in the parent folder chain) and execute it.

	For instance, the path to file in the viewer is `/Users/[USERNAME]/Desktop/My App/lib/slave.js` and it contains a line `// adobe-script-runner '../../index.js'` at the top. On build command, ASR will execute the file at path `/Users/[USERNAME]/Desktop/index.js`.
     �  n 
 	 N o r m a l l y ,   A d o b e   S c r i p t   R u n n e r   ( A S R )   e x e c u t e s   t h e   f i l e   i n   t h e   a c t i v e   v i e w e r .   H o w e v e r ,   i n   c a s e s   w h e n   y o u   n e e d   t o   r u n   a   m a s t e r   f i l e   ( i . e .   i n d e x . j s )   i n s t e a d ,   y o u   c a n   a p p e n d   l i n e   a t   t h e   b e g i n n i n g   o f   t h e   f i l e   i n   v i e w e r   ` / /   a d o b e - s c r i p t - r u n n e r   ' i n d e x . j s ' ` .   T h i s   w a y   A S R   w i l l   n o t   e x e c u t e   t h e   f i l e   i n   t h e   v i e w e r ,   b u t   i n s t e a d   w i l l   t r y   t o   r e s o l v e   t h e   p a t h   t o   ` i n d e x . j s `   f i l e   ( u p   t o   1 0   l e v e l s - u p   i n   t h e   p a r e n t   f o l d e r   c h a i n )   a n d   e x e c u t e   i t . 
 
 	 F o r   i n s t a n c e ,   t h e   p a t h   t o   f i l e   i n   t h e   v i e w e r   i s   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `   a n d   i t   c o n t a i n s   a   l i n e   ` / /   a d o b e - s c r i p t - r u n n e r   ' . . / . . / i n d e x . j s ' `   a t   t h e   t o p .   O n   b u i l d   c o m m a n d ,   A S R   w i l l   e x e c u t e   t h e   f i l e   a t   p a t h   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / i n d e x . j s ` . 
     !   l     ��������  ��  ��   !  " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   (   Global variables    ) � * * "   G l o b a l   v a r i a b l e s '  + , + l      - . / - j     �� 0�� .0 search_for_index_file SEARCH_FOR_INDEX_FILE 0 m     ��
�� boovtrue . d ^ if 'else' executes script in active viewer, otherwise searches for index file and executes it    / � 1 1 �   i f   ' e l s e '   e x e c u t e s   s c r i p t   i n   a c t i v e   v i e w e r ,   o t h e r w i s e   s e a r c h e s   f o r   i n d e x   f i l e   a n d   e x e c u t e s   i t ,  2 3 2 l      4 5 6 4 j    �� 7�� 0 search_depth SEARCH_DEPTH 7 m    ���� 
 5 : 4 number of parent folder to look into for index file    6 � 8 8 h   n u m b e r   o f   p a r e n t   f o l d e r   t o   l o o k   i n t o   f o r   i n d e x   f i l e 3  9 : 9 j    �� ;�� 0 asr_defition ASR_DEFITION ; m     < < � = = & a d o b e - s c r i p t - r u n n e r :  > ? > l     ��������  ��  ��   ?  @ A @ l     ��������  ��  ��   A  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F   Main entry    G � H H    M a i n   e n t r y E  I J I i   	  K L K I     �� M��
�� .aevtoappnull  �   � **** M o      ���� 0 arg  ��   L k     ; N N  O P O r      Q R Q n     S T S 4    �� U
�� 
cobj U m    ����  T o     ���� 0 arg   R o      ���� $0 fileinactiveview fileInActiveView P  V W V r     X Y X n    Z [ Z 4    �� \
�� 
cobj \ m   	 
����  [ o    ���� 0 arg   Y o      ���� 0 hostappname hostAppName W  ] ^ ] l   ��������  ��  ��   ^  _ ` _ r     a b a o    ���� $0 fileinactiveview fileInActiveView b o      ���� "0 scriptfiletorun scriptFileToRun `  c d c Z    3 e f���� e o    ���� .0 search_for_index_file SEARCH_FOR_INDEX_FILE f k    / g g  h i h r    " j k j I     �� l���� (0 getscriptfiletorun getScriptFileToRun l  m�� m o    ���� $0 fileinactiveview fileInActiveView��  ��   k o      ���� "0 scriptfiletorun scriptFileToRun i  n�� n Z   # / o p���� o =  # & q r q o   # $���� "0 scriptfiletorun scriptFileToRun r m   $ %��
�� 
null p L   ) +����  ��  ��  ��  ��  ��   d  s t s l  4 4��������  ��  ��   t  u�� u I   4 ;�� v���� 0 runscriptfile runScriptFile v  w x w o   5 6���� "0 scriptfiletorun scriptFileToRun x  y�� y o   6 7���� 0 hostappname hostAppName��  ��  ��   J  z { z l     ��������  ��  ��   {  | } | l     ��������  ��  ��   }  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   �  ####################    � � � � ( # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Runs the script file in a host application    � � � � V   R u n s   t h e   s c r i p t   f i l e   i n   a   h o s t   a p p l i c a t i o n �  � � � l     �� � ���   � a [ @param	{String}	hostAppName		The name of the host application the script should get run in    � � � � �   @ p a r a m 	 { S t r i n g } 	 h o s t A p p N a m e 	 	 T h e   n a m e   o f   t h e   h o s t   a p p l i c a t i o n   t h e   s c r i p t   s h o u l d   g e t   r u n   i n �  � � � l     �� � ���   � q k @param	{String}	scriptFileToRun	Path to script file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`    � � � � �   @ p a r a m 	 { S t r i n g } 	 s c r i p t F i l e T o R u n 	 P a t h   t o   s c r i p t   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s ` �  � � � i     � � � I      �� ����� 0 runscriptfile runScriptFile �  � � � o      ���� "0 scriptfiletorun scriptFileToRun �  ��� � o      ���� 0 hostappname hostAppName��  ��   � Z     � � � � � � =     � � � o     ���� 0 hostappname hostAppName � m     � � � � �  A f t e r   E f f e c t s � O    � � � I   �� ���
�� .miscactvnull��� ��� null � l    ����� � I   �� ���
�� .miscfilenull���     **** � o    ���� "0 scriptfiletorun scriptFileToRun��  ��  ��  ��   � 5    �� ���
�� 
capp � m    	 � � � � � , c o m . a d o b e . a f t e r e f f e c t s
�� kfrmID   �  � � � =    � � � o    ���� 0 hostappname hostAppName � m     � � � � � ( E x t e n d S c r i p t   T o o l k i t �  � � � O  ! 3 � � � I  ) 2�� ���
�� .miscactvnull��� ��� null � l  ) . ����� � I  ) .�� ���
�� .aevtodocnull  �    alis � o   ) *���� "0 scriptfiletorun scriptFileToRun��  ��  ��  ��   � 5   ! &�� ���
�� 
capp � m   # $ � � � � � . c o m . a d o b e . e s t o o l k i t - 4 . 0
�� kfrmID   �  � � � =  6 9 � � � o   6 7���� 0 hostappname hostAppName � m   7 8 � � � � �  I l l u s t r a t o r �  � � � O  < Q � � � I  D P�� ���
�� .miscactvnull��� ��� null � l  D L ����� � I  D L�� ���
�� .miscDjxMutxt       **** � 4   D H�� �
�� 
file � o   F G�� "0 scriptfiletorun scriptFileToRun��  ��  ��  ��   � 5   < A�~ ��}
�~ 
capp � m   > ? � � � � � * c o m . a d o b e . i l l u s t r a t o r
�} kfrmID   �  � � � =  T W � � � o   T U�|�| 0 hostappname hostAppName � m   U V � � � � �  I n C o p y �  � � � O  Z p � � � I  b o�{ ��z
�{ .miscactvnull��� ��� null � l  b k ��y�x � I  b k�w � �
�w .K2  dosc****        **** � o   b c�v�v "0 scriptfiletorun scriptFileToRun � �u ��t
�u 
doLg � m   d g�s
�s ScLgJSLg�t  �y  �x  �z   � 5   Z _�r ��q
�r 
capp � m   \ ] � � � � �   c o m . a d o b e . I n C o p y
�q kfrmID   �  � � � =  s x � � � o   s t�p�p 0 hostappname hostAppName � m   t w � � � � �  I n D e s i g n �  � � � O  { � � � � I  � ��o ��n
�o .miscactvnull��� ��� null � l  � � ��m�l � I  � ��k � �
�k .K2  dosc****        **** � o   � ��j�j "0 scriptfiletorun scriptFileToRun � �i ��h
�i 
doLg � m   � ��g
�g ScLgJSLg�h  �m  �l  �n   � 5   { ��f ��e
�f 
capp � m   } � � � � � � $ c o m . a d o b e . I n D e s i g n
�e kfrmID   �  � � � =  � � � � � o   � ��d�d 0 hostappname hostAppName � m   � � � � � � �  P h o t o s h o p �  ��c � O  � � � � � I  � ��b �a
�b .miscactvnull��� ��� null  l  � ��`�_ I  � ��^�]
�^ .miscDjxMutxt       **** 4   � ��\
�\ 
file o   � ��[�[ "0 scriptfiletorun scriptFileToRun�]  �`  �_  �a   � 5   � ��Z�Y
�Z 
capp m   � � � & c o m . a d o b e . p h o t o s h o p
�Y kfrmID  �c   � I  � ��X
�X .sysodisAaleR        TEXT m   � �		 �

 & A d o b e   S c r i p t   R u n n e r �W�V
�W 
mesS b   � � m   � � � ( U n k n o w n   a p p l i c a t i o n   o   � ��U�U 0 hostappname hostAppName�V   �  l     �T�S�R�T  �S  �R    l     �Q�P�O�Q  �P  �O    l     �N�M�L�N  �M  �L    l     �K�K   ; 5 Gets the patht to the script that has to be executed    � j   G e t s   t h e   p a t h t   t o   t h e   s c r i p t   t h a t   h a s   t o   b e   e x e c u t e d  l     �J�J   m g @param	{String}	scriptPath		Path to script file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`    � �   @ p a r a m 	 { S t r i n g } 	 s c r i p t P a t h 	 	 P a t h   t o   s c r i p t   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `  !  l     �I"#�I  " @ : @return	{String|null}     			Path to script file or null    # �$$ t   @ r e t u r n 	 { S t r i n g | n u l l }           	 	 	 P a t h   t o   s c r i p t   f i l e   o r   n u l l  ! %&% i    '(' I      �H)�G�H (0 getscriptfiletorun getScriptFileToRun) *�F* o      �E�E 0 
scriptpath 
scriptPath�F  �G  ( k     v++ ,-, r     ./. I     �D0�C�D (0 getuserdefinedpath getUserDefinedPath0 1�B1 o    �A�A 0 
scriptpath 
scriptPath�B  �C  / o      �@�@ "0 userdefinedpath userDefinedPath- 232 Z   	 45�?�>4 =  	 676 o   	 
�=�= "0 userdefinedpath userDefinedPath7 m   
 �<
�< 
null5 L    88 o    �;�; 0 
scriptpath 
scriptPath�?  �>  3 9:9 l   �:�9�8�:  �9  �8  : ;<; r    =>= m    ?? �@@  /> n     ABA 1    �7
�7 
txdlB 1    �6
�6 
ascr< CDC r    !EFE n    GHG 2   �5
�5 
citmH o    �4�4 "0 userdefinedpath userDefinedPathF o      �3�3 0 	pathitems 	pathItemsD IJI Z   " AKL�2MK =  " )NON l  " 'P�1�0P I  " '�/Q�.
�/ .corecnte****       ****Q o   " #�-�- 0 	pathitems 	pathItems�.  �1  �0  O m   ' (�,�, L r   , 5RSR I   , 3�+T�*�+ .0 getfileinparentfolder getFileInParentFolderT UVU o   - .�)�) 0 
scriptpath 
scriptPathV W�(W o   . /�'�' "0 userdefinedpath userDefinedPath�(  �*  S o      �&�& 0 testfile testFile�2  M r   8 AXYX I   8 ?�%Z�$�% 0 	joinpaths 	joinPathsZ [\[ o   9 :�#�# 0 
scriptpath 
scriptPath\ ]�"] o   : ;�!�! 0 	pathitems 	pathItems�"  �$  Y o      � �  0 testfile testFileJ ^_^ l  B B����  �  �  _ `a` Z   B Ybc��b F   B Pded >  B Efgf o   B C�� 0 testfile testFileg m   C D�
� 
nulle I   H N�h�� 0 
fileexists 
fileExistsh i�i o   I J�� 0 testfile testFile�  �  c L   S Ujj o   S T�� 0 testfile testFile�  �  a klk l  Z Z����  �  �  l mnm I  Z s�op
� .sysodisAaleR        TEXTo m   Z [qq �rr & A d o b e   S c r i p t   R u n n e rp �st
� 
mesSs b   \ guvu b   \ ewxw b   \ cyzy b   \ a{|{ b   \ _}~} m   \ ] ��� $ C o u l d   n o t   r e s o l v e  ~ o   ] ^�� "0 userdefinedpath userDefinedPath| m   _ `�� ���    f r o m   f i l e  z o   a b�� 0 
scriptpath 
scriptPathx m   c d�� ��� , .   F i l e   d o e s   n o t   e x i s t  v o   e f�� 0 testfile testFilet ���

� 
as A� m   j m�	
�	 EAlTcriT�
  n ��� L   t v�� m   t u�
� 
null�  & ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l     ������  � . ( Checks if a file exists at a given path   � ��� P   C h e c k s   i f   a   f i l e   e x i s t s   a t   a   g i v e n   p a t h� ��� l     ������  � j d @param	{String}	pathToFile	Path to base file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`   � ��� �   @ p a r a m 	 { S t r i n g } 	 p a t h T o F i l e 	 P a t h   t o   b a s e   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `� ��� l     ������  � ; 5 @return	{Bool}     			True if exist, false otherwise   � ��� j   @ r e t u r n 	 { B o o l }           	 	 	 T r u e   i f   e x i s t ,   f a l s e   o t h e r w i s e� ��� i    ��� I      ������� 0 
fileexists 
fileExists� ���� o      ���� 0 
pathtofile 
pathToFile��  ��  � O     ��� L    �� I   �����
�� .coredoexnull���     ****� 4    ���
�� 
file� o    ���� 0 
pathtofile 
pathToFile��  � m     ���                                                                                  sevs  alis    �  Macintosh SSD              Ԧ~�H+     5System Events.app                                               ����MX        ����  	                CoreServices    Ԧb|      ��#(       5   4   3  >Macintosh SSD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   S S D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � - ' Gets the parent folder or a given file   � ��� N   G e t s   t h e   p a r e n t   f o l d e r   o r   a   g i v e n   f i l e� ��� l     ������  � j d @param	{String}	pathToFile	Path to base file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`   � ��� �   @ p a r a m 	 { S t r i n g } 	 p a t h T o F i l e 	 P a t h   t o   b a s e   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `� ��� l     ������  � V P @return	{String}				Parent folder, as in `/Users/[USERNAME]/Desktop/My App/lib`   � ��� �   @ r e t u r n 	 { S t r i n g } 	 	 	 	 P a r e n t   f o l d e r ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b `� ��� i    ��� I      ������� "0 getparentfolder getParentFolder� ���� o      ���� 0 
pathtofile 
pathToFile��  ��  � k     �� ��� l     ������  � _ Y https://stackoverflow.com/questions/30823900/getting-directory-of-input-file-applescript   � ��� �   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 0 8 2 3 9 0 0 / g e t t i n g - d i r e c t o r y - o f - i n p u t - f i l e - a p p l e s c r i p t� ��� r     ��� I    	�����
�� .sysoexecTEXT���     TEXT� b     ��� m     �� ���  d i r n a m e  � n    ��� 1    ��
�� 
strq� o    ���� 0 
pathtofile 
pathToFile��  � o      ���� 0 parentfolder parentFolder� ���� L    �� o    ���� 0 parentfolder parentFolder��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 8 2 Tries to find a file in it's parents folder chain   � ��� d   T r i e s   t o   f i n d   a   f i l e   i n   i t ' s   p a r e n t s   f o l d e r   c h a i n� ��� l     ������  � k e @param	{String}		pathToFile	Path to base file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`   � ��� �   @ p a r a m 	 { S t r i n g } 	 	 p a t h T o F i l e 	 P a t h   t o   b a s e   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `� ��� l     ������  � U O @param	{String}		fileName		File name of a file to search for, as in `index.js`   � ��� �   @ p a r a m 	 { S t r i n g } 	 	 f i l e N a m e 	 	 F i l e   n a m e   o f   a   f i l e   t o   s e a r c h   f o r ,   a s   i n   ` i n d e x . j s `� ��� l     ������  � 4 . @return	{String|null}				Path to file or null   � ��� \   @ r e t u r n 	 { S t r i n g | n u l l } 	 	 	 	 P a t h   t o   f i l e   o r   n u l l� ��� i     ��� I      ������� .0 getfileinparentfolder getFileInParentFolder� ��� o      ���� 0 
pathtofile 
pathToFile� ���� o      ���� 0 filename fileName��  ��  � k     <�� ��� r     ��� I     ������� "0 getparentfolder getParentFolder� ���� o    ���� 0 
pathtofile 
pathToFile��  ��  � o      ���� 0 parentfolder parentFolder�    U   	 9 k    4  r     b    	
	 b     o    ���� 0 parentfolder parentFolder m     �  /
 o    ���� 0 filename fileName o      ���� 0 testfile testFile  Z    +���� I    "������ 0 
fileexists 
fileExists �� o    ���� 0 testfile testFile��  ��   L   % ' o   % &���� 0 testfile testFile��  ��    l  , ,��������  ��  ��   �� r   , 4 I   , 2������ "0 getparentfolder getParentFolder �� o   - .���� 0 parentfolder parentFolder��  ��   o      ���� 0 parentfolder parentFolder��   o    ���� 0 search_depth SEARCH_DEPTH  l  : :��������  ��  ��   �� L   : <   m   : ;��
�� 
null��  � !"! l     ��������  ��  ��  " #$# l     ��������  ��  ��  $ %&% l     ��������  ��  ��  & '(' l     ��)*��  ) B < Resolves local path by joining path and path items together   * �++ x   R e s o l v e s   l o c a l   p a t h   b y   j o i n i n g   p a t h   a n d   p a t h   i t e m s   t o g e t h e r( ,-, l     ��./��  . j d @param	{String}	pathToFile	Path to base file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`   / �00 �   @ p a r a m 	 { S t r i n g } 	 p a t h T o F i l e 	 P a t h   t o   b a s e   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `- 121 l     ��34��  3 U O @param	{Array}	pathItems	Array of folder names, as in ['..', '..', 'index.js']   4 �55 �   @ p a r a m 	 { A r r a y } 	 p a t h I t e m s 	 A r r a y   o f   f o l d e r   n a m e s ,   a s   i n   [ ' . . ' ,   ' . . ' ,   ' i n d e x . j s ' ]2 676 l     ��89��  8 R L @return	{String}				Joined path, as in `/Users/[USERNAME]/Desktop/index.js`   9 �:: �   @ r e t u r n 	 { S t r i n g } 	 	 	 	 J o i n e d   p a t h ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / i n d e x . j s `7 ;<; i   ! $=>= I      ��?���� 0 	joinpaths 	joinPaths? @A@ o      ���� 0 
pathtofile 
pathToFileA B��B o      ���� 0 	pathitems 	pathItems��  ��  > k     ;CC DED r     FGF I     ��H���� "0 getparentfolder getParentFolderH I��I o    ���� 0 
pathtofile 
pathToFile��  ��  G o      ���� 0 newpath newPathE JKJ X   	 8L��ML Z    3NO��PN =   QRQ c    STS o    ���� 0 pathitem pathItemT m    ��
�� 
TEXTR m    UU �VV  . .O r   ! )WXW I   ! '��Y���� "0 getparentfolder getParentFolderY Z��Z o   " #���� 0 newpath newPath��  ��  X o      ���� 0 newpath newPath��  P r   , 3[\[ b   , 1]^] b   , /_`_ o   , -���� 0 newpath newPath` m   - .aa �bb  /^ o   / 0���� 0 pathitem pathItem\ o      ���� 0 newpath newPath�� 0 pathitem pathItemM o    ���� 0 	pathitems 	pathItemsK cdc l  9 9��������  ��  ��  d e��e L   9 ;ff o   9 :���� 0 newpath newPath��  < ghg l     �������  ��  �  h iji l     �~�}�|�~  �}  �|  j klk l     �{�z�y�{  �z  �y  l mnm l     �xop�x  o D > Reads the file and tries to find a `adobe-script-runner` line   p �qq |   R e a d s   t h e   f i l e   a n d   t r i e s   t o   f i n d   a   ` a d o b e - s c r i p t - r u n n e r `   l i n en rsr l     �wtu�w  t G A If does find it, then tries to parse the path between the quotes   u �vv �   I f   d o e s   f i n d   i t ,   t h e n   t r i e s   t o   p a r s e   t h e   p a t h   b e t w e e n   t h e   q u o t e ss wxw l     �vyz�v  y M G `// adobe-script-runner "../../index.js"` should return ../../index.js   z �{{ �   ` / /   a d o b e - s c r i p t - r u n n e r   " . . / . . / i n d e x . j s " `   s h o u l d   r e t u r n   . . / . . / i n d e x . j sx |}| l     �u~�u  ~ g a @param	{String}		scriptFile		Path to file, as in `/Users/[USERNAME]/Desktop/My App/lib/slave.js`    ��� �   @ p a r a m 	 { S t r i n g } 	 	 s c r i p t F i l e 	 	 P a t h   t o   f i l e ,   a s   i n   ` / U s e r s / [ U S E R N A M E ] / D e s k t o p / M y   A p p / l i b / s l a v e . j s `} ��� l     �t���t  � L F @return	{String|null}				path between quotes `../../index.js` or null   � ��� �   @ r e t u r n 	 { S t r i n g | n u l l } 	 	 	 	 p a t h   b e t w e e n   q u o t e s   ` . . / . . / i n d e x . j s `   o r   n u l l� ��s� i   % (��� I      �r��q�r (0 getuserdefinedpath getUserDefinedPath� ��p� o      �o�o 0 
scriptfile 
scriptFile�p  �q  � k     N�� ��� r     	��� I    �n��
�n .rdwrread****        ****� o     �m�m 0 
scriptfile 
scriptFile� �l��k
�l 
as  � m    �j
�j 
utf8�k  � o      �i�i 0 filecontent fileContent� ��� r   
 ��� n   
 ��� 2   �h
�h 
cpar� o   
 �g�g 0 filecontent fileContent� o      �f�f 0 	textlines 	textLines� ��� r    ��� J    �� ��� 1    �e
�e 
quot� ��d� m    �� ���  '�d  � n     ��� 1    �c
�c 
txdl� 1    �b
�b 
ascr� ��� l   �a�`�_�a  �`  �_  � ��� X    K��^�� Z   ) F���]�\� E  ) 0��� o   ) *�[�[ 0 textline textLine� o   * /�Z�Z 0 asr_defition ASR_DEFITION� k   3 B�� ��� r   3 8��� n   3 6��� 2   4 6�Y
�Y 
citm� o   3 4�X�X 0 textline textLine� o      �W�W 0 thelist theList� ��� r   9 ?��� n   9 =��� 4   : =�V�
�V 
cobj� m   ; <�U�U � o   9 :�T�T 0 thelist theList� o      �S�S "0 userdefinedpath userDefinedPath� ��R� L   @ B�� o   @ A�Q�Q "0 userdefinedpath userDefinedPath�R  �]  �\  �^ 0 textline textLine� o    �P�P 0 	textlines 	textLines� ��� l  L L�O�N�M�O  �N  �M  � ��L� L   L N�� m   L M�K
�K 
null�L  �s       �J��I�H <���������J  � �G�F�E�D�C�B�A�@�?�>�=�G .0 search_for_index_file SEARCH_FOR_INDEX_FILE�F 0 search_depth SEARCH_DEPTH�E 0 asr_defition ASR_DEFITION
�D .aevtoappnull  �   � ****�C 0 runscriptfile runScriptFile�B (0 getscriptfiletorun getScriptFileToRun�A 0 
fileexists 
fileExists�@ "0 getparentfolder getParentFolder�? .0 getfileinparentfolder getFileInParentFolder�> 0 	joinpaths 	joinPaths�= (0 getuserdefinedpath getUserDefinedPath
�I boovtrue�H 
� �< L�;�:���9
�< .aevtoappnull  �   � ****�; 0 arg  �:  � �8�8 0 arg  � �7�6�5�4�3�2�1
�7 
cobj�6 $0 fileinactiveview fileInActiveView�5 0 hostappname hostAppName�4 "0 scriptfiletorun scriptFileToRun�3 (0 getscriptfiletorun getScriptFileToRun
�2 
null�1 0 runscriptfile runScriptFile�9 <��k/E�O��l/E�O�E�Ob    *�k+ E�O��  hY hY hO*��l+ � �0 ��/�.���-�0 0 runscriptfile runScriptFile�/ �,��, �  �+�*�+ "0 scriptfiletorun scriptFileToRun�* 0 hostappname hostAppName�.  � �)�(�) "0 scriptfiletorun scriptFileToRun�( 0 hostappname hostAppName�  ��' ��&�%�$ � ��# � ��"�! � �� �� � � �	��
�' 
capp
�& kfrmID  
�% .miscfilenull���     ****
�$ .miscactvnull��� ��� null
�# .aevtodocnull  �    alis
�" 
file
�! .miscDjxMutxt       ****
�  
doLg
� ScLgJSLg
� .K2  dosc****        ****
� 
mesS
� .sysodisAaleR        TEXT�- ȡ�  )���0 �j j UY ���  )���0 �j j UY ���  )���0 *�/j j UY u��  )���0 ��a l j UY V�a   )�a �0 ��a l j UY 3�a   )�a �0 *�/j j UY a a a �%l � �(������ (0 getscriptfiletorun getScriptFileToRun� ��� �  �� 0 
scriptpath 
scriptPath�  � ����� 0 
scriptpath 
scriptPath� "0 userdefinedpath userDefinedPath� 0 	pathitems 	pathItems� 0 testfile testFile� ��?������
�	�q�������� (0 getuserdefinedpath getUserDefinedPath
� 
null
� 
ascr
� 
txdl
� 
citm
� .corecnte****       ****� .0 getfileinparentfolder getFileInParentFolder�
 0 	joinpaths 	joinPaths�	 0 
fileexists 
fileExists
� 
bool
� 
mesS
� 
as A
� EAlTcriT� 
� .sysodisAaleR        TEXT� w*�k+  E�O��  �Y hO���,FO��-E�O�j k  *��l+ E�Y *��l+ E�O��	 
*�k+ 	�& �Y hO����%�%�%�%�%a a a  O�� ���� ����� 0 
fileexists 
fileExists� ����� �  ���� 0 
pathtofile 
pathToFile�   � ���� 0 
pathtofile 
pathToFile� �����
�� 
file
�� .coredoexnull���     ****�� � *�/j U� ������������� "0 getparentfolder getParentFolder�� ����� �  ���� 0 
pathtofile 
pathToFile��  � ������ 0 
pathtofile 
pathToFile�� 0 parentfolder parentFolder� �����
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,%j E�O�� ������������� .0 getfileinparentfolder getFileInParentFolder�� ����� �  ������ 0 
pathtofile 
pathToFile�� 0 filename fileName��  � ���������� 0 
pathtofile 
pathToFile�� 0 filename fileName�� 0 parentfolder parentFolder�� 0 testfile testFile� �������� "0 getparentfolder getParentFolder�� 0 
fileexists 
fileExists
�� 
null�� =*�k+  E�O /b  kh��%�%E�O*�k+  �Y hO*�k+  E�[OY��O�� ��>���������� 0 	joinpaths 	joinPaths�� ����� �  ������ 0 
pathtofile 
pathToFile�� 0 	pathitems 	pathItems��  � ���������� 0 
pathtofile 
pathToFile�� 0 	pathitems 	pathItems�� 0 newpath newPath�� 0 pathitem pathItem� ����������Ua�� "0 getparentfolder getParentFolder
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�� <*�k+  E�O .�[��l kh ��&�  *�k+  E�Y 	��%�%E�[OY��O�� ������������� (0 getuserdefinedpath getUserDefinedPath�� ����� �  ���� 0 
scriptfile 
scriptFile��  � �������������� 0 
scriptfile 
scriptFile�� 0 filecontent fileContent�� 0 	textlines 	textLines�� 0 textline textLine�� 0 thelist theList�� "0 userdefinedpath userDefinedPath� �������������������������
�� 
as  
�� 
utf8
�� .rdwrread****        ****
�� 
cpar
�� 
quot
�� 
ascr
�� 
txdl
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
citm
�� 
null�� O���l E�O��-E�O��lv��,FO 1�[��l 
kh �b   ��-E�O��l/E�O�Y h[OY��O�ascr  ��ޭ