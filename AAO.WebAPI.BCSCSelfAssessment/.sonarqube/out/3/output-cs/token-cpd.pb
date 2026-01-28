±/
sD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\AdminChapterReportDetailsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class (
AdminChapterReportDetailsDAL -
{ 
public 
static 
List 
< +
ResidentChapterReportDetailsDTO :
>: ;%
AdminChapterReportDetails< U
(U V+
ResidentChapterReportDetailsDTOV u!
reportChapterDetails	v 
)
 ‹
{ 	
List 
< +
ResidentChapterReportDetailsDTO 0
>0 1

reportList2 <
== >
new? B
ListC G
<G H+
ResidentChapterReportDetailsDTOH g
>g h
(h i
)i j
;j k
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new1 4
SqlParameter5 A
(A B
$strB S
,S T 
reportChapterDetailsU i
.i j
SubspecialtyIdj x
)x y
,y z
new1 4
SqlParameter5 A
(A B
$strB M
,M N 
reportChapterDetailsO c
.c d
ExamStartDated q
)q r
,r s
new1 4
SqlParameter5 A
(A B
$strB K
,K L 
reportChapterDetailsM a
.a b
ExamCompletedDateb s
)s t
,t u
new1 4
SqlParameter5 A
(A B
$strB M
,M N 
reportChapterDetailsO c
.c d
Yeard h
)h i
,i j
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m 
,
 
objSqlParameter
‘  
)
  ΅
)
΅ Ά
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ +
ResidentChapterReportDetailsDTO 3
reportListBO4 @
=A B
newC F+
ResidentChapterReportDetailsDTOG f
(f g
)g h
;h i
object 
subspecialtyObj *
=+ ,
objSqlDataReader- =
[= >
$str> L
]L M
;M N
reportListBO    
.    !
Subspecialty  ! -
=  . /
subspecialtyObj  0 ?
is  @ B
DBNull  C I
?  J K
null  L P
:  Q R
Convert  S Z
.  Z [
ToString  [ c
(  c d
objSqlDataReader  d t
[  t u
$str	  u ƒ
]
  ƒ „
)
  „ …
;
  … †
object!! 
chapterNameObj!! )
=!!* +
objSqlDataReader!!, <
[!!< =
$str!!= J
]!!J K
;!!K L
reportListBO""  
.""  !
ChapterName""! ,
=""- .
chapterNameObj""/ =
is""> @
DBNull""A G
?""H I
null""J N
:""O P
Convert""Q X
.""X Y
ToString""Y a
(""a b
objSqlDataReader""b r
[""r s
$str	""s €
]
""€ 
)
"" ‚
;
""‚ ƒ
object## 

correctObj## %
=##& '
objSqlDataReader##( 8
[##8 9
$str##9 B
]##B C
;##C D
reportListBO$$  
.$$  !
Correct$$! (
=$$) *

correctObj$$+ 5
is$$6 8
DBNull$$9 ?
?$$@ A
$num$$B C
:$$D E
Convert$$F M
.$$M N
ToInt32$$N U
($$U V
objSqlDataReader$$V f
[$$f g
$str$$g p
]$$p q
)$$q r
;$$r s
object%% 
inCorrectObj%% '
=%%( )
objSqlDataReader%%* :
[%%: ;
$str%%; F
]%%F G
;%%G H
reportListBO&&  
.&&  !
	InCorrect&&! *
=&&+ ,
inCorrectObj&&- 9
is&&: <
DBNull&&= C
?&&D E
$num&&F G
:&&H I
Convert&&J Q
.&&Q R
ToInt32&&R Y
(&&Y Z
objSqlDataReader&&Z j
[&&j k
$str&&k v
]&&v w
)&&w x
;&&x y
object'' 
scoreObj'' #
=''$ %
objSqlDataReader''& 6
[''6 7
$str''7 J
]''J K
;''K L
reportListBO((  
.((  !
RemainingQuestion((! 2
=((3 4
scoreObj((5 =
is((> @
DBNull((A G
?((H I
$num((J K
:((L M
Convert((N U
.((U V
ToInt32((V ]
(((] ^
objSqlDataReader((^ n
[((n o
$str	((o ‚
]
((‚ ƒ
)
((ƒ „
;
((„ …
reportListBO))  
.))  !
BCSCSectionNumber))! 2
=))3 4
Convert))5 <
.))< =
ToInt32))= D
())D E
objSqlDataReader))E U
[))U V
$str))V i
]))i j
)))j k
;))k l

reportList** 
.** 
Add** "
(**" #
reportListBO**# /
)**/ 0
;**0 1
}++ 
objSqlDataReader--  
.--  !
Close--! &
(--& '
)--' (
;--( )
}.. 
return00 

reportList00 
;00 
}11 	
}22 
}33 Γ΄
wD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\AdminIncorrectQuestionDetailsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class ,
 AdminIncorrectQuestionDetailsDAL 1
{ 
public 
static 
List 
< '
IncorrectQuestionDetailsDTO 6
>6 7)
AdminIncorrectQuestionDetails8 U
(U V
intV Y
yearZ ^
,^ _
int` c
?c d
userIde k
,k l
intm p
?p q
subspecialtyId	r €
,
€ 
DateTime
‚ 
?
 ‹
examStartDate
 ™
,
™ 
DateTime
› £
?
£ ¤
examCompletedDate
¥ ¶
,
¶ ·
int
Έ »
?
» Ό
noOfRecords
½ Θ
,
Θ Ι
int
Κ Ν
?
Ν Ξ
pageNo
Ο Υ
)
Υ Φ
{ 	
List 
< '
IncorrectQuestionDetailsDTO ,
>, -
incorrectReportList. A
=B C
newD G
ListH L
<L M'
IncorrectQuestionDetailsDTOM h
>h i
(i j
)j k
;k l
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new4 7
SqlParameter8 D
(D E
$strE N
,N O
nullP T
)T U
,U V
new4 7
SqlParameter8 D
(D E
$strE V
,V W
ConvertX _
._ `
ToInt32` g
(g h
subspecialtyIdh v
)v w
)w x
,x y
new4 7
SqlParameter8 D
(D E
$strE Q
,Q R
examStartDateS `
)` a
,a b
new4 7
SqlParameter8 D
(D E
$strE O
,O P
examCompletedDateQ b
)b c
,c d
new4 7
SqlParameter8 D
(D E
$strE P
,P Q
noOfRecordsR ]
)] ^
,^ _
new4 7
SqlParameter8 D
(D E
$strE Q
,Q R
pageNoS Y
)Y Z
,Z [
new4 7
SqlParameter8 D
(D E
$strE P
,P Q
yearR V
)V W
,W X
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ‘
,
‘ ’
objSqlParameter
“ Ά
)
Ά £
)
£ ¤
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{   '
IncorrectQuestionDetailsDTO!! /
inCorrectListBO!!0 ?
=!!@ A
new!!B E'
IncorrectQuestionDetailsDTO!!F a
(!!a b
)!!b c
;!!c d
object"" 
	examidObj"" $
=""% &
objSqlDataReader""' 7
[""7 8
$str""8 @
]""@ A
;""A B
inCorrectListBO## #
.### $
ExamId##$ *
=##+ ,
	examidObj##- 6
is##7 9
DBNull##: @
?##A B
$num##C D
:##E F
Convert##G N
.##N O
ToInt32##O V
(##V W
objSqlDataReader##W g
[##g h
$str##h p
]##p q
)##q r
;##r s
object%% 
questionIdObj%% (
=%%) *
objSqlDataReader%%+ ;
[%%; <
$str%%< H
]%%H I
;%%I J
inCorrectListBO&& #
.&&# $

QuestionId&&$ .
=&&/ 0
questionIdObj&&1 >
is&&? A
DBNull&&B H
?&&I J
$num&&K L
:&&M N
Convert&&O V
.&&V W
ToInt32&&W ^
(&&^ _
objSqlDataReader&&_ o
[&&o p
$str&&p |
]&&| }
)&&} ~
;&&~ 
object(( 
questionIdCountObj(( -
=((. /
objSqlDataReader((0 @
[((@ A
$str((A N
]((N O
;((O P
inCorrectListBO)) #
.))# $
QuestionIdCount))$ 3
=))4 5
questionIdCountObj))6 H
is))I K
DBNull))L R
?))S T
$num))U V
:))W X
Convert))Y `
.))` a
ToInt32))a h
())h i
objSqlDataReader))i y
[))y z
$str	))z ‡
]
))‡ 
)
)) ‰
;
))‰ 
object++ 
subspecialtyObj++ *
=+++ ,
objSqlDataReader++- =
[++= >
$str++> L
]++L M
;++M N
inCorrectListBO,, #
.,,# $
Subspecialty,,$ 0
=,,1 2
questionIdCountObj,,3 E
is,,F H
DBNull,,I O
?,,P Q
string,,R X
.,,X Y
Empty,,Y ^
:,,_ `
Convert,,a h
.,,h i
ToString,,i q
(,,q r
objSqlDataReader	,,r ‚
[
,,‚ ƒ
$str
,,ƒ ‘
]
,,‘ ’
)
,,’ “
;
,,“ ”
object.. 

sectionObj.. %
=..& '
objSqlDataReader..( 8
[..8 9
$str..9 B
]..B C
;..C D
inCorrectListBO// #
.//# $
Section//$ +
=//, -

sectionObj//. 8
is//9 ;
DBNull//< B
?//C D
$num//E F
://G H
Convert//I P
.//P Q
ToInt32//Q X
(//X Y
objSqlDataReader//Y i
[//i j
$str//j s
]//s t
)//t u
;//u v
object11 
rownumberObj11 '
=11( )
objSqlDataReader11* :
[11: ;
$str11; F
]11F G
;11G H
inCorrectListBO22 #
.22# $
	Rownumber22$ -
=22. /
rownumberObj220 <
is22= ?
DBNull22@ F
?22G H
$num22I J
:22K L
Convert22M T
.22T U
ToInt3222U \
(22\ ]
objSqlDataReader22] m
[22m n
$str22n y
]22y z
)22z {
;22{ |
object44 
examtypeObj44 &
=44' (
objSqlDataReader44) 9
[449 :
$str44: D
]44D E
;44E F
inCorrectListBO55 #
.55# $
ExamType55$ ,
=55- .
examtypeObj55/ :
is55; =
DBNull55> D
?55E F
$num55G H
:55I J
Convert55K R
.55R S
ToInt3255S Z
(55Z [
objSqlDataReader55[ k
[55k l
$str55l v
]55v w
)55w x
;55x y
incorrectReportList77 '
.77' (
Add77( +
(77+ ,
inCorrectListBO77, ;
)77; <
;77< =
}88 
objSqlDataReader:: !
.::! "
Close::" '
(::' (
)::( )
;::) *
};; 
return== 
incorrectReportList== &
;==& '
}>> 	
public@@ 
static@@ 
int@@ !
GetAdminFirstQuestion@@ /
(@@/ 0
int@@0 3
?@@3 4
examId@@5 ;
)@@; <
{AA 	
intBB 

questionIdBB 
=BB 
$numBB 
;BB 
SqlConnectionCC 

connectionCC $
=CC% &
newCC' *
SqlConnectionCC+ 8
(CC8 9!
SqlConnectionProviderCC9 N
.CCN O
GetConnectionStringCCO b
(CCb c
DataAccessTypeCCc q
.CCq r
ReadCCr v
)CCv w
)CCw x
;CCx y
stringDD 
sqlQueryAllquestionDD &
=DD' (
stringDD) /
.DD/ 0
EmptyDD0 5
;DD5 6
sqlQueryAllquestionEE 
=EE  !
$strEE" c
+EEd e
@examIdEEf m
+EEn o
$str	EEp 
;
EE ‹

connectionFF 
.FF 
OpenFF 
(FF 
)FF 
;FF 

SqlCommandGG 
cmdGG 
=GG 
newGG  

SqlCommandGG! +
(GG+ ,
sqlQueryAllquestionGG, ?
,GG? @

connectionGGA K
)GGK L
;GGL M
usingHH 
(HH 
SqlDataReaderHH  
readerHH! '
=HH( )
cmdHH* -
.HH- .
ExecuteReaderHH. ;
(HH; <
)HH< =
)HH= >
{II 
ifJJ 
(JJ 
readerJJ 
.JJ 
HasRowsJJ "
)JJ" #
{KK 
whileMM 
(MM 
readerMM !
.MM! "
ReadMM" &
(MM& '
)MM' (
)MM( )
{NN 
objectOO 
objIDOO $
=OO% &
readerOO' -
[OO- .
$strOO. 2
]OO2 3
;OO3 4

questionIdPP "
=PP# $
objIDPP% *
isPP+ -
DBNullPP. 4
?PP5 6
$numPP7 8
:PP9 :
readerPP; A
.PPA B
GetInt32PPB J
(PPJ K
readerPPK Q
.PPQ R

GetOrdinalPPR \
(PP\ ]
$strPP] a
)PPa b
)PPb c
;PPc d
}QQ 
readerSS 
.SS 
CloseSS  
(SS  !
)SS! "
;SS" #
}TT 
}UU 

connectionWW 
.WW 
CloseWW 
(WW 
)WW 
;WW 
returnXX 

questionIdXX 
;XX 
}YY 	
public[[ 
static[[ 
List[[ 
<[[ 
string[[ !
>[[! "
GetAdminReferences[[# 5
([[5 6
int[[6 9

questionId[[: D
)[[D E
{\\ 	
List]] 
<]] 
string]] 
>]] 
referencesList]] '
=]]( )
new]]* -
List]]. 2
<]]2 3
string]]3 9
>]]9 :
(]]: ;
)]]; <
;]]< =
SqlConnection^^ 

connection^^ $
=^^% &
new^^' *
SqlConnection^^+ 8
(^^8 9!
SqlConnectionProvider^^9 N
.^^N O
GetConnectionString^^O b
(^^b c
DataAccessType^^c q
.^^q r
Read^^r v
)^^v w
)^^w x
;^^x y
string__ 
sqlQueryReference__ $
=__% &
string__' -
.__- .
Empty__. 3
;__3 4
sqlQueryReference`` 
=`` 
$str``  k
+``l m
@questionId``n y
;``y z

connectionaa 
.aa 
Openaa 
(aa 
)aa 
;aa 

SqlCommandbb 
cmdbb 
=bb 
newbb  

SqlCommandbb! +
(bb+ ,
sqlQueryReferencebb, =
,bb= >

connectionbb? I
)bbI J
;bbJ K
usingcc 
(cc 
SqlDataReadercc  
readercc! '
=cc( )
cmdcc* -
.cc- .
ExecuteReadercc. ;
(cc; <
)cc< =
)cc= >
{dd 
ifee 
(ee 
readeree 
.ee 
HasRowsee "
)ee" #
{ff 
whilehh 
(hh 
readerhh !
.hh! "
Readhh" &
(hh& '
)hh' (
)hh( )
{ii 
stringjj 
refertencesjj *
=jj+ ,
stringjj- 3
.jj3 4
Emptyjj4 9
;jj9 :
objectkk 
objkk "
=kk# $
readerkk% +
[kk+ ,
$strkk, 7
]kk7 8
;kk8 9
refertencesll #
=ll$ %
objll& )
isll* ,
DBNullll- 3
?ll4 5
stringll6 <
.ll< =
Emptyll= B
:llC D
readerllE K
.llK L
	GetStringllL U
(llU V
readerllV \
.ll\ ]

GetOrdinalll] g
(llg h
$strllh s
)lls t
)llt u
;llu v
referencesListmm &
.mm& '
Addmm' *
(mm* +
refertencesmm+ 6
)mm6 7
;mm7 8
}nn 
readerpp 
.pp 
Closepp  
(pp  !
)pp! "
;pp" #
}qq 
}rr 

connectiontt 
.tt 
Closett 
(tt 
)tt 
;tt 
returnuu 
referencesListuu !
;uu! "
}vv 	
publicxx 
staticxx 
Listxx 
<xx 
stringxx !
>xx! ""
GetAdminRelatedContentxx# 9
(xx9 :
intxx: =

questionIdxx> H
,xxH I
SqlConnectionxxJ W
gConnectionxxX c
=xxd e
nullxxf j
)xxj k
{yy 	
Listzz 
<zz 
stringzz 
>zz 
relatedContent_Listzz ,
=zz- .
newzz/ 2
Listzz3 7
<zz7 8
stringzz8 >
>zz> ?
(zz? @
)zz@ A
;zzA B
SqlConnection{{ 

connection{{ $
={{% &
gConnection{{' 2
;{{2 3
if|| 
(|| 
gConnection|| 
==|| 
null|| #
)||# $
{}} 

connection~~ 
=~~ 
new~~  
SqlConnection~~! .
(~~. /!
SqlConnectionProvider~~/ D
.~~D E
GetConnectionString~~E X
(~~X Y
DataAccessType~~Y g
.~~g h
Read~~h l
)~~l m
)~~m n
;~~n o

connection 
. 
Open 
(  
)  !
;! "
}
€€ 

SqlCommand
‚‚ 
cmd
‚‚ 
=
‚‚ 
new
‚‚  

SqlCommand
‚‚! +
(
‚‚+ ,
$str
‚‚, D
,
‚‚D E

connection
‚‚F P
)
‚‚P Q
;
‚‚Q R
cmd
ƒƒ 
.
ƒƒ 
CommandType
ƒƒ 
=
ƒƒ 
CommandType
ƒƒ )
.
ƒƒ) *
StoredProcedure
ƒƒ* 9
;
ƒƒ9 :
cmd
„„ 
.
„„ 

Parameters
„„ 
.
„„ 
Add
„„ 
(
„„ 
new
„„ "
SqlParameter
„„# /
(
„„/ 0
$str
„„0 >
,
„„> ?

questionId
„„@ J
)
„„J K
)
„„K L
;
„„L M
using
†† 
(
†† 
SqlDataReader
††  
reader
††! '
=
††( )
cmd
††* -
.
††- .
ExecuteReader
††. ;
(
††; <
)
††< =
)
††= >
{
‡‡ 
if
 
(
 
reader
 
.
 
HasRows
 "
)
" #
{
‰‰ 
while
‹‹ 
(
‹‹ 
reader
‹‹ !
.
‹‹! "
Read
‹‹" &
(
‹‹& '
)
‹‹' (
)
‹‹( )
{
 
string
 
content
 &
=
' (
string
) /
.
/ 0
Empty
0 5
;
5 6
object
 

contentObj
 )
=
* +
reader
, 2
[
2 3
$str
3 =
]
= >
;
> ?
content
 
=
  !

contentObj
" ,
is
- /
DBNull
0 6
?
7 8
string
9 ?
.
? @
Empty
@ E
:
F G
reader
H N
.
N O
	GetString
O X
(
X Y
reader
Y _
.
_ `

GetOrdinal
` j
(
j k
$str
k u
)
u v
)
v w
;
w x!
relatedContent_List
 +
.
+ ,
Add
, /
(
/ 0
content
0 7
)
7 8
;
8 9
}
‘‘ 
reader
““ 
.
““ 
Close
““  
(
““  !
)
““! "
;
““" #
}
”” 
}
•• 
if
—— 
(
—— 
gConnection
—— 
==
—— 
null
—— #
)
——# $
{
 

connection
™™ 
.
™™ 
Close
™™  
(
™™  !
)
™™! "
;
™™" #
}
 
return
 !
relatedContent_List
 &
;
& '
}
 	
public
 
static
 
List
 
<
 
string
 !
>
! "
GetAdminNotes
# 0
(
0 1
int
1 4

questionId
5 ?
,
? @
int
A D
userId
E K
)
K L
{
   	
List
΅΅ 
<
΅΅ 
string
΅΅ 
>
΅΅ 
	notesList
΅΅ "
=
΅΅# $
new
΅΅% (
List
΅΅) -
<
΅΅- .
string
΅΅. 4
>
΅΅4 5
(
΅΅5 6
)
΅΅6 7
;
΅΅7 8
SqlConnection
ΆΆ 

connection
ΆΆ $
=
ΆΆ% &
new
ΆΆ' *
SqlConnection
ΆΆ+ 8
(
ΆΆ8 9#
SqlConnectionProvider
ΆΆ9 N
.
ΆΆN O!
GetConnectionString
ΆΆO b
(
ΆΆb c
DataAccessType
ΆΆc q
.
ΆΆq r
Read
ΆΆr v
)
ΆΆv w
)
ΆΆw x
;
ΆΆx y
string
££ !
sqlQueryAllquestion
££ &
=
££' (
string
££) /
.
££/ 0
Empty
££0 5
;
££5 6!
sqlQueryAllquestion
¤¤ 
=
¤¤  !
$str
¤¤" j
+
¤¤k l
@questionId
¤¤m x
;
¤¤x y

connection
¥¥ 
.
¥¥ 
Open
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 

SqlCommand
¦¦ 
cmd
¦¦ 
=
¦¦ 
new
¦¦  

SqlCommand
¦¦! +
(
¦¦+ ,!
sqlQueryAllquestion
¦¦, ?
,
¦¦? @

connection
¦¦A K
)
¦¦K L
;
¦¦L M
using
§§ 
(
§§ 
SqlDataReader
§§  
reader
§§! '
=
§§( )
cmd
§§* -
.
§§- .
ExecuteReader
§§. ;
(
§§; <
)
§§< =
)
§§= >
{
¨¨ 
if
©© 
(
©© 
reader
©© 
.
©© 
HasRows
©© "
)
©©" #
{
ªª 
while
¬¬ 
(
¬¬ 
reader
¬¬ !
.
¬¬! "
Read
¬¬" &
(
¬¬& '
)
¬¬' (
)
¬¬( )
{
­­ 
string
®® 
notes
®® $
=
®®% &
string
®®' -
.
®®- .
Empty
®®. 3
;
®®3 4
object
―― 
objNotes
―― '
=
――( )
reader
――* 0
[
――0 1
$str
――1 8
]
――8 9
;
――9 :
notes
°° 
=
°° 
objNotes
°°  (
is
°°) +
DBNull
°°, 2
?
°°3 4
string
°°5 ;
.
°°; <
Empty
°°< A
:
°°B C
reader
°°D J
.
°°J K
	GetString
°°K T
(
°°T U
reader
°°U [
.
°°[ \

GetOrdinal
°°\ f
(
°°f g
$str
°°g n
)
°°n o
)
°°o p
;
°°p q
	notesList
±± !
.
±±! "
Add
±±" %
(
±±% &
notes
±±& +
)
±±+ ,
;
±±, -
}
²² 
reader
΄΄ 
.
΄΄ 
Close
΄΄  
(
΄΄  !
)
΄΄! "
;
΄΄" #
}
µµ 
}
¶¶ 

connection
ΈΈ 
.
ΈΈ 
Close
ΈΈ 
(
ΈΈ 
)
ΈΈ 
;
ΈΈ 
return
ΉΉ 
	notesList
ΉΉ 
;
ΉΉ 
}
ΊΊ 	
public
ΌΌ 
static
ΌΌ 
int
ΌΌ #
GetAdminQuestionCount
ΌΌ /
(
ΌΌ/ 0
int
ΌΌ0 3
examId
ΌΌ4 :
)
ΌΌ: ;
{
½½ 	
int
ΎΎ 
result
ΎΎ 
=
ΎΎ 
$num
ΎΎ 
;
ΎΎ 
SqlParameter
ΏΏ 
[
ΏΏ 
]
ΏΏ 
arrSqlParameter
ΏΏ *
=
ΏΏ+ ,
{
ΐΐ 
new
ΑΑ 
SqlParameter
ΑΑ $
(
ΑΑ$ %
$str
ΑΑ% .
,
ΑΑ. /
examId
ΑΑ0 6
)
ΑΑ6 7
,
ΑΑ7 8
}
ΒΒ 
;
ΒΒ 
using
ΓΓ 
(
ΓΓ 
SqlDataReader
ΓΓ  
objSqlDataReader
ΓΓ! 1
=
ΓΓ2 3
	SqlHelper
ΓΓ4 =
.
ΓΓ= >
ExecuteReader
ΓΓ> K
(
ΓΓK L#
SqlConnectionProvider
ΔΔ %
.
ΔΔ% &!
GetConnectionString
ΔΔ& 9
(
ΔΔ9 :
DataAccessType
ΔΔ: H
.
ΔΔH I
Read
ΔΔI M
)
ΔΔM N
,
ΔΔN O
CommandType
ΔΔP [
.
ΔΔ[ \
StoredProcedure
ΔΔ\ k
,
ΔΔk l
$strΔΔm 
,ΔΔ ‰
arrSqlParameterΔΔ ™
)ΔΔ™ 
)ΔΔ ›
{
ΕΕ 
if
ΖΖ 
(
ΖΖ 
objSqlDataReader
ΖΖ $
.
ΖΖ$ %
HasRows
ΖΖ% ,
)
ΖΖ, -
{
ΗΗ 
while
ΘΘ 
(
ΘΘ 
objSqlDataReader
ΘΘ +
.
ΘΘ+ ,
Read
ΘΘ, 0
(
ΘΘ0 1
)
ΘΘ1 2
)
ΘΘ2 3
{
ΙΙ 
object
ΚΚ 
objQuestionCount
ΚΚ /
=
ΚΚ0 1
objSqlDataReader
ΚΚ2 B
[
ΚΚB C
$str
ΚΚC R
]
ΚΚR S
;
ΚΚS T
result
ΛΛ 
=
ΛΛ  
objQuestionCount
ΛΛ! 1
is
ΛΛ2 4
DBNull
ΛΛ5 ;
?
ΛΛ< =
$num
ΛΛ> ?
:
ΛΛ@ A
Convert
ΛΛB I
.
ΛΛI J
ToInt32
ΛΛJ Q
(
ΛΛQ R
objSqlDataReader
ΛΛR b
[
ΛΛb c
$str
ΛΛc r
]
ΛΛr s
)
ΛΛs t
;
ΛΛt u
}
ΜΜ 
objSqlDataReader
ΞΞ $
.
ΞΞ$ %
Close
ΞΞ% *
(
ΞΞ* +
)
ΞΞ+ ,
;
ΞΞ, -
}
ΟΟ 
}
ΠΠ 
return
ÒÒ 
result
ÒÒ 
;
ÒÒ 
}
ΣΣ 	
public
ΥΥ 
static
ΥΥ 
List
ΥΥ 
<
ΥΥ 
PeerDetailVM
ΥΥ '
>
ΥΥ' (!
GetAdminPeerDetails
ΥΥ) <
(
ΥΥ< =
int
ΥΥ= @

questionId
ΥΥA K
,
ΥΥK L
int
ΥΥM P
userId
ΥΥQ W
)
ΥΥW X
{
ΦΦ 	
List
ΧΧ 
<
ΧΧ 
PeerDetailVM
ΧΧ 
>
ΧΧ 
peerDetailsList
ΧΧ .
=
ΧΧ/ 0
new
ΧΧ1 4
List
ΧΧ5 9
<
ΧΧ9 :
PeerDetailVM
ΧΧ: F
>
ΧΧF G
(
ΧΧG H
)
ΧΧH I
;
ΧΧI J
SqlParameter
ΨΨ 
[
ΨΨ 
]
ΨΨ 
arrSqlParameter
ΨΨ *
=
ΨΨ+ ,
{
ΩΩ 
new
ΪΪ 
SqlParameter
ΪΪ $
(
ΪΪ$ %
$str
ΪΪ% 2
,
ΪΪ2 3

questionId
ΪΪ4 >
)
ΪΪ> ?
,
ΪΪ? @
new
ΫΫ 
SqlParameter
ΫΫ $
(
ΫΫ$ %
$str
ΫΫ% .
,
ΫΫ. /
userId
ΫΫ0 6
)
ΫΫ6 7
,
ΫΫ7 8
}
άά 
;
άά 
using
έέ 
(
έέ 
SqlDataReader
έέ  
objSqlDataReader
έέ! 1
=
έέ2 3
	SqlHelper
έέ4 =
.
έέ= >
ExecuteReader
έέ> K
(
έέK L#
SqlConnectionProvider
ήή %
.
ήή% &!
GetConnectionString
ήή& 9
(
ήή9 :
DataAccessType
ήή: H
.
ήήH I
Read
ήήI M
)
ήήM N
,
ήήN O
CommandType
ήήP [
.
ήή[ \
StoredProcedure
ήή\ k
,
ήήk l
$strήήm †
,ήή† ‡
arrSqlParameterήή —
)ήή— 
)ήή ™
{
ίί 
if
ΰΰ 
(
ΰΰ 
objSqlDataReader
ΰΰ $
.
ΰΰ$ %
HasRows
ΰΰ% ,
)
ΰΰ, -
{
αα 
while
ββ 
(
ββ 
objSqlDataReader
ββ +
.
ββ+ ,
Read
ββ, 0
(
ββ0 1
)
ββ1 2
)
ββ2 3
{
γγ 
PeerDetailVM
δδ $

peerDetail
δδ% /
=
δδ0 1
new
δδ2 5
PeerDetailVM
δδ6 B
(
δδB C
)
δδC D
;
δδD E
object
εε  
choiceSequendceObj
εε 1
=
εε2 3
objSqlDataReader
εε4 D
[
εεD E
$str
εεE U
]
εεU V
;
εεV W

peerDetail
ζζ "
.
ζζ" #
ChoiceSequence
ζζ# 1
=
ζζ2 3 
choiceSequendceObj
ζζ4 F
is
ζζG I
DBNull
ζζJ P
?
ζζQ R
$num
ζζS T
:
ζζU V
Convert
ζζW ^
.
ζζ^ _
ToInt32
ζζ_ f
(
ζζf g
objSqlDataReader
ζζg w
[
ζζw x
$strζζx 
]ζζ ‰
)ζζ‰ 
;ζζ ‹
object
ηη 
choiceOptionObj
ηη .
=
ηη/ 0
objSqlDataReader
ηη1 A
[
ηηA B
$str
ηηB J
]
ηηJ K
;
ηηK L

peerDetail
θθ "
.
θθ" #
ChoiceOption
θθ# /
=
θθ0 1
choiceOptionObj
θθ2 A
is
θθB D
DBNull
θθE K
?
θθL M
$char
θθN R
:
θθS T
Convert
θθU \
.
θθ\ ]
ToChar
θθ] c
(
θθc d
objSqlDataReader
θθd t
[
θθt u
$str
θθu }
]
θθ} ~
)
θθ~ 
;θθ €
object
ιι 
choiceIdObj
ιι *
=
ιι+ ,
objSqlDataReader
ιι- =
[
ιι= >
$str
ιι> I
]
ιιI J
;
ιιJ K

peerDetail
κκ "
.
κκ" #
ChoiceId
κκ# +
=
κκ, -
choiceIdObj
κκ. 9
is
κκ: <
DBNull
κκ= C
?
κκD E
$num
κκF G
:
κκH I
Convert
κκJ Q
.
κκQ R
ToInt32
κκR Y
(
κκY Z
objSqlDataReader
κκZ j
[
κκj k
$str
κκk v
]
κκv w
)
κκw x
;
κκx y
object
λλ 
isRightChoiceObj
λλ /
=
λλ0 1
objSqlDataReader
λλ2 B
[
λλB C
$str
λλC R
]
λλR S
;
λλS T

peerDetail
μμ "
.
μμ" #
IsRightChoice
μμ# 0
=
μμ1 2
isRightChoiceObj
μμ3 C
is
μμD F
DBNull
μμG M
?
μμN O
false
μμP U
:
μμV W
Convert
μμX _
.
μμ_ `
	ToBoolean
μμ` i
(
μμi j
objSqlDataReader
μμj z
[
μμz {
$strμμ{ 
]μμ ‹
)μμ‹ 
;μμ 
object
νν 
percentageObj
νν ,
=
νν- .
objSqlDataReader
νν/ ?
[
νν? @
$str
νν@ L
]
ννL M
;
ννM N

peerDetail
ξξ "
.
ξξ" #
ChoicePercentage
ξξ# 3
=
ξξ4 5
percentageObj
ξξ6 C
is
ξξD F
DBNull
ξξG M
?
ξξN O
$num
ξξP Q
:
ξξR S
Convert
ξξT [
.
ξξ[ \
ToDouble
ξξ\ d
(
ξξd e
objSqlDataReader
ξξe u
[
ξξu v
$strξξv ‚
]ξξ‚ ƒ
)ξξƒ „
;ξξ„ …
object
οο 
usertypeObj
οο *
=
οο+ ,
objSqlDataReader
οο- =
[
οο= >
$str
οο> H
]
οοH I
;
οοI J

peerDetail
ππ "
.
ππ" #
UserType
ππ# +
=
ππ, -
usertypeObj
ππ. 9
is
ππ: <
DBNull
ππ= C
?
ππD E
$num
ππF G
:
ππH I
Convert
ππJ Q
.
ππQ R
ToInt32
ππR Y
(
ππY Z
objSqlDataReader
ππZ j
[
ππj k
$str
ππk u
]
ππu v
)
ππv w
;
ππw x
peerDetailsList
ρρ '
.
ρρ' (
Add
ρρ( +
(
ρρ+ ,

peerDetail
ρρ, 6
)
ρρ6 7
;
ρρ7 8
}
ςς 
objSqlDataReader
ττ $
.
ττ$ %
Close
ττ% *
(
ττ* +
)
ττ+ ,
;
ττ, -
}
υυ 
}
φφ 
return
ψψ 
peerDetailsList
ψψ "
;
ψψ" #
}
ωω 	
public
ϋϋ 
static
ϋϋ 
bool
ϋϋ  
GetAdminMarkStatus
ϋϋ -
(
ϋϋ- .
int
ϋϋ. 1
?
ϋϋ1 2
examId
ϋϋ3 9
,
ϋϋ9 :
int
ϋϋ; >
?
ϋϋ> ?

questionId
ϋϋ@ J
)
ϋϋJ K
{
όό 	
bool
ύύ 

markStatus
ύύ 
=
ύύ 
false
ύύ #
;
ύύ# $
SqlParameter
ώώ 
[
ώώ 
]
ώώ 
arrSqlParameter
ώώ *
=
ώώ+ ,
{
ÿÿ 
new
€€ 
SqlParameter
€€ $
(
€€$ %
$str
€€% .
,
€€. /
Convert
€€0 7
.
€€7 8
ToInt32
€€8 ?
(
€€? @
examId
€€@ F
)
€€F G
)
€€G H
,
€€H I
new
 
SqlParameter
 $
(
$ %
$str
% 2
,
2 3
Convert
4 ;
.
; <
ToInt32
< C
(
C D

questionId
D N
)
N O
)
O P
,
P Q
}
‚‚ 
;
‚‚ 
using
ƒƒ 
(
ƒƒ 
SqlDataReader
ƒƒ  
objSqlDataReader
ƒƒ! 1
=
ƒƒ2 3
	SqlHelper
ƒƒ4 =
.
ƒƒ= >
ExecuteReader
ƒƒ> K
(
ƒƒK L#
SqlConnectionProvider
„„ %
.
„„% &!
GetConnectionString
„„& 9
(
„„9 :
DataAccessType
„„: H
.
„„H I
Read
„„I M
)
„„M N
,
„„N O
CommandType
„„P [
.
„„[ \
StoredProcedure
„„\ k
,
„„k l
$str„„m …
,„„… †
arrSqlParameter„„‡ –
)„„– —
)„„— 
{
…… 
if
†† 
(
†† 
objSqlDataReader
†† $
.
††$ %
HasRows
††% ,
)
††, -
{
‡‡ 
while
 
(
 
objSqlDataReader
 +
.
+ ,
Read
, 0
(
0 1
)
1 2
)
2 3
{
‰‰ 
object
 
objMarkStatus
 ,
=
- .
objSqlDataReader
/ ?
[
? @
$str
@ L
]
L M
;
M N

markStatus
‹‹ "
=
‹‹# $
objMarkStatus
‹‹% 2
is
‹‹3 5
DBNull
‹‹6 <
?
‹‹= >
false
‹‹? D
:
‹‹E F
Convert
‹‹G N
.
‹‹N O
	ToBoolean
‹‹O X
(
‹‹X Y
objSqlDataReader
‹‹Y i
[
‹‹i j
$str
‹‹j v
]
‹‹v w
)
‹‹w x
;
‹‹x y
}
 
objSqlDataReader
 $
.
$ %
Close
% *
(
* +
)
+ ,
;
, -
}
 
return
‘‘ 

markStatus
‘‘ !
;
‘‘! "
}
’’ 
}
““ 	
public
•• 
static
•• 
string
•• +
GetAdminExamAttemptAnswerText
•• :
(
••: ;
int
••; >
?
••> ?
examId
••@ F
,
••F G
int
••H K
?
••K L

questionId
••M W
)
••W X
{
–– 	
string
—— #
examAttemptAnswerText
—— (
=
——) *
string
——+ 1
.
——1 2
Empty
——2 7
;
——7 8
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
™™ 
new
 
SqlParameter
 $
(
$ %
$str
% .
,
. /
Convert
0 7
.
7 8
ToInt32
8 ?
(
? @
examId
@ F
)
F G
)
G H
,
H I
new
›› 
SqlParameter
›› $
(
››$ %
$str
››% 2
,
››2 3
Convert
››4 ;
.
››; <
ToInt32
››< C
(
››C D

questionId
››D N
)
››N O
)
››O P
,
››P Q
}
 
;
 
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm 
, ‘
arrSqlParameter’ ΅
)΅ Ά
)Ά £
{
 
if
   
(
   
objSqlDataReader
   $
.
  $ %
HasRows
  % ,
)
  , -
{
΅΅ 
while
ΆΆ 
(
ΆΆ 
objSqlDataReader
ΆΆ +
.
ΆΆ+ ,
Read
ΆΆ, 0
(
ΆΆ0 1
)
ΆΆ1 2
)
ΆΆ2 3
{
££ 
object
¤¤ &
objExamAttemptAnswerText
¤¤ 7
=
¤¤8 9
objSqlDataReader
¤¤: J
[
¤¤J K
$str
¤¤K b
]
¤¤b c
;
¤¤c d#
examAttemptAnswerText
¥¥ -
=
¥¥. /&
objExamAttemptAnswerText
¥¥0 H
is
¥¥I K
DBNull
¥¥L R
?
¥¥S T
string
¥¥U [
.
¥¥[ \
Empty
¥¥\ a
:
¥¥b c
Convert
¥¥d k
.
¥¥k l
ToString
¥¥l t
(
¥¥t u
objSqlDataReader¥¥u …
[¥¥… †
$str¥¥† 
]¥¥ 
)¥¥ 
;¥¥  
}
¦¦ 
objSqlDataReader
¨¨ $
.
¨¨$ %
Close
¨¨% *
(
¨¨* +
)
¨¨+ ,
;
¨¨, -
}
©© 
return
«« #
examAttemptAnswerText
«« ,
;
««, -
}
¬¬ 
}
­­ 	
public
―― 
static
―― 
QuestionDetails
―― %%
GetAdminQuestionDetails
――& =
(
――= >
int
――> A
?
――A B
examId
――C I
,
――I J
int
――K N
?
――N O

questionId
――P Z
)
――Z [
{
°° 	
QuestionDetails
±± 
questionDetail
±± *
=
±±+ ,
new
±±- 0
QuestionDetails
±±1 @
(
±±@ A
)
±±A B
;
±±B C
SqlParameter
²² 
[
²² 
]
²² 
arrSqlParameter
²² *
=
²²+ ,
{
³³ 
new
΄΄ 
SqlParameter
΄΄ $
(
΄΄$ %
$str
΄΄% .
,
΄΄. /
Convert
΄΄0 7
.
΄΄7 8
ToInt32
΄΄8 ?
(
΄΄? @
examId
΄΄@ F
)
΄΄F G
)
΄΄G H
,
΄΄H I
new
µµ 
SqlParameter
µµ $
(
µµ$ %
$str
µµ% 2
,
µµ2 3
Convert
µµ4 ;
.
µµ; <
ToInt32
µµ< C
(
µµC D

questionId
µµD N
)
µµN O
)
µµO P
,
µµP Q
}
¶¶ 
;
¶¶ 
using
·· 
(
·· 
SqlDataReader
··  
objSqlDataReader
··! 1
=
··2 3
	SqlHelper
··4 =
.
··= >
ExecuteReader
··> K
(
··K L#
SqlConnectionProvider
ΈΈ %
.
ΈΈ% &!
GetConnectionString
ΈΈ& 9
(
ΈΈ9 :
DataAccessType
ΈΈ: H
.
ΈΈH I
Read
ΈΈI M
)
ΈΈM N
,
ΈΈN O
CommandType
ΈΈP [
.
ΈΈ[ \
StoredProcedure
ΈΈ\ k
,
ΈΈk l
$strΈΈm 
,ΈΈ ‹
arrSqlParameterΈΈ ›
)ΈΈ› 
)ΈΈ 
{
ΉΉ 
while
ΊΊ 
(
ΊΊ 
objSqlDataReader
ΊΊ '
.
ΊΊ' (
Read
ΊΊ( ,
(
ΊΊ, -
)
ΊΊ- .
)
ΊΊ. /
{
»» 
questionDetail
ΌΌ "
.
ΌΌ" #

questionId
ΌΌ# -
=
ΌΌ. /
Convert
ΌΌ0 7
.
ΌΌ7 8
ToInt32
ΌΌ8 ?
(
ΌΌ? @
objSqlDataReader
ΌΌ@ P
[
ΌΌP Q
$str
ΌΌQ ]
]
ΌΌ] ^
)
ΌΌ^ _
;
ΌΌ_ `
object
½½ 
prevQuestionIdObj
½½ ,
=
½½- .
objSqlDataReader
½½/ ?
[
½½? @
$str
½½@ P
]
½½P Q
;
½½Q R
questionDetail
ΎΎ "
.
ΎΎ" #

previousId
ΎΎ# -
=
ΎΎ. /
prevQuestionIdObj
ΎΎ0 A
is
ΎΎB D
DBNull
ΎΎE K
?
ΎΎL M
-
ΎΎN O
$num
ΎΎO P
:
ΎΎQ R
Convert
ΎΎS Z
.
ΎΎZ [
ToInt32
ΎΎ[ b
(
ΎΎb c
objSqlDataReader
ΎΎc s
[
ΎΎs t
$strΎΎt „
]ΎΎ„ …
)ΎΎ… †
;ΎΎ† ‡
object
ΏΏ 
nextQuestionIdObj
ΏΏ ,
=
ΏΏ- .
objSqlDataReader
ΏΏ/ ?
[
ΏΏ? @
$str
ΏΏ@ P
]
ΏΏP Q
;
ΏΏQ R
questionDetail
ΐΐ "
.
ΐΐ" #
nextId
ΐΐ# )
=
ΐΐ* +
nextQuestionIdObj
ΐΐ, =
is
ΐΐ> @
DBNull
ΐΐA G
?
ΐΐH I
-
ΐΐJ K
$num
ΐΐK L
:
ΐΐM N
Convert
ΐΐO V
.
ΐΐV W
ToInt32
ΐΐW ^
(
ΐΐ^ _
objSqlDataReader
ΐΐ_ o
[
ΐΐo p
$strΐΐp €
]ΐΐ€ 
)ΐΐ ‚
;ΐΐ‚ ƒ
object
ΑΑ 
serialNumberObj
ΑΑ *
=
ΑΑ+ ,
objSqlDataReader
ΑΑ- =
[
ΑΑ= >
$str
ΑΑ> L
]
ΑΑL M
;
ΑΑM N
questionDetail
ΒΒ "
.
ΒΒ" #
serialNumber
ΒΒ# /
=
ΒΒ0 1
serialNumberObj
ΒΒ2 A
is
ΒΒB D
DBNull
ΒΒE K
?
ΒΒL M
$num
ΒΒN O
:
ΒΒP Q
Convert
ΒΒR Y
.
ΒΒY Z
ToInt32
ΒΒZ a
(
ΒΒa b
objSqlDataReader
ΒΒb r
[
ΒΒr s
$strΒΒs 
]ΒΒ ‚
)ΒΒ‚ ƒ
;ΒΒƒ „
object
ΓΓ 
stemObj
ΓΓ "
=
ΓΓ# $
objSqlDataReader
ΓΓ% 5
[
ΓΓ5 6
$str
ΓΓ6 <
]
ΓΓ< =
;
ΓΓ= >
questionDetail
ΔΔ "
.
ΔΔ" #
questionText
ΔΔ# /
=
ΔΔ0 1
stemObj
ΔΔ2 9
is
ΔΔ: <
DBNull
ΔΔ= C
?
ΔΔD E
null
ΔΔF J
:
ΔΔK L
Convert
ΔΔM T
.
ΔΔT U
ToString
ΔΔU ]
(
ΔΔ] ^
objSqlDataReader
ΔΔ^ n
[
ΔΔn o
$str
ΔΔo u
]
ΔΔu v
)
ΔΔv w
;
ΔΔw x
object
ΕΕ 
friendlyidobj
ΕΕ (
=
ΕΕ) *
objSqlDataReader
ΕΕ+ ;
[
ΕΕ; <
$str
ΕΕ< H
]
ΕΕH I
;
ΕΕI J
questionDetail
ΖΖ "
.
ΖΖ" #

FriendlyId
ΖΖ# -
=
ΖΖ. /
friendlyidobj
ΖΖ0 =
is
ΖΖ> @
DBNull
ΖΖA G
?
ΖΖH I
$num
ΖΖJ K
:
ΖΖL M
Convert
ΖΖN U
.
ΖΖU V
ToInt32
ΖΖV ]
(
ΖΖ] ^
objSqlDataReader
ΖΖ^ n
[
ΖΖn o
$str
ΖΖo {
]
ΖΖ{ |
)
ΖΖ| }
;
ΖΖ} ~
object
ΗΗ $
notRandomizeAnswersobj
ΗΗ 1
=
ΗΗ2 3
objSqlDataReader
ΗΗ4 D
[
ΗΗD E
$str
ΗΗE Z
]
ΗΗZ [
;
ΗΗ[ \
questionDetail
ΘΘ "
.
ΘΘ" # 
NotRandomizeAnswer
ΘΘ# 5
=
ΘΘ6 7$
notRandomizeAnswersobj
ΘΘ8 N
is
ΘΘO Q
DBNull
ΘΘR X
?
ΘΘY Z
false
ΘΘ[ `
:
ΘΘa b
Convert
ΘΘc j
.
ΘΘj k
	ToBoolean
ΘΘk t
(
ΘΘt u
objSqlDataReaderΘΘu …
[ΘΘ… †
$strΘΘ† ›
]ΘΘ› 
)ΘΘ 
;ΘΘ 
}
ΙΙ 
objSqlDataReader
ΛΛ  
.
ΛΛ  !
Close
ΛΛ! &
(
ΛΛ& '
)
ΛΛ' (
;
ΛΛ( )
List
ΜΜ 
<
ΜΜ 
QuestionImage
ΜΜ "
>
ΜΜ" #
questionImageList
ΜΜ$ 5
=
ΜΜ6 7
new
ΜΜ8 ;
List
ΜΜ< @
<
ΜΜ@ A
QuestionImage
ΜΜA N
>
ΜΜN O
(
ΜΜO P
)
ΜΜP Q
;
ΜΜQ R
questionImageList
ΝΝ !
=
ΝΝ" #
AssessmentDAL
ΝΝ$ 1
.
ΝΝ1 2"
GetQuestionImageList
ΝΝ2 F
(
ΝΝF G

questionId
ΝΝG Q
)
ΝΝQ R
;
ΝΝR S
questionDetail
ΞΞ 
.
ΞΞ 
questionImage
ΞΞ ,
=
ΞΞ- .
questionImageList
ΞΞ/ @
;
ΞΞ@ A
return
ΟΟ 
questionDetail
ΟΟ %
;
ΟΟ% &
}
ΠΠ 
}
ΡΡ 	
public
ΣΣ 
static
ΣΣ 
QuestionDetails
ΣΣ %(
GetAdminQuestionDetails_SR
ΣΣ& @
(
ΣΣ@ A
int
ΣΣA D
?
ΣΣD E
examId
ΣΣF L
,
ΣΣL M
int
ΣΣN Q
?
ΣΣQ R

questionId
ΣΣS ]
)
ΣΣ] ^
{
ΤΤ 	
QuestionDetails
ΥΥ 
questionDetail
ΥΥ *
=
ΥΥ+ ,
new
ΥΥ- 0
QuestionDetails
ΥΥ1 @
(
ΥΥ@ A
)
ΥΥA B
;
ΥΥB C
SqlParameter
ΦΦ 
[
ΦΦ 
]
ΦΦ 
arrSqlParameter
ΦΦ *
=
ΦΦ+ ,
{
ΧΧ 
new
ΨΨ 
SqlParameter
ΨΨ $
(
ΨΨ$ %
$str
ΨΨ% .
,
ΨΨ. /
Convert
ΨΨ0 7
.
ΨΨ7 8
ToInt32
ΨΨ8 ?
(
ΨΨ? @
examId
ΨΨ@ F
)
ΨΨF G
)
ΨΨG H
,
ΨΨH I
new
ΩΩ 
SqlParameter
ΩΩ $
(
ΩΩ$ %
$str
ΩΩ% 2
,
ΩΩ2 3
Convert
ΩΩ4 ;
.
ΩΩ; <
ToInt32
ΩΩ< C
(
ΩΩC D

questionId
ΩΩD N
)
ΩΩN O
)
ΩΩO P
,
ΩΩP Q
}
ΪΪ 
;
ΪΪ 
using
ΫΫ 
(
ΫΫ 
SqlDataReader
ΫΫ  
objSqlDataReader
ΫΫ! 1
=
ΫΫ2 3
	SqlHelper
ΫΫ4 =
.
ΫΫ= >
ExecuteReader
ΫΫ> K
(
ΫΫK L#
SqlConnectionProvider
άά %
.
άά% &!
GetConnectionString
άά& 9
(
άά9 :
DataAccessType
άά: H
.
άάH I
Read
άάI M
)
άάM N
,
άάN O
CommandType
άάP [
.
άά[ \
StoredProcedure
άά\ k
,
άάk l
$strάάm 
,άά 
arrSqlParameterάά 
)άά 
)άά  
{
έέ 
while
ήή 
(
ήή 
objSqlDataReader
ήή '
.
ήή' (
Read
ήή( ,
(
ήή, -
)
ήή- .
)
ήή. /
{
ίί 
questionDetail
ΰΰ "
.
ΰΰ" #

questionId
ΰΰ# -
=
ΰΰ. /
Convert
ΰΰ0 7
.
ΰΰ7 8
ToInt32
ΰΰ8 ?
(
ΰΰ? @
objSqlDataReader
ΰΰ@ P
[
ΰΰP Q
$str
ΰΰQ ]
]
ΰΰ] ^
)
ΰΰ^ _
;
ΰΰ_ `
object
εε 
serialNumberObj
εε *
=
εε+ ,
objSqlDataReader
εε- =
[
εε= >
$str
εε> L
]
εεL M
;
εεM N
questionDetail
ζζ "
.
ζζ" #
serialNumber
ζζ# /
=
ζζ0 1
serialNumberObj
ζζ2 A
is
ζζB D
DBNull
ζζE K
?
ζζL M
$num
ζζN O
:
ζζP Q
Convert
ζζR Y
.
ζζY Z
ToInt32
ζζZ a
(
ζζa b
objSqlDataReader
ζζb r
[
ζζr s
$strζζs 
]ζζ ‚
)ζζ‚ ƒ
;ζζƒ „
object
ηη 
stemObj
ηη "
=
ηη# $
objSqlDataReader
ηη% 5
[
ηη5 6
$str
ηη6 <
]
ηη< =
;
ηη= >
questionDetail
θθ "
.
θθ" #
questionText
θθ# /
=
θθ0 1
stemObj
θθ2 9
is
θθ: <
DBNull
θθ= C
?
θθD E
null
θθF J
:
θθK L
Convert
θθM T
.
θθT U
ToString
θθU ]
(
θθ] ^
objSqlDataReader
θθ^ n
[
θθn o
$str
θθo u
]
θθu v
)
θθv w
;
θθw x
object
ιι 
friendlyidobj
ιι (
=
ιι) *
objSqlDataReader
ιι+ ;
[
ιι; <
$str
ιι< H
]
ιιH I
;
ιιI J
questionDetail
κκ "
.
κκ" #

FriendlyId
κκ# -
=
κκ. /
friendlyidobj
κκ0 =
is
κκ> @
DBNull
κκA G
?
κκH I
$num
κκJ K
:
κκL M
Convert
κκN U
.
κκU V
ToInt32
κκV ]
(
κκ] ^
objSqlDataReader
κκ^ n
[
κκn o
$str
κκo {
]
κκ{ |
)
κκ| }
;
κκ} ~
}
λλ 
objSqlDataReader
νν  
.
νν  !
Close
νν! &
(
νν& '
)
νν' (
;
νν( )
List
ξξ 
<
ξξ 
QuestionImage
ξξ "
>
ξξ" #
questionImageList
ξξ$ 5
=
ξξ6 7
new
ξξ8 ;
List
ξξ< @
<
ξξ@ A
QuestionImage
ξξA N
>
ξξN O
(
ξξO P
)
ξξP Q
;
ξξQ R
questionImageList
οο !
=
οο" #
AssessmentDAL
οο$ 1
.
οο1 2"
GetQuestionImageList
οο2 F
(
οοF G

questionId
οοG Q
)
οοQ R
;
οοR S
questionDetail
ππ 
.
ππ 
questionImage
ππ ,
=
ππ- .
questionImageList
ππ/ @
;
ππ@ A
return
ρρ 
questionDetail
ρρ %
;
ρρ% &
}
ςς 
}
σσ 	
public
υυ 
static
υυ 
ExamDTO
υυ 
GetAdminExamBYId
υυ .
(
υυ. /
int
υυ/ 2
?
υυ2 3
examId
υυ4 :
)
υυ: ;
{
φφ 	
SqlParameter
χχ 
[
χχ 
]
χχ 
objSqlParameter
χχ *
=
χχ+ ,
{
ψψ 
new
ωω0 3
SqlParameter
ωω4 @
(
ωω@ A
$str
ωωA J
,
ωωJ K
Convert
ωωL S
.
ωωS T
ToInt32
ωωT [
(
ωω[ \
examId
ωω\ b
)
ωωb c
)
ωωc d
,
ωωd e
}
ϊϊ- .
;
ϊϊ. /
using
ϋϋ 
(
ϋϋ 
SqlDataReader
ϋϋ  
objSqlDataReader
ϋϋ! 1
=
ϋϋ2 3
	SqlHelper
ϋϋ4 =
.
ϋϋ= >
ExecuteReader
ϋϋ> K
(
ϋϋK L#
SqlConnectionProvider
όό %
.
όό% &!
GetConnectionString
όό& 9
(
όό9 :
DataAccessType
όό: H
.
όόH I
Read
όόI M
)
όόM N
,
όόN O
CommandType
όόP [
.
όό[ \
StoredProcedure
όό\ k
,
όόk l
$strόόm ƒ
,όόƒ „
objSqlParameterόό… ”
)όό” •
)όό• –
{
ύύ 
ExamDTO
ώώ 
examObj
ώώ 
=
ώώ  !
new
ώώ" %
ExamDTO
ώώ& -
(
ώώ- .
)
ώώ. /
;
ώώ/ 0
while
ÿÿ 
(
ÿÿ 
objSqlDataReader
ÿÿ '
.
ÿÿ' (
Read
ÿÿ( ,
(
ÿÿ, -
)
ÿÿ- .
)
ÿÿ. /
{
€€ 
object
 
	objExamId
 $
=
% &
objSqlDataReader
' 7
[
7 8
$str
8 @
]
@ A
;
A B
examObj
‚‚ 
.
‚‚ 
ExamId
‚‚ "
=
‚‚# $
	objExamId
‚‚% .
is
‚‚/ 1
DBNull
‚‚2 8
?
‚‚9 :
$num
‚‚; <
:
‚‚= >
Convert
‚‚? F
.
‚‚F G
ToInt32
‚‚G N
(
‚‚N O
objSqlDataReader
‚‚O _
[
‚‚_ `
$str
‚‚` h
]
‚‚h i
)
‚‚i j
;
‚‚j k
object
ƒƒ 
objExamName
ƒƒ &
=
ƒƒ' (
objSqlDataReader
ƒƒ) 9
[
ƒƒ9 :
$str
ƒƒ: D
]
ƒƒD E
;
ƒƒE F
examObj
„„ 
.
„„ 
ExamName
„„ $
=
„„% &
objExamName
„„' 2
is
„„3 5
DBNull
„„6 <
?
„„= >
string
„„? E
.
„„E F
Empty
„„F K
:
„„L M
Convert
„„N U
.
„„U V
ToString
„„V ^
(
„„^ _
objSqlDataReader
„„_ o
[
„„o p
$str
„„p z
]
„„z {
)
„„{ |
;
„„| }
examObj
…… 
.
…… 
ExamCreateDate
…… *
=
……+ ,
Convert
……- 4
.
……4 5

ToDateTime
……5 ?
(
……? @
objSqlDataReader
……@ P
[
……P Q
$str
……Q a
]
……a b
)
……b c
;
……c d
object
†† 
objIsDeleted
†† '
=
††( )
objSqlDataReader
††* :
[
††: ;
$str
††; F
]
††F G
;
††G H
examObj
‡‡ 
.
‡‡ 
	IsDeleted
‡‡ %
=
‡‡& '
objIsDeleted
‡‡( 4
is
‡‡5 7
DBNull
‡‡8 >
?
‡‡? @
false
‡‡A F
:
‡‡G H
(
‡‡I J
bool
‡‡J N
)
‡‡N O
(
‡‡O P
objSqlDataReader
‡‡P `
[
‡‡` a
$str
‡‡a l
]
‡‡l m
)
‡‡m n
;
‡‡n o
object
 
objExamType
 &
=
' (
objSqlDataReader
) 9
[
9 :
$str
: D
]
D E
;
E F
examObj
‰‰ 
.
‰‰ 
ExamType
‰‰ $
=
‰‰% &
objExamType
‰‰' 2
is
‰‰3 5
DBNull
‰‰6 <
?
‰‰= >
$num
‰‰? @
:
‰‰A B
Convert
‰‰C J
.
‰‰J K
ToInt32
‰‰K R
(
‰‰R S
objSqlDataReader
‰‰S c
[
‰‰c d
$str
‰‰d n
]
‰‰n o
)
‰‰o p
;
‰‰p q
object
 
objNoofQuestions
 +
=
, -
objSqlDataReader
. >
[
> ?
$str
? N
]
N O
;
O P
examObj
‹‹ 
.
‹‹ 
NoofQuestions
‹‹ )
=
‹‹* +
objNoofQuestions
‹‹, <
is
‹‹= ?
DBNull
‹‹@ F
?
‹‹G H
$num
‹‹I J
:
‹‹K L
Convert
‹‹M T
.
‹‹T U
ToInt32
‹‹U \
(
‹‹\ ]
objSqlDataReader
‹‹] m
[
‹‹m n
$str
‹‹n }
]
‹‹} ~
)
‹‹~ 
;‹‹ €
object
 
objExamTimeType
 *
=
+ ,
objSqlDataReader
- =
[
= >
$str
> L
]
L M
;
M N
examObj
 
.
 
ExamTimeType
 (
=
) *
objExamTimeType
+ :
is
; =
DBNull
> D
?
E F
false
G L
:
M N
(
O P
bool
P T
)
T U
(
U V
objSqlDataReader
V f
[
f g
$str
g u
]
u v
)
v w
;
w x
object
 
objExamMode
 &
=
' (
objSqlDataReader
) 9
[
9 :
$str
: D
]
D E
;
E F
examObj
 
.
 
ExamMode
 $
=
% &
objExamMode
' 2
is
3 5
DBNull
6 <
?
= >
false
? D
:
E F
(
G H
bool
H L
)
L M
(
M N
objSqlDataReader
N ^
[
^ _
$str
_ i
]
i j
)
j k
;
k l
object
 !
objExamAnswerToShow
 .
=
/ 0
objSqlDataReader
1 A
[
A B
$str
B T
]
T U
;
U V
examObj
‘‘ 
.
‘‘ 
ExamAnswerToShow
‘‘ ,
=
‘‘- .!
objExamAnswerToShow
‘‘/ B
is
‘‘C E
DBNull
‘‘F L
?
‘‘M N
false
‘‘O T
:
‘‘U V
(
‘‘W X
bool
‘‘X \
)
‘‘\ ]
(
‘‘] ^
objSqlDataReader
‘‘^ n
[
‘‘n o
$str‘‘o 
]‘‘ ‚
)‘‘‚ ƒ
;‘‘ƒ „
object
’’ 
objTypeofQuestion
’’ ,
=
’’- .
objSqlDataReader
’’/ ?
[
’’? @
$str
’’@ P
]
’’P Q
;
’’Q R
examObj
““ 
.
““ 
TypeofQuestion
““ *
=
““+ ,
objTypeofQuestion
““- >
is
““? A
DBNull
““B H
?
““I J
string
““K Q
.
““Q R
Empty
““R W
:
““X Y
Convert
““Z a
.
““a b
ToString
““b j
(
““j k
objSqlDataReader
““k {
[
““{ |
$str““| 
]““ 
)““ 
;““ 
object
”” 
objTypeofCategory
”” ,
=
””- .
objSqlDataReader
””/ ?
[
””? @
$str
””@ P
]
””P Q
;
””Q R
examObj
•• 
.
•• 
TypeofCategory
•• *
=
••+ ,
objTypeofCategory
••- >
is
••? A
DBNull
••B H
?
••I J
string
••K Q
.
••Q R
Empty
••R W
:
••X Y
Convert
••Z a
.
••a b
ToString
••b j
(
••j k
objSqlDataReader
••k {
[
••{ |
$str••| 
]•• 
)•• 
;•• 
object
–– 
	objUserId
–– $
=
––% &
objSqlDataReader
––' 7
[
––7 8
$str
––8 @
]
––@ A
;
––A B
examObj
—— 
.
—— 
UserId
—— "
=
——# $
	objUserId
——% .
is
——/ 1
DBNull
——2 8
?
——9 :
$num
——; <
:
——= >
Convert
——? F
.
——F G
ToInt32
——G N
(
——N O
objSqlDataReader
——O _
[
——_ `
$str
——` h
]
——h i
)
——i j
;
——j k
object
 
objExamStatus
 (
=
) *
objSqlDataReader
+ ;
[
; <
$str
< H
]
H I
;
I J
examObj
™™ 
.
™™ 

ExamStatus
™™ &
=
™™' (
objExamStatus
™™) 6
is
™™7 9
DBNull
™™: @
?
™™A B
$num
™™C D
:
™™E F
Convert
™™G N
.
™™N O
ToInt32
™™O V
(
™™V W
objSqlDataReader
™™W g
[
™™g h
$str
™™h t
]
™™t u
)
™™u v
;
™™v w
object
 
objExamAttemptId
 +
=
, -
objSqlDataReader
. >
[
> ?
$str
? N
]
N O
;
O P
examObj
›› 
.
›› 
ExamAttemptId
›› )
=
››* +
objExamAttemptId
››, <
is
››= ?
DBNull
››@ F
?
››G H
$num
››I J
:
››K L
Convert
››M T
.
››T U
ToInt32
››U \
(
››\ ]
objSqlDataReader
››] m
[
››m n
$str
››n }
]
››} ~
)
››~ 
;›› €
}
 
objSqlDataReader
  
.
  !
Close
! &
(
& '
)
' (
;
( )
return
 
examObj
 
;
 
}
   
}
΅΅ 	
}
ΆΆ 
}££ βα
rD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\AdminQuestionPerformanceDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class '
AdminQuestionPerformanceDAL ,
{ 
public 
static 
List 
< &
AdminQuestionPerformanceVM 5
>5 6+
AdminQuestionPerformanceDetails7 V
(V W&
AdminQuestionPerformanceVMW q

queDetailsr |
)| }
{ 	
List 
< &
AdminQuestionPerformanceVM +
>+ ,
performanceList- <
== >
new? B
ListC G
<G H&
AdminQuestionPerformanceVMH b
>b c
(c d
)d e
;e f
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new2 5
SqlParameter6 B
(B C
$strC O
,O P

queDetailsQ [
.[ \
ExamStartDate\ i
)i j
,j k
new2 5
SqlParameter6 B
(B C
$strC M
,M N

queDetailsO Y
.Y Z
ExamCompletedDateZ k
)k l
,l m
new2 5
SqlParameter6 B
(B C
$strC N
,N O

queDetailsP Z
.Z [
Year[ _
)_ `
,` a
new2 5
SqlParameter6 B
(B C
$strC O
,O P

queDetailsQ [
.[ \
PageNo\ b
)b c
,c d
new2 5
SqlParameter6 B
(B C
$strC N
,N O

queDetailsP Z
.Z [
NoOfRecords[ f
)f g
,g h
new2 5
SqlParameter6 B
(B C
$strC Q
,Q R

queDetailsT ^
.^ _
OrderBy_ f
)f g
,g h
new  2 5
SqlParameter  6 B
(  B C
$str  C S
,  S T

queDetails  U _
.  _ `
Seq  ` c
)  c d
,  d e
}!!- .
;!!. /
using## 
(## 
SqlDataReader##  
objSqlDataReader##! 1
=##2 3
	SqlHelper##4 =
.##= >
ExecuteReader##> K
(##K L!
SqlConnectionProvider$$ %
.$$% &
GetConnectionString$$& 9
($$9 :
DataAccessType$$: H
.$$H I
Read$$I M
)$$M N
,$$N O
CommandType$$P [
.$$[ \
StoredProcedure$$\ k
,$$k l
$str	$$m 
,
$$ 
objSqlParameter
$$ 
)
$$ 
)
$$  
{%% 
while&& 
(&& 
objSqlDataReader&& '
.&&' (
Read&&( ,
(&&, -
)&&- .
)&&. /
{'' &
AdminQuestionPerformanceVM(( .
reportListBO((/ ;
=((< =
new((> A&
AdminQuestionPerformanceVM((B \
(((\ ]
)((] ^
;((^ _
object)) 
stemObj)) "
=))# $
objSqlDataReader))% 5
[))5 6
$str))6 <
]))< =
;))= >
reportListBO**  
.**  !
Stem**! %
=**& '
stemObj**( /
is**0 2
DBNull**3 9
?**: ;
null**< @
:**A B
Convert**C J
.**J K
ToString**K S
(**S T
objSqlDataReader**T d
[**d e
$str**e k
]**k l
)**l m
;**m n
object,, 
questionIdObj,, (
=,,) *
objSqlDataReader,,+ ;
[,,; <
$str,,< H
],,H I
;,,I J
reportListBO--  
.--  !

QuestionId--! +
=--, -
questionIdObj--. ;
is--< >
DBNull--? E
?--F G
$num--H I
:--J K
Convert--L S
.--S T
ToInt32--T [
(--[ \
objSqlDataReader--\ l
[--l m
$str--m y
]--y z
)--z {
;--{ |
object// 
subspecialtyObj// *
=//+ ,
objSqlDataReader//- =
[//= >
$str//> L
]//L M
;//M N
reportListBO00  
.00  !
Subspecialty00! -
=00. /
subspecialtyObj000 ?
is00@ B
DBNull00C I
?00J K
null00L P
:00Q R
Convert00S Z
.00Z [
ToString00[ c
(00c d
objSqlDataReader00d t
[00t u
$str	00u ƒ
]
00ƒ „
)
00„ …
;
00… †
object22 

chapterObj22 %
=22& '
objSqlDataReader22( 8
[228 9
$str229 B
]22B C
;22C D
reportListBO33  
.33  !
Chapter33! (
=33) *

chapterObj33+ 5
is336 8
DBNull339 ?
?33@ A
null33B F
:33G H
Convert33I P
.33P Q
ToString33Q Y
(33Y Z
objSqlDataReader33Z j
[33j k
$str33k t
]33t u
)33u v
;33v w
object55 
topicObj55 #
=55$ %
objSqlDataReader55& 6
[556 7
$str557 >
]55> ?
;55? @
reportListBO66  
.66  !
Topic66! &
=66' (
topicObj66) 1
is662 4
DBNull665 ;
?66< =
null66> B
:66C D
Convert66E L
.66L M
ToString66M U
(66U V
objSqlDataReader66V f
[66f g
$str66g n
]66n o
)66o p
;66p q
object88 $
userAnsweredcorrectlyObj88 3
=884 5
objSqlDataReader886 F
[88F G
$str88G ^
]88^ _
;88_ `
reportListBO99  
.99  !!
UserAnsweredcorrectly99! 6
=997 8$
userAnsweredcorrectlyObj999 Q
is99R T
DBNull99U [
?99\ ]
$num99^ _
:99` a
Convert99b i
.99i j
ToInt3299j q
(99q r
objSqlDataReader	99r ‚
[
99‚ ƒ
$str
99ƒ 
]
99 ›
)
99› 
;
99 
object;; &
userAnsweredincorrectlyObj;; 5
=;;6 7
objSqlDataReader;;8 H
[;;H I
$str;;I b
];;b c
;;;c d
reportListBO<<  
.<<  !#
UserAnsweredincorrectly<<! 8
=<<9 :&
userAnsweredincorrectlyObj<<; U
is<<V X
DBNull<<Y _
?<<` a
$num<<b c
:<<d e
Convert<<f m
.<<m n
ToInt32<<n u
(<<u v
objSqlDataReader	<<v †
[
<<† ‡
$str
<<‡  
]
<<  ΅
)
<<΅ Ά
;
<<Ά £
object>> "
usersRepeatedSRModeObj>> 1
=>>2 3
objSqlDataReader>>4 D
[>>D E
$str>>E Z
]>>Z [
;>>[ \
reportListBO??  
.??  !
UsersRepeatedSRMode??! 4
=??5 6"
usersRepeatedSRModeObj??7 M
is??N P
DBNull??Q W
???X Y
$num??Z [
:??\ ]
Convert??^ e
.??e f
ToInt32??f m
(??m n
objSqlDataReader??n ~
[??~ 
$str	?? ”
]
??” •
)
??• –
;
??– —
objectAA "
percentagecorrectlyObjAA 1
=AA2 3
objSqlDataReaderAA4 D
[AAD E
$strAAE Z
]AAZ [
;AA[ \
reportListBOBB  
.BB  !
PercentagecorrectlyBB! 4
=BB5 6"
percentagecorrectlyObjBB7 M
isBBN P
DBNullBBQ W
?BBX Y
nullBBZ ^
:BB_ `
ConvertBBa h
.BBh i
ToStringBBi q
(BBq r
objSqlDataReader	BBr ‚
[
BB‚ ƒ
$str
BBƒ 
]
BB ™
)
BB™ 
;
BB ›
objectDD $
percentageIncorrectlyObjDD 3
=DD4 5
objSqlDataReaderDD6 F
[DDF G
$strDDG ^
]DD^ _
;DD_ `
reportListBOEE  
.EE  !!
PercentageIncorrectlyEE! 6
=EE7 8$
percentageIncorrectlyObjEE9 Q
isEER T
DBNullEEU [
?EE\ ]
nullEE^ b
:EEc d
ConvertEEe l
.EEl m
ToStringEEm u
(EEu v
objSqlDataReader	EEv †
[
EE† ‡
$str
EE‡ 
]
EE 
)
EE  
;
EE  ΅
objectGG 
correctAnsObjGG (
=GG) *
objSqlDataReaderGG+ ;
[GG; <
$strGG< K
]GGK L
;GGL M
reportListBOHH  
.HH  !
CorrectAnswerHH! .
=HH/ 0
correctAnsObjHH1 >
isHH? A
DBNullHHB H
?HHI J
nullHHK O
:HHP Q
ConvertHHR Y
.HHY Z
ToStringHHZ b
(HHb c
objSqlDataReaderHHc s
[HHs t
$str	HHt ƒ
]
HHƒ „
)
HH„ …
;
HH… †
objectJJ 
distroctor1ObjJJ )
=JJ* +
objSqlDataReaderJJ, <
[JJ< =
$strJJ= K
]JJK L
;JJL M
reportListBOKK  
.KK  !
Distractor_1KK! -
=KK. /
distroctor1ObjKK0 >
isKK? A
DBNullKKB H
?KKI J
nullKKK O
:KKP Q
ConvertKKR Y
.KKY Z
ToStringKKZ b
(KKb c
objSqlDataReaderKKc s
[KKs t
$str	KKt ‚
]
KK‚ ƒ
)
KKƒ „
;
KK„ …
objectMM 
perDistroctor1ObjMM ,
=MM- .
objSqlDataReaderMM/ ?
[MM? @
$strMM@ Y
]MMY Z
;MMZ [
reportListBONN  
.NN  !#
User_chose_distractor_1NN! 8
=NN9 :
perDistroctor1ObjNN; L
isNNM O
DBNullNNP V
?NNW X
$numNNY Z
:NN[ \
ConvertNN] d
.NNd e
ToInt32NNe l
(NNl m
objSqlDataReaderNNm }
[NN} ~
$str	NN~ —
]
NN— 
)
NN ™
;
NN™ 
objectPP 
distroctor2ObjPP )
=PP* +
objSqlDataReaderPP, <
[PP< =
$strPP= K
]PPK L
;PPL M
reportListBOQQ  
.QQ  !
Distractor_2QQ! -
=QQ. /
distroctor2ObjQQ0 >
isQQ? A
DBNullQQB H
?QQI J
nullQQK O
:QQP Q
ConvertQQR Y
.QQY Z
ToStringQQZ b
(QQb c
objSqlDataReaderQQc s
[QQs t
$str	QQt ‚
]
QQ‚ ƒ
)
QQƒ „
;
QQ„ …
objectSS 
perDistroctor2ObjSS ,
=SS- .
objSqlDataReaderSS/ ?
[SS? @
$strSS@ Y
]SSY Z
;SSZ [
reportListBOTT  
.TT  !#
User_chose_distractor_2TT! 8
=TT9 :
perDistroctor2ObjTT; L
isTTM O
DBNullTTP V
?TTW X
$numTTY Z
:TT[ \
ConvertTT] d
.TTd e
ToInt32TTe l
(TTl m
objSqlDataReaderTTm }
[TT} ~
$str	TT~ —
]
TT— 
)
TT ™
;
TT™ 
objectVV 
distroctor3ObjVV )
=VV* +
objSqlDataReaderVV, <
[VV< =
$strVV= K
]VVK L
;VVL M
reportListBOWW  
.WW  !
Distractor_3WW! -
=WW. /
distroctor3ObjWW0 >
isWW? A
DBNullWWB H
?WWI J
nullWWK O
:WWP Q
ConvertWWR Y
.WWY Z
ToStringWWZ b
(WWb c
objSqlDataReaderWWc s
[WWs t
$str	WWt ‚
]
WW‚ ƒ
)
WWƒ „
;
WW„ …
objectYY 
perDistroctor3ObjYY ,
=YY- .
objSqlDataReaderYY/ ?
[YY? @
$strYY@ Y
]YYY Z
;YYZ [
reportListBOZZ  
.ZZ  !#
User_chose_distractor_3ZZ! 8
=ZZ9 :
perDistroctor3ObjZZ; L
isZZM O
DBNullZZP V
?ZZW X
$numZZY Z
:ZZ[ \
ConvertZZ] d
.ZZd e
ToInt32ZZe l
(ZZl m
objSqlDataReaderZZm }
[ZZ} ~
$str	ZZ~ —
]
ZZ— 
)
ZZ ™
;
ZZ™ 
object\\ .
"avg_times_incorrect_before_correct\\ =
=\\> ?
objSqlDataReader\\@ P
[\\P Q
$str\\Q u
]\\u v
;\\v w
reportListBO]]  
.]]  !.
"Avg_times_incorrect_before_correct]]! C
=]]D E.
"avg_times_incorrect_before_correct]]F h
is]]i k
DBNull]]l r
?]]s t
null]]u y
:]]z {
Convert	]]| ƒ
.
]]ƒ „
ToString
]]„ 
(
]] 
objSqlDataReader
]] 
[
]] 
$str
]] Β
]
]]Β Γ
)
]]Γ Δ
;
]]Δ Ε
object__ #
users_correct_first_try__ 2
=__3 4
objSqlDataReader__5 E
[__E F
$str__F _
]___ `
;__` a
reportListBO``  
.``  !#
Users_correct_first_try``! 8
=``9 :#
users_correct_first_try``; R
is``S U
DBNull``V \
?``] ^
$num``_ `
:``a b
Convert``c j
.``j k
ToInt32``k r
(``r s
objSqlDataReader	``s ƒ
[
``ƒ „
$str
``„ 
]
`` 
)
`` 
;
``  
performanceListbb #
.bb# $
Addbb$ '
(bb' (
reportListBObb( 4
)bb4 5
;bb5 6
}cc 
objSqlDataReaderee  
.ee  !
Closeee! &
(ee& '
)ee' (
;ee( )
}ff 
returnhh 
performanceListhh "
;hh" #
}ii 	
publickk 
statickk 
intkk 
GetAllQuestionCountkk -
(kk- .&
AdminQuestionPerformanceVMkk. H
questionDetailskkI X
)kkX Y
{ll 	
intmm 
countmm 
=mm 
$nummm 
;mm 
SqlParameternn 
[nn 
]nn 
objSqlParameternn *
=nn+ ,
{oo 
newpp2 5
SqlParameterpp6 B
(ppB C
$strppC O
,ppO P
questionDetailsppQ `
.pp` a
ExamStartDateppa n
)ppn o
,ppo p
newqq2 5
SqlParameterqq6 B
(qqB C
$strqqC M
,qqM N
questionDetailsqqO ^
.qq^ _
ExamCompletedDateqq_ p
)qqp q
,qqq r
newrr2 5
SqlParameterrr6 B
(rrB C
$strrrC N
,rrN O
questionDetailsrrP _
.rr_ `
Yearrr` d
)rrd e
,rre f
}ss- .
;ss. /
usinguu 
(uu 
SqlDataReaderuu  
objSqlDataReaderuu! 1
=uu2 3
	SqlHelperuu4 =
.uu= >
ExecuteReaderuu> K
(uuK L!
SqlConnectionProvidervv %
.vv% &
GetConnectionStringvv& 9
(vv9 :
DataAccessTypevv: H
.vvH I
ReadvvI M
)vvM N
,vvN O
CommandTypevvP [
.vv[ \
StoredProcedurevv\ k
,vvk l
$str	vvm 
,
vv 
objSqlParameter
vv 
)
vv  
)
vv  ΅
{ww 
whilexx 
(xx 
objSqlDataReaderxx '
.xx' (
Readxx( ,
(xx, -
)xx- .
)xx. /
{yy 
objectzz 
cntObjzz !
=zz" #
objSqlDataReaderzz$ 4
[zz4 5
$strzz5 <
]zz< =
;zz= >
count{{ 
={{ 
cntObj{{ "
is{{# %
DBNull{{& ,
?{{- .
$num{{/ 0
:{{1 2
Convert{{3 :
.{{: ;
ToInt32{{; B
({{B C
objSqlDataReader{{C S
[{{S T
$str{{T [
]{{[ \
){{\ ]
;{{] ^
}|| 
objSqlDataReader~~  
.~~  !
Close~~! &
(~~& '
)~~' (
;~~( )
} 
return
 
count
 
;
 
}
‚‚ 	
public
„„ 
static
„„ 
List
„„ 
<
„„ (
AdminQuestionPerformanceVM
„„ 5
>
„„5 6"
GetAllQuestionExport
„„7 K
(
„„K L(
AdminQuestionPerformanceVM
„„L f
questionDetails
„„g v
)
„„v w
{
…… 	
List
†† 
<
†† (
AdminQuestionPerformanceVM
†† +
>
††+ , 
quePerformanceList
††- ?
=
††@ A
new
††B E
List
††F J
<
††J K(
AdminQuestionPerformanceVM
††K e
>
††e f
(
††f g
)
††g h
;
††h i
SqlParameter
‡‡ 
[
‡‡ 
]
‡‡ 
objSqlParameter
‡‡ *
=
‡‡+ ,
{
 
new
‰‰2 5
SqlParameter
‰‰6 B
(
‰‰B C
$str
‰‰C O
,
‰‰O P
questionDetails
‰‰Q `
.
‰‰` a
ExamStartDate
‰‰a n
)
‰‰n o
,
‰‰o p
new
2 5
SqlParameter
6 B
(
B C
$str
C M
,
M N
questionDetails
O ^
.
^ _
ExamCompletedDate
_ p
)
p q
,
q r
new
‹‹2 5
SqlParameter
‹‹6 B
(
‹‹B C
$str
‹‹C N
,
‹‹N O
questionDetails
‹‹P _
.
‹‹_ `
Year
‹‹` d
)
‹‹d e
,
‹‹e f
}
- .
;
. /
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm 
, 
objSqlParameter‘  
)  ΅
)΅ Ά
{
 
while
‘‘ 
(
‘‘ 
objSqlDataReader
‘‘ '
.
‘‘' (
Read
‘‘( ,
(
‘‘, -
)
‘‘- .
)
‘‘. /
{
’’ (
AdminQuestionPerformanceVM
““ .
queReportListBO
““/ >
=
““? @
new
““A D(
AdminQuestionPerformanceVM
““E _
(
““_ `
)
““` a
;
““a b
object
”” 
stemObj
”” "
=
””# $
objSqlDataReader
””% 5
[
””5 6
$str
””6 <
]
””< =
;
””= >
queReportListBO
•• #
.
••# $
Stem
••$ (
=
••) *
stemObj
••+ 2
is
••3 5
DBNull
••6 <
?
••= >
null
••? C
:
••D E
Convert
••F M
.
••M N
ToString
••N V
(
••V W
objSqlDataReader
••W g
[
••g h
$str
••h n
]
••n o
)
••o p
;
••p q
object
—— 
questionIdObj
—— (
=
——) *
objSqlDataReader
——+ ;
[
——; <
$str
——< H
]
——H I
;
——I J
queReportListBO
 #
.
# $

QuestionId
$ .
=
/ 0
questionIdObj
1 >
is
? A
DBNull
B H
?
I J
$num
K L
:
M N
Convert
O V
.
V W
ToInt32
W ^
(
^ _
objSqlDataReader
_ o
[
o p
$str
p |
]
| }
)
} ~
;
~ 
object
 
subspecialtyObj
 *
=
+ ,
objSqlDataReader
- =
[
= >
$str
> L
]
L M
;
M N
queReportListBO
›› #
.
››# $
Subspecialty
››$ 0
=
››1 2
subspecialtyObj
››3 B
is
››C E
DBNull
››F L
?
››M N
null
››O S
:
››T U
Convert
››V ]
.
››] ^
ToString
››^ f
(
››f g
objSqlDataReader
››g w
[
››w x
$str››x †
]››† ‡
)››‡ 
;›› ‰
object
 

chapterObj
 %
=
& '
objSqlDataReader
( 8
[
8 9
$str
9 B
]
B C
;
C D
queReportListBO
 #
.
# $
Chapter
$ +
=
, -

chapterObj
. 8
is
9 ;
DBNull
< B
?
C D
null
E I
:
J K
Convert
L S
.
S T
ToString
T \
(
\ ]
objSqlDataReader
] m
[
m n
$str
n w
]
w x
)
x y
;
y z
object
   
topicObj
   #
=
  $ %
objSqlDataReader
  & 6
[
  6 7
$str
  7 >
]
  > ?
;
  ? @
queReportListBO
΅΅ #
.
΅΅# $
Topic
΅΅$ )
=
΅΅* +
topicObj
΅΅, 4
is
΅΅5 7
DBNull
΅΅8 >
?
΅΅? @
null
΅΅A E
:
΅΅F G
Convert
΅΅H O
.
΅΅O P
ToString
΅΅P X
(
΅΅X Y
objSqlDataReader
΅΅Y i
[
΅΅i j
$str
΅΅j q
]
΅΅q r
)
΅΅r s
;
΅΅s t
object
££ &
userAnsweredcorrectlyObj
££ 3
=
££4 5
objSqlDataReader
££6 F
[
££F G
$str
££G ^
]
££^ _
;
££_ `
queReportListBO
¤¤ #
.
¤¤# $#
UserAnsweredcorrectly
¤¤$ 9
=
¤¤: ;&
userAnsweredcorrectlyObj
¤¤< T
is
¤¤U W
DBNull
¤¤X ^
?
¤¤_ `
$num
¤¤a b
:
¤¤c d
Convert
¤¤e l
.
¤¤l m
ToInt32
¤¤m t
(
¤¤t u
objSqlDataReader¤¤u …
[¤¤… †
$str¤¤† 
]¤¤ 
)¤¤ 
;¤¤  
object
¦¦ (
userAnsweredincorrectlyObj
¦¦ 5
=
¦¦6 7
objSqlDataReader
¦¦8 H
[
¦¦H I
$str
¦¦I b
]
¦¦b c
;
¦¦c d
queReportListBO
§§ #
.
§§# $%
UserAnsweredincorrectly
§§$ ;
=
§§< =(
userAnsweredincorrectlyObj
§§> X
is
§§Y [
DBNull
§§\ b
?
§§c d
$num
§§e f
:
§§g h
Convert
§§i p
.
§§p q
ToInt32
§§q x
(
§§x y
objSqlDataReader§§y ‰
[§§‰ 
$str§§ £
]§§£ ¤
)§§¤ ¥
;§§¥ ¦
object
©© $
usersRepeatedSRModeObj
©© 1
=
©©2 3
objSqlDataReader
©©4 D
[
©©D E
$str
©©E Z
]
©©Z [
;
©©[ \
queReportListBO
ªª #
.
ªª# $!
UsersRepeatedSRMode
ªª$ 7
=
ªª8 9$
usersRepeatedSRModeObj
ªª: P
is
ªªQ S
DBNull
ªªT Z
?
ªª[ \
$num
ªª] ^
:
ªª_ `
Convert
ªªa h
.
ªªh i
ToInt32
ªªi p
(
ªªp q
objSqlDataReaderªªq 
[ªª ‚
$strªª‚ —
]ªª— 
)ªª ™
;ªª™ 
object
¬¬ $
percentagecorrectlyObj
¬¬ 1
=
¬¬2 3
objSqlDataReader
¬¬4 D
[
¬¬D E
$str
¬¬E Z
]
¬¬Z [
;
¬¬[ \
queReportListBO
­­ #
.
­­# $!
Percentagecorrectly
­­$ 7
=
­­8 9$
percentagecorrectlyObj
­­: P
is
­­Q S
DBNull
­­T Z
?
­­[ \
null
­­] a
:
­­b c
Convert
­­d k
.
­­k l
ToString
­­l t
(
­­t u
objSqlDataReader­­u …
[­­… †
$str­­† ›
]­­› 
)­­ 
;­­ 
object
―― &
percentageIncorrectlyObj
―― 3
=
――4 5
objSqlDataReader
――6 F
[
――F G
$str
――G ^
]
――^ _
;
――_ `
queReportListBO
°° #
.
°°# $#
PercentageIncorrectly
°°$ 9
=
°°: ;&
percentageIncorrectlyObj
°°< T
is
°°U W
DBNull
°°X ^
?
°°_ `
null
°°a e
:
°°f g
Convert
°°h o
.
°°o p
ToString
°°p x
(
°°x y
objSqlDataReader°°y ‰
[°°‰ 
$str°° ΅
]°°΅ Ά
)°°Ά £
;°°£ ¤
object
²² 
correctAnsObj
²² (
=
²²) *
objSqlDataReader
²²+ ;
[
²²; <
$str
²²< K
]
²²K L
;
²²L M
queReportListBO
³³ #
.
³³# $
CorrectAnswer
³³$ 1
=
³³2 3
correctAnsObj
³³4 A
is
³³B D
DBNull
³³E K
?
³³L M
null
³³N R
:
³³S T
Convert
³³U \
.
³³\ ]
ToString
³³] e
(
³³e f
objSqlDataReader
³³f v
[
³³v w
$str³³w †
]³³† ‡
)³³‡ 
;³³ ‰
object
µµ 
distroctor1Obj
µµ )
=
µµ* +
objSqlDataReader
µµ, <
[
µµ< =
$str
µµ= K
]
µµK L
;
µµL M
queReportListBO
¶¶ #
.
¶¶# $
Distractor_1
¶¶$ 0
=
¶¶1 2
distroctor1Obj
¶¶3 A
is
¶¶B D
DBNull
¶¶E K
?
¶¶L M
null
¶¶N R
:
¶¶S T
Convert
¶¶U \
.
¶¶\ ]
ToString
¶¶] e
(
¶¶e f
objSqlDataReader
¶¶f v
[
¶¶v w
$str¶¶w …
]¶¶… †
)¶¶† ‡
;¶¶‡ 
object
ΈΈ 
perDistroctor1Obj
ΈΈ ,
=
ΈΈ- .
objSqlDataReader
ΈΈ/ ?
[
ΈΈ? @
$str
ΈΈ@ Y
]
ΈΈY Z
;
ΈΈZ [
queReportListBO
ΉΉ #
.
ΉΉ# $%
User_chose_distractor_1
ΉΉ$ ;
=
ΉΉ< =
perDistroctor1Obj
ΉΉ> O
is
ΉΉP R
DBNull
ΉΉS Y
?
ΉΉZ [
$num
ΉΉ\ ]
:
ΉΉ^ _
Convert
ΉΉ` g
.
ΉΉg h
ToInt32
ΉΉh o
(
ΉΉo p
objSqlDataReaderΉΉp €
[ΉΉ€ 
$strΉΉ 
]ΉΉ ›
)ΉΉ› 
;ΉΉ 
object
»» 
distroctor2Obj
»» )
=
»»* +
objSqlDataReader
»», <
[
»»< =
$str
»»= K
]
»»K L
;
»»L M
queReportListBO
ΌΌ #
.
ΌΌ# $
Distractor_2
ΌΌ$ 0
=
ΌΌ1 2
distroctor2Obj
ΌΌ3 A
is
ΌΌB D
DBNull
ΌΌE K
?
ΌΌL M
null
ΌΌN R
:
ΌΌS T
Convert
ΌΌU \
.
ΌΌ\ ]
ToString
ΌΌ] e
(
ΌΌe f
objSqlDataReader
ΌΌf v
[
ΌΌv w
$strΌΌw …
]ΌΌ… †
)ΌΌ† ‡
;ΌΌ‡ 
object
ΎΎ 
perDistroctor2Obj
ΎΎ ,
=
ΎΎ- .
objSqlDataReader
ΎΎ/ ?
[
ΎΎ? @
$str
ΎΎ@ Y
]
ΎΎY Z
;
ΎΎZ [
queReportListBO
ΏΏ #
.
ΏΏ# $%
User_chose_distractor_2
ΏΏ$ ;
=
ΏΏ< =
perDistroctor2Obj
ΏΏ> O
is
ΏΏP R
DBNull
ΏΏS Y
?
ΏΏZ [
$num
ΏΏ\ ]
:
ΏΏ^ _
Convert
ΏΏ` g
.
ΏΏg h
ToInt32
ΏΏh o
(
ΏΏo p
objSqlDataReaderΏΏp €
[ΏΏ€ 
$strΏΏ 
]ΏΏ ›
)ΏΏ› 
;ΏΏ 
object
ΑΑ 
distroctor3Obj
ΑΑ )
=
ΑΑ* +
objSqlDataReader
ΑΑ, <
[
ΑΑ< =
$str
ΑΑ= K
]
ΑΑK L
;
ΑΑL M
queReportListBO
ΒΒ #
.
ΒΒ# $
Distractor_3
ΒΒ$ 0
=
ΒΒ1 2
distroctor3Obj
ΒΒ3 A
is
ΒΒB D
DBNull
ΒΒE K
?
ΒΒL M
null
ΒΒN R
:
ΒΒS T
Convert
ΒΒU \
.
ΒΒ\ ]
ToString
ΒΒ] e
(
ΒΒe f
objSqlDataReader
ΒΒf v
[
ΒΒv w
$strΒΒw …
]ΒΒ… †
)ΒΒ† ‡
;ΒΒ‡ 
object
ΔΔ 
perDistroctor3Obj
ΔΔ ,
=
ΔΔ- .
objSqlDataReader
ΔΔ/ ?
[
ΔΔ? @
$str
ΔΔ@ Y
]
ΔΔY Z
;
ΔΔZ [
queReportListBO
ΕΕ #
.
ΕΕ# $%
User_chose_distractor_3
ΕΕ$ ;
=
ΕΕ< =
perDistroctor3Obj
ΕΕ> O
is
ΕΕP R
DBNull
ΕΕS Y
?
ΕΕZ [
$num
ΕΕ\ ]
:
ΕΕ^ _
Convert
ΕΕ` g
.
ΕΕg h
ToInt32
ΕΕh o
(
ΕΕo p
objSqlDataReaderΕΕp €
[ΕΕ€ 
$strΕΕ 
]ΕΕ ›
)ΕΕ› 
;ΕΕ 
object
ΗΗ 0
"avg_times_incorrect_before_correct
ΗΗ =
=
ΗΗ> ?
objSqlDataReader
ΗΗ@ P
[
ΗΗP Q
$str
ΗΗQ u
]
ΗΗu v
;
ΗΗv w
queReportListBO
ΘΘ #
.
ΘΘ# $0
"Avg_times_incorrect_before_correct
ΘΘ$ F
=
ΘΘG H0
"avg_times_incorrect_before_correct
ΘΘI k
is
ΘΘl n
DBNull
ΘΘo u
?
ΘΘv w
null
ΘΘx |
:
ΘΘ} ~
ConvertΘΘ †
.ΘΘ† ‡
ToStringΘΘ‡ 
(ΘΘ  
objSqlDataReaderΘΘ  
[ΘΘ  ΅
$strΘΘ΅ Ε
]ΘΘΕ Ζ
)ΘΘΖ Η
;ΘΘΗ Θ
object
ΚΚ %
users_correct_first_try
ΚΚ 2
=
ΚΚ3 4
objSqlDataReader
ΚΚ5 E
[
ΚΚE F
$str
ΚΚF _
]
ΚΚ_ `
;
ΚΚ` a
queReportListBO
ΛΛ #
.
ΛΛ# $%
Users_correct_first_try
ΛΛ$ ;
=
ΛΛ< =%
users_correct_first_try
ΛΛ> U
is
ΛΛV X
DBNull
ΛΛY _
?
ΛΛ` a
$num
ΛΛb c
:
ΛΛd e
Convert
ΛΛf m
.
ΛΛm n
ToInt32
ΛΛn u
(
ΛΛu v
objSqlDataReaderΛΛv †
[ΛΛ† ‡
$strΛΛ‡  
]ΛΛ  ΅
)ΛΛ΅ Ά
;ΛΛΆ £ 
quePerformanceList
ΝΝ &
.
ΝΝ& '
Add
ΝΝ' *
(
ΝΝ* +
queReportListBO
ΝΝ+ :
)
ΝΝ: ;
;
ΝΝ; <
}
ΞΞ 
objSqlDataReader
ΠΠ  
.
ΠΠ  !
Close
ΠΠ! &
(
ΠΠ& '
)
ΠΠ' (
;
ΠΠ( )
}
ΡΡ 
return
ΣΣ  
quePerformanceList
ΣΣ %
;
ΣΣ% &
}
ΤΤ 	
public
ΦΦ 
static
ΦΦ 
List
ΦΦ 
<
ΦΦ %
AdminExamQuestionReport
ΦΦ 2
>
ΦΦ2 3!
_quePerformanceList
ΦΦ4 G
=
ΦΦH I
new
ΦΦJ M
List
ΦΦN R
<
ΦΦR S%
AdminExamQuestionReport
ΦΦS j
>
ΦΦj k
(
ΦΦk l
)
ΦΦl m
;
ΦΦm n
public
ΨΨ 
static
ΨΨ 
async
ΨΨ 
Task
ΨΨ  
<
ΨΨ  !
List
ΨΨ! %
<
ΨΨ% &%
AdminExamQuestionReport
ΨΨ& =
>
ΨΨ= >
>
ΨΨ> ?*
GetAllAnsweredQuestionExport
ΨΨ@ \
(
ΨΨ\ ](
AdminQuestionPerformanceVM
ΨΨ] w
questionDetailsΨΨx ‡
)ΨΨ‡ 
{
ΩΩ 	!
_quePerformanceList
ΪΪ 
.
ΪΪ  
Clear
ΪΪ  %
(
ΪΪ% &
)
ΪΪ& '
;
ΪΪ' (
int
ΫΫ 

tablecount
ΫΫ 
=
ΫΫ 
$num
ΫΫ 
;
ΫΫ 
try
έέ 
{
ήή 
long
ςς 

startCount
ςς 
=
ςς  !
$num
ςς" #
;
ςς# $
long
σσ 
endCount
σσ 
=
σσ 
$num
σσ  #
;
σσ# $
var
ττ 
taskList
ττ 
=
ττ 
new
ττ "
List
ττ# '
<
ττ' (
Task
ττ( ,
>
ττ, -
(
ττ- .
)
ττ. /
;
ττ/ 0
for
υυ 
(
υυ 
int
υυ 
i
υυ 
=
υυ 
$num
υυ 
;
υυ 
i
υυ  !
<=
υυ" $

tablecount
υυ% /
;
υυ/ 0
i
υυ1 2
++
υυ2 4
)
υυ4 5
{
φφ 
var
χχ 
task
χχ 
=
χχ 
new
χχ "
Task
χχ# '
(
χχ' (
new
χχ( +
Action
χχ, 2
(
χχ2 3
async
χχ3 8
(
χχ9 :
)
χχ: ;
=>
χχ< >
await
χχ? D
GetQuestionTable
χχE U
(
χχU V

startCount
χχV `
,
χχ` a
endCount
χχb j
)
χχj k
)
χχk l
)
χχl m
;
χχm n
task
ωω 
.
ωω 
Start
ωω 
(
ωω 
)
ωω  
;
ωω  !
taskList
ϊϊ 
.
ϊϊ 
Add
ϊϊ  
(
ϊϊ  !
task
ϊϊ! %
)
ϊϊ% &
;
ϊϊ& '
long
ϋϋ 
startCount1
ϋϋ $
=
ϋϋ% &

startCount
ϋϋ' 1
;
ϋϋ1 2

startCount
όό 
=
όό  
endCount
όό! )
;
όό) *
endCount
ύύ 
=
ύύ 
endCount
ύύ '
+
ύύ( )
startCount1
ύύ* 5
;
ύύ5 6
}
ÿÿ 
Task
€€ 
.
€€ 
WaitAll
€€ 
(
€€ 
taskList
€€ %
.
€€% &
ToArray
€€& -
(
€€- .
)
€€. /
)
€€/ 0
;
€€0 1
}
„„ 
catch
…… 
(
…… 
	Exception
…… 
ex
…… 
)
……  
{
†† 
Console
‡‡ 
.
‡‡ 
Write
‡‡ 
(
‡‡ 
ex
‡‡  
.
‡‡  !
Message
‡‡! (
)
‡‡( )
;
‡‡) *
Console
 
.
 
Write
 
(
 
ex
  
.
  !
InnerException
! /
)
/ 0
;
0 1
}
‰‰ 
return
 !
_quePerformanceList
 &
;
& '
}
‹‹ 	
private
 
static
 
async
 
Task
 !
<
! "
List
" &
<
& '%
AdminExamQuestionReport
' >
>
> ?
>
? @
GetQuestionTable
A Q
(
Q R
long
R V

startCount
W a
,
a b
long
c g
endCount
h p
)
p q
{
 	
string
‘‘ 
connectionString
‘‘ #
=
‘‘$ %"
ConfigurationManager
‘‘& :
.
‘‘: ;
ConnectionStrings
‘‘; L
[
‘‘L M
$str
‘‘M ^
]
‘‘^ _
.
‘‘_ `
ConnectionString
‘‘` p
;
‘‘p q
DataSet
’’ 
ds
’’ 
=
’’ 
new
’’ 
DataSet
’’ $
(
’’$ %
)
’’% &
;
’’& '
try
““ 
{
”” 
SqlParameter
•• 
[
•• 
]
•• 
objSqlParameter
•• .
=
••/ 0
{
–– 
new
——2 5
SqlParameter
——6 B
(
——B C
$str
——C P
,
——P Q

startCount
——R \
)
——\ ]
,
——] ^
new
2 5
SqlParameter
6 B
(
B C
$str
C N
,
N O
endCount
P X
)
X Y
,
Y Z
}
™™- .
;
™™. /
using
›› 
(
›› 
SqlDataReader
›› $
objSqlDataReader
››% 5
=
››6 7
	SqlHelper
››8 A
.
››A B
ExecuteReader
››B O
(
››O P#
SqlConnectionProvider
 )
.
) *!
GetConnectionString
* =
(
= >
DataAccessType
> L
.
L M
Read
M Q
)
Q R
,
R S
CommandType
T _
.
_ `
StoredProcedure
` o
,
o p
$strq —
,— 
objSqlParameter™ ¨
)¨ ©
)© ª
{
 
await
 
Task
 
.
 
Run
 "
(
" #
(
# $
)
$ %
=>
& (
{
 
while
΅΅ 
(
΅΅ 
objSqlDataReader
΅΅ /
.
΅΅/ 0
Read
΅΅0 4
(
΅΅4 5
)
΅΅5 6
)
΅΅6 7
{
ΆΆ !
_quePerformanceList
££ /
.
££/ 0
Add
££0 3
(
££3 4
new
££4 7%
AdminExamQuestionReport
££8 O
{
¤¤ 
ID
¥¥  "
=
¥¥# $
Convert
¥¥% ,
.
¥¥, -
ToInt32
¥¥- 4
(
¥¥4 5
objSqlDataReader
¥¥5 E
[
¥¥E F
$str
¥¥F O
]
¥¥O P
)
¥¥P Q
,
¥¥Q R
Email
§§  %
=
§§& '
Convert
§§( /
.
§§/ 0
ToString
§§0 8
(
§§8 9
objSqlDataReader
§§9 I
[
§§I J
$str
§§J Q
]
§§Q R
)
§§R S
,
§§S T
MasterCustomerID
©©  0
=
©©1 2
Convert
©©3 :
.
©©: ;
ToString
©©; C
(
©©C D
objSqlDataReader
©©D T
[
©©T U
$str
©©U i
]
©©i j
)
©©j k
,
©©k l
UserName
««  (
=
««) *
Convert
««+ 2
.
««2 3
ToString
««3 ;
(
««; <
objSqlDataReader
««< L
[
««L M
$str
««M X
]
««X Y
)
««Y Z
,
««Z [
OptInStatus
­­  +
=
­­, -
Convert
­­. 5
.
­­5 6
ToString
­­6 >
(
­­> ?
objSqlDataReader
­­? O
[
­­O P
$str
­­P _
]
­­_ `
)
­­` a
,
­­a b
ExamId
――  &
=
――' (
Convert
――) 0
.
――0 1
ToInt32
――1 8
(
――8 9
objSqlDataReader
――9 I
[
――I J
$str
――J R
]
――R S
)
――S T
,
――T U
ExamStartDate
²²  -
=
²². /
Convert
²²0 7
.
²²7 8

ToDateTime
²²8 B
(
²²B C
objSqlDataReader
²²C S
[
²²S T
$str
²²T d
]
²²d e
)
²²e f
.
²²f g
ToString
²²g o
(
²²o p
$str
²²p |
)
²²| }
,
²²} ~
ExamType
΄΄  (
=
΄΄) *
Convert
΄΄+ 2
.
΄΄2 3
ToString
΄΄3 ;
(
΄΄; <
objSqlDataReader
΄΄< L
[
΄΄L M
$str
΄΄M W
]
΄΄W X
)
΄΄X Y
,
΄΄Y Z#
SelectedSubspeciality
¶¶  5
=
¶¶6 7
Convert
¶¶8 ?
.
¶¶? @
ToString
¶¶@ H
(
¶¶H I
objSqlDataReader
¶¶I Y
[
¶¶Y Z
$str
¶¶Z r
]
¶¶r s
)
¶¶s t
,
¶¶t u
NoOfQuestions
ΈΈ  -
=
ΈΈ. /
Convert
ΈΈ0 7
.
ΈΈ7 8
ToInt32
ΈΈ8 ?
(
ΈΈ? @
objSqlDataReader
ΈΈ@ P
[
ΈΈP Q
$str
ΈΈQ `
]
ΈΈ` a
)
ΈΈa b
,
ΈΈb c
TypeOfQuestion
ΊΊ  .
=
ΊΊ/ 0
Convert
ΊΊ1 8
.
ΊΊ8 9
ToString
ΊΊ9 A
(
ΊΊA B
objSqlDataReader
ΊΊB R
[
ΊΊR S
$str
ΊΊS c
]
ΊΊc d
)
ΊΊd e
,
ΊΊe f
ExamMode
ΌΌ  (
=
ΌΌ) *
Convert
ΌΌ+ 2
.
ΌΌ2 3
ToString
ΌΌ3 ;
(
ΌΌ; <
objSqlDataReader
ΌΌ< L
[
ΌΌL M
$str
ΌΌM W
]
ΌΌW X
)
ΌΌX Y
,
ΌΌY Z
ExamAnswerToShow
ΎΎ  0
=
ΎΎ1 2
Convert
ΎΎ3 :
.
ΎΎ: ;
ToString
ΎΎ; C
(
ΎΎC D
objSqlDataReader
ΎΎD T
[
ΎΎT U
$str
ΎΎU k
]
ΎΎk l
)
ΎΎl m
,
ΎΎm n
ExamTimeType
ΐΐ  ,
=
ΐΐ- .
Convert
ΐΐ/ 6
.
ΐΐ6 7
ToString
ΐΐ7 ?
(
ΐΐ? @
objSqlDataReader
ΐΐ@ P
[
ΐΐP Q
$str
ΐΐQ _
]
ΐΐ_ `
)
ΐΐ` a
,
ΐΐa b

QuestionId
ΒΒ  *
=
ΒΒ+ ,
Convert
ΒΒ- 4
.
ΒΒ4 5
ToInt32
ΒΒ5 <
(
ΒΒ< =
objSqlDataReader
ΒΒ= M
[
ΒΒM N
$str
ΒΒN [
]
ΒΒ[ \
)
ΒΒ\ ]
,
ΒΒ] ^
Stem
ΔΔ  $
=
ΔΔ% &
Convert
ΔΔ' .
.
ΔΔ. /
ToString
ΔΔ/ 7
(
ΔΔ7 8
objSqlDataReader
ΔΔ8 H
[
ΔΔH I
$str
ΔΔI O
]
ΔΔO P
)
ΔΔP Q
,
ΔΔQ R&
ChallengeModeTypedAnswer
ΖΖ  8
=
ΖΖ9 :
Convert
ΖΖ; B
.
ΖΖB C
ToString
ΖΖC K
(
ΖΖK L
objSqlDataReader
ΖΖL \
[
ΖΖ\ ]
$str
ΖΖ] z
]
ΖΖz {
)
ΖΖ{ |
,
ΖΖ| }%
ChallengeModeAnswerText
ΘΘ  7
=
ΘΘ8 9
Convert
ΘΘ: A
.
ΘΘA B
ToString
ΘΘB J
(
ΘΘJ K
objSqlDataReader
ΘΘK [
[
ΘΘ[ \
$str
ΘΘ\ x
]
ΘΘx y
)
ΘΘy z
,
ΘΘz {
BCSCSectionTitle
ΚΚ  0
=
ΚΚ1 2
Convert
ΚΚ3 :
.
ΚΚ: ;
ToString
ΚΚ; C
(
ΚΚC D
objSqlDataReader
ΚΚD T
[
ΚΚT U
$str
ΚΚU g
]
ΚΚg h
)
ΚΚh i
,
ΚΚi j
ChapterName
ΜΜ  +
=
ΜΜ, -
Convert
ΜΜ. 5
.
ΜΜ5 6
ToString
ΜΜ6 >
(
ΜΜ> ?
objSqlDataReader
ΜΜ? O
[
ΜΜO P
$str
ΜΜP ]
]
ΜΜ] ^
)
ΜΜ^ _
,
ΜΜ_ `
	TopicName
ΞΞ  )
=
ΞΞ* +
Convert
ΞΞ, 3
.
ΞΞ3 4
ToString
ΞΞ4 <
(
ΞΞ< =
objSqlDataReader
ΞΞ= M
[
ΞΞM N
$str
ΞΞN Y
]
ΞΞY Z
)
ΞΞZ [
,
ΞΞ[ \ 
UserSelectedChoice
ΠΠ  2
=
ΠΠ3 4
Convert
ΠΠ5 <
.
ΠΠ< =
ToString
ΠΠ= E
(
ΠΠE F
objSqlDataReader
ΠΠF V
[
ΠΠV W
$str
ΠΠW m
]
ΠΠm n
)
ΠΠn o
,
ΠΠo p#
UserAnsweredcorrectly
ÒÒ  5
=
ÒÒ6 7
Convert
ÒÒ8 ?
.
ÒÒ? @
ToInt32
ÒÒ@ G
(
ÒÒG H
objSqlDataReader
ÒÒH X
[
ÒÒX Y
$str
ÒÒY u
]
ÒÒu v
)
ÒÒv w
,
ÒÒw x%
UserAnsweredincorrectly
ΤΤ  7
=
ΤΤ8 9
Convert
ΤΤ: A
.
ΤΤA B
ToInt32
ΤΤB I
(
ΤΤI J
objSqlDataReader
ΤΤJ Z
[
ΤΤZ [
$str
ΤΤ[ y
]
ΤΤy z
)
ΤΤz {
,
ΤΤ{ |!
UsersRepeatedSRMode
ΦΦ  3
=
ΦΦ4 5
Convert
ΦΦ6 =
.
ΦΦ= >
ToInt32
ΦΦ> E
(
ΦΦE F
objSqlDataReader
ΦΦF V
[
ΦΦV W
$strΦΦW €
]ΦΦ€ 
)ΦΦ ‚
,ΦΦ‚ ƒ!
Percentagecorrectly
ΨΨ  3
=
ΨΨ4 5
Convert
ΨΨ6 =
.
ΨΨ= >
ToString
ΨΨ> F
(
ΨΨF G
objSqlDataReader
ΨΨG W
[
ΨΨW X
$str
ΨΨX z
]
ΨΨz {
)
ΨΨ{ |
,
ΨΨ| }#
PercentageIncorrectly
ΪΪ  5
=
ΪΪ6 7
Convert
ΪΪ8 ?
.
ΪΪ? @
ToString
ΪΪ@ H
(
ΪΪH I
objSqlDataReader
ΪΪI Y
[
ΪΪY Z
$str
ΪΪZ ~
]
ΪΪ~ 
)ΪΪ €
,ΪΪ€ 
CorrectAnswer
άά  -
=
άά. /
Convert
άά0 7
.
άά7 8
ToString
άά8 @
(
άά@ A
objSqlDataReader
άάA Q
[
άάQ R
$str
άάR b
]
άάb c
)
άάc d
,
άάd e
Distractor_1
ήή  ,
=
ήή- .
Convert
ήή/ 6
.
ήή6 7
ToString
ήή7 ?
(
ήή? @
objSqlDataReader
ήή@ P
[
ήήP Q
$str
ήήQ _
]
ήή_ `
)
ήή` a
,
ήήa b%
User_chose_distractor_1
ΰΰ  7
=
ΰΰ8 9
Convert
ΰΰ: A
.
ΰΰA B
ToInt32
ΰΰB I
(
ΰΰI J
objSqlDataReader
ΰΰJ Z
[
ΰΰZ [
$str
ΰΰ[ u
]
ΰΰu v
)
ΰΰv w
,
ΰΰw x
Distractor_2
ββ  ,
=
ββ- .
Convert
ββ/ 6
.
ββ6 7
ToString
ββ7 ?
(
ββ? @
objSqlDataReader
ββ@ P
[
ββP Q
$str
ββQ _
]
ββ_ `
)
ββ` a
,
ββa b%
User_chose_distractor_2
δδ  7
=
δδ8 9
Convert
δδ: A
.
δδA B
ToInt32
δδB I
(
δδI J
objSqlDataReader
δδJ Z
[
δδZ [
$str
δδ[ u
]
δδu v
)
δδv w
,
δδw x
Distractor_3
ζζ  ,
=
ζζ- .
Convert
ζζ/ 6
.
ζζ6 7
ToString
ζζ7 ?
(
ζζ? @
objSqlDataReader
ζζ@ P
[
ζζP Q
$str
ζζQ _
]
ζζ_ `
)
ζζ` a
,
ζζa b%
User_chose_distractor_3
θθ  7
=
θθ8 9
Convert
θθ: A
.
θθA B
ToInt32
θθB I
(
θθI J
objSqlDataReader
θθJ Z
[
θθZ [
$str
θθ[ u
]
θθu v
)
θθv w
,
θθw x
}
κκ 
)
κκ 
;
κκ 
}
λλ 
}
μμ 
)
μμ 
;
μμ 
objSqlDataReader
νν $
.
νν$ %
Close
νν% *
(
νν* +
)
νν+ ,
;
νν, -
}
ξξ 
}
όό 
catch
ύύ 
(
ύύ 
	Exception
ύύ 
ex
ύύ 
)
ύύ  
{
ώώ 
Console
ÿÿ 
.
ÿÿ 
Write
ÿÿ 
(
ÿÿ 
ex
ÿÿ  
.
ÿÿ  !
Message
ÿÿ! (
)
ÿÿ( )
;
ÿÿ) *
Console
€€ 
.
€€ 
Write
€€ 
(
€€ 
ex
€€  
.
€€  !
InnerException
€€! /
)
€€/ 0
;
€€0 1
}
 
return
ƒƒ !
_quePerformanceList
ƒƒ &
;
ƒƒ& '
}
„„ 	
public
†† 
static
†† 
List
†† 
<
†† %
AdminExamQuestionReport
†† 2
>
††2 3+
GetAllAnsweredQuestionExport1
††4 Q
(
††Q R(
AdminQuestionPerformanceVM
††R l
questionDetails
††m |
)
††| }
{
‡‡ 	
List
 
<
 %
AdminExamQuestionReport
 (
>
( )

reportList
* 4
=
5 6
new
7 :
List
; ?
<
? @%
AdminExamQuestionReport
@ W
>
W X
(
X Y
)
Y Z
;
Z [
try
 
{
‹‹ 
SqlParameter
 
[
 
]
 
objSqlParameter
 .
=
/ 0
{
 
new
2 5
SqlParameter
6 B
(
B C
$str
C P
,
P Q
questionDetails
R a
.
a b

StartCount
b l
)
l m
,
m n
new
2 5
SqlParameter
6 B
(
B C
$str
C N
,
N O
questionDetails
P _
.
_ `
EndCount
` h
)
h i
,
i j
}
- .
;
. /
using
’’ 
(
’’ 
SqlDataReader
’’ $
objSqlDataReader
’’% 5
=
’’6 7
	SqlHelper
’’8 A
.
’’A B
ExecuteReader
’’B O
(
’’O P#
SqlConnectionProvider
““ )
.
““) *!
GetConnectionString
““* =
(
““= >
DataAccessType
““> L
.
““L M
Read
““M Q
)
““Q R
,
““R S
CommandType
““T _
.
““_ `
StoredProcedure
““` o
,
““o p
$str““q —
,““— 
objSqlParameter““™ ¨
)““¨ ©
)““© ª
{
”” 
while
•• 
(
•• 
objSqlDataReader
•• +
.
••+ ,
Read
••, 0
(
••0 1
)
••1 2
)
••2 3
{
–– 

reportList
—— "
.
——" #
Add
——# &
(
——& '
new
——' *%
AdminExamQuestionReport
——+ B
{
 
ID
™™ 
=
™™  
Convert
™™! (
.
™™( )
ToInt32
™™) 0
(
™™0 1
objSqlDataReader
™™1 A
[
™™A B
$str
™™B K
]
™™K L
)
™™L M
,
™™M N
Email
›› !
=
››" #
Convert
››$ +
.
››+ ,
ToString
››, 4
(
››4 5
objSqlDataReader
››5 E
[
››E F
$str
››F M
]
››M N
)
››N O
,
››O P
MasterCustomerID
 ,
=
- .
Convert
/ 6
.
6 7
ToString
7 ?
(
? @
objSqlDataReader
@ P
[
P Q
$str
Q e
]
e f
)
f g
,
g h
UserName
 $
=
% &
Convert
' .
.
. /
ToString
/ 7
(
7 8
objSqlDataReader
8 H
[
H I
$str
I T
]
T U
)
U V
,
V W
OptInStatus
΅΅ '
=
΅΅( )
Convert
΅΅* 1
.
΅΅1 2
ToString
΅΅2 :
(
΅΅: ;
objSqlDataReader
΅΅; K
[
΅΅K L
$str
΅΅L [
]
΅΅[ \
)
΅΅\ ]
,
΅΅] ^
ExamId
££ "
=
££# $
Convert
££% ,
.
££, -
ToInt32
££- 4
(
££4 5
objSqlDataReader
££5 E
[
££E F
$str
££F N
]
££N O
)
££O P
,
££P Q
ExamStartDate
¥¥ )
=
¥¥* +
Convert
¥¥, 3
.
¥¥3 4

ToDateTime
¥¥4 >
(
¥¥> ?
objSqlDataReader
¥¥? O
[
¥¥O P
$str
¥¥P `
]
¥¥` a
)
¥¥a b
.
¥¥b c
ToString
¥¥c k
(
¥¥k l
$str
¥¥l x
)
¥¥x y
,
¥¥y z
ExamType
§§ $
=
§§% &
Convert
§§' .
.
§§. /
ToString
§§/ 7
(
§§7 8
objSqlDataReader
§§8 H
[
§§H I
$str
§§I S
]
§§S T
)
§§T U
,
§§U V#
SelectedSubspeciality
©© 1
=
©©2 3
Convert
©©4 ;
.
©©; <
ToString
©©< D
(
©©D E
objSqlDataReader
©©E U
[
©©U V
$str
©©V n
]
©©n o
)
©©o p
,
©©p q
NoOfQuestions
«« )
=
««* +
Convert
««, 3
.
««3 4
ToInt32
««4 ;
(
««; <
objSqlDataReader
««< L
[
««L M
$str
««M \
]
««\ ]
)
««] ^
,
««^ _
TypeOfQuestion
­­ *
=
­­+ ,
Convert
­­- 4
.
­­4 5
ToString
­­5 =
(
­­= >
objSqlDataReader
­­> N
[
­­N O
$str
­­O _
]
­­_ `
)
­­` a
,
­­a b
ExamMode
―― $
=
――% &
Convert
――' .
.
――. /
ToString
――/ 7
(
――7 8
objSqlDataReader
――8 H
[
――H I
$str
――I S
]
――S T
)
――T U
,
――U V
ExamAnswerToShow
±± ,
=
±±- .
Convert
±±/ 6
.
±±6 7
ToString
±±7 ?
(
±±? @
objSqlDataReader
±±@ P
[
±±P Q
$str
±±Q g
]
±±g h
)
±±h i
,
±±i j
ExamTimeType
³³ (
=
³³) *
Convert
³³+ 2
.
³³2 3
ToString
³³3 ;
(
³³; <
objSqlDataReader
³³< L
[
³³L M
$str
³³M [
]
³³[ \
)
³³\ ]
,
³³] ^

QuestionId
µµ &
=
µµ' (
Convert
µµ) 0
.
µµ0 1
ToInt32
µµ1 8
(
µµ8 9
objSqlDataReader
µµ9 I
[
µµI J
$str
µµJ W
]
µµW X
)
µµX Y
,
µµY Z
Stem
··  
=
··! "
Convert
··# *
.
··* +
ToString
··+ 3
(
··3 4
objSqlDataReader
··4 D
[
··D E
$str
··E K
]
··K L
)
··L M
,
··M N&
ChallengeModeTypedAnswer
ΉΉ 4
=
ΉΉ5 6
Convert
ΉΉ7 >
.
ΉΉ> ?
ToString
ΉΉ? G
(
ΉΉG H
objSqlDataReader
ΉΉH X
[
ΉΉX Y
$str
ΉΉY v
]
ΉΉv w
)
ΉΉw x
,
ΉΉx y%
ChallengeModeAnswerText
»» 3
=
»»4 5
Convert
»»6 =
.
»»= >
ToString
»»> F
(
»»F G
objSqlDataReader
»»G W
[
»»W X
$str
»»X t
]
»»t u
)
»»u v
,
»»v w
BCSCSectionTitle
½½ ,
=
½½- .
Convert
½½/ 6
.
½½6 7
ToString
½½7 ?
(
½½? @
objSqlDataReader
½½@ P
[
½½P Q
$str
½½Q c
]
½½c d
)
½½d e
,
½½e f
ChapterName
ΏΏ '
=
ΏΏ( )
Convert
ΏΏ* 1
.
ΏΏ1 2
ToString
ΏΏ2 :
(
ΏΏ: ;
objSqlDataReader
ΏΏ; K
[
ΏΏK L
$str
ΏΏL Y
]
ΏΏY Z
)
ΏΏZ [
,
ΏΏ[ \
	TopicName
ΑΑ %
=
ΑΑ& '
Convert
ΑΑ( /
.
ΑΑ/ 0
ToString
ΑΑ0 8
(
ΑΑ8 9
objSqlDataReader
ΑΑ9 I
[
ΑΑI J
$str
ΑΑJ U
]
ΑΑU V
)
ΑΑV W
,
ΑΑW X 
UserSelectedChoice
ΓΓ .
=
ΓΓ/ 0
Convert
ΓΓ1 8
.
ΓΓ8 9
ToString
ΓΓ9 A
(
ΓΓA B
objSqlDataReader
ΓΓB R
[
ΓΓR S
$str
ΓΓS i
]
ΓΓi j
)
ΓΓj k
,
ΓΓk l#
UserAnsweredcorrectly
ΕΕ 1
=
ΕΕ2 3
Convert
ΕΕ4 ;
.
ΕΕ; <
ToInt32
ΕΕ< C
(
ΕΕC D
objSqlDataReader
ΕΕD T
[
ΕΕT U
$str
ΕΕU q
]
ΕΕq r
)
ΕΕr s
,
ΕΕs t%
UserAnsweredincorrectly
ΗΗ 3
=
ΗΗ4 5
Convert
ΗΗ6 =
.
ΗΗ= >
ToInt32
ΗΗ> E
(
ΗΗE F
objSqlDataReader
ΗΗF V
[
ΗΗV W
$str
ΗΗW u
]
ΗΗu v
)
ΗΗv w
,
ΗΗw x!
UsersRepeatedSRMode
ΙΙ /
=
ΙΙ0 1
Convert
ΙΙ2 9
.
ΙΙ9 :
ToInt32
ΙΙ: A
(
ΙΙA B
objSqlDataReader
ΙΙB R
[
ΙΙR S
$str
ΙΙS |
]
ΙΙ| }
)
ΙΙ} ~
,
ΙΙ~ !
Percentagecorrectly
ΛΛ /
=
ΛΛ0 1
Convert
ΛΛ2 9
.
ΛΛ9 :
ToString
ΛΛ: B
(
ΛΛB C
objSqlDataReader
ΛΛC S
[
ΛΛS T
$str
ΛΛT v
]
ΛΛv w
)
ΛΛw x
,
ΛΛx y#
PercentageIncorrectly
ΝΝ 1
=
ΝΝ2 3
Convert
ΝΝ4 ;
.
ΝΝ; <
ToString
ΝΝ< D
(
ΝΝD E
objSqlDataReader
ΝΝE U
[
ΝΝU V
$str
ΝΝV z
]
ΝΝz {
)
ΝΝ{ |
,
ΝΝ| }
CorrectAnswer
ΟΟ )
=
ΟΟ* +
Convert
ΟΟ, 3
.
ΟΟ3 4
ToString
ΟΟ4 <
(
ΟΟ< =
objSqlDataReader
ΟΟ= M
[
ΟΟM N
$str
ΟΟN ^
]
ΟΟ^ _
)
ΟΟ_ `
,
ΟΟ` a
Distractor_1
ΡΡ (
=
ΡΡ) *
Convert
ΡΡ+ 2
.
ΡΡ2 3
ToString
ΡΡ3 ;
(
ΡΡ; <
objSqlDataReader
ΡΡ< L
[
ΡΡL M
$str
ΡΡM [
]
ΡΡ[ \
)
ΡΡ\ ]
,
ΡΡ] ^%
User_chose_distractor_1
ΣΣ 3
=
ΣΣ4 5
Convert
ΣΣ6 =
.
ΣΣ= >
ToInt32
ΣΣ> E
(
ΣΣE F
objSqlDataReader
ΣΣF V
[
ΣΣV W
$str
ΣΣW q
]
ΣΣq r
)
ΣΣr s
,
ΣΣs t
Distractor_2
ΥΥ (
=
ΥΥ) *
Convert
ΥΥ+ 2
.
ΥΥ2 3
ToString
ΥΥ3 ;
(
ΥΥ; <
objSqlDataReader
ΥΥ< L
[
ΥΥL M
$str
ΥΥM [
]
ΥΥ[ \
)
ΥΥ\ ]
,
ΥΥ] ^%
User_chose_distractor_2
ΧΧ 3
=
ΧΧ4 5
Convert
ΧΧ6 =
.
ΧΧ= >
ToInt32
ΧΧ> E
(
ΧΧE F
objSqlDataReader
ΧΧF V
[
ΧΧV W
$str
ΧΧW q
]
ΧΧq r
)
ΧΧr s
,
ΧΧs t
Distractor_3
ΩΩ (
=
ΩΩ) *
Convert
ΩΩ+ 2
.
ΩΩ2 3
ToString
ΩΩ3 ;
(
ΩΩ; <
objSqlDataReader
ΩΩ< L
[
ΩΩL M
$str
ΩΩM [
]
ΩΩ[ \
)
ΩΩ\ ]
,
ΩΩ] ^%
User_chose_distractor_3
ΫΫ 3
=
ΫΫ4 5
Convert
ΫΫ6 =
.
ΫΫ= >
ToInt32
ΫΫ> E
(
ΫΫE F
objSqlDataReader
ΫΫF V
[
ΫΫV W
$str
ΫΫW q
]
ΫΫq r
)
ΫΫr s
,
ΫΫs t
}
άά 
)
άά 
;
άά 
}
έέ 
objSqlDataReader
ίί $
.
ίί$ %
Close
ίί% *
(
ίί* +
)
ίί+ ,
;
ίί, -
}
ΰΰ 
}
αα 
catch
ββ 
(
ββ 
	Exception
ββ 
ex
ββ 
)
ββ  
{
γγ 
Console
δδ 
.
δδ 
Write
δδ 
(
δδ 
ex
δδ  
.
δδ  !
Message
δδ! (
)
δδ( )
;
δδ) *
Console
εε 
.
εε 
Write
εε 
(
εε 
ex
εε  
.
εε  !
InnerException
εε! /
)
εε/ 0
;
εε0 1
}
ζζ 
finally
ηη 
{
θθ 
Console
ιι 
.
ιι 
Write
ιι 
(
ιι 
$str
ιι H
,
ιιH I
questionDetails
ιιJ Y
.
ιιY Z

StartCount
ιιZ d
,
ιιd e
questionDetails
ιιf u
.
ιιu v
EndCount
ιιv ~
)
ιι~ 
;ιι €
}
λλ 
return
νν 

reportList
νν 
;
νν 
}
ξξ 	
public
ππ 
static
ππ 
int
ππ !
GetTableCountExport
ππ -
(
ππ- .(
AdminQuestionPerformanceVM
ππ. H
questionDetails
ππI X
)
ππX Y
{
ρρ 	
int
ςς 

tablecount
ςς 
=
ςς 
$num
ςς 
;
ςς 
try
ττ 
{
υυ 
SqlParameter
φφ 
[
φφ 
]
φφ 
objSqlParameter
φφ .
=
φφ/ 0
{
χχ 
new
ψψ2 5
SqlParameter
ψψ6 B
(
ψψB C
$str
ψψC O
,
ψψO P
questionDetails
ψψQ `
.
ψψ` a
ExamStartDate
ψψa n
)
ψψn o
,
ψψo p
new
ωω2 5
SqlParameter
ωω6 B
(
ωωB C
$str
ωωC M
,
ωωM N
questionDetails
ωωO ^
.
ωω^ _
ExamCompletedDate
ωω_ p
)
ωωp q
,
ωωq r
new
ϊϊ2 5
SqlParameter
ϊϊ6 B
(
ϊϊB C
$str
ϊϊC N
,
ϊϊN O
questionDetails
ϊϊP _
.
ϊϊ_ `
Year
ϊϊ` d
)
ϊϊd e
,
ϊϊe f
new
ϋϋ2 5
SqlParameter
ϋϋ6 B
(
ϋϋB C
$str
ϋϋC Q
,
ϋϋQ R
questionDetails
ϋϋS b
.
ϋϋb c
OptOutValue
ϋϋc n
)
ϋϋn o
,
ϋϋo p
}
όό- .
;
όό. /
using
ώώ 
(
ώώ 
SqlDataReader
ώώ $
objSqlDataReader
ώώ% 5
=
ώώ6 7
	SqlHelper
ώώ8 A
.
ώώA B
ExecuteReader
ώώB O
(
ώώO P#
SqlConnectionProvider
ÿÿ )
.
ÿÿ) *!
GetConnectionString
ÿÿ* =
(
ÿÿ= >
DataAccessType
ÿÿ> L
.
ÿÿL M
Read
ÿÿM Q
)
ÿÿQ R
,
ÿÿR S
CommandType
ÿÿT _
.
ÿÿ_ `
StoredProcedure
ÿÿ` o
,
ÿÿo p
$strÿÿq 
,ÿÿ ‘
objSqlParameterÿÿ’ ΅
)ÿÿ΅ Ά
)ÿÿΆ £
{
€€ 
while
 
(
 
objSqlDataReader
 +
.
+ ,
Read
, 0
(
0 1
)
1 2
)
2 3
{
‚‚ 

tablecount
ƒƒ "
=
ƒƒ# $
Convert
ƒƒ% ,
.
ƒƒ, -
ToInt32
ƒƒ- 4
(
ƒƒ4 5
objSqlDataReader
ƒƒ5 E
[
ƒƒE F
$str
ƒƒF R
]
ƒƒR S
)
ƒƒS T
;
ƒƒT U
}
„„ 
objSqlDataReader
†† $
.
††$ %
Close
††% *
(
††* +
)
††+ ,
;
††, -
}
‡‡ 
}
‰‰ 
catch
 
(
 
	Exception
 
ex
 
)
  
{
‹‹ 
Console
 
.
 
Write
 
(
 
ex
  
.
  !
Message
! (
)
( )
;
) *
Console
 
.
 
Write
 
(
 
ex
  
.
  !
InnerException
! /
)
/ 0
;
0 1
}
 
finally
 
{
 
Console
‘‘ 
.
‘‘ 
Write
‘‘ 
(
‘‘ 
$str
‘‘ J
,
‘‘J K

tablecount
‘‘L V
,
‘‘V W
questionDetails
‘‘X g
.
‘‘g h
ExamStartDate
‘‘h u
,
‘‘u v
questionDetails‘‘w †
.‘‘† ‡!
ExamCompletedDate‘‘‡ 
)‘‘ ™
;‘‘™ 
}
““ 
return
”” 

tablecount
”” 
;
”” 
}
•• 	
}
—— 
} •z
eD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\AdminReportDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
AdminReportDAL &
{ 
public 
static 
List 
< 
AdminReportVM (
>( )
AdminReportDetails* <
(< =
AdminReportVM= J
adminReportDetailsK ]
)] ^
{ 	
List 
< 
AdminReportVM 
> 

reportList  *
=+ ,
new- 0
List1 5
<5 6
AdminReportVM6 C
>C D
(D E
)E F
;F G
try 
{ 
SqlConnection 
con !
=" #
new$ '
SqlConnection( 5
(5 6!
SqlConnectionProvider6 K
.K L
GetConnectionStringL _
(_ `
DataAccessType` n
.n o
Reado s
)s t
)t u
;u v
string 
	procedure  
=! "
$str# A
;A B

SqlCommand 
cmd 
=  
new! $

SqlCommand% /
(/ 0
	procedure0 9
,9 :
con; >
)> ?
;? @
SqlDataReader 
r 
;  
cmd"" 
."" 
CommandType"" 
=""  !
CommandType""" -
.""- .
StoredProcedure"". =
;""= >
cmd)) 
.)) 

Parameters)) 
.)) 
Add)) "
())" #
new))# &
SqlParameter))' 3
())3 4
$str))4 @
,))@ A
Convert))B I
.))I J

ToDateTime))J T
())T U
adminReportDetails))U g
.))g h
ExamStartDate))h u
)))u v
.))v w
ToString))w 
(	)) €
$str
))€ 
)
)) 
)
)) 
)
)) 
;
)) 
cmd** 
.** 

Parameters** 
.** 
Add** "
(**" #
new**# &
SqlParameter**' 3
(**3 4
$str**4 >
,**> ?
Convert**@ G
.**G H

ToDateTime**H R
(**R S
adminReportDetails**S e
.**e f
ExamCompletedDate**f w
)**w x
.**x y
ToString	**y 
(
** ‚
$str
**‚ 
)
** 
)
** 
)
** ‘
;
**‘ ’
cmd++ 
.++ 

Parameters++ 
.++ 
Add++ "
(++" #
new++# &
SqlParameter++' 3
(++3 4
$str++4 @
,++@ A
adminReportDetails++B T
.++T U
Year++U Y
)++Y Z
)++Z [
;++[ \
cmd,, 
.,, 

Parameters,, 
.,, 
Add,, "
(,," #
new,,# &
SqlParameter,,' 3
(,,3 4
$str,,4 B
,,,B C
adminReportDetails,,D V
.,,V W
OrderBy,,W ^
),,^ _
),,_ `
;,,` a
cmd-- 
.-- 

Parameters-- 
.-- 
Add-- "
(--" #
new--# &
SqlParameter--' 3
(--3 4
$str--4 D
,--D E
adminReportDetails--F X
.--X Y
Seq--Y \
)--\ ]
)--] ^
;--^ _
cmd.. 
... 
CommandTimeout.. "
=..# $
$num..% (
;..( )
con11 
.11 
Open11 
(11 
)11 
;11 
r22 
=22 
cmd22 
.22 
ExecuteReader22 %
(22% &
)22& '
;22' (
while33 
(33 
r33 
.33 
Read33 
(33 
)33 
)33  
{44 
AdminReportVM55 !
reportListBO55" .
=55/ 0
new551 4
AdminReportVM555 B
(55B C
)55C D
;55D E
reportListBO66  
.66  !
SubspecialtyId66! /
=660 1
Convert662 9
.669 :
ToInt3266: A
(66A B
r66B C
[66C D
$str66D T
]66T U
)66U V
;66V W
reportListBO77  
.77  !
SubspecialtyName77! 1
=772 3
Convert774 ;
.77; <
ToString77< D
(77D E
r77E F
[77F G
$str77G Z
]77Z [
)77[ \
;77\ ]
reportListBO88  
.88  !
Correct88! (
=88) *
Convert88+ 2
.882 3
ToInt32883 :
(88: ;
r88; <
[88< =
$str88= F
]88F G
)88G H
;88H I
reportListBO99  
.99  !
	InCorrect99! *
=99+ ,
Convert99- 4
.994 5
ToInt32995 <
(99< =
r99= >
[99> ?
$str99? J
]99J K
)99K L
;99L M
reportListBO::  
.::  !
Score::! &
=::' (
Convert::) 0
.::0 1
ToInt32::1 8
(::8 9
r::9 :
[::: ;
$str::; B
]::B C
)::C D
;::D E
reportListBO;;  
.;;  !
UserId;;! '
=;;( )
Convert;;* 1
.;;1 2
ToInt32;;2 9
(;;9 :
r;;: ;
[;;; <
$str;;< D
];;D E
);;E F
;;;F G
reportListBO<<  
.<<  !
BCSCSectionNumber<<! 2
=<<3 4
Convert<<5 <
.<<< =
ToInt32<<= D
(<<D E
r<<E F
[<<F G
$str<<G R
]<<R S
)<<S T
;<<T U

reportList== 
.== 
Add== "
(==" #
reportListBO==# /
)==/ 0
;==0 1
}>> 
con@@ 
.@@ 
Close@@ 
(@@ 
)@@ 
;@@ 
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
ConsoleDD 
.DD 
WriteDD 
(DD 
exDD  
.DD  !
MessageDD! (
)DD( )
;DD) *
ConsoleEE 
.EE 
WriteEE 
(EE 
exEE  
.EE  !

StackTraceEE! +
)EE+ ,
;EE, -
returnFF 
nullFF 
;FF 
}GG 
returnII 

reportListII 
;II 
}\\ 	
public^^ 
static^^ 
List^^ 
<^^ 
AdminReportVM^^ (
>^^( )$
AdminReportDetailsExport^^* B
(^^B C
AdminReportVM^^C P
adminReportDetails^^Q c
)^^c d
{__ 	
List`` 
<`` 
AdminReportVM`` 
>`` 
reportListExport``  0
=``1 2
new``3 6
List``7 ;
<``; <
AdminReportVM``< I
>``I J
(``J K
)``K L
;``L M
SqlParameteraa 
[aa 
]aa 
objSqlParameteraa *
=aa+ ,
{bb 
newcc1 4
SqlParametercc5 A
(ccA B
$strccB N
,ccN O
adminReportDetailsccP b
.ccb c
ExamStartDateccc p
)ccp q
,ccq r
newdd1 4
SqlParameterdd5 A
(ddA B
$strddB L
,ddL M
adminReportDetailsddN `
.dd` a
ExamCompletedDatedda r
)ddr s
,dds t
newee1 4
SqlParameteree5 A
(eeA B
$streeB N
,eeN O
adminReportDetailseeP b
.eeb c
Yeareec g
)eeg h
,eeh i
}ff- .
;ff. /
SqlConnection{{ 
con{{ 
={{ 
new{{  #
SqlConnection{{$ 1
({{1 2!
SqlConnectionProvider{{2 G
.{{G H
GetConnectionString{{H [
({{[ \
DataAccessType{{\ j
.{{j k
Read{{k o
){{o p
){{p q
;{{q r
string|| 
	procedure|| 
=|| 
$str|| C
;||C D

SqlCommand~~ 
cmd~~ 
=~~ 
new~~  

SqlCommand~~! +
(~~+ ,
	procedure~~, 5
,~~5 6
con~~7 :
)~~: ;
;~~; <
SqlDataReader 
r 
; 
cmd
‚‚ 
.
‚‚ 
CommandType
‚‚ 
=
‚‚ 
CommandType
‚‚ )
.
‚‚) *
StoredProcedure
‚‚* 9
;
‚‚9 :
cmd
ƒƒ 
.
ƒƒ 

Parameters
ƒƒ 
.
ƒƒ 
Add
ƒƒ 
(
ƒƒ 
new
ƒƒ "
SqlParameter
ƒƒ# /
(
ƒƒ/ 0
$str
ƒƒ0 <
,
ƒƒ< = 
adminReportDetails
ƒƒ> P
.
ƒƒP Q
ExamStartDate
ƒƒQ ^
)
ƒƒ^ _
)
ƒƒ_ `
;
ƒƒ` a
cmd
„„ 
.
„„ 

Parameters
„„ 
.
„„ 
Add
„„ 
(
„„ 
new
„„ "
SqlParameter
„„# /
(
„„/ 0
$str
„„0 :
,
„„: ; 
adminReportDetails
„„< N
.
„„N O
ExamCompletedDate
„„O `
)
„„` a
)
„„a b
;
„„b c
cmd
…… 
.
…… 

Parameters
…… 
.
…… 
Add
…… 
(
…… 
new
…… "
SqlParameter
……# /
(
……/ 0
$str
……0 <
,
……< = 
adminReportDetails
……> P
.
……P Q
Year
……Q U
)
……U V
)
……V W
;
……W X
cmd
‰‰ 
.
‰‰ 
CommandTimeout
‰‰ 
=
‰‰  
$num
‰‰! $
;
‰‰$ %
con
 
.
 
Open
 
(
 
)
 
;
 
r
 
=
 
cmd
 
.
 
ExecuteReader
 !
(
! "
)
" #
;
# $
while
 
(
 
r
 
.
 
Read
 
(
 
)
 
)
 
{
 
AdminReportVM
  
reportListBOExport
 0
=
1 2
new
3 6
AdminReportVM
7 D
(
D E
)
E F
;
F G 
reportListBOExport
‘‘ "
.
‘‘" #
SubspecialtyId
‘‘# 1
=
‘‘2 3
Convert
‘‘4 ;
.
‘‘; <
ToInt32
‘‘< C
(
‘‘C D
r
‘‘D E
[
‘‘E F
$str
‘‘F V
]
‘‘V W
)
‘‘W X
;
‘‘X Y 
reportListBOExport
’’ "
.
’’" #
SubspecialtyName
’’# 3
=
’’4 5
Convert
’’6 =
.
’’= >
ToString
’’> F
(
’’F G
r
’’G H
[
’’H I
$str
’’I \
]
’’\ ]
)
’’] ^
;
’’^ _ 
reportListBOExport
““ "
.
““" #
Correct
““# *
=
““+ ,
Convert
““- 4
.
““4 5
ToInt32
““5 <
(
““< =
r
““= >
[
““> ?
$str
““? H
]
““H I
)
““I J
;
““J K 
reportListBOExport
”” "
.
””" #
	InCorrect
””# ,
=
””- .
Convert
””/ 6
.
””6 7
ToInt32
””7 >
(
””> ?
r
””? @
[
””@ A
$str
””A L
]
””L M
)
””M N
;
””N O 
reportListBOExport
•• "
.
••" #
Score
••# (
=
••) *
Convert
••+ 2
.
••2 3
ToInt32
••3 :
(
••: ;
r
••; <
[
••< =
$str
••= D
]
••D E
)
••E F
;
••F G 
reportListBOExport
–– "
.
––" #
UserId
––# )
=
––* +
Convert
––, 3
.
––3 4
ToInt32
––4 ;
(
––; <
r
––< =
[
––= >
$str
––> F
]
––F G
)
––G H
;
––H I 
reportListBOExport
—— "
.
——" #
BCSCSectionNumber
——# 4
=
——5 6
Convert
——7 >
.
——> ?
ToInt32
——? F
(
——F G
r
——G H
[
——H I
$str
——I T
]
——T U
)
——U V
;
——V W
reportListExport
  
.
  !
Add
! $
(
$ % 
reportListBOExport
% 7
)
7 8
;
8 9
}
™™ 
con
›› 
.
›› 
Close
›› 
(
›› 
)
›› 
;
›› 
return
 
reportListExport
 #
;
# $
}
 	
public
 
static
 
List
 
<
 
AdminReportVM
 (
>
( )

GetPYGYear
* 4
(
4 5
AdminReportVM
5 B

pgyDetails
C M
)
M N
{
   	
List
΅΅ 
<
΅΅ 
AdminReportVM
΅΅ 
>
΅΅ 
pgyList
΅΅  '
=
΅΅( )
new
΅΅* -
List
΅΅. 2
<
΅΅2 3
AdminReportVM
΅΅3 @
>
΅΅@ A
(
΅΅A B
)
΅΅B C
;
΅΅C D
SqlConnection
ΆΆ 

connection
ΆΆ $
=
ΆΆ% &
new
ΆΆ' *
SqlConnection
ΆΆ+ 8
(
ΆΆ8 9#
SqlConnectionProvider
ΆΆ9 N
.
ΆΆN O!
GetConnectionString
ΆΆO b
(
ΆΆb c
DataAccessType
ΆΆc q
.
ΆΆq r
Read
ΆΆr v
)
ΆΆv w
)
ΆΆw x
;
ΆΆx y
string
££ 
sqlQueryChoice
££ !
=
££" #
string
££$ *
.
££* +
Empty
££+ 0
;
££0 1
sqlQueryChoice
¤¤ 
=
¤¤ 
$str¤¤ 
;¤¤ ‘

connection
¥¥ 
.
¥¥ 
Open
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 

SqlCommand
¦¦ 
cmd
¦¦ 
=
¦¦ 
new
¦¦  

SqlCommand
¦¦! +
(
¦¦+ ,
sqlQueryChoice
¦¦, :
,
¦¦: ;

connection
¦¦< F
)
¦¦F G
;
¦¦G H
using
¨¨ 
(
¨¨ 
SqlDataReader
¨¨  
reader
¨¨! '
=
¨¨( )
cmd
¨¨* -
.
¨¨- .
ExecuteReader
¨¨. ;
(
¨¨; <
)
¨¨< =
)
¨¨= >
{
©© 
while
ªª 
(
ªª 
reader
ªª 
.
ªª 
Read
ªª "
(
ªª" #
)
ªª# $
)
ªª$ %
{
«« 
AdminReportVM
¬¬ !
	pgyListBO
¬¬" +
=
¬¬, -
new
¬¬. 1
AdminReportVM
¬¬2 ?
(
¬¬? @
)
¬¬@ A
;
¬¬A B
	pgyListBO
­­ 
.
­­ 
PGYYear
­­ %
=
­­& '
Convert
­­( /
.
­­/ 0
ToString
­­0 8
(
­­8 9
reader
­­9 ?
[
­­? @
$str
­­@ H
]
­­H I
)
­­I J
;
­­J K
pgyList
®® 
.
®® 
Add
®® 
(
®®  
	pgyListBO
®®  )
)
®®) *
;
®®* +
}
―― 
reader
±± 
.
±± 
Close
±± 
(
±± 
)
±± 
;
±± 
}
²² 
return
΄΄ 
pgyList
΄΄ 
;
΄΄ 
}
µµ 	
}
¶¶ 
}·· ¦θ

dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\AssessmentDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
AssessmentDAL 
{ 
public 
static 
List 
< 
Choice !
>! ".
"GetChoiceBYQuestionIdForBCSCMapper# E
(E F
intF I
?I J

questionIdK U
,U V
SqlConnectionW d
gConnectione p
=q r
nulls w
)w x
{ 	
List 
< 
Choice 
> 

choiceList #
=$ %
new& )
List* .
<. /
Choice/ 5
>5 6
(6 7
)7 8
;8 9
SqlConnection 

connection $
=% &
new' *
SqlConnection+ 8
(8 9!
SqlConnectionProvider9 N
.N O
GetConnectionStringO b
(b c
DataAccessTypec q
.q r
Readr v
)v w
)w x
;x y
string 
sqlQueryChoice !
=" #
string$ *
.* +
Empty+ 0
;0 1
int 
notRandomizeAnswer "
=# $
$num% &
;& '
SqlConnection 
aconnection %
=& '
gConnection( 3
;3 4
if 
( 
gConnection 
== 
null #
)# $
{ 
aconnection 
= 
new !
SqlConnection" /
(/ 0!
SqlConnectionProvider0 E
.E F
GetConnectionStringF Y
(Y Z
DataAccessTypeZ h
.h i
Readi m
)m n
)n o
;o p
aconnection 
. 
Open  
(  !
)! "
;" #
} 

SqlCommand 
cmd_a 
= 
new "

SqlCommand# -
(- .
$str. O
,O P
aconnectionQ \
)\ ]
;] ^
cmd_a 
. 
CommandType 
= 
CommandType  +
.+ ,
StoredProcedure, ;
;; <
cmd_a 
. 

Parameters 
. 
Add  
(  !
new! $
SqlParameter% 1
(1 2
$str2 @
,@ A

questionIdB L
)L M
)M N
;N O
using   
(   
SqlDataReader    
reader  ! '
=  ( )
cmd_a  * /
.  / 0
ExecuteReader  0 =
(  = >
)  > ?
)  ? @
{!! 
if"" 
("" 
reader"" 
."" 
HasRows"" "
)""" #
{## 
while%% 
(%% 
reader%% !
.%%! "
Read%%" &
(%%& '
)%%' (
)%%( )
{&& 
object'' 
objID'' $
=''% &
reader''' -
[''- .
$str''. <
]''< =
;''= >
notRandomizeAnswer(( *
=((+ ,
objID((- 2
is((3 5
DBNull((6 <
?((= >
$num((? @
:((A B
Convert((C J
.((J K
ToInt32((K R
(((R S
reader((S Y
[((Y Z
$str((Z h
]((h i
)((i j
;((j k
})) 
reader++ 
.++ 
Close++  
(++  !
)++! "
;++" #
},, 
}-- 
if.. 
(.. 
gConnection.. 
==.. 
null.. #
)..# $
{// 
aconnection00 
.00 
Close00 !
(00! "
)00" #
;00# $
}11 
if33 
(33 
notRandomizeAnswer33 "
==33# %
$num33& '
)33' (
{44 
sqlQueryChoice55 
=55  
$str55! t
+55u v
@questionId	55w ‚
+
55ƒ „
$str
55… ¤
;
55¤ ¥
}66 
else77 
{88 
sqlQueryChoice99 
=99  
$str99! t
+99u v
@questionId	99w ‚
;
99‚ ƒ
}:: 

connection<< 
.<< 
Open<< 
(<< 
)<< 
;<< 

SqlCommand== 
cmd== 
=== 
new==  

SqlCommand==! +
(==+ ,
sqlQueryChoice==, :
,==: ;

connection==< F
)==F G
;==G H
int>> 

sequenceNo>> 
=>> 
$num>> 
;>>  
using?? 
(?? 
SqlDataReader??  
reader??! '
=??( )
cmd??* -
.??- .
ExecuteReader??. ;
(??; <
)??< =
)??= >
{@@ 
ifAA 
(AA 
readerAA 
.AA 
HasRowsAA "
)AA" #
{BB 
whileDD 
(DD 
readerDD !
.DD! "
ReadDD" &
(DD& '
)DD' (
)DD( )
{EE 
ChoiceFF 
choiceFF %
=FF& '
newFF( +
ChoiceFF, 2
(FF2 3
)FF3 4
;FF4 5
choiceGG 
.GG 
choiceIdGG '
=GG( )
readerGG* 0
.GG0 1
GetInt32GG1 9
(GG9 :
readerGG: @
.GG@ A

GetOrdinalGGA K
(GGK L
$strGGL P
)GGP Q
)GGQ R
;GGR S
objectHH 
textObjHH &
=HH' (
readerHH) /
[HH/ 0
$strHH0 6
]HH6 7
;HH7 8
choiceII 
.II 

choiceTextII )
=II* +
textObjII, 3
isII4 6
DBNullII7 =
?II> ?
nullII@ D
:IIE F
readerIIG M
.IIM N
	GetStringIIN W
(IIW X
readerIIX ^
.II^ _

GetOrdinalII_ i
(IIi j
$strIIj p
)IIp q
)IIq r
;IIr s

sequenceNoNN "
++NN" $
;NN$ %
choiceOO 
.OO 
choiceSequenceOO -
=OO. /
(OO0 1
charOO1 5
)OO5 6

sequenceNoOO6 @
;OO@ A
choicePP 
.PP 
ChoiceImagePP *
=PP+ ,
GetChoiceImageListPP- ?
(PP? @
choicePP@ F
.PPF G
choiceIdPPG O
)PPO P
;PPP Q

choiceListQQ "
.QQ" #
AddQQ# &
(QQ& '
choiceQQ' -
)QQ- .
;QQ. /
}RR 
readerTT 
.TT 
CloseTT  
(TT  !
)TT! "
;TT" #
}UU 
}VV 

connectionXX 
.XX 
CloseXX 
(XX 
)XX 
;XX 
returnYY 

choiceListYY 
;YY 
}ZZ 	
public\\ 
static\\ 
List\\ 
<\\ 
Choice\\ !
>\\! "!
GetChoiceBYQuestionId\\# 8
(\\8 9
int\\9 <
?\\< =

questionId\\> H
,\\H I
int\\J M
?\\M N
examId\\O U
,\\U V
int\\W Z
?\\Z [
choiceID\\\ d
,\\d e
int\\f i
?\\i j
examAttemptId\\k x
,\\x y
bool\\z ~
?\\~  
notRandomizeAnswer
\\€ ’
,
\\’ “
SqlConnection
\\” ΅
gConnection
\\Ά ­
=
\\® ―
null
\\° ΄
)
\\΄ µ
{]] 	
List^^ 
<^^ 
Choice^^ 
>^^ 

choiceList^^ #
=^^$ %
new^^& )
List^^* .
<^^. /
Choice^^/ 5
>^^5 6
(^^6 7
)^^7 8
;^^8 9
SqlConnection__ 

connection__ $
=__% &
gConnection__' 2
;__2 3

SqlCommand`` 
cmd`` 
=`` 
new``  

SqlCommand``! +
(``+ ,
)``, -
;``- .
ifaa 
(aa 
gConnectionaa 
==aa 
nullaa #
)aa# $
{bb 

connectioncc 
=cc 
newcc  
SqlConnectioncc! .
(cc. /!
SqlConnectionProvidercc/ D
.ccD E
GetConnectionStringccE X
(ccX Y
DataAccessTypeccY g
.ccg h
Readcch l
)ccl m
)ccm n
;ccn o
}dd 
stringff 
sqlQueryChoiceff !
=ff" #
stringff$ *
.ff* +
Emptyff+ 0
;ff0 1
stringgg 
sqlQueryAttemptgg "
=gg# $
stringgg% +
.gg+ ,
Emptygg, 1
;gg1 2
stringhh 
userExamStatehh  
=hh! "
stringhh# )
.hh) *
Emptyhh* /
;hh/ 0
ifii 
(ii 
choiceIDii 
>ii 
$numii 
)ii 
{jj 
ifll 
(ll 
gConnectionll 
==ll  "
nullll# '
)ll' (
{mm 

connectionnn 
.nn 
Opennn #
(nn# $
)nn$ %
;nn% &
}oo 

SqlCommandrr 

cmdAttemptrr %
=rr& '
newrr( +

SqlCommandrr, 6
(rr6 7
$strrr7 U
,rrU V

connectionrrW a
)rra b
;rrb c

cmdAttemptss 
.ss 
CommandTypess &
=ss' (
CommandTypess) 4
.ss4 5
StoredProceduress5 D
;ssD E

cmdAttempttt 
.tt 

Parameterstt %
.tt% &
Addtt& )
(tt) *
newtt* -
SqlParametertt. :
(tt: ;
$strtt; K
,ttK L
examAttemptIdttM Z
)ttZ [
)tt[ \
;tt\ ]

cmdAttemptuu 
.uu 

Parametersuu %
.uu% &
Adduu& )
(uu) *
newuu* -
SqlParameteruu. :
(uu: ;
$struu; H
,uuH I

questionIduuJ T
)uuT U
)uuU V
;uuV W
usingww 
(ww 
SqlDataReaderww $
readerww% +
=ww, -

cmdAttemptww. 8
.ww8 9
ExecuteReaderww9 F
(wwF G
)wwG H
)wwH I
{xx 
ifyy 
(yy 
readeryy 
.yy 
HasRowsyy &
)yy& '
{zz 
while|| 
(|| 
reader|| %
.||% &
Read||& *
(||* +
)||+ ,
)||, -
{}} 
object~~ "
obj~~# &
=~~' (
reader~~) /
[~~/ 0
$str~~0 ?
]~~? @
;~~@ A
if 
(  
obj  #
is$ &
DBNull' -
)- .
{
€€ 
userExamState
  -
=
. /
null
0 4
;
4 5
cmd
††  #
=
††$ %
new
††& )

SqlCommand
††* 4
(
††4 5
$str
††5 V
,
††V W

connection
††X b
)
††b c
;
††c d
cmd
‡‡  #
.
‡‡# $
CommandType
‡‡$ /
=
‡‡0 1
CommandType
‡‡2 =
.
‡‡= >
StoredProcedure
‡‡> M
;
‡‡M N
cmd
  #
.
# $

Parameters
$ .
.
. /
Add
/ 2
(
2 3
new
3 6
SqlParameter
7 C
(
C D
$str
D Q
,
Q R

questionId
S ]
)
] ^
)
^ _
;
_ `
}
 
else
‹‹  
{
 
userExamState
  -
=
. /
reader
0 6
.
6 7
	GetString
7 @
(
@ A
reader
A G
.
G H

GetOrdinal
H R
(
R S
$str
S b
)
b c
)
c d
;
d e
string
  &
sq
' )
=
* +
string
, 2
.
2 3
Empty
3 8
;
8 9
sq
‘‘  "
=
‘‘# $
$str
‘‘% (
+
‘‘) *
userExamState
‘‘+ 8
+
‘‘9 :
$str
‘‘; >
;
‘‘> ?
sqlQueryChoice
’’  .
=
’’/ 0
$str’’1 ‡
+’’ ‰
userExamState’’ —
+’’ ™
$str’’ Ξ
+’’Ο Π
sq’’Ρ Σ
+’’Τ Υ
$str’’Φ Ϊ
;’’Ϊ Ϋ
cmd
““  #
=
““$ %
new
““& )

SqlCommand
““* 4
(
““4 5
sqlQueryChoice
““5 C
,
““C D

connection
““E O
)
““O P
;
““P Q
}
™™ 
}
 
reader
 
.
 
Close
 $
(
$ %
)
% &
;
& '
}
 
}
 
}
 
else
   
{
΅΅ 
if
ΆΆ 
(
ΆΆ  
notRandomizeAnswer
ΆΆ &
==
ΆΆ' )
true
ΆΆ* .
)
ΆΆ. /
{
££ 
cmd
¤¤ 
=
¤¤ 
new
¤¤ 

SqlCommand
¤¤ (
(
¤¤( )
$str
¤¤) Q
,
¤¤Q R

connection
¤¤S ]
)
¤¤] ^
;
¤¤^ _
cmd
¥¥ 
.
¥¥ 
CommandType
¥¥ #
=
¥¥$ %
CommandType
¥¥& 1
.
¥¥1 2
StoredProcedure
¥¥2 A
;
¥¥A B
cmd
¦¦ 
.
¦¦ 

Parameters
¦¦ "
.
¦¦" #
Add
¦¦# &
(
¦¦& '
new
¦¦' *
SqlParameter
¦¦+ 7
(
¦¦7 8
$str
¦¦8 F
,
¦¦F G

questionId
¦¦H R
)
¦¦R S
)
¦¦S T
;
¦¦T U
}
§§ 
else
¨¨ 
{
©© 
cmd
¬¬ 
=
¬¬ 
new
¬¬ 

SqlCommand
¬¬ (
(
¬¬( )
$str
¬¬) I
,
¬¬I J

connection
¬¬K U
)
¬¬U V
;
¬¬V W
cmd
­­ 
.
­­ 
CommandType
­­ #
=
­­$ %
CommandType
­­& 1
.
­­1 2
StoredProcedure
­­2 A
;
­­A B
cmd
®® 
.
®® 

Parameters
®® "
.
®®" #
Add
®®# &
(
®®& '
new
®®' *
SqlParameter
®®+ 7
(
®®7 8
$str
®®8 F
,
®®F G

questionId
®®H R
)
®®R S
)
®®S T
;
®®T U
}
―― 
}
°° 
if
³³ 
(
³³ 
gConnection
³³ 
==
³³ 
null
³³ #
)
³³# $
{
΄΄ 

connection
µµ 
.
µµ 
Close
µµ  
(
µµ  !
)
µµ! "
;
µµ" #
}
¶¶ 
if
·· 
(
·· 
gConnection
·· 
==
·· 
null
·· #
)
··# $
{
ΈΈ 

connection
ΉΉ 
.
ΉΉ 
Open
ΉΉ 
(
ΉΉ  
)
ΉΉ  !
;
ΉΉ! "
}
ΊΊ 
int
ΎΎ 

sequenceNo
ΎΎ 
=
ΎΎ 
$num
ΎΎ 
;
ΎΎ  
using
ΏΏ 
(
ΏΏ 
SqlDataReader
ΏΏ  
reader
ΏΏ! '
=
ΏΏ( )
cmd
ΏΏ* -
.
ΏΏ- .
ExecuteReader
ΏΏ. ;
(
ΏΏ; <
)
ΏΏ< =
)
ΏΏ= >
{
ΐΐ 
if
ΑΑ 
(
ΑΑ 
reader
ΑΑ 
.
ΑΑ 
HasRows
ΑΑ "
)
ΑΑ" #
{
ΒΒ 
while
ΔΔ 
(
ΔΔ 
reader
ΔΔ !
.
ΔΔ! "
Read
ΔΔ" &
(
ΔΔ& '
)
ΔΔ' (
)
ΔΔ( )
{
ΕΕ 
Choice
ΖΖ 
choice
ΖΖ %
=
ΖΖ& '
new
ΖΖ( +
Choice
ΖΖ, 2
(
ΖΖ2 3
)
ΖΖ3 4
;
ΖΖ4 5
choice
ΗΗ 
.
ΗΗ 
choiceId
ΗΗ '
=
ΗΗ( )
reader
ΗΗ* 0
.
ΗΗ0 1
GetInt32
ΗΗ1 9
(
ΗΗ9 :
reader
ΗΗ: @
.
ΗΗ@ A

GetOrdinal
ΗΗA K
(
ΗΗK L
$str
ΗΗL P
)
ΗΗP Q
)
ΗΗQ R
;
ΗΗR S
object
ΘΘ 
textObj
ΘΘ &
=
ΘΘ' (
reader
ΘΘ) /
[
ΘΘ/ 0
$str
ΘΘ0 6
]
ΘΘ6 7
;
ΘΘ7 8
choice
ΙΙ 
.
ΙΙ 

choiceText
ΙΙ )
=
ΙΙ* +
textObj
ΙΙ, 3
is
ΙΙ4 6
DBNull
ΙΙ7 =
?
ΙΙ> ?
null
ΙΙ@ D
:
ΙΙE F
reader
ΙΙG M
.
ΙΙM N
	GetString
ΙΙN W
(
ΙΙW X
reader
ΙΙX ^
.
ΙΙ^ _

GetOrdinal
ΙΙ_ i
(
ΙΙi j
$str
ΙΙj p
)
ΙΙp q
)
ΙΙq r
;
ΙΙr s

sequenceNo
ΞΞ "
++
ΞΞ" $
;
ΞΞ$ %
choice
ΟΟ 
.
ΟΟ 
choiceSequence
ΟΟ -
=
ΟΟ. /
(
ΟΟ0 1
char
ΟΟ1 5
)
ΟΟ5 6

sequenceNo
ΟΟ6 @
;
ΟΟ@ A
choice
ΠΠ 
.
ΠΠ 
ChoiceImage
ΠΠ *
=
ΠΠ+ , 
GetChoiceImageList
ΠΠ- ?
(
ΠΠ? @
choice
ΠΠ@ F
.
ΠΠF G
choiceId
ΠΠG O
)
ΠΠO P
;
ΠΠP Q

choiceList
ΡΡ "
.
ΡΡ" #
Add
ΡΡ# &
(
ΡΡ& '
choice
ΡΡ' -
)
ΡΡ- .
;
ΡΡ. /
}
ÒÒ 
reader
ΤΤ 
.
ΤΤ 
Close
ΤΤ  
(
ΤΤ  !
)
ΤΤ! "
;
ΤΤ" #
}
ΥΥ 
}
ΦΦ 
if
ΧΧ 
(
ΧΧ 
gConnection
ΧΧ 
==
ΧΧ 
null
ΧΧ #
)
ΧΧ# $
{
ΨΨ 

connection
ΩΩ 
.
ΩΩ 
Close
ΩΩ  
(
ΩΩ  !
)
ΩΩ! "
;
ΩΩ" #
}
ΪΪ 
return
ΫΫ 

choiceList
ΫΫ 
;
ΫΫ 
}
άά 	
public
ήή 
static
ήή 
int
ήή 
GetFirstQuestion
ήή *
(
ήή* +
ExamDTO
ήή+ 2
examObj
ήή3 :
)
ήή: ;
{
ίί 	
int
ΰΰ 

questionId
ΰΰ 
=
ΰΰ 
$num
ΰΰ 
;
ΰΰ 
SqlConnection
αα 

connection
αα $
=
αα% &
new
αα' *
SqlConnection
αα+ 8
(
αα8 9#
SqlConnectionProvider
αα9 N
.
ααN O!
GetConnectionString
ααO b
(
ααb c
DataAccessType
ααc q
.
ααq r
Read
ααr v
)
ααv w
)
ααw x
;
ααx y

connection
ξξ 
.
ξξ 
Open
ξξ 
(
ξξ 
)
ξξ 
;
ξξ 

SqlCommand
οο 
cmd
οο 
=
οο 
new
οο  

SqlCommand
οο! +
(
οο+ ,
$str
οο, B
,
οοB C

connection
οοD N
)
οοN O
;
οοO P
cmd
ππ 
.
ππ 
CommandType
ππ 
=
ππ 
CommandType
ππ )
.
ππ) *
StoredProcedure
ππ* 9
;
ππ9 :
cmd
ρρ 
.
ρρ 

Parameters
ρρ 
.
ρρ 
Add
ρρ 
(
ρρ 
new
ρρ "
SqlParameter
ρρ# /
(
ρρ/ 0
$str
ρρ0 :
,
ρρ: ;
examObj
ρρ< C
.
ρρC D
ExamId
ρρD J
)
ρρJ K
)
ρρK L
;
ρρL M
using
σσ 
(
σσ 
SqlDataReader
σσ  
reader
σσ! '
=
σσ( )
cmd
σσ* -
.
σσ- .
ExecuteReader
σσ. ;
(
σσ; <
)
σσ< =
)
σσ= >
{
ττ 
if
υυ 
(
υυ 
reader
υυ 
.
υυ 
HasRows
υυ "
)
υυ" #
{
φφ 
while
ψψ 
(
ψψ 
reader
ψψ !
.
ψψ! "
Read
ψψ" &
(
ψψ& '
)
ψψ' (
)
ψψ( )
{
ωω 
object
ϊϊ 
objID
ϊϊ $
=
ϊϊ% &
reader
ϊϊ' -
[
ϊϊ- .
$str
ϊϊ. 2
]
ϊϊ2 3
;
ϊϊ3 4

questionId
ϋϋ "
=
ϋϋ# $
objID
ϋϋ% *
is
ϋϋ+ -
DBNull
ϋϋ. 4
?
ϋϋ5 6
$num
ϋϋ7 8
:
ϋϋ9 :
reader
ϋϋ; A
.
ϋϋA B
GetInt32
ϋϋB J
(
ϋϋJ K
reader
ϋϋK Q
.
ϋϋQ R

GetOrdinal
ϋϋR \
(
ϋϋ\ ]
$str
ϋϋ] a
)
ϋϋa b
)
ϋϋb c
;
ϋϋc d
}
όό 
}
ύύ 
}
ώώ 

connection
€€ 
.
€€ 
Close
€€ 
(
€€ 
)
€€ 
;
€€ 
return
 

questionId
 
;
 
}
‚‚ 	
public
„„ 
static
„„ 
QuestionDetails
„„ % 
GetQuestionDetails
„„& 8
(
„„8 9
int
„„9 <
?
„„< =
examId
„„> D
,
„„D E
int
„„F I
?
„„I J

questionId
„„K U
)
„„U V
{
…… 	
QuestionDetails
†† 
questionDetail
†† *
=
††+ ,
new
††- 0
QuestionDetails
††1 @
(
††@ A
)
††A B
;
††B C
SqlParameter
‡‡ 
[
‡‡ 
]
‡‡ 
arrSqlParameter
‡‡ *
=
‡‡+ ,
{
 
new
‰‰ 
SqlParameter
‰‰ $
(
‰‰$ %
$str
‰‰% .
,
‰‰. /
Convert
‰‰0 7
.
‰‰7 8
ToInt32
‰‰8 ?
(
‰‰? @
examId
‰‰@ F
)
‰‰F G
)
‰‰G H
,
‰‰H I
new
 
SqlParameter
 $
(
$ %
$str
% 2
,
2 3
Convert
4 ;
.
; <
ToInt32
< C
(
C D

questionId
D N
)
N O
)
O P
,
P Q
}
‹‹ 
;
‹‹ 
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm …
,… †
arrSqlParameter‡ –
)– —
)— 
{
 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
 
questionDetail
‘‘ "
.
‘‘" #

questionId
‘‘# -
=
‘‘. /
Convert
‘‘0 7
.
‘‘7 8
ToInt32
‘‘8 ?
(
‘‘? @
objSqlDataReader
‘‘@ P
[
‘‘P Q
$str
‘‘Q ]
]
‘‘] ^
)
‘‘^ _
;
‘‘_ `
object
’’ 
prevQuestionIdObj
’’ ,
=
’’- .
objSqlDataReader
’’/ ?
[
’’? @
$str
’’@ P
]
’’P Q
;
’’Q R
questionDetail
““ "
.
““" #

previousId
““# -
=
““. /
prevQuestionIdObj
““0 A
is
““B D
DBNull
““E K
?
““L M
-
““N O
$num
““O P
:
““Q R
Convert
““S Z
.
““Z [
ToInt32
““[ b
(
““b c
objSqlDataReader
““c s
[
““s t
$str““t „
]““„ …
)““… †
;““† ‡
object
”” 
nextQuestionIdObj
”” ,
=
””- .
objSqlDataReader
””/ ?
[
””? @
$str
””@ P
]
””P Q
;
””Q R
questionDetail
•• "
.
••" #
nextId
••# )
=
••* +
nextQuestionIdObj
••, =
is
••> @
DBNull
••A G
?
••H I
-
••J K
$num
••K L
:
••M N
Convert
••O V
.
••V W
ToInt32
••W ^
(
••^ _
objSqlDataReader
••_ o
[
••o p
$str••p €
]••€ 
)•• ‚
;••‚ ƒ
object
–– 
serialNumberObj
–– *
=
––+ ,
objSqlDataReader
––- =
[
––= >
$str
––> L
]
––L M
;
––M N
questionDetail
—— "
.
——" #
serialNumber
——# /
=
——0 1
serialNumberObj
——2 A
is
——B D
DBNull
——E K
?
——L M
$num
——N O
:
——P Q
Convert
——R Y
.
——Y Z
ToInt32
——Z a
(
——a b
objSqlDataReader
——b r
[
——r s
$str——s 
]—— ‚
)——‚ ƒ
;——ƒ „
object
 
stemObj
 "
=
# $
objSqlDataReader
% 5
[
5 6
$str
6 <
]
< =
;
= >
questionDetail
™™ "
.
™™" #
questionText
™™# /
=
™™0 1
stemObj
™™2 9
is
™™: <
DBNull
™™= C
?
™™D E
null
™™F J
:
™™K L
Convert
™™M T
.
™™T U
ToString
™™U ]
(
™™] ^
objSqlDataReader
™™^ n
[
™™n o
$str
™™o u
]
™™u v
)
™™v w
;
™™w x
object
 
friendlyidobj
 (
=
) *
objSqlDataReader
+ ;
[
; <
$str
< H
]
H I
;
I J
questionDetail
›› "
.
››" #

FriendlyId
››# -
=
››. /
friendlyidobj
››0 =
is
››> @
DBNull
››A G
?
››H I
$num
››J K
:
››L M
Convert
››N U
.
››U V
ToInt32
››V ]
(
››] ^
objSqlDataReader
››^ n
[
››n o
$str
››o {
]
››{ |
)
››| }
;
››} ~
object
 
examType
 #
=
$ %
objSqlDataReader
& 6
[
6 7
$str
7 A
]
A B
;
B C
questionDetail
 "
.
" #
ExamType
# +
=
, -
examType
. 6
is
7 9
DBNull
: @
?
A B
$num
C D
:
E F
Convert
G N
.
N O
ToInt32
O V
(
V W
objSqlDataReader
W g
[
g h
$str
h r
]
r s
)
s t
;
t u
object
 #
notRandomizeAnswerobj
 0
=
1 2
objSqlDataReader
3 C
[
C D
$str
D Y
]
Y Z
;
Z [
questionDetail
 "
.
" # 
NotRandomizeAnswer
# 5
=
6 7#
notRandomizeAnswerobj
8 M
is
N P
DBNull
Q W
?
X Y
false
Z _
:
` a
Convert
b i
.
i j
	ToBoolean
j s
(
s t
objSqlDataReadert „
[„ …
$str… 
] ›
)› 
; 
}
   
objSqlDataReader
ΆΆ  
.
ΆΆ  !
Close
ΆΆ! &
(
ΆΆ& '
)
ΆΆ' (
;
ΆΆ( )
List
¤¤ 
<
¤¤ 
QuestionImage
¤¤ "
>
¤¤" #
questionImageList
¤¤$ 5
=
¤¤6 7
new
¤¤8 ;
List
¤¤< @
<
¤¤@ A
QuestionImage
¤¤A N
>
¤¤N O
(
¤¤O P
)
¤¤P Q
;
¤¤Q R
questionImageList
¥¥ !
=
¥¥" #"
GetQuestionImageList
¥¥$ 8
(
¥¥8 9

questionId
¥¥9 C
)
¥¥C D
;
¥¥D E
questionDetail
¦¦ 
.
¦¦ 
questionImage
¦¦ ,
=
¦¦- .
questionImageList
¦¦/ @
;
¦¦@ A
return
§§ 
questionDetail
§§ %
;
§§% &
}
¨¨ 
}
©© 	
public
¬¬ 
static
¬¬ 
QuestionDetails
¬¬ %#
GetQuestionDetails_SR
¬¬& ;
(
¬¬; <
int
¬¬< ?
?
¬¬? @
examId
¬¬A G
,
¬¬G H
int
¬¬I L
?
¬¬L M

questionId
¬¬N X
)
¬¬X Y
{
­­ 	
QuestionDetails
®® 
questionDetail
®® *
=
®®+ ,
new
®®- 0
QuestionDetails
®®1 @
(
®®@ A
)
®®A B
;
®®B C
SqlParameter
―― 
[
―― 
]
―― 
arrSqlParameter
―― *
=
――+ ,
{
°° 
new
±± 
SqlParameter
±± $
(
±±$ %
$str
±±% .
,
±±. /
Convert
±±0 7
.
±±7 8
ToInt32
±±8 ?
(
±±? @
examId
±±@ F
)
±±F G
)
±±G H
,
±±H I
new
²² 
SqlParameter
²² $
(
²²$ %
$str
²²% 2
,
²²2 3
Convert
²²4 ;
.
²²; <
ToInt32
²²< C
(
²²C D

questionId
²²D N
)
²²N O
)
²²O P
,
²²P Q
}
³³ 
;
³³ 
using
΄΄ 
(
΄΄ 
SqlDataReader
΄΄  
objSqlDataReader
΄΄! 1
=
΄΄2 3
	SqlHelper
΄΄4 =
.
΄΄= >
ExecuteReader
΄΄> K
(
΄΄K L#
SqlConnectionProvider
µµ %
.
µµ% &!
GetConnectionString
µµ& 9
(
µµ9 :
DataAccessType
µµ: H
.
µµH I
Read
µµI M
)
µµM N
,
µµN O
CommandType
µµP [
.
µµ[ \
StoredProcedure
µµ\ k
,
µµk l
$strµµm 
,µµ ‰
arrSqlParameterµµ ™
)µµ™ 
)µµ ›
{
¶¶ 
while
·· 
(
·· 
objSqlDataReader
·· '
.
··' (
Read
··( ,
(
··, -
)
··- .
)
··. /
{
ΈΈ 
questionDetail
ΉΉ "
.
ΉΉ" #

questionId
ΉΉ# -
=
ΉΉ. /
Convert
ΉΉ0 7
.
ΉΉ7 8
ToInt32
ΉΉ8 ?
(
ΉΉ? @
objSqlDataReader
ΉΉ@ P
[
ΉΉP Q
$str
ΉΉQ ]
]
ΉΉ] ^
)
ΉΉ^ _
;
ΉΉ_ `
object
ΐΐ 
stemObj
ΐΐ "
=
ΐΐ# $
objSqlDataReader
ΐΐ% 5
[
ΐΐ5 6
$str
ΐΐ6 <
]
ΐΐ< =
;
ΐΐ= >
questionDetail
ΑΑ "
.
ΑΑ" #
questionText
ΑΑ# /
=
ΑΑ0 1
stemObj
ΑΑ2 9
is
ΑΑ: <
DBNull
ΑΑ= C
?
ΑΑD E
null
ΑΑF J
:
ΑΑK L
Convert
ΑΑM T
.
ΑΑT U
ToString
ΑΑU ]
(
ΑΑ] ^
objSqlDataReader
ΑΑ^ n
[
ΑΑn o
$str
ΑΑo u
]
ΑΑu v
)
ΑΑv w
;
ΑΑw x
object
ΒΒ 
friendlyidobj
ΒΒ (
=
ΒΒ) *
objSqlDataReader
ΒΒ+ ;
[
ΒΒ; <
$str
ΒΒ< H
]
ΒΒH I
;
ΒΒI J
questionDetail
ΓΓ "
.
ΓΓ" #

FriendlyId
ΓΓ# -
=
ΓΓ. /
friendlyidobj
ΓΓ0 =
is
ΓΓ> @
DBNull
ΓΓA G
?
ΓΓH I
$num
ΓΓJ K
:
ΓΓL M
Convert
ΓΓN U
.
ΓΓU V
ToInt32
ΓΓV ]
(
ΓΓ] ^
objSqlDataReader
ΓΓ^ n
[
ΓΓn o
$str
ΓΓo {
]
ΓΓ{ |
)
ΓΓ| }
;
ΓΓ} ~
}
ΔΔ 
objSqlDataReader
ΖΖ  
.
ΖΖ  !
Close
ΖΖ! &
(
ΖΖ& '
)
ΖΖ' (
;
ΖΖ( )
List
ΘΘ 
<
ΘΘ 
QuestionImage
ΘΘ "
>
ΘΘ" #
questionImageList
ΘΘ$ 5
=
ΘΘ6 7
new
ΘΘ8 ;
List
ΘΘ< @
<
ΘΘ@ A
QuestionImage
ΘΘA N
>
ΘΘN O
(
ΘΘO P
)
ΘΘP Q
;
ΘΘQ R
questionImageList
ΙΙ !
=
ΙΙ" #"
GetQuestionImageList
ΙΙ$ 8
(
ΙΙ8 9

questionId
ΙΙ9 C
)
ΙΙC D
;
ΙΙD E
questionDetail
ΚΚ 
.
ΚΚ 
questionImage
ΚΚ ,
=
ΚΚ- .
questionImageList
ΚΚ/ @
;
ΚΚ@ A
return
ΛΛ 
questionDetail
ΛΛ %
;
ΛΛ% &
}
ΜΜ 
}
ΝΝ 	
public
ΟΟ 
static
ΟΟ 
List
ΟΟ 
<
ΟΟ 
QuestionImage
ΟΟ (
>
ΟΟ( )"
GetQuestionImageList
ΟΟ* >
(
ΟΟ> ?
int
ΟΟ? B
?
ΟΟB C

questionId
ΟΟD N
)
ΟΟN O
{
ΠΠ 	
List
ΡΡ 
<
ΡΡ 
QuestionImage
ΡΡ 
>
ΡΡ 
questionImageList
ΡΡ  1
=
ΡΡ2 3
new
ΡΡ4 7
List
ΡΡ8 <
<
ΡΡ< =
QuestionImage
ΡΡ= J
>
ΡΡJ K
(
ΡΡK L
)
ΡΡL M
;
ΡΡM N
SqlConnection
ÒÒ 

connection
ÒÒ $
=
ÒÒ% &
new
ÒÒ' *
SqlConnection
ÒÒ+ 8
(
ÒÒ8 9#
SqlConnectionProvider
ÒÒ9 N
.
ÒÒN O!
GetConnectionString
ÒÒO b
(
ÒÒb c
DataAccessType
ÒÒc q
.
ÒÒq r
Read
ÒÒr v
)
ÒÒv w
)
ÒÒw x
;
ÒÒx y
string
ΣΣ #
sqlQueryQuestionImage
ΣΣ (
=
ΣΣ) *
string
ΣΣ+ 1
.
ΣΣ1 2
Empty
ΣΣ2 7
;
ΣΣ7 8#
sqlQueryQuestionImage
ΤΤ !
=
ΤΤ" #
$str
ΤΤ$ U
+
ΤΤV W
@questionId
ΤΤX c
+
ΤΤd e
$strΤΤf 
;ΤΤ ‘

connection
ΥΥ 
.
ΥΥ 
Open
ΥΥ 
(
ΥΥ 
)
ΥΥ 
;
ΥΥ 

SqlCommand
ΦΦ 
cmd
ΦΦ 
=
ΦΦ 
new
ΦΦ  

SqlCommand
ΦΦ! +
(
ΦΦ+ ,#
sqlQueryQuestionImage
ΦΦ, A
,
ΦΦA B

connection
ΦΦC M
)
ΦΦM N
;
ΦΦN O
using
ΧΧ 
(
ΧΧ 
SqlDataReader
ΧΧ  
reader
ΧΧ! '
=
ΧΧ( )
cmd
ΧΧ* -
.
ΧΧ- .
ExecuteReader
ΧΧ. ;
(
ΧΧ; <
)
ΧΧ< =
)
ΧΧ= >
{
ΨΨ 
if
ΩΩ 
(
ΩΩ 
reader
ΩΩ 
.
ΩΩ 
HasRows
ΩΩ "
)
ΩΩ" #
{
ΪΪ 
while
άά 
(
άά 
reader
άά !
.
άά! "
Read
άά" &
(
άά& '
)
άά' (
)
άά( )
{
έέ 
QuestionImage
ήή %
questionImage
ήή& 3
=
ήή4 5
new
ήή6 9
QuestionImage
ήή: G
(
ήήG H
)
ήήH I
;
ήήI J
object
ίί  
objQuestionImageid
ίί 1
=
ίί2 3
reader
ίί4 :
[
ίί: ;
$str
ίί; N
]
ίίN O
;
ίίO P
questionImage
ΰΰ %
.
ΰΰ% &
QuestionImageId
ΰΰ& 5
=
ΰΰ6 7 
objQuestionImageid
ΰΰ8 J
is
ΰΰK M
DBNull
ΰΰN T
?
ΰΰU V
$num
ΰΰW X
:
ΰΰY Z
reader
ΰΰ[ a
.
ΰΰa b
GetInt32
ΰΰb j
(
ΰΰj k
reader
ΰΰk q
.
ΰΰq r

GetOrdinal
ΰΰr |
(
ΰΰ| }
$strΰΰ} 
)ΰΰ ‘
)ΰΰ‘ ’
;ΰΰ’ “
object
αα 

objCaption
αα )
=
αα* +
reader
αα, 2
[
αα2 3
$str
αα3 <
]
αα< =
;
αα= >
questionImage
ββ %
.
ββ% &
Caption
ββ& -
=
ββ. /

objCaption
ββ0 :
is
ββ; =
DBNull
ββ> D
?
ββE F
string
ββG M
.
ββM N
Empty
ββN S
:
ββT U
reader
ββV \
.
ββ\ ]
	GetString
ββ] f
(
ββf g
reader
ββg m
.
ββm n

GetOrdinal
ββn x
(
ββx y
$strββy ‚
)ββ‚ ƒ
)ββƒ „
;ββ„ …
object
γγ 
objComments
γγ *
=
γγ+ ,
reader
γγ- 3
[
γγ3 4
$str
γγ4 >
]
γγ> ?
;
γγ? @
questionImage
δδ %
.
δδ% &
Comments
δδ& .
=
δδ/ 0
objComments
δδ1 <
is
δδ= ?
DBNull
δδ@ F
?
δδG H
string
δδI O
.
δδO P
Empty
δδP U
:
δδV W
reader
δδX ^
.
δδ^ _
	GetString
δδ_ h
(
δδh i
reader
δδi o
.
δδo p

GetOrdinal
δδp z
(
δδz {
$strδδ{ …
)δδ… †
)δδ† ‡
;δδ‡ 
object
εε 
	objCredit
εε (
=
εε) *
reader
εε+ 1
[
εε1 2
$str
εε2 :
]
εε: ;
;
εε; <
questionImage
ζζ %
.
ζζ% &
Credit
ζζ& ,
=
ζζ- .
	objCredit
ζζ/ 8
is
ζζ9 ;
DBNull
ζζ< B
?
ζζC D
string
ζζE K
.
ζζK L
Empty
ζζL Q
:
ζζR S
reader
ζζT Z
.
ζζZ [
	GetString
ζζ[ d
(
ζζd e
reader
ζζe k
.
ζζk l

GetOrdinal
ζζl v
(
ζζv w
$str
ζζw 
)ζζ €
)ζζ€ 
;ζζ ‚
object
ηη 
	objFigure
ηη (
=
ηη) *
reader
ηη+ 1
[
ηη1 2
$str
ηη2 :
]
ηη: ;
;
ηη; <
questionImage
θθ %
.
θθ% &
Figure
θθ& ,
=
θθ- .
	objFigure
θθ/ 8
is
θθ9 ;
DBNull
θθ< B
?
θθC D
string
θθE K
.
θθK L
Empty
θθL Q
:
θθR S
reader
θθT Z
.
θθZ [
	GetString
θθ[ d
(
θθd e
reader
θθe k
.
θθk l

GetOrdinal
θθl v
(
θθv w
$str
θθw 
)θθ €
)θθ€ 
;θθ ‚
object
ιι 
objImagePath
ιι +
=
ιι, -
reader
ιι. 4
[
ιι4 5
$str
ιι5 @
]
ιι@ A
;
ιιA B
questionImage
κκ %
.
κκ% &
	ImagePath
κκ& /
=
κκ0 1
objImagePath
κκ2 >
is
κκ? A
DBNull
κκB H
?
κκI J
string
κκK Q
.
κκQ R
Empty
κκR W
:
κκX Y
reader
κκZ `
.
κκ` a
	GetString
κκa j
(
κκj k
reader
κκk q
.
κκq r

GetOrdinal
κκr |
(
κκ| }
$strκκ} 
)κκ ‰
)κκ‰ 
;κκ ‹
object
λλ 
	objSource
λλ (
=
λλ) *
reader
λλ+ 1
[
λλ1 2
$str
λλ2 :
]
λλ: ;
;
λλ; <
questionImage
μμ %
.
μμ% &
Source
μμ& ,
=
μμ- .
	objSource
μμ/ 8
is
μμ9 ;
DBNull
μμ< B
?
μμC D
string
μμE K
.
μμK L
Empty
μμL Q
:
μμR S
reader
μμT Z
.
μμZ [
	GetString
μμ[ d
(
μμd e
reader
μμe k
.
μμk l

GetOrdinal
μμl v
(
μμv w
$str
μμw 
)μμ €
)μμ€ 
;μμ ‚
object
νν 
objTitle
νν '
=
νν( )
reader
νν* 0
[
νν0 1
$str
νν1 8
]
νν8 9
;
νν9 :
questionImage
ξξ %
.
ξξ% &
Title
ξξ& +
=
ξξ, -
objTitle
ξξ. 6
is
ξξ7 9
DBNull
ξξ: @
?
ξξA B
string
ξξC I
.
ξξI J
Empty
ξξJ O
:
ξξP Q
reader
ξξR X
.
ξξX Y
	GetString
ξξY b
(
ξξb c
reader
ξξc i
.
ξξi j

GetOrdinal
ξξj t
(
ξξt u
$str
ξξu |
)
ξξ| }
)
ξξ} ~
;
ξξ~ 
object
οο 
objQuestionId
οο ,
=
οο- .
reader
οο/ 5
[
οο5 6
$str
οο6 B
]
οοB C
;
οοC D
questionImage
ππ %
.
ππ% &

QuestionId
ππ& 0
=
ππ1 2
objQuestionId
ππ3 @
is
ππA C
DBNull
ππD J
?
ππK L
$num
ππM N
:
ππO P
reader
ππQ W
.
ππW X
GetInt32
ππX `
(
ππ` a
reader
ππa g
.
ππg h

GetOrdinal
ππh r
(
ππr s
$str
ππs 
)ππ €
)ππ€ 
;ππ ‚
questionImageList
ρρ )
.
ρρ) *
Add
ρρ* -
(
ρρ- .
questionImage
ρρ. ;
)
ρρ; <
;
ρρ< =
}
ςς 
reader
ττ 
.
ττ 
Close
ττ  
(
ττ  !
)
ττ! "
;
ττ" #
}
υυ 
}
φφ 

connection
ψψ 
.
ψψ 
Close
ψψ 
(
ψψ 
)
ψψ 
;
ψψ 
return
ωω 
questionImageList
ωω $
;
ωω$ %
}
ϊϊ 	
public
όό 
static
όό 
List
όό 
<
όό 
ChoiceImage
όό &
>
όό& ' 
GetChoiceImageList
όό( :
(
όό: ;
int
όό; >
?
όό> ?
choiceId
όό@ H
)
όόH I
{
ύύ 	
List
ώώ 
<
ώώ 
ChoiceImage
ώώ 
>
ώώ 
choiceImageList
ώώ -
=
ώώ. /
new
ώώ0 3
List
ώώ4 8
<
ώώ8 9
ChoiceImage
ώώ9 D
>
ώώD E
(
ώώE F
)
ώώF G
;
ώώG H
SqlConnection
ÿÿ 

connection
ÿÿ $
=
ÿÿ% &
new
ÿÿ' *
SqlConnection
ÿÿ+ 8
(
ÿÿ8 9#
SqlConnectionProvider
ÿÿ9 N
.
ÿÿN O!
GetConnectionString
ÿÿO b
(
ÿÿb c
DataAccessType
ÿÿc q
.
ÿÿq r
Read
ÿÿr v
)
ÿÿv w
)
ÿÿw x
;
ÿÿx y

connection
…… 
.
…… 
Open
…… 
(
…… 
)
…… 
;
…… 

SqlCommand
†† 
cmd
†† 
=
†† 
new
††  

SqlCommand
††! +
(
††+ ,
$str
††, D
,
††D E

connection
††F P
)
††P Q
;
††Q R
cmd
‡‡ 
.
‡‡ 
CommandType
‡‡ 
=
‡‡ 
CommandType
‡‡ )
.
‡‡) *
StoredProcedure
‡‡* 9
;
‡‡9 :
cmd
 
.
 

Parameters
 
.
 
Add
 
(
 
new
 "
SqlParameter
# /
(
/ 0
$str
0 ;
,
; <
choiceId
= E
)
E F
)
F G
;
G H
using
 
(
 
SqlDataReader
  
reader
! '
=
( )
cmd
* -
.
- .
ExecuteReader
. ;
(
; <
)
< =
)
= >
{
‹‹ 
if
 
(
 
reader
 
.
 
HasRows
 "
)
" #
{
 
while
 
(
 
reader
 !
.
! "
Read
" &
(
& '
)
' (
)
( )
{
 
ChoiceImage
‘‘ #
questionImage
‘‘$ 1
=
‘‘2 3
new
‘‘4 7
ChoiceImage
‘‘8 C
(
‘‘C D
)
‘‘D E
;
‘‘E F
object
’’ $
objAnswerChoiceImageid
’’ 5
=
’’6 7
reader
’’8 >
[
’’> ?
$str
’’? W
]
’’W X
;
’’X Y
questionImage
““ %
.
““% &!
AnswerChoiceImageId
““& 9
=
““: ;$
objAnswerChoiceImageid
““< R
is
““S U
DBNull
““V \
?
““] ^
$num
““_ `
:
““a b
reader
““c i
.
““i j
GetInt32
““j r
(
““r s
reader
““s y
.
““y z

GetOrdinal““z „
(““„ …
$str““… 
)““ 
)““ 
;““  
object
”” 

objCaption
”” )
=
””* +
reader
””, 2
[
””2 3
$str
””3 <
]
””< =
;
””= >
questionImage
•• %
.
••% &
Caption
••& -
=
••. /

objCaption
••0 :
is
••; =
DBNull
••> D
?
••E F
string
••G M
.
••M N
Empty
••N S
:
••T U
reader
••V \
.
••\ ]
	GetString
••] f
(
••f g
reader
••g m
.
••m n

GetOrdinal
••n x
(
••x y
$str••y ‚
)••‚ ƒ
)••ƒ „
;••„ …
object
–– 
	objCredit
–– (
=
––) *
reader
––+ 1
[
––1 2
$str
––2 :
]
––: ;
;
––; <
questionImage
—— %
.
——% &
Credit
——& ,
=
——- .
	objCredit
——/ 8
is
——9 ;
DBNull
——< B
?
——C D
string
——E K
.
——K L
Empty
——L Q
:
——R S
reader
——T Z
.
——Z [
	GetString
——[ d
(
——d e
reader
——e k
.
——k l

GetOrdinal
——l v
(
——v w
$str
——w 
)—— €
)——€ 
;—— ‚
object
 
	objFigure
 (
=
) *
reader
+ 1
[
1 2
$str
2 :
]
: ;
;
; <
questionImage
™™ %
.
™™% &
Figure
™™& ,
=
™™- .
	objFigure
™™/ 8
is
™™9 ;
DBNull
™™< B
?
™™C D
string
™™E K
.
™™K L
Empty
™™L Q
:
™™R S
reader
™™T Z
.
™™Z [
	GetString
™™[ d
(
™™d e
reader
™™e k
.
™™k l

GetOrdinal
™™l v
(
™™v w
$str
™™w 
)™™ €
)™™€ 
;™™ ‚
object
 
objImagePath
 +
=
, -
reader
. 4
[
4 5
$str
5 @
]
@ A
;
A B
questionImage
›› %
.
››% &
	ImagePath
››& /
=
››0 1
objImagePath
››2 >
is
››? A
DBNull
››B H
?
››I J
string
››K Q
.
››Q R
Empty
››R W
:
››X Y
reader
››Z `
.
››` a
	GetString
››a j
(
››j k
reader
››k q
.
››q r

GetOrdinal
››r |
(
››| }
$str››} 
)›› ‰
)››‰ 
;›› ‹
object
 
	objSource
 (
=
) *
reader
+ 1
[
1 2
$str
2 :
]
: ;
;
; <
questionImage
 %
.
% &
Source
& ,
=
- .
	objSource
/ 8
is
9 ;
DBNull
< B
?
C D
string
E K
.
K L
Empty
L Q
:
R S
reader
T Z
.
Z [
	GetString
[ d
(
d e
reader
e k
.
k l

GetOrdinal
l v
(
v w
$str
w 
) €
)€ 
; ‚
object
 
objTitle
 '
=
( )
reader
* 0
[
0 1
$str
1 8
]
8 9
;
9 :
questionImage
 %
.
% &
Title
& +
=
, -
objTitle
. 6
is
7 9
DBNull
: @
?
A B
string
C I
.
I J
Empty
J O
:
P Q
reader
R X
.
X Y
	GetString
Y b
(
b c
reader
c i
.
i j

GetOrdinal
j t
(
t u
$str
u |
)
| }
)
} ~
;
~ 
object
   
objChoiceId
   *
=
  + ,
reader
  - 3
[
  3 4
$str
  4 ?
]
  ? @
;
  @ A
questionImage
΅΅ %
.
΅΅% &
ChoiceId
΅΅& .
=
΅΅/ 0
objChoiceId
΅΅1 <
is
΅΅= ?
DBNull
΅΅@ F
?
΅΅G H
$num
΅΅I J
:
΅΅K L
reader
΅΅M S
.
΅΅S T
GetInt32
΅΅T \
(
΅΅\ ]
reader
΅΅] c
.
΅΅c d

GetOrdinal
΅΅d n
(
΅΅n o
$str
΅΅o z
)
΅΅z {
)
΅΅{ |
;
΅΅| }
choiceImageList
ΆΆ '
.
ΆΆ' (
Add
ΆΆ( +
(
ΆΆ+ ,
questionImage
ΆΆ, 9
)
ΆΆ9 :
;
ΆΆ: ;
}
££ 
reader
¥¥ 
.
¥¥ 
Close
¥¥  
(
¥¥  !
)
¥¥! "
;
¥¥" #
}
¦¦ 
}
§§ 

connection
©© 
.
©© 
Close
©© 
(
©© 
)
©© 
;
©© 
return
ªª 
choiceImageList
ªª "
;
ªª" #
}
«« 	
public
­­ 
static
­­ 
int
­­ (
GetRightChoiceByQuestionId
­­ 4
(
­­4 5
int
­­5 8

questionId
­­9 C
,
­­C D
SqlConnection
­­E R
gConnection
­­S ^
=
­­^ _
null
­­_ c
)
­­c d
{
®® 	
int
°° 
rightChoiceId
°° 
=
°° 
$num
°°  !
;
°°! "
SqlConnection
±± 

connection
±± $
=
±±% &
gConnection
±±' 2
;
±±2 3
if
²² 
(
²² 
gConnection
²² 
==
²² 
null
²² #
)
²²# $
{
³³ 

connection
΄΄ 
=
΄΄ 
new
΄΄  
SqlConnection
΄΄! .
(
΄΄. /#
SqlConnectionProvider
΄΄/ D
.
΄΄D E!
GetConnectionString
΄΄E X
(
΄΄X Y
DataAccessType
΄΄Y g
.
΄΄g h
Read
΄΄h l
)
΄΄l m
)
΄΄m n
;
΄΄n o

connection
µµ 
.
µµ 
Open
µµ 
(
µµ  
)
µµ  !
;
µµ! "
}
¶¶ 

SqlCommand
»» 
cmd
»» 
=
»» 
new
»»  

SqlCommand
»»! +
(
»»+ ,
$str
»», L
,
»»L M

connection
»»N X
)
»»X Y
;
»»Y Z
cmd
ΌΌ 
.
ΌΌ 
CommandType
ΌΌ 
=
ΌΌ 
CommandType
ΌΌ )
.
ΌΌ) *
StoredProcedure
ΌΌ* 9
;
ΌΌ9 :
cmd
½½ 
.
½½ 

Parameters
½½ 
.
½½ 
Add
½½ 
(
½½ 
new
½½ "
SqlParameter
½½# /
(
½½/ 0
$str
½½0 >
,
½½> ?

questionId
½½@ J
)
½½J K
)
½½K L
;
½½L M
using
ΎΎ 
(
ΎΎ 
SqlDataReader
ΎΎ  
reader
ΎΎ! '
=
ΎΎ( )
cmd
ΎΎ* -
.
ΎΎ- .
ExecuteReader
ΎΎ. ;
(
ΎΎ; <
)
ΎΎ< =
)
ΎΎ= >
{
ΏΏ 
if
ΐΐ 
(
ΐΐ 
reader
ΐΐ 
.
ΐΐ 
HasRows
ΐΐ "
)
ΐΐ" #
{
ΑΑ 
while
ΓΓ 
(
ΓΓ 
reader
ΓΓ !
.
ΓΓ! "
Read
ΓΓ" &
(
ΓΓ& '
)
ΓΓ' (
)
ΓΓ( )
{
ΔΔ 
object
ΕΕ 
objID
ΕΕ $
=
ΕΕ% &
reader
ΕΕ' -
[
ΕΕ- .
$str
ΕΕ. 2
]
ΕΕ2 3
;
ΕΕ3 4
rightChoiceId
ΖΖ %
=
ΖΖ& '
objID
ΖΖ( -
is
ΖΖ. 0
DBNull
ΖΖ1 7
?
ΖΖ8 9
$num
ΖΖ: ;
:
ΖΖ< =
reader
ΖΖ> D
.
ΖΖD E
GetInt32
ΖΖE M
(
ΖΖM N
reader
ΖΖN T
.
ΖΖT U

GetOrdinal
ΖΖU _
(
ΖΖ_ `
$str
ΖΖ` d
)
ΖΖd e
)
ΖΖe f
;
ΖΖf g
}
ΗΗ 
reader
ΙΙ 
.
ΙΙ 
Close
ΙΙ  
(
ΙΙ  !
)
ΙΙ! "
;
ΙΙ" #
}
ΚΚ 
}
ΛΛ 
if
ΜΜ 
(
ΜΜ 
gConnection
ΜΜ 
==
ΜΜ 
null
ΜΜ #
)
ΜΜ# $
{
ΝΝ 

connection
ΞΞ 
.
ΞΞ 
Close
ΞΞ  
(
ΞΞ  !
)
ΞΞ! "
;
ΞΞ" #
}
ΟΟ 
return
ΠΠ 
rightChoiceId
ΠΠ  
;
ΠΠ  !
}
ΡΡ 	
public
κκ 
static
κκ 
int
κκ  
UpdateSkipQuestion
κκ ,
(
κκ, -!
ExamSkipQuestionDTO
κκ- @
skipQuestion
κκA M
)
κκM N
{
λλ 	
SqlParameter
μμ 
[
μμ 
]
μμ 
arrSqlParameter
μμ *
=
μμ+ ,
{
νν 
new
ξξ 
SqlParameter
ξξ $
(
ξξ$ %
$str
ξξ% .
,
ξξ. /
skipQuestion
ξξ0 <
.
ξξ< =
ExamId
ξξ= C
)
ξξC D
,
ξξD E
new
οο 
SqlParameter
οο $
(
οο$ %
$str
οο% 3
,
οο3 4
skipQuestion
οο5 A
.
οοA B

QuestionId
οοB L
)
οοL M
,
οοM N
new
ππ 
SqlParameter
ππ $
(
ππ$ %
$str
ππ% 5
,
ππ5 6
skipQuestion
ππ7 C
.
ππC D
ExamAttemptId
ππD Q
)
ππQ R
,
ππR S
new
ρρ 
SqlParameter
ρρ $
(
ρρ$ %
$str
ρρ% .
,
ρρ. /
skipQuestion
ρρ0 <
.
ρρ< =
UserId
ρρ= C
)
ρρC D
,
ρρD E
new
ςς 
SqlParameter
ςς $
(
ςς$ %
$str
ςς% 7
,
ςς7 8
skipQuestion
ςς9 E
.
ςςE F
ExamCreatedDate
ςςF U
)
ςςU V
,
ςςV W
new
σσ 
SqlParameter
σσ $
(
σσ$ %
$str
σσ% ;
,
σσ; <
DateTime
σσ= E
.
σσE F
Now
σσF I
)
σσI J
,
σσJ K
new
ττ 
SqlParameter
ττ $
(
ττ$ %
$str
ττ% *
,
ττ* +
	SqlDbType
ττ, 5
.
ττ5 6
Int
ττ6 9
)
ττ9 :
,
ττ: ;
}
υυ 
;
υυ 
arrSqlParameter
φφ 
[
φφ 
arrSqlParameter
φφ +
.
φφ+ ,
Length
φφ, 2
-
φφ3 4
$num
φφ5 6
]
φφ6 7
.
φφ7 8
	Direction
φφ8 A
=
φφB C 
ParameterDirection
φφD V
.
φφV W
Output
φφW ]
;
φφ] ^
	SqlHelper
χχ 
.
χχ 
ExecuteNonQuery
χχ %
(
χχ% &#
SqlConnectionProvider
χχ& ;
.
χχ; <!
GetConnectionString
χχ< O
(
χχO P
DataAccessType
χχP ^
.
χχ^ _
Write
χχ_ d
)
χχd e
,
χχe f
CommandType
χχg r
.
χχr s
StoredProcedureχχs ‚
,χχ‚ ƒ
$strχχ„ 
,χχ 
arrSqlParameterχχ ­
)χχ­ ®
;χχ® ―
return
ψψ 
int
ψψ 
.
ψψ 
Parse
ψψ 
(
ψψ 
arrSqlParameter
ψψ ,
[
ψψ, -
arrSqlParameter
ψψ- <
.
ψψ< =
Length
ψψ= C
-
ψψD E
$num
ψψF G
]
ψψG H
.
ψψH I
Value
ψψI N
.
ψψN O
ToString
ψψO W
(
ψψW X
)
ψψX Y
)
ψψY Z
;
ψψZ [
}
ωω 	
public
ϋϋ 
static
ϋϋ 
int
ϋϋ !
UpdateAttemptAnswer
ϋϋ -
(
ϋϋ- ."
ExamAttemptAnswerDTO
ϋϋ. B
attemptAnswer
ϋϋC P
)
ϋϋP Q
{
όό 	
SqlParameter
ύύ 
[
ύύ 
]
ύύ 
arrSqlParameter
ύύ *
=
ύύ+ ,
{
ώώ 
new
ÿÿ 
SqlParameter
ÿÿ $
(
ÿÿ$ %
$str
ÿÿ% 0
,
ÿÿ0 1
attemptAnswer
ÿÿ2 ?
.
ÿÿ? @
ChoiceId
ÿÿ@ H
)
ÿÿH I
,
ÿÿI J
new
€€ 
SqlParameter
€€ $
(
€€$ %
$str
€€% /
,
€€/ 0
attemptAnswer
€€1 >
.
€€> ?
IsRight
€€? F
)
€€F G
,
€€G H
new
 
SqlParameter
 $
(
$ %
$str
% 7
,
7 8
attemptAnswer
9 F
.
F G
ExamAttemptDate
G V
)
V W
,
W X
new
‚‚ 
SqlParameter
‚‚ $
(
‚‚$ %
$str
‚‚% .
,
‚‚. /
attemptAnswer
‚‚0 =
.
‚‚= >
UserId
‚‚> D
)
‚‚D E
,
‚‚E F
new
ƒƒ 
SqlParameter
ƒƒ $
(
ƒƒ$ %
$str
ƒƒ% 3
,
ƒƒ3 4
attemptAnswer
ƒƒ5 B
.
ƒƒB C

QuestionId
ƒƒC M
)
ƒƒM N
,
ƒƒN O
new
„„ 
SqlParameter
„„ $
(
„„$ %
$str
„„% 5
,
„„5 6
attemptAnswer
„„7 D
.
„„D E
ExamAttemptId
„„E R
)
„„R S
,
„„S T
new
…… 
SqlParameter
…… $
(
……$ %
$str
……% 4
,
……4 5
attemptAnswer
……6 C
.
……C D
IsYourAnswer
……D P
)
……P Q
,
……Q R
new
†† 
SqlParameter
†† $
(
††$ %
$str
††% 5
,
††5 6
attemptAnswer
††7 D
.
††D E
UserExamState
††E R
)
††R S
,
††S T
new
‡‡ 
SqlParameter
‡‡ $
(
‡‡$ %
$str
‡‡% 3
,
‡‡3 4
attemptAnswer
‡‡5 B
.
‡‡B C
RoundNumber
‡‡C N
)
‡‡N O
,
‡‡O P
new
 
SqlParameter
 $
(
$ %
$str
% 6
,
6 7
attemptAnswer
8 E
.
E F
EasinessFactor
F T
)
T U
,
U V
new
‰‰ 
SqlParameter
‰‰ $
(
‰‰$ %
$str
‰‰% 9
,
‰‰9 :
attemptAnswer
‰‰; H
.
‰‰H I
NewEasinessFactor
‰‰I Z
)
‰‰Z [
,
‰‰[ \
new
 
SqlParameter
 $
(
$ %
$str
% /
,
/ 0
attemptAnswer
1 >
.
> ?
Quality
? F
)
F G
,
G H
new
‹‹ 
SqlParameter
‹‹ $
(
‹‹$ %
$str
‹‹% 1
,
‹‹1 2
attemptAnswer
‹‹3 @
.
‹‹@ A
	Iteration
‹‹A J
)
‹‹J K
,
‹‹K L
new
 
SqlParameter
 $
(
$ %
$str
% 1
,
1 2
attemptAnswer
3 @
.
@ A
	SessionId
A J
)
J K
,
K L
new
 
SqlParameter
 $
(
$ %
$str
% *
,
* +
	SqlDbType
, 5
.
5 6
Int
6 9
)
9 :
,
: ;
}
 
;
 
arrSqlParameter
 
[
 
arrSqlParameter
 +
.
+ ,
Length
, 2
-
3 4
$num
5 6
]
6 7
.
7 8
	Direction
8 A
=
B C 
ParameterDirection
D V
.
V W
Output
W ]
;
] ^
	SqlHelper
‘‘ 
.
‘‘ 
ExecuteNonQuery
‘‘ %
(
‘‘% &#
SqlConnectionProvider
‘‘& ;
.
‘‘; <!
GetConnectionString
‘‘< O
(
‘‘O P
DataAccessType
‘‘P ^
.
‘‘^ _
Write
‘‘_ d
)
‘‘d e
,
‘‘e f
CommandType
‘‘g r
.
‘‘r s
StoredProcedure‘‘s ‚
,‘‘‚ ƒ
$str‘‘„ 
,‘‘ 
arrSqlParameter‘‘ ®
)‘‘® ―
;‘‘― °
object
’’ 
	objResult
’’ 
=
’’ 
arrSqlParameter
’’ .
[
’’. /
arrSqlParameter
’’/ >
.
’’> ?
Length
’’? E
-
’’F G
$num
’’H I
]
’’I J
;
’’J K
return
““ 
int
““ 
.
““ 
Parse
““ 
(
““ 
arrSqlParameter
““ ,
[
““, -
arrSqlParameter
““- <
.
““< =
Length
““= C
-
““D E
$num
““F G
]
““G H
.
““H I
Value
““I N
.
““N O
ToString
““O W
(
““W X
)
““X Y
)
““Y Z
;
““Z [
}
”” 	
public
–– 
static
–– 
int
–– ,
UpdateAttemptAnswer_SR_05Mar24
–– 8
(
––8 9"
ExamAttemptAnswerDTO
––9 M
attemptAnswer
––N [
)
––[ \
{
—— 	
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
™™ 
new
 
SqlParameter
 $
(
$ %
$str
% 0
,
0 1
attemptAnswer
2 ?
.
? @
ChoiceId
@ H
)
H I
,
I J
new
›› 
SqlParameter
›› $
(
››$ %
$str
››% /
,
››/ 0
attemptAnswer
››1 >
.
››> ?
IsRight
››? F
)
››F G
,
››G H
new
 
SqlParameter
 $
(
$ %
$str
% 7
,
7 8
attemptAnswer
9 F
.
F G
ExamAttemptDate
G V
)
V W
,
W X
new
 
SqlParameter
 $
(
$ %
$str
% .
,
. /
attemptAnswer
0 =
.
= >
UserId
> D
)
D E
,
E F
new
 
SqlParameter
 $
(
$ %
$str
% 3
,
3 4
attemptAnswer
5 B
.
B C

QuestionId
C M
)
M N
,
N O
new
 
SqlParameter
 $
(
$ %
$str
% 5
,
5 6
attemptAnswer
7 D
.
D E
ExamAttemptId
E R
)
R S
,
S T
new
   
SqlParameter
   $
(
  $ %
$str
  % 4
,
  4 5
attemptAnswer
  6 C
.
  C D
IsYourAnswer
  D P
)
  P Q
,
  Q R
new
΅΅ 
SqlParameter
΅΅ $
(
΅΅$ %
$str
΅΅% 5
,
΅΅5 6
attemptAnswer
΅΅7 D
.
΅΅D E
UserExamState
΅΅E R
)
΅΅R S
,
΅΅S T
new
ΆΆ 
SqlParameter
ΆΆ $
(
ΆΆ$ %
$str
ΆΆ% 3
,
ΆΆ3 4
attemptAnswer
ΆΆ5 B
.
ΆΆB C
RoundNumber
ΆΆC N
)
ΆΆN O
,
ΆΆO P
new
££ 
SqlParameter
££ $
(
££$ %
$str
££% 6
,
££6 7
attemptAnswer
££8 E
.
££E F
EasinessFactor
££F T
)
££T U
,
££U V
new
¤¤ 
SqlParameter
¤¤ $
(
¤¤$ %
$str
¤¤% 9
,
¤¤9 :
attemptAnswer
¤¤; H
.
¤¤H I
NewEasinessFactor
¤¤I Z
)
¤¤Z [
,
¤¤[ \
new
¥¥ 
SqlParameter
¥¥ $
(
¥¥$ %
$str
¥¥% /
,
¥¥/ 0
attemptAnswer
¥¥1 >
.
¥¥> ?
Quality
¥¥? F
)
¥¥F G
,
¥¥G H
new
¦¦ 
SqlParameter
¦¦ $
(
¦¦$ %
$str
¦¦% 1
,
¦¦1 2
attemptAnswer
¦¦3 @
.
¦¦@ A
	Iteration
¦¦A J
)
¦¦J K
,
¦¦K L
new
§§ 
SqlParameter
§§ $
(
§§$ %
$str
§§% 1
,
§§1 2
attemptAnswer
§§3 @
.
§§@ A
	SessionId
§§A J
)
§§J K
,
§§K L
new
©© 
SqlParameter
©© $
(
©©$ %
$str
©©% *
,
©©* +
	SqlDbType
©©, 5
.
©©5 6
Int
©©6 9
)
©©9 :
,
©©: ;
}
ªª 
;
ªª 
arrSqlParameter
«« 
[
«« 
arrSqlParameter
«« +
.
««+ ,
Length
««, 2
-
««3 4
$num
««5 6
]
««6 7
.
««7 8
	Direction
««8 A
=
««B C 
ParameterDirection
««D V
.
««V W
Output
««W ]
;
««] ^
	SqlHelper
¬¬ 
.
¬¬ 
ExecuteNonQuery
¬¬ %
(
¬¬% &#
SqlConnectionProvider
¬¬& ;
.
¬¬; <!
GetConnectionString
¬¬< O
(
¬¬O P
DataAccessType
¬¬P ^
.
¬¬^ _
Write
¬¬_ d
)
¬¬d e
,
¬¬e f
CommandType
¬¬g r
.
¬¬r s
StoredProcedure¬¬s ‚
,¬¬‚ ƒ
$str¬¬„ ¨
,¬¬¨ ©
arrSqlParameter¬¬ª Ή
)¬¬Ή Ί
;¬¬Ί »
object
­­ 
	objResult
­­ 
=
­­ 
arrSqlParameter
­­ .
[
­­. /
arrSqlParameter
­­/ >
.
­­> ?
Length
­­? E
-
­­F G
$num
­­H I
]
­­I J
;
­­J K
return
®® 
int
®® 
.
®® 
Parse
®® 
(
®® 
arrSqlParameter
®® ,
[
®®, -
arrSqlParameter
®®- <
.
®®< =
Length
®®= C
-
®®D E
$num
®®F G
]
®®G H
.
®®H I
Value
®®I N
.
®®N O
ToString
®®O W
(
®®W X
)
®®X Y
)
®®Y Z
;
®®Z [
}
―― 	
public
±± 
static
±±  
QuestionDiscussion
±± (#
GetQuestionDiscussion
±±) >
(
±±> ?
int
±±? B

questionId
±±C M
,
±±M N
SqlConnection
±±O \
gConnection
±±] h
=
±±i j
null
±±k o
)
±±o p
{
²² 	 
QuestionDiscussion
³³  
questionDiscussion
³³ 1
=
³³2 3
new
³³4 7 
QuestionDiscussion
³³8 J
(
³³J K
)
³³K L
;
³³L M
SqlConnection
΄΄ 

connection
΄΄ $
=
΄΄% &
gConnection
΄΄' 2
;
΄΄2 3
if
µµ 
(
µµ 
gConnection
µµ 
==
µµ 
null
µµ #
)
µµ# $
{
¶¶ 

connection
·· 
=
·· 
new
··  
SqlConnection
··! .
(
··. /#
SqlConnectionProvider
··/ D
.
··D E!
GetConnectionString
··E X
(
··X Y
DataAccessType
··Y g
.
··g h
Read
··h l
)
··l m
)
··m n
;
··n o

connection
ΈΈ 
.
ΈΈ 
Open
ΈΈ 
(
ΈΈ  
)
ΈΈ  !
;
ΈΈ! "
}
ΉΉ 

SqlCommand
ΏΏ 
cmd
ΏΏ 
=
ΏΏ 
new
ΏΏ  

SqlCommand
ΏΏ! +
(
ΏΏ+ ,
$str
ΏΏ, G
,
ΏΏG H

connection
ΏΏI S
)
ΏΏS T
;
ΏΏT U
cmd
ΐΐ 
.
ΐΐ 
CommandType
ΐΐ 
=
ΐΐ 
CommandType
ΐΐ )
.
ΐΐ) *
StoredProcedure
ΐΐ* 9
;
ΐΐ9 :
cmd
ΑΑ 
.
ΑΑ 

Parameters
ΑΑ 
.
ΑΑ 
Add
ΑΑ 
(
ΑΑ 
new
ΑΑ "
SqlParameter
ΑΑ# /
(
ΑΑ/ 0
$str
ΑΑ0 =
,
ΑΑ= >

questionId
ΑΑ? I
)
ΑΑI J
)
ΑΑJ K
;
ΑΑK L
using
ΓΓ 
(
ΓΓ 
SqlDataReader
ΓΓ  
reader
ΓΓ! '
=
ΓΓ( )
cmd
ΓΓ* -
.
ΓΓ- .
ExecuteReader
ΓΓ. ;
(
ΓΓ; <
)
ΓΓ< =
)
ΓΓ= >
{
ΔΔ 
if
ΕΕ 
(
ΕΕ 
reader
ΕΕ 
.
ΕΕ 
HasRows
ΕΕ "
)
ΕΕ" #
{
ΖΖ 
while
ΘΘ 
(
ΘΘ 
reader
ΘΘ !
.
ΘΘ! "
Read
ΘΘ" &
(
ΘΘ& '
)
ΘΘ' (
)
ΘΘ( )
{
ΙΙ 
object
ΚΚ 
objID
ΚΚ $
=
ΚΚ% &
reader
ΚΚ' -
[
ΚΚ- .
$str
ΚΚ. 2
]
ΚΚ2 3
;
ΚΚ3 4 
questionDiscussion
ΛΛ *
.
ΛΛ* +
discussionId
ΛΛ+ 7
=
ΛΛ8 9
objID
ΛΛ: ?
is
ΛΛ@ B
DBNull
ΛΛC I
?
ΛΛJ K
$num
ΛΛL M
:
ΛΛN O
reader
ΛΛP V
.
ΛΛV W
GetInt32
ΛΛW _
(
ΛΛ_ `
reader
ΛΛ` f
.
ΛΛf g

GetOrdinal
ΛΛg q
(
ΛΛq r
$str
ΛΛr v
)
ΛΛv w
)
ΛΛw x
;
ΛΛx y
object
ΜΜ 
objDiscussionText
ΜΜ 0
=
ΜΜ1 2
reader
ΜΜ3 9
[
ΜΜ9 :
$str
ΜΜ: K
]
ΜΜK L
;
ΜΜL M 
questionDiscussion
ΝΝ *
.
ΝΝ* +
discussionText
ΝΝ+ 9
=
ΝΝ: ;
objDiscussionText
ΝΝ< M
is
ΝΝN P
DBNull
ΝΝQ W
?
ΝΝX Y
string
ΝΝZ `
.
ΝΝ` a
Empty
ΝΝa f
:
ΝΝg h
reader
ΝΝi o
.
ΝΝo p
	GetString
ΝΝp y
(
ΝΝy z
readerΝΝz €
.ΝΝ€ 

GetOrdinalΝΝ ‹
(ΝΝ‹ 
$strΝΝ 
)ΝΝ 
)ΝΝ 
;ΝΝ  
object
ΞΞ 
objDiscussiontype
ΞΞ 0
=
ΞΞ1 2
reader
ΞΞ3 9
[
ΞΞ9 :
$str
ΞΞ: K
]
ΞΞK L
;
ΞΞL M 
questionDiscussion
ΟΟ *
.
ΟΟ* +
discussionType
ΟΟ+ 9
=
ΟΟ: ;
objDiscussiontype
ΟΟ< M
is
ΟΟN P
DBNull
ΟΟQ W
?
ΟΟX Y
false
ΟΟZ _
:
ΟΟ` a
reader
ΟΟb h
.
ΟΟh i

GetBoolean
ΟΟi s
(
ΟΟs t
reader
ΟΟt z
.
ΟΟz {

GetOrdinalΟΟ{ …
(ΟΟ… †
$strΟΟ† —
)ΟΟ— 
)ΟΟ ™
;ΟΟ™  
questionDiscussion
ΠΠ *
.
ΠΠ* +
discussionImage
ΠΠ+ :
=
ΠΠ; <$
GetDiscussionImageList
ΠΠ= S
(
ΠΠS T 
questionDiscussion
ΠΠT f
.
ΠΠf g
discussionId
ΠΠg s
)
ΠΠs t
;
ΠΠt u
}
ΡΡ 
reader
ΣΣ 
.
ΣΣ 
Close
ΣΣ  
(
ΣΣ  !
)
ΣΣ! "
;
ΣΣ" #
}
ΤΤ 
}
ΥΥ 
if
ΦΦ 
(
ΦΦ 
gConnection
ΦΦ 
==
ΦΦ 
null
ΦΦ #
)
ΦΦ# $
{
ΧΧ 

connection
ΨΨ 
.
ΨΨ 
Close
ΨΨ  
(
ΨΨ  !
)
ΨΨ! "
;
ΨΨ" #
}
ΩΩ 
return
ΪΪ  
questionDiscussion
ΪΪ %
;
ΪΪ% &
}
ΫΫ 	
public
έέ 
static
έέ 
List
έέ 
<
έέ 
DiscussionImage
έέ *
>
έέ* +$
GetDiscussionImageList
έέ, B
(
έέB C
int
έέC F
discussionId
έέG S
)
έέS T
{
ήή 	
List
ίί 
<
ίί 
DiscussionImage
ίί  
>
ίί  !!
discussionImageList
ίί" 5
=
ίί6 7
new
ίί8 ;
List
ίί< @
<
ίί@ A
DiscussionImage
ίίA P
>
ίίP Q
(
ίίQ R
)
ίίR S
;
ίίS T
SqlConnection
ΰΰ 

connection
ΰΰ $
=
ΰΰ% &
new
ΰΰ' *
SqlConnection
ΰΰ+ 8
(
ΰΰ8 9#
SqlConnectionProvider
ΰΰ9 N
.
ΰΰN O!
GetConnectionString
ΰΰO b
(
ΰΰb c
DataAccessType
ΰΰc q
.
ΰΰq r
Read
ΰΰr v
)
ΰΰv w
)
ΰΰw x
;
ΰΰx y
string
αα (
sqlQueryGetDiscussionImage
αα -
=
αα. /
string
αα0 6
.
αα6 7
Empty
αα7 <
;
αα< =(
sqlQueryGetDiscussionImage
ββ &
=
ββ' (
$str
ββ) `
+
ββa b
@discussionId
ββc p
+
ββq r
$strββs ‰
;ββ‰ 

connection
γγ 
.
γγ 
Open
γγ 
(
γγ 
)
γγ 
;
γγ 

SqlCommand
δδ 
cmd
δδ 
=
δδ 
new
δδ  

SqlCommand
δδ! +
(
δδ+ ,(
sqlQueryGetDiscussionImage
δδ, F
,
δδF G

connection
δδH R
)
δδR S
;
δδS T
using
εε 
(
εε 
SqlDataReader
εε  
reader
εε! '
=
εε( )
cmd
εε* -
.
εε- .
ExecuteReader
εε. ;
(
εε; <
)
εε< =
)
εε= >
{
ζζ 
if
ηη 
(
ηη 
reader
ηη 
.
ηη 
HasRows
ηη "
)
ηη" #
{
θθ 
while
κκ 
(
κκ 
reader
κκ !
.
κκ! "
Read
κκ" &
(
κκ& '
)
κκ' (
)
κκ( )
{
λλ 
DiscussionImage
μμ '
discussionImage
μμ( 7
=
μμ8 9
new
μμ: =
DiscussionImage
μμ> M
(
μμM N
)
μμN O
;
μμO P
object
νν "
objDiscussionImageId
νν 3
=
νν4 5
reader
νν6 <
[
νν< =
$str
νν= R
]
ννR S
;
ννS T
discussionImage
ξξ '
.
ξξ' (
discussionImageId
ξξ( 9
=
ξξ: ;"
objDiscussionImageId
ξξ< P
is
ξξQ S
DBNull
ξξT Z
?
ξξ[ \
$num
ξξ] ^
:
ξξ_ `
reader
ξξa g
.
ξξg h
GetInt32
ξξh p
(
ξξp q
reader
ξξq w
.
ξξw x

GetOrdinalξξx ‚
(ξξ‚ ƒ
$strξξƒ 
)ξξ ™
)ξξ™ 
;ξξ ›
object
οο 

objCaption
οο )
=
οο* +
reader
οο, 2
[
οο2 3
$str
οο3 <
]
οο< =
;
οο= >
discussionImage
ππ '
.
ππ' (
Caption
ππ( /
=
ππ0 1

objCaption
ππ2 <
is
ππ= ?
DBNull
ππ@ F
?
ππG H
string
ππI O
.
ππO P
Empty
ππP U
:
ππV W
reader
ππX ^
.
ππ^ _
	GetString
ππ_ h
(
ππh i
reader
ππi o
.
ππo p

GetOrdinal
ππp z
(
ππz {
$strππ{ „
)ππ„ …
)ππ… †
;ππ† ‡
object
ρρ 
objComments
ρρ *
=
ρρ+ ,
reader
ρρ- 3
[
ρρ3 4
$str
ρρ4 >
]
ρρ> ?
;
ρρ? @
discussionImage
ςς '
.
ςς' (
Comments
ςς( 0
=
ςς1 2
objComments
ςς3 >
is
ςς? A
DBNull
ςςB H
?
ςςI J
string
ςςK Q
.
ςςQ R
Empty
ςςR W
:
ςςX Y
reader
ςςZ `
.
ςς` a
	GetString
ςςa j
(
ςςj k
reader
ςςk q
.
ςςq r

GetOrdinal
ςςr |
(
ςς| }
$strςς} ‡
)ςς‡ 
)ςς ‰
;ςς‰ 
object
σσ 
	objCredit
σσ (
=
σσ) *
reader
σσ+ 1
[
σσ1 2
$str
σσ2 :
]
σσ: ;
;
σσ; <
discussionImage
ττ '
.
ττ' (
Credit
ττ( .
=
ττ/ 0
	objCredit
ττ1 :
is
ττ; =
DBNull
ττ> D
?
ττE F
string
ττG M
.
ττM N
Empty
ττN S
:
ττT U
reader
ττV \
.
ττ\ ]
	GetString
ττ] f
(
ττf g
reader
ττg m
.
ττm n

GetOrdinal
ττn x
(
ττx y
$strττy 
)ττ ‚
)ττ‚ ƒ
;ττƒ „
object
υυ 
	objFigure
υυ (
=
υυ) *
reader
υυ+ 1
[
υυ1 2
$str
υυ2 :
]
υυ: ;
;
υυ; <
discussionImage
φφ '
.
φφ' (
Figure
φφ( .
=
φφ/ 0
	objFigure
φφ1 :
is
φφ; =
DBNull
φφ> D
?
φφE F
string
φφG M
.
φφM N
Empty
φφN S
:
φφT U
reader
φφV \
.
φφ\ ]
	GetString
φφ] f
(
φφf g
reader
φφg m
.
φφm n

GetOrdinal
φφn x
(
φφx y
$strφφy 
)φφ ‚
)φφ‚ ƒ
;φφƒ „
object
χχ 
objImagePath
χχ +
=
χχ, -
reader
χχ. 4
[
χχ4 5
$str
χχ5 @
]
χχ@ A
;
χχA B
discussionImage
ψψ '
.
ψψ' (
	ImagePath
ψψ( 1
=
ψψ2 3
objImagePath
ψψ4 @
is
ψψA C
DBNull
ψψD J
?
ψψK L
string
ψψM S
.
ψψS T
Empty
ψψT Y
:
ψψZ [
reader
ψψ\ b
.
ψψb c
	GetString
ψψc l
(
ψψl m
reader
ψψm s
.
ψψs t

GetOrdinal
ψψt ~
(
ψψ~ 
$strψψ 
)ψψ ‹
)ψψ‹ 
;ψψ 
object
ωω 
	objSource
ωω (
=
ωω) *
reader
ωω+ 1
[
ωω1 2
$str
ωω2 :
]
ωω: ;
;
ωω; <
discussionImage
ϊϊ '
.
ϊϊ' (
Source
ϊϊ( .
=
ϊϊ/ 0
	objSource
ϊϊ1 :
is
ϊϊ; =
DBNull
ϊϊ> D
?
ϊϊE F
string
ϊϊG M
.
ϊϊM N
Empty
ϊϊN S
:
ϊϊT U
reader
ϊϊV \
.
ϊϊ\ ]
	GetString
ϊϊ] f
(
ϊϊf g
reader
ϊϊg m
.
ϊϊm n

GetOrdinal
ϊϊn x
(
ϊϊx y
$strϊϊy 
)ϊϊ ‚
)ϊϊ‚ ƒ
;ϊϊƒ „
object
ϋϋ 
objTitle
ϋϋ '
=
ϋϋ( )
reader
ϋϋ* 0
[
ϋϋ0 1
$str
ϋϋ1 8
]
ϋϋ8 9
;
ϋϋ9 :
discussionImage
όό '
.
όό' (
Title
όό( -
=
όό. /
objTitle
όό0 8
is
όό9 ;
DBNull
όό< B
?
όόC D
string
όόE K
.
όόK L
Empty
όόL Q
:
όόR S
reader
όόT Z
.
όόZ [
	GetString
όό[ d
(
όόd e
reader
όόe k
.
όόk l

GetOrdinal
όόl v
(
όόv w
$str
όόw ~
)
όό~ 
)όό €
;όό€ 
object
ύύ 
objChoiceId
ύύ *
=
ύύ+ ,
reader
ύύ- 3
[
ύύ3 4
$str
ύύ4 C
]
ύύC D
;
ύύD E
discussionImage
ώώ '
.
ώώ' (
discussionid
ώώ( 4
=
ώώ5 6
objChoiceId
ώώ7 B
is
ώώC E
DBNull
ώώF L
?
ώώM N
$num
ώώO P
:
ώώQ R
reader
ώώS Y
.
ώώY Z
GetInt32
ώώZ b
(
ώώb c
reader
ώώc i
.
ώώi j

GetOrdinal
ώώj t
(
ώώt u
$strώώu „
)ώώ„ …
)ώώ… †
;ώώ† ‡!
discussionImageList
ÿÿ +
.
ÿÿ+ ,
Add
ÿÿ, /
(
ÿÿ/ 0
discussionImage
ÿÿ0 ?
)
ÿÿ? @
;
ÿÿ@ A
}
€€ 
reader
‚‚ 
.
‚‚ 
Close
‚‚  
(
‚‚  !
)
‚‚! "
;
‚‚" #
}
ƒƒ 
}
„„ 

connection
†† 
.
†† 
Close
†† 
(
†† 
)
†† 
;
†† 
return
‡‡ !
discussionImageList
‡‡ &
;
‡‡& '
}
 	
public
 
static
 
List
 
<
 
string
 !
>
! "
GetReferences
# 0
(
0 1
int
1 4

questionId
5 ?
,
? @
SqlConnection
A N
gConnection
O Z
=
Z [
null
[ _
)
_ `
{
‹‹ 	
List
 
<
 
string
 
>
 
referencesList
 '
=
( )
new
* -
List
. 2
<
2 3
string
3 9
>
9 :
(
: ;
)
; <
;
< =
SqlConnection
 

connection
 $
=
% &
gConnection
' 2
;
2 3
if
 
(
 
gConnection
 
==
 
null
 #
)
# $
{
 

connection
 
=
 
new
  
SqlConnection
! .
(
. /#
SqlConnectionProvider
/ D
.
D E!
GetConnectionString
E X
(
X Y
DataAccessType
Y g
.
g h
Read
h l
)
l m
)
m n
;
n o

connection
‘‘ 
.
‘‘ 
Open
‘‘ 
(
‘‘  
)
‘‘  !
;
‘‘! "
}
’’ 

SqlCommand
 
cmd
 
=
 
new
  

SqlCommand
! +
(
+ ,
$str
, ?
,
? @

connection
A K
)
K L
;
L M
cmd
™™ 
.
™™ 
CommandType
™™ 
=
™™ 
CommandType
™™ )
.
™™) *
StoredProcedure
™™* 9
;
™™9 :
cmd
 
.
 

Parameters
 
.
 
Add
 
(
 
new
 "
SqlParameter
# /
(
/ 0
$str
0 >
,
> ?

questionId
@ J
)
J K
)
K L
;
L M
using
 
(
 
SqlDataReader
  
reader
! '
=
( )
cmd
* -
.
- .
ExecuteReader
. ;
(
; <
)
< =
)
= >
{
 
if
 
(
 
reader
 
.
 
HasRows
 "
)
" #
{
 
while
΅΅ 
(
΅΅ 
reader
΅΅ !
.
΅΅! "
Read
΅΅" &
(
΅΅& '
)
΅΅' (
)
΅΅( )
{
ΆΆ 
string
££ 
refertences
££ *
=
££+ ,
string
££- 3
.
££3 4
Empty
££4 9
;
££9 :
object
¤¤ 
referenceObj
¤¤ +
=
¤¤, -
reader
¤¤. 4
[
¤¤4 5
$str
¤¤5 @
]
¤¤@ A
;
¤¤A B
refertences
¥¥ #
=
¥¥$ %
referenceObj
¥¥& 2
is
¥¥3 5
DBNull
¥¥6 <
?
¥¥= >
string
¥¥? E
.
¥¥E F
Empty
¥¥F K
:
¥¥L M
reader
¥¥N T
.
¥¥T U
	GetString
¥¥U ^
(
¥¥^ _
reader
¥¥_ e
.
¥¥e f

GetOrdinal
¥¥f p
(
¥¥p q
$str
¥¥q |
)
¥¥| }
)
¥¥} ~
;
¥¥~ 
referencesList
¦¦ &
.
¦¦& '
Add
¦¦' *
(
¦¦* +
refertences
¦¦+ 6
)
¦¦6 7
;
¦¦7 8
}
§§ 
reader
©© 
.
©© 
Close
©©  
(
©©  !
)
©©! "
;
©©" #
}
ªª 
}
«« 
if
­­ 
(
­­ 
gConnection
­­ 
==
­­ 
null
­­ #
)
­­# $
{
®® 

connection
―― 
.
―― 
Close
――  
(
――  !
)
――! "
;
――" #
}
°° 
return
²² 
referencesList
²² !
;
²²! "
}
³³ 	
public
µµ 
static
µµ 
List
µµ 
<
µµ 
string
µµ !
>
µµ! "
GetNotes
µµ# +
(
µµ+ ,
int
µµ, /

questionId
µµ0 :
,
µµ: ;
int
µµ< ?
userId
µµ@ F
,
µµF G
int
µµH K
examId
µµL R
,
µµR S
SqlConnection
µµT a
gConnection
µµc n
=
µµn o
null
µµo s
)
µµs t
{
¶¶ 	
List
·· 
<
·· 
string
·· 
>
·· 
	notesList
·· "
=
··# $
new
··% (
List
··) -
<
··- .
string
··. 4
>
··4 5
(
··5 6
)
··6 7
;
··7 8
SqlConnection
ΈΈ 

connection
ΈΈ $
=
ΈΈ% &
gConnection
ΈΈ' 2
;
ΈΈ2 3
if
ΉΉ 
(
ΉΉ 
gConnection
ΉΉ 
==
ΉΉ 
null
ΉΉ #
)
ΉΉ# $
{
ΊΊ 

connection
»» 
=
»» 
new
»»  
SqlConnection
»»! .
(
»». /#
SqlConnectionProvider
»»/ D
.
»»D E!
GetConnectionString
»»E X
(
»»X Y
DataAccessType
»»Y g
.
»»g h
Read
»»h l
)
»»l m
)
»»m n
;
»»n o

connection
ΌΌ 
.
ΌΌ 
Open
ΌΌ 
(
ΌΌ  
)
ΌΌ  !
;
ΌΌ! "
}
½½ 

SqlCommand
ΛΛ 
cmd
ΛΛ 
=
ΛΛ 
new
ΛΛ  

SqlCommand
ΛΛ! +
(
ΛΛ+ ,
$str
ΛΛ, :
,
ΛΛ: ;

connection
ΛΛ< F
)
ΛΛF G
;
ΛΛG H
cmd
ΜΜ 
.
ΜΜ 
CommandType
ΜΜ 
=
ΜΜ 
CommandType
ΜΜ )
.
ΜΜ) *
StoredProcedure
ΜΜ* 9
;
ΜΜ9 :
cmd
ΝΝ 
.
ΝΝ 

Parameters
ΝΝ 
.
ΝΝ 
Add
ΝΝ 
(
ΝΝ 
new
ΝΝ "
SqlParameter
ΝΝ# /
(
ΝΝ/ 0
$str
ΝΝ0 =
,
ΝΝ= >

questionId
ΝΝ? I
)
ΝΝI J
)
ΝΝJ K
;
ΝΝK L
cmd
ΞΞ 
.
ΞΞ 

Parameters
ΞΞ 
.
ΞΞ 
Add
ΞΞ 
(
ΞΞ 
new
ΞΞ "
SqlParameter
ΞΞ# /
(
ΞΞ/ 0
$str
ΞΞ0 9
,
ΞΞ9 :
userId
ΞΞ; A
)
ΞΞA B
)
ΞΞB C
;
ΞΞC D
cmd
ΟΟ 
.
ΟΟ 

Parameters
ΟΟ 
.
ΟΟ 
Add
ΟΟ 
(
ΟΟ 
new
ΟΟ "
SqlParameter
ΟΟ# /
(
ΟΟ/ 0
$str
ΟΟ0 9
,
ΟΟ9 :
examId
ΟΟ; A
)
ΟΟA B
)
ΟΟB C
;
ΟΟC D
using
ΡΡ 
(
ΡΡ 
SqlDataReader
ΡΡ  
reader
ΡΡ! '
=
ΡΡ( )
cmd
ΡΡ* -
.
ΡΡ- .
ExecuteReader
ΡΡ. ;
(
ΡΡ; <
)
ΡΡ< =
)
ΡΡ= >
{
ÒÒ 
if
ΣΣ 
(
ΣΣ 
reader
ΣΣ 
.
ΣΣ 
HasRows
ΣΣ "
)
ΣΣ" #
{
ΤΤ 
while
ΦΦ 
(
ΦΦ 
reader
ΦΦ !
.
ΦΦ! "
Read
ΦΦ" &
(
ΦΦ& '
)
ΦΦ' (
)
ΦΦ( )
{
ΧΧ 
string
ΨΨ 
notes
ΨΨ $
=
ΨΨ% &
string
ΨΨ' -
.
ΨΨ- .
Empty
ΨΨ. 3
;
ΨΨ3 4
object
ΩΩ 
objNotes
ΩΩ '
=
ΩΩ( )
reader
ΩΩ* 0
[
ΩΩ0 1
$str
ΩΩ1 8
]
ΩΩ8 9
;
ΩΩ9 :
notes
ΪΪ 
=
ΪΪ 
objNotes
ΪΪ  (
is
ΪΪ) +
DBNull
ΪΪ, 2
?
ΪΪ3 4
string
ΪΪ5 ;
.
ΪΪ; <
Empty
ΪΪ< A
:
ΪΪB C
reader
ΪΪD J
.
ΪΪJ K
	GetString
ΪΪK T
(
ΪΪT U
reader
ΪΪU [
.
ΪΪ[ \

GetOrdinal
ΪΪ\ f
(
ΪΪf g
$str
ΪΪg n
)
ΪΪn o
)
ΪΪo p
;
ΪΪp q
	notesList
ΫΫ !
.
ΫΫ! "
Add
ΫΫ" %
(
ΫΫ% &
notes
ΫΫ& +
)
ΫΫ+ ,
;
ΫΫ, -
}
άά 
reader
ήή 
.
ήή 
Close
ήή  
(
ήή  !
)
ήή! "
;
ήή" #
}
ίί 
}
ΰΰ 
if
αα 
(
αα 
gConnection
αα 
==
αα 
null
αα #
)
αα# $
{
ββ 

connection
γγ 
.
γγ 
Close
γγ  
(
γγ  !
)
γγ! "
;
γγ" #
}
δδ 
if
εε 
(
εε 
	notesList
εε 
.
εε 
Count
εε 
==
εε  "
$num
εε# $
)
εε$ %
{
ζζ 
	notesList
ηη 
.
ηη 
Add
ηη 
(
ηη 
$str
ηη N
)
ηηN O
;
ηηO P
}
θθ 
return
ιι 
	notesList
ιι 
;
ιι 
}
κκ 	
public
μμ 
static
μμ 
List
μμ 
<
μμ 
string
μμ !
>
μμ! "
GetRelatedContent
μμ# 4
(
μμ4 5
int
μμ5 8

questionId
μμ9 C
,
μμC D
SqlConnection
μμE R
gConnection
μμS ^
=
μμ_ `
null
μμa e
)
μμe f
{
νν 	
List
ξξ 
<
ξξ 
string
ξξ 
>
ξξ !
relatedContent_List
ξξ ,
=
ξξ- .
new
ξξ/ 2
List
ξξ3 7
<
ξξ7 8
string
ξξ8 >
>
ξξ> ?
(
ξξ? @
)
ξξ@ A
;
ξξA B
SqlConnection
οο 

connection
οο $
=
οο% &
gConnection
οο' 2
;
οο2 3
if
ππ 
(
ππ 
gConnection
ππ 
==
ππ 
null
ππ #
)
ππ# $
{
ρρ 

connection
ςς 
=
ςς 
new
ςς  
SqlConnection
ςς! .
(
ςς. /#
SqlConnectionProvider
ςς/ D
.
ςςD E!
GetConnectionString
ςςE X
(
ςςX Y
DataAccessType
ςςY g
.
ςςg h
Read
ςςh l
)
ςςl m
)
ςςm n
;
ςςn o

connection
σσ 
.
σσ 
Open
σσ 
(
σσ  
)
σσ  !
;
σσ! "
}
ττ 

SqlCommand
φφ 
cmd
φφ 
=
φφ 
new
φφ  

SqlCommand
φφ! +
(
φφ+ ,
$str
φφ, D
,
φφD E

connection
φφF P
)
φφP Q
;
φφQ R
cmd
χχ 
.
χχ 
CommandType
χχ 
=
χχ 
CommandType
χχ )
.
χχ) *
StoredProcedure
χχ* 9
;
χχ9 :
cmd
ψψ 
.
ψψ 

Parameters
ψψ 
.
ψψ 
Add
ψψ 
(
ψψ 
new
ψψ "
SqlParameter
ψψ# /
(
ψψ/ 0
$str
ψψ0 >
,
ψψ> ?

questionId
ψψ@ J
)
ψψJ K
)
ψψK L
;
ψψL M
using
ϊϊ 
(
ϊϊ 
SqlDataReader
ϊϊ  
reader
ϊϊ! '
=
ϊϊ( )
cmd
ϊϊ* -
.
ϊϊ- .
ExecuteReader
ϊϊ. ;
(
ϊϊ; <
)
ϊϊ< =
)
ϊϊ= >
{
ϋϋ 
if
όό 
(
όό 
reader
όό 
.
όό 
HasRows
όό "
)
όό" #
{
ύύ 
while
ÿÿ 
(
ÿÿ 
reader
ÿÿ !
.
ÿÿ! "
Read
ÿÿ" &
(
ÿÿ& '
)
ÿÿ' (
)
ÿÿ( )
{
€€ 
string
 
content
 &
=
' (
string
) /
.
/ 0
Empty
0 5
;
5 6
object
‚‚ 

contentObj
‚‚ )
=
‚‚* +
reader
‚‚, 2
[
‚‚2 3
$str
‚‚3 =
]
‚‚= >
;
‚‚> ?
content
ƒƒ 
=
ƒƒ  !

contentObj
ƒƒ" ,
is
ƒƒ- /
DBNull
ƒƒ0 6
?
ƒƒ7 8
string
ƒƒ9 ?
.
ƒƒ? @
Empty
ƒƒ@ E
:
ƒƒF G
reader
ƒƒH N
.
ƒƒN O
	GetString
ƒƒO X
(
ƒƒX Y
reader
ƒƒY _
.
ƒƒ_ `

GetOrdinal
ƒƒ` j
(
ƒƒj k
$str
ƒƒk u
)
ƒƒu v
)
ƒƒv w
;
ƒƒw x!
relatedContent_List
„„ +
.
„„+ ,
Add
„„, /
(
„„/ 0
content
„„0 7
)
„„7 8
;
„„8 9
}
…… 
reader
‡‡ 
.
‡‡ 
Close
‡‡  
(
‡‡  !
)
‡‡! "
;
‡‡" #
}
 
}
‰‰ 
if
‹‹ 
(
‹‹ 
gConnection
‹‹ 
==
‹‹ 
null
‹‹ #
)
‹‹# $
{
 

connection
 
.
 
Close
  
(
  !
)
! "
;
" #
}
 
return
 !
relatedContent_List
 &
;
& '
}
‘‘ 	
public
““ 
static
““ 
ExamDTO
““ 
GetExamBYId
““ )
(
““) *
int
““* -
?
““- .
examId
““/ 5
)
““5 6
{
”” 	
SqlParameter
•• 
[
•• 
]
•• 
objSqlParameter
•• *
=
••+ ,
{
–– 
new
——0 3
SqlParameter
——4 @
(
——@ A
$str
——A J
,
——J K
Convert
——L S
.
——S T
ToInt32
——T [
(
——[ \
examId
——\ b
)
——b c
)
——c d
,
——d e
}
- .
;
. /
using
™™ 
(
™™ 
SqlDataReader
™™  
objSqlDataReader
™™! 1
=
™™2 3
	SqlHelper
™™4 =
.
™™= >
ExecuteReader
™™> K
(
™™K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$str
m ~
,
~ 
objSqlParameter€ 
) 
) ‘
{
›› 
ExamDTO
 
examObj
 
=
  !
new
" %
ExamDTO
& -
(
- .
)
. /
;
/ 0
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
 
object
 
	objExamId
 $
=
% &
objSqlDataReader
' 7
[
7 8
$str
8 @
]
@ A
;
A B
examObj
   
.
   
ExamId
   "
=
  # $
	objExamId
  % .
is
  / 1
DBNull
  2 8
?
  9 :
$num
  ; <
:
  = >
Convert
  ? F
.
  F G
ToInt32
  G N
(
  N O
objSqlDataReader
  O _
[
  _ `
$str
  ` h
]
  h i
)
  i j
;
  j k
object
΅΅ 
objExamName
΅΅ &
=
΅΅' (
objSqlDataReader
΅΅) 9
[
΅΅9 :
$str
΅΅: D
]
΅΅D E
;
΅΅E F
examObj
ΆΆ 
.
ΆΆ 
ExamName
ΆΆ $
=
ΆΆ% &
objExamName
ΆΆ' 2
is
ΆΆ3 5
DBNull
ΆΆ6 <
?
ΆΆ= >
string
ΆΆ? E
.
ΆΆE F
Empty
ΆΆF K
:
ΆΆL M
Convert
ΆΆN U
.
ΆΆU V
ToString
ΆΆV ^
(
ΆΆ^ _
objSqlDataReader
ΆΆ_ o
[
ΆΆo p
$str
ΆΆp z
]
ΆΆz {
)
ΆΆ{ |
;
ΆΆ| }
examObj
££ 
.
££ 
ExamCreateDate
££ *
=
££+ ,
Convert
££- 4
.
££4 5

ToDateTime
££5 ?
(
££? @
objSqlDataReader
££@ P
[
££P Q
$str
££Q a
]
££a b
)
££b c
;
££c d
object
¤¤ 
objIsDeleted
¤¤ '
=
¤¤( )
objSqlDataReader
¤¤* :
[
¤¤: ;
$str
¤¤; F
]
¤¤F G
;
¤¤G H
examObj
¥¥ 
.
¥¥ 
	IsDeleted
¥¥ %
=
¥¥& '
objIsDeleted
¥¥( 4
is
¥¥5 7
DBNull
¥¥8 >
?
¥¥? @
false
¥¥A F
:
¥¥G H
(
¥¥I J
bool
¥¥J N
)
¥¥N O
(
¥¥O P
objSqlDataReader
¥¥P `
[
¥¥` a
$str
¥¥a l
]
¥¥l m
)
¥¥m n
;
¥¥n o
examObj
¦¦ 
.
¦¦ 
ExamType
¦¦ $
=
¦¦% &
Convert
¦¦' .
.
¦¦. /
ToInt32
¦¦/ 6
(
¦¦6 7
objSqlDataReader
¦¦7 G
[
¦¦G H
$str
¦¦H R
]
¦¦R S
)
¦¦S T
;
¦¦T U
object
§§ 
objNoofQuestions
§§ +
=
§§, -
objSqlDataReader
§§. >
[
§§> ?
$str
§§? N
]
§§N O
;
§§O P
examObj
¨¨ 
.
¨¨ 
NoofQuestions
¨¨ )
=
¨¨* +
objNoofQuestions
¨¨, <
is
¨¨= ?
DBNull
¨¨@ F
?
¨¨G H
$num
¨¨I J
:
¨¨K L
Convert
¨¨M T
.
¨¨T U
ToInt32
¨¨U \
(
¨¨\ ]
objSqlDataReader
¨¨] m
[
¨¨m n
$str
¨¨n }
]
¨¨} ~
)
¨¨~ 
;¨¨ €
object
©© 
objExamTimeType
©© *
=
©©+ ,
objSqlDataReader
©©- =
[
©©= >
$str
©©> L
]
©©L M
;
©©M N
examObj
ªª 
.
ªª 
ExamTimeType
ªª (
=
ªª) *
objExamTimeType
ªª+ :
is
ªª; =
DBNull
ªª> D
?
ªªE F
false
ªªG L
:
ªªM N
(
ªªO P
bool
ªªP T
)
ªªT U
(
ªªU V
objSqlDataReader
ªªV f
[
ªªf g
$str
ªªg u
]
ªªu v
)
ªªv w
;
ªªw x
object
«« 
objExamMode
«« &
=
««' (
objSqlDataReader
««) 9
[
««9 :
$str
««: D
]
««D E
;
««E F
examObj
¬¬ 
.
¬¬ 
ExamMode
¬¬ $
=
¬¬% &
objExamMode
¬¬' 2
is
¬¬3 5
DBNull
¬¬6 <
?
¬¬= >
false
¬¬? D
:
¬¬E F
(
¬¬G H
bool
¬¬H L
)
¬¬L M
(
¬¬M N
objSqlDataReader
¬¬N ^
[
¬¬^ _
$str
¬¬_ i
]
¬¬i j
)
¬¬j k
;
¬¬k l
object
­­ !
objExamAnswerToShow
­­ .
=
­­/ 0
objSqlDataReader
­­1 A
[
­­A B
$str
­­B T
]
­­T U
;
­­U V
examObj
®® 
.
®® 
ExamAnswerToShow
®® ,
=
®®- .!
objExamAnswerToShow
®®/ B
is
®®C E
DBNull
®®F L
?
®®M N
false
®®O T
:
®®U V
(
®®W X
bool
®®X \
)
®®\ ]
(
®®] ^
objSqlDataReader
®®^ n
[
®®n o
$str®®o 
]®® ‚
)®®‚ ƒ
;®®ƒ „
object
―― 
objTypeofQuestion
―― ,
=
――- .
objSqlDataReader
――/ ?
[
――? @
$str
――@ P
]
――P Q
;
――Q R
examObj
°° 
.
°° 
TypeofQuestion
°° *
=
°°+ ,
objTypeofQuestion
°°- >
is
°°? A
DBNull
°°B H
?
°°I J
string
°°K Q
.
°°Q R
Empty
°°R W
:
°°X Y
Convert
°°Z a
.
°°a b
ToString
°°b j
(
°°j k
objSqlDataReader
°°k {
[
°°{ |
$str°°| 
]°° 
)°° 
;°° 
object
±± 
objTypeofCategory
±± ,
=
±±- .
objSqlDataReader
±±/ ?
[
±±? @
$str
±±@ P
]
±±P Q
;
±±Q R
examObj
²² 
.
²² 
TypeofCategory
²² *
=
²²+ ,
objTypeofCategory
²²- >
is
²²? A
DBNull
²²B H
?
²²I J
string
²²K Q
.
²²Q R
Empty
²²R W
:
²²X Y
Convert
²²Z a
.
²²a b
ToString
²²b j
(
²²j k
objSqlDataReader
²²k {
[
²²{ |
$str²²| 
]²² 
)²² 
;²² 
object
³³ 
	objUserId
³³ $
=
³³% &
objSqlDataReader
³³' 7
[
³³7 8
$str
³³8 @
]
³³@ A
;
³³A B
examObj
΄΄ 
.
΄΄ 
UserId
΄΄ "
=
΄΄# $
	objUserId
΄΄% .
is
΄΄/ 1
DBNull
΄΄2 8
?
΄΄9 :
$num
΄΄; <
:
΄΄= >
Convert
΄΄? F
.
΄΄F G
ToInt32
΄΄G N
(
΄΄N O
objSqlDataReader
΄΄O _
[
΄΄_ `
$str
΄΄` h
]
΄΄h i
)
΄΄i j
;
΄΄j k
object
µµ 
objExamStatus
µµ (
=
µµ) *
objSqlDataReader
µµ+ ;
[
µµ; <
$str
µµ< H
]
µµH I
;
µµI J
examObj
¶¶ 
.
¶¶ 

ExamStatus
¶¶ &
=
¶¶' (
objExamStatus
¶¶) 6
is
¶¶7 9
DBNull
¶¶: @
?
¶¶A B
$num
¶¶C D
:
¶¶E F
Convert
¶¶G N
.
¶¶N O
ToInt32
¶¶O V
(
¶¶V W
objSqlDataReader
¶¶W g
[
¶¶g h
$str
¶¶h t
]
¶¶t u
)
¶¶u v
;
¶¶v w
object
·· 
objExamAttemptId
·· +
=
··, -
objSqlDataReader
··. >
[
··> ?
$str
··? N
]
··N O
;
··O P
examObj
ΈΈ 
.
ΈΈ 
ExamAttemptId
ΈΈ )
=
ΈΈ* +
objExamAttemptId
ΈΈ, <
is
ΈΈ= ?
DBNull
ΈΈ@ F
?
ΈΈG H
$num
ΈΈI J
:
ΈΈK L
Convert
ΈΈM T
.
ΈΈT U
ToInt32
ΈΈU \
(
ΈΈ\ ]
objSqlDataReader
ΈΈ] m
[
ΈΈm n
$str
ΈΈn }
]
ΈΈ} ~
)
ΈΈ~ 
;ΈΈ €
object
ΊΊ 
objExamType
ΊΊ &
=
ΊΊ' (
objSqlDataReader
ΊΊ) 9
[
ΊΊ9 :
$str
ΊΊ: D
]
ΊΊD E
;
ΊΊE F
examObj
»» 
.
»» 
ExamType
»» $
=
»»% &
objExamType
»»' 2
is
»»3 5
DBNull
»»6 <
?
»»= >
$num
»»? @
:
»»A B
Convert
»»C J
.
»»J K
ToInt32
»»K R
(
»»R S
objSqlDataReader
»»S c
[
»»c d
$str
»»d n
]
»»n o
)
»»o p
;
»»p q
}
ΌΌ 
objSqlDataReader
ΎΎ  
.
ΎΎ  !
Close
ΎΎ! &
(
ΎΎ& '
)
ΎΎ' (
;
ΎΎ( )
return
ΏΏ 
examObj
ΏΏ 
;
ΏΏ 
}
ΐΐ 
}
ΑΑ 	
public
ΓΓ 
static
ΓΓ "
ExamAttemptAnswerDTO
ΓΓ *"
GetExamAttemptAnswer
ΓΓ+ ?
(
ΓΓ? @
int
ΓΓ@ C

questionId
ΓΓD N
,
ΓΓN O
int
ΓΓP S
examAttemptId
ΓΓT a
,
ΓΓa b
SqlConnection
ΓΓc p
gConnection
ΓΓq |
=
ΓΓ| }
nullΓΓ} 
)ΓΓ ‚
{
ΔΔ 	"
ExamAttemptAnswerDTO
ΕΕ  
examAttemptAnswer
ΕΕ! 2
=
ΕΕ3 4
new
ΕΕ5 8"
ExamAttemptAnswerDTO
ΕΕ9 M
(
ΕΕM N
)
ΕΕN O
;
ΕΕO P
SqlConnection
ΖΖ 

connection
ΖΖ $
=
ΖΖ% &
gConnection
ΖΖ' 2
;
ΖΖ2 3
if
ΗΗ 
(
ΗΗ 
gConnection
ΗΗ 
==
ΗΗ 
null
ΗΗ #
)
ΗΗ# $
{
ΘΘ 

connection
ΙΙ 
=
ΙΙ 
new
ΙΙ  
SqlConnection
ΙΙ! .
(
ΙΙ. /#
SqlConnectionProvider
ΙΙ/ D
.
ΙΙD E!
GetConnectionString
ΙΙE X
(
ΙΙX Y
DataAccessType
ΙΙY g
.
ΙΙg h
Read
ΙΙh l
)
ΙΙl m
)
ΙΙm n
;
ΙΙn o

connection
ΚΚ 
.
ΚΚ 
Open
ΚΚ 
(
ΚΚ  
)
ΚΚ  !
;
ΚΚ! "
}
ΛΛ 

SqlCommand
ΡΡ 
cmd
ΡΡ 
=
ΡΡ 
new
ΡΡ  

SqlCommand
ΡΡ! +
(
ΡΡ+ ,
$str
ΡΡ, F
,
ΡΡF G

connection
ΡΡH R
)
ΡΡR S
;
ΡΡS T
cmd
ÒÒ 
.
ÒÒ 
CommandType
ÒÒ 
=
ÒÒ 
CommandType
ÒÒ )
.
ÒÒ) *
StoredProcedure
ÒÒ* 9
;
ÒÒ9 :
cmd
ΣΣ 
.
ΣΣ 

Parameters
ΣΣ 
.
ΣΣ 
Add
ΣΣ 
(
ΣΣ 
new
ΣΣ "
SqlParameter
ΣΣ# /
(
ΣΣ/ 0
$str
ΣΣ0 =
,
ΣΣ= >

questionId
ΣΣ? I
)
ΣΣI J
)
ΣΣJ K
;
ΣΣK L
cmd
ΤΤ 
.
ΤΤ 

Parameters
ΤΤ 
.
ΤΤ 
Add
ΤΤ 
(
ΤΤ 
new
ΤΤ "
SqlParameter
ΤΤ# /
(
ΤΤ/ 0
$str
ΤΤ0 @
,
ΤΤ@ A
examAttemptId
ΤΤB O
)
ΤΤO P
)
ΤΤP Q
;
ΤΤQ R
using
ΦΦ 
(
ΦΦ 
SqlDataReader
ΦΦ  
reader
ΦΦ! '
=
ΦΦ( )
cmd
ΦΦ* -
.
ΦΦ- .
ExecuteReader
ΦΦ. ;
(
ΦΦ; <
)
ΦΦ< =
)
ΦΦ= >
{
ΧΧ 
if
ΨΨ 
(
ΨΨ 
reader
ΨΨ 
.
ΨΨ 
HasRows
ΨΨ "
)
ΨΨ" #
{
ΩΩ 
while
ΪΪ 
(
ΪΪ 
reader
ΪΪ !
.
ΪΪ! "
Read
ΪΪ" &
(
ΪΪ& '
)
ΪΪ' (
)
ΪΪ( )
{
ΫΫ 
examAttemptAnswer
άά )
.
άά) *!
ExamAttemptAsnwerId
άά* =
=
άά> ?
reader
άά@ F
.
άάF G
GetInt32
άάG O
(
άάO P
reader
άάP V
.
άάV W

GetOrdinal
άάW a
(
άάa b
$str
άάb w
)
άάw x
)
άάx y
;
άάy z
examAttemptAnswer
έέ )
.
έέ) *
ExamAttemptDate
έέ* 9
=
έέ: ;
reader
έέ< B
.
έέB C
GetDateTime
έέC N
(
έέN O
reader
έέO U
.
έέU V

GetOrdinal
έέV `
(
έέ` a
$str
έέa r
)
έέr s
)
έέs t
;
έέt u
examAttemptAnswer
ήή )
.
ήή) *
ChoiceId
ήή* 2
=
ήή3 4
reader
ήή5 ;
.
ήή; <
GetInt32
ήή< D
(
ήήD E
reader
ήήE K
.
ήήK L

GetOrdinal
ήήL V
(
ήήV W
$str
ήήW a
)
ήήa b
)
ήήb c
;
ήήc d
examAttemptAnswer
ίί )
.
ίί) *
IsRight
ίί* 1
=
ίί2 3
reader
ίί4 :
.
ίί: ;

GetBoolean
ίί; E
(
ίίE F
reader
ίίF L
.
ίίL M

GetOrdinal
ίίM W
(
ίίW X
$str
ίίX a
)
ίίa b
)
ίίb c
;
ίίc d
examAttemptAnswer
ΰΰ )
.
ΰΰ) *
UserId
ΰΰ* 0
=
ΰΰ1 2
reader
ΰΰ3 9
.
ΰΰ9 :
GetInt32
ΰΰ: B
(
ΰΰB C
reader
ΰΰC I
.
ΰΰI J

GetOrdinal
ΰΰJ T
(
ΰΰT U
$str
ΰΰU ]
)
ΰΰ] ^
)
ΰΰ^ _
;
ΰΰ_ `
examAttemptAnswer
αα )
.
αα) *

QuestionId
αα* 4
=
αα5 6
reader
αα7 =
.
αα= >
GetInt32
αα> F
(
ααF G
reader
ααG M
.
ααM N

GetOrdinal
ααN X
(
ααX Y
$str
ααY e
)
ααe f
)
ααf g
;
ααg h
examAttemptAnswer
ββ )
.
ββ) *
ExamAttemptId
ββ* 7
=
ββ8 9
reader
ββ: @
.
ββ@ A
GetInt32
ββA I
(
ββI J
reader
ββJ P
.
ββP Q

GetOrdinal
ββQ [
(
ββ[ \
$str
ββ\ k
)
ββk l
)
ββl m
;
ββm n
examAttemptAnswer
γγ )
.
γγ) *
IsYourAnswer
γγ* 6
=
γγ7 8
reader
γγ9 ?
.
γγ? @
GetInt32
γγ@ H
(
γγH I
reader
γγI O
.
γγO P

GetOrdinal
γγP Z
(
γγZ [
$str
γγ[ i
)
γγi j
)
γγj k
;
γγk l
}
δδ 
reader
ζζ 
.
ζζ 
Close
ζζ  
(
ζζ  !
)
ζζ! "
;
ζζ" #
}
ηη 
}
θθ 
if
ιι 
(
ιι 
gConnection
ιι 
==
ιι 
null
ιι #
)
ιι# $
{
κκ 

connection
λλ 
.
λλ 
Close
λλ  
(
λλ  !
)
λλ! "
;
λλ" #
}
μμ 
return
ξξ 
examAttemptAnswer
ξξ $
;
ξξ$ %
}
οο 	
public
ρρ 
static
ρρ 
void
ρρ  
AddExamAttemptText
ρρ -
(
ρρ- . 
UpdateSkipAnswered
ρρ. @
notesAnswer
ρρA L
)
ρρL M
{
ςς 	
SqlParameter
σσ 
[
σσ 
]
σσ 
arrSqlParameter
σσ *
=
σσ+ ,
{
ττ 
new
υυ 
SqlParameter
υυ $
(
υυ$ %
$str
υυ% =
,
υυ= >
notesAnswer
υυ? J
.
υυJ K
examAttemptText
υυK Z
)
υυZ [
,
υυ[ \
new
φφ 
SqlParameter
φφ $
(
φφ$ %
$str
φφ% 8
,
φφ8 9
DateTime
φφ: B
.
φφB C
Now
φφC F
)
φφF G
,
φφG H
new
χχ 
SqlParameter
χχ $
(
χχ$ %
$str
χχ% ;
,
χχ; <
DateTime
χχ= E
.
χχE F
Now
χχF I
)
χχI J
,
χχJ K
new
ψψ 
SqlParameter
ψψ $
(
ψψ$ %
$str
ψψ% .
,
ψψ. /
notesAnswer
ψψ0 ;
.
ψψ; <
examId
ψψ< B
)
ψψB C
,
ψψC D
new
ωω 
SqlParameter
ωω $
(
ωω$ %
$str
ωω% .
,
ωω. /
notesAnswer
ωω0 ;
.
ωω; <
userId
ωω< B
)
ωωB C
,
ωωC D
new
ϊϊ 
SqlParameter
ϊϊ $
(
ϊϊ$ %
$str
ϊϊ% 2
,
ϊϊ2 3
notesAnswer
ϊϊ4 ?
.
ϊϊ? @
currentQuestionId
ϊϊ@ Q
)
ϊϊQ R
,
ϊϊR S
new
ϋϋ 
SqlParameter
ϋϋ $
(
ϋϋ$ %
$str
ϋϋ% 5
,
ϋϋ5 6
Convert
ϋϋ7 >
.
ϋϋ> ?
ToInt32
ϋϋ? F
(
ϋϋF G
notesAnswer
ϋϋG R
.
ϋϋR S
examAttemptId
ϋϋS `
)
ϋϋ` a
)
ϋϋa b
,
ϋϋb c
}
όό 
;
όό 
	SqlHelper
ύύ 
.
ύύ 
ExecuteNonQuery
ύύ %
(
ύύ% &#
SqlConnectionProvider
ύύ& ;
.
ύύ; <!
GetConnectionString
ύύ< O
(
ύύO P
DataAccessType
ύύP ^
.
ύύ^ _
Write
ύύ_ d
)
ύύd e
,
ύύe f
CommandType
ύύg r
.
ύύr s
StoredProcedureύύs ‚
,ύύ‚ ƒ
$strύύ„ 
,ύύ 
arrSqlParameterύύ  ―
)ύύ― °
;ύύ° ±
}
ώώ 	
public
€€ 
static
€€ 
string
€€ &
GetExamAttemptAnswerText
€€ 5
(
€€5 6
int
€€6 9
?
€€9 :
examId
€€; A
,
€€A B
int
€€C F
?
€€F G

questionId
€€H R
)
€€R S
{
 	
string
‚‚ #
examAttemptAnswerText
‚‚ (
=
‚‚) *
string
‚‚+ 1
.
‚‚1 2
Empty
‚‚2 7
;
‚‚7 8
SqlParameter
ƒƒ 
[
ƒƒ 
]
ƒƒ 
arrSqlParameter
ƒƒ *
=
ƒƒ+ ,
{
„„ 
new
…… 
SqlParameter
…… $
(
……$ %
$str
……% .
,
……. /
Convert
……0 7
.
……7 8
ToInt32
……8 ?
(
……? @
examId
……@ F
)
……F G
)
……G H
,
……H I
new
†† 
SqlParameter
†† $
(
††$ %
$str
††% 2
,
††2 3
Convert
††4 ;
.
††; <
ToInt32
††< C
(
††C D

questionId
††D N
)
††N O
)
††O P
,
††P Q
}
‡‡ 
;
‡‡ 
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
‰‰ %
.
‰‰% &!
GetConnectionString
‰‰& 9
(
‰‰9 :
DataAccessType
‰‰: H
.
‰‰H I
Read
‰‰I M
)
‰‰M N
,
‰‰N O
CommandType
‰‰P [
.
‰‰[ \
StoredProcedure
‰‰\ k
,
‰‰k l
$str‰‰m ‹
,‰‰‹ 
arrSqlParameter‰‰ 
)‰‰ 
)‰‰ 
{
 
if
‹‹ 
(
‹‹ 
objSqlDataReader
‹‹ $
.
‹‹$ %
HasRows
‹‹% ,
)
‹‹, -
{
 
while
 
(
 
objSqlDataReader
 +
.
+ ,
Read
, 0
(
0 1
)
1 2
)
2 3
{
 
object
 &
objExamAttemptAnswerText
 7
=
8 9
objSqlDataReader
: J
[
J K
$str
K b
]
b c
;
c d#
examAttemptAnswerText
 -
=
. /&
objExamAttemptAnswerText
0 H
is
I K
DBNull
L R
?
S T
string
U [
.
[ \
Empty
\ a
:
b c
Convert
d k
.
k l
ToString
l t
(
t u
objSqlDataReaderu …
[… †
$str† 
] 
) 
;  
}
‘‘ 
objSqlDataReader
““ $
.
““$ %
Close
““% *
(
““* +
)
““+ ,
;
““, -
}
”” 
return
–– #
examAttemptAnswerText
–– ,
;
––, -
}
—— 
}
 	
public
 
static
 
void
 "
AddExamQuestionNotes
 /
(
/ 0 
UpdateSkipAnswered
0 B
notesAnswer
C N
)
N O
{
›› 	
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
 
new
 
SqlParameter
 $
(
$ %
$str
% ;
,
; <
notesAnswer
= H
.
H I
examAttemptText
I X
)
X Y
,
Y Z
new
 
SqlParameter
 $
(
$ %
$str
% 8
,
8 9
DateTime
: B
.
B C
Now
C F
)
F G
,
G H
new
   
SqlParameter
   $
(
  $ %
$str
  % ;
,
  ; <
DateTime
  = E
.
  E F
Now
  F I
)
  I J
,
  J K
new
΅΅ 
SqlParameter
΅΅ $
(
΅΅$ %
$str
΅΅% .
,
΅΅. /
notesAnswer
΅΅0 ;
.
΅΅; <
examId
΅΅< B
)
΅΅B C
,
΅΅C D
new
ΆΆ 
SqlParameter
ΆΆ $
(
ΆΆ$ %
$str
ΆΆ% .
,
ΆΆ. /
notesAnswer
ΆΆ0 ;
.
ΆΆ; <
userId
ΆΆ< B
)
ΆΆB C
,
ΆΆC D
new
££ 
SqlParameter
££ $
(
££$ %
$str
££% 2
,
££2 3
notesAnswer
££4 ?
.
££? @
currentQuestionId
££@ Q
)
££Q R
,
££R S
new
¤¤ 
SqlParameter
¤¤ $
(
¤¤$ %
$str
¤¤% 5
,
¤¤5 6
Convert
¤¤7 >
.
¤¤> ?
ToInt32
¤¤? F
(
¤¤F G
notesAnswer
¤¤G R
.
¤¤R S
examAttemptId
¤¤S `
)
¤¤` a
)
¤¤a b
,
¤¤b c
}
¥¥ 
;
¥¥ 
	SqlHelper
¦¦ 
.
¦¦ 
ExecuteNonQuery
¦¦ %
(
¦¦% &#
SqlConnectionProvider
¦¦& ;
.
¦¦; <!
GetConnectionString
¦¦< O
(
¦¦O P
DataAccessType
¦¦P ^
.
¦¦^ _
Write
¦¦_ d
)
¦¦d e
,
¦¦e f
CommandType
¦¦g r
.
¦¦r s
StoredProcedure¦¦s ‚
,¦¦‚ ƒ
$str¦¦„ 
,¦¦ 
arrSqlParameter¦¦  ―
)¦¦― °
;¦¦° ±
}
§§ 	
public
©© 
static
©© 
bool
©© 
GetMarkStatus
©© (
(
©©( )
int
©©) ,
?
©©, -
examId
©©. 4
,
©©4 5
int
©©6 9
?
©©9 :

questionId
©©; E
,
©©E F
int
©©G J
userId
©©K Q
)
©©Q R
{
ªª 	
bool
«« 

markStatus
«« 
=
«« 
false
«« #
;
««# $
SqlParameter
¬¬ 
[
¬¬ 
]
¬¬ 
arrSqlParameter
¬¬ *
=
¬¬+ ,
{
­­ 
new
®® 
SqlParameter
®® $
(
®®$ %
$str
®®% .
,
®®. /
Convert
®®0 7
.
®®7 8
ToInt32
®®8 ?
(
®®? @
examId
®®@ F
)
®®F G
)
®®G H
,
®®H I
new
―― 
SqlParameter
―― $
(
――$ %
$str
――% 2
,
――2 3
Convert
――4 ;
.
――; <
ToInt32
――< C
(
――C D

questionId
――D N
)
――N O
)
――O P
,
――P Q
new
°° 
SqlParameter
°° $
(
°°$ %
$str
°°% .
,
°°. /
Convert
°°0 7
.
°°7 8
ToInt32
°°8 ?
(
°°? @
userId
°°@ F
)
°°F G
)
°°G H
,
°°H I
}
±± 
;
±± 
using
²² 
(
²² 
SqlDataReader
²²  
objSqlDataReader
²²! 1
=
²²2 3
	SqlHelper
²²4 =
.
²²= >
ExecuteReader
²²> K
(
²²K L#
SqlConnectionProvider
³³ %
.
³³% &!
GetConnectionString
³³& 9
(
³³9 :
DataAccessType
³³: H
.
³³H I
Read
³³I M
)
³³M N
,
³³N O
CommandType
³³P [
.
³³[ \
StoredProcedure
³³\ k
,
³³k l
$str³³m €
,³³€ 
arrSqlParameter³³‚ ‘
)³³‘ ’
)³³’ “
{
΄΄ 
if
µµ 
(
µµ 
objSqlDataReader
µµ $
.
µµ$ %
HasRows
µµ% ,
)
µµ, -
{
¶¶ 
while
·· 
(
·· 
objSqlDataReader
·· +
.
··+ ,
Read
··, 0
(
··0 1
)
··1 2
)
··2 3
{
ΈΈ 
object
ΉΉ 
objMarkStatus
ΉΉ ,
=
ΉΉ- .
objSqlDataReader
ΉΉ/ ?
[
ΉΉ? @
$str
ΉΉ@ L
]
ΉΉL M
;
ΉΉM N

markStatus
ΊΊ "
=
ΊΊ# $
objMarkStatus
ΊΊ% 2
is
ΊΊ3 5
DBNull
ΊΊ6 <
?
ΊΊ= >
false
ΊΊ? D
:
ΊΊE F
Convert
ΊΊG N
.
ΊΊN O
	ToBoolean
ΊΊO X
(
ΊΊX Y
objSqlDataReader
ΊΊY i
[
ΊΊi j
$str
ΊΊj v
]
ΊΊv w
)
ΊΊw x
;
ΊΊx y
}
»» 
objSqlDataReader
½½ $
.
½½$ %
Close
½½% *
(
½½* +
)
½½+ ,
;
½½, -
}
ΎΎ 
return
ΐΐ 

markStatus
ΐΐ !
;
ΐΐ! "
}
ΑΑ 
}
ΒΒ 	
public
ΔΔ 
static
ΔΔ 
bool
ΔΔ '
AddOrDeleteMarkedQuestion
ΔΔ 4
(
ΔΔ4 5 
UpdateSkipAnswered
ΔΔ5 G

updateMark
ΔΔH R
)
ΔΔR S
{
ΕΕ 	
bool
ΗΗ 

markStatus
ΗΗ 
=
ΗΗ 
false
ΗΗ #
;
ΗΗ# $
SqlParameter
ΘΘ 
[
ΘΘ 
]
ΘΘ 
arrSqlParameter
ΘΘ *
=
ΘΘ+ ,
{
ΙΙ 
new
ΚΚ 
SqlParameter
ΚΚ $
(
ΚΚ$ %
$str
ΚΚ% 8
,
ΚΚ8 9
DateTime
ΚΚ: B
.
ΚΚB C
Now
ΚΚC F
)
ΚΚF G
,
ΚΚG H
new
ΛΛ 
SqlParameter
ΛΛ $
(
ΛΛ$ %
$str
ΛΛ% ;
,
ΛΛ; <
DateTime
ΛΛ= E
.
ΛΛE F
Now
ΛΛF I
)
ΛΛI J
,
ΛΛJ K
new
ΜΜ 
SqlParameter
ΜΜ $
(
ΜΜ$ %
$str
ΜΜ% .
,
ΜΜ. /

updateMark
ΜΜ0 :
.
ΜΜ: ;
examId
ΜΜ; A
)
ΜΜA B
,
ΜΜB C
new
ΝΝ 
SqlParameter
ΝΝ $
(
ΝΝ$ %
$str
ΝΝ% .
,
ΝΝ. /

updateMark
ΝΝ0 :
.
ΝΝ: ;
userId
ΝΝ; A
)
ΝΝA B
,
ΝΝB C
new
ΞΞ 
SqlParameter
ΞΞ $
(
ΞΞ$ %
$str
ΞΞ% 2
,
ΞΞ2 3

updateMark
ΞΞ4 >
.
ΞΞ> ?
currentQuestionId
ΞΞ? P
)
ΞΞP Q
,
ΞΞQ R
new
ΟΟ 
SqlParameter
ΟΟ $
(
ΟΟ$ %
$str
ΟΟ% 5
,
ΟΟ5 6
Convert
ΟΟ7 >
.
ΟΟ> ?
ToInt32
ΟΟ? F
(
ΟΟF G

updateMark
ΟΟG Q
.
ΟΟQ R
examAttemptId
ΟΟR _
)
ΟΟ_ `
)
ΟΟ` a
,
ΟΟa b
new
ΠΠ 
SqlParameter
ΠΠ $
(
ΠΠ$ %
$str
ΠΠ% 4
,
ΠΠ4 5

updateMark
ΠΠ6 @
.
ΠΠ@ A
markedStatus
ΠΠA M
)
ΠΠM N
,
ΠΠN O
}
ΡΡ 
;
ΡΡ 
using
ÒÒ 
(
ÒÒ 
SqlDataReader
ÒÒ  
objSqlDataReader
ÒÒ! 1
=
ÒÒ2 3
	SqlHelper
ÒÒ4 =
.
ÒÒ= >
ExecuteReader
ÒÒ> K
(
ÒÒK L#
SqlConnectionProvider
ΣΣ %
.
ΣΣ% &!
GetConnectionString
ΣΣ& 9
(
ΣΣ9 :
DataAccessType
ΣΣ: H
.
ΣΣH I
Read
ΣΣI M
)
ΣΣM N
,
ΣΣN O
CommandType
ΣΣP [
.
ΣΣ[ \
StoredProcedure
ΣΣ\ k
,
ΣΣk l
$strΣΣm …
,ΣΣ… †
arrSqlParameterΣΣ‡ –
)ΣΣ– —
)ΣΣ— 
{
ΤΤ 
if
ΥΥ 
(
ΥΥ 
objSqlDataReader
ΥΥ $
.
ΥΥ$ %
HasRows
ΥΥ% ,
)
ΥΥ, -
{
ΦΦ 
while
ΧΧ 
(
ΧΧ 
objSqlDataReader
ΧΧ +
.
ΧΧ+ ,
Read
ΧΧ, 0
(
ΧΧ0 1
)
ΧΧ1 2
)
ΧΧ2 3
{
ΨΨ 
object
ΩΩ 
objMarkStatus
ΩΩ ,
=
ΩΩ- .
objSqlDataReader
ΩΩ/ ?
[
ΩΩ? @
$str
ΩΩ@ O
]
ΩΩO P
;
ΩΩP Q

markStatus
ΪΪ "
=
ΪΪ# $
objMarkStatus
ΪΪ% 2
is
ΪΪ3 5
DBNull
ΪΪ6 <
?
ΪΪ= >
false
ΪΪ? D
:
ΪΪE F
Convert
ΪΪG N
.
ΪΪN O
	ToBoolean
ΪΪO X
(
ΪΪX Y
objSqlDataReader
ΪΪY i
[
ΪΪi j
$str
ΪΪj y
]
ΪΪy z
)
ΪΪz {
;
ΪΪ{ |
}
ΫΫ 
objSqlDataReader
έέ $
.
έέ$ %
Close
έέ% *
(
έέ* +
)
έέ+ ,
;
έέ, -
}
ήή 
return
ΰΰ 

markStatus
ΰΰ !
;
ΰΰ! "
}
αα 
}
ββ 	
public
δδ 
static
δδ 
int
δδ  
SetTimeForQuestion
δδ ,
(
δδ, -
int
δδ- 0
?
δδ0 1
	attemptId
δδ2 ;
)
δδ; <
{
εε 	
int
ζζ 
time
ζζ 
=
ζζ 
$num
ζζ 
;
ζζ 
SqlParameter
ηη 
[
ηη 
]
ηη 
arrSqlParameter
ηη *
=
ηη+ ,
{
θθ 
new
ιι 
SqlParameter
ιι $
(
ιι$ %
$str
ιι% 5
,
ιι5 6
Convert
ιι7 >
.
ιι> ?
ToInt32
ιι? F
(
ιιF G
	attemptId
ιιG P
)
ιιP Q
)
ιιQ R
,
ιιR S
}
κκ 
;
κκ 
using
λλ 
(
λλ 
SqlDataReader
λλ  
objSqlDataReader
λλ! 1
=
λλ2 3
	SqlHelper
λλ4 =
.
λλ= >
ExecuteReader
λλ> K
(
λλK L#
SqlConnectionProvider
μμ %
.
μμ% &!
GetConnectionString
μμ& 9
(
μμ9 :
DataAccessType
μμ: H
.
μμH I
Read
μμI M
)
μμM N
,
μμN O
CommandType
μμP [
.
μμ[ \
StoredProcedure
μμ\ k
,
μμk l
$str
μμm ~
,
μμ~ 
arrSqlParameterμμ€ 
)μμ 
)μμ ‘
{
νν 
if
ξξ 
(
ξξ 
objSqlDataReader
ξξ $
.
ξξ$ %
HasRows
ξξ% ,
)
ξξ, -
{
οο 
while
ππ 
(
ππ 
objSqlDataReader
ππ +
.
ππ+ ,
Read
ππ, 0
(
ππ0 1
)
ππ1 2
)
ππ2 3
{
ρρ 
object
ςς 
objExamTime
ςς *
=
ςς+ ,
objSqlDataReader
ςς- =
[
ςς= >
$str
ςς> H
]
ςςH I
;
ςςI J
time
σσ 
=
σσ 
objExamTime
σσ *
is
σσ+ -
DBNull
σσ. 4
?
σσ5 6
$num
σσ7 8
:
σσ9 :
Convert
σσ; B
.
σσB C
ToInt32
σσC J
(
σσJ K
objSqlDataReader
σσK [
[
σσ[ \
$str
σσ\ f
]
σσf g
)
σσg h
;
σσh i
}
ττ 
objSqlDataReader
φφ $
.
φφ$ %
Close
φφ% *
(
φφ* +
)
φφ+ ,
;
φφ, -
}
χχ 
}
ψψ 
return
ϊϊ 
time
ϊϊ 
;
ϊϊ 
}
ϋϋ 	
public
ύύ 
static
ύύ 
void
ύύ  
UpdateConsumedTime
ύύ -
(
ύύ- .
int
ύύ. 1
?
ύύ1 2
	attemptId
ύύ3 <
,
ύύ< =
double
ύύ> D
consumedTime
ύύE Q
)
ύύQ R
{
ώώ 	
SqlParameter
ÿÿ 
[
ÿÿ 
]
ÿÿ 
arrSqlParameter
ÿÿ *
=
ÿÿ+ ,
{
€€ 
new
 
SqlParameter
 $
(
$ %
$str
% 5
,
5 6
Convert
7 >
.
> ?
ToInt32
? F
(
F G
	attemptId
G P
)
P Q
)
Q R
,
R S
new
‚‚ 
SqlParameter
‚‚ $
(
‚‚$ %
$str
‚‚% 4
,
‚‚4 5
Convert
‚‚6 =
.
‚‚= >
ToInt32
‚‚> E
(
‚‚E F
consumedTime
‚‚F R
)
‚‚R S
)
‚‚S T
,
‚‚T U
}
ƒƒ 
;
ƒƒ 
using
„„ 
(
„„ 
SqlDataReader
„„  
objSqlDataReader
„„! 1
=
„„2 3
	SqlHelper
„„4 =
.
„„= >
ExecuteReader
„„> K
(
„„K L#
SqlConnectionProvider
…… %
.
……% &!
GetConnectionString
……& 9
(
……9 :
DataAccessType
……: H
.
……H I
Read
……I M
)
……M N
,
……N O
CommandType
……P [
.
……[ \
StoredProcedure
……\ k
,
……k l
$str……m 
,…… ‚
arrSqlParameter……ƒ ’
)……’ “
)……“ ”
{
†† 
}
‡‡ 
}
 	
public
 
static
 
int
 

SubmitExam
 $
(
$ % 
UpdateSkipAnswered
% 7

submitExam
8 B
)
B C
{
‹‹ 	
int
 
result
 
=
 
$num
 
;
 
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
 
new
 
SqlParameter
 $
(
$ %
$str
% .
,
. /

submitExam
0 :
.
: ;
examId
; A
)
A B
,
B C
new
 
SqlParameter
 $
(
$ %
$str
% .
,
. /

submitExam
0 :
.
: ;
userId
; A
)
A B
,
B C
}
‘‘ 
;
‘‘ 
using
’’ 
(
’’ 
SqlDataReader
’’  
objSqlDataReader
’’! 1
=
’’2 3
	SqlHelper
’’4 =
.
’’= >
ExecuteReader
’’> K
(
’’K L#
SqlConnectionProvider
““ %
.
““% &!
GetConnectionString
““& 9
(
““9 :
DataAccessType
““: H
.
““H I
Read
““I M
)
““M N
,
““N O
CommandType
““P [
.
““[ \
StoredProcedure
““\ k
,
““k l
$str
““m }
,
““} ~
arrSqlParameter““ 
)““ 
)““ 
{
”” 
if
•• 
(
•• 
objSqlDataReader
•• $
.
••$ %
HasRows
••% ,
)
••, -
{
–– 
while
—— 
(
—— 
objSqlDataReader
—— +
.
——+ ,
Read
——, 0
(
——0 1
)
——1 2
)
——2 3
{
 
object
™™ 
	objResult
™™ (
=
™™) *
objSqlDataReader
™™+ ;
[
™™; <
$str
™™< D
]
™™D E
;
™™E F
result
 
=
  
	objResult
! *
is
+ -
DBNull
. 4
?
5 6
$num
7 8
:
9 :
Convert
; B
.
B C
ToInt32
C J
(
J K
objSqlDataReader
K [
[
[ \
$str
\ d
]
d e
)
e f
;
f g
}
›› 
objSqlDataReader
 $
.
$ %
Close
% *
(
* +
)
+ ,
;
, -
}
 
}
 
return
΅΅ 
result
΅΅ 
;
΅΅ 
}
ΆΆ 	
public
¤¤ 
static
¤¤ 
List
¤¤ 
<
¤¤ 
ViewProgressVM
¤¤ )
>
¤¤) *
ViewProgress
¤¤+ 7
(
¤¤7 8 
UpdateSkipAnswered
¤¤8 J
viewProgressData
¤¤K [
)
¤¤[ \
{
¥¥ 	
List
¦¦ 
<
¦¦ 
ViewProgressVM
¦¦ 
>
¦¦  
viewProgressList
¦¦! 1
=
¦¦2 3
new
¦¦4 7
List
¦¦8 <
<
¦¦< =
ViewProgressVM
¦¦= K
>
¦¦K L
(
¦¦L M
)
¦¦M N
;
¦¦N O
SqlParameter
§§ 
[
§§ 
]
§§ 
arrSqlParameter
§§ *
=
§§+ ,
{
¨¨ 
new
©© 
SqlParameter
©© $
(
©©$ %
$str
©©% .
,
©©. /
viewProgressData
©©0 @
.
©©@ A
examId
©©A G
)
©©G H
,
©©H I
new
ªª 
SqlParameter
ªª $
(
ªª$ %
$str
ªª% .
,
ªª. /
viewProgressData
ªª0 @
.
ªª@ A
userId
ªªA G
)
ªªG H
,
ªªH I
}
«« 
;
«« 
using
¬¬ 
(
¬¬ 
SqlDataReader
¬¬  
objSqlDataReader
¬¬! 1
=
¬¬2 3
	SqlHelper
¬¬4 =
.
¬¬= >
ExecuteReader
¬¬> K
(
¬¬K L#
SqlConnectionProvider
­­ %
.
­­% &!
GetConnectionString
­­& 9
(
­­9 :
DataAccessType
­­: H
.
­­H I
Read
­­I M
)
­­M N
,
­­N O
CommandType
­­P [
.
­­[ \
StoredProcedure
­­\ k
,
­­k l
$str­­m ‰
,­­‰ 
arrSqlParameter­­‹ 
)­­ ›
)­­› 
{
®® 
if
―― 
(
―― 
objSqlDataReader
―― $
.
――$ %
HasRows
――% ,
)
――, -
{
°° 
int
±± 
questionSequences
±± )
=
±±* +
$num
±±, -
;
±±- .
while
²² 
(
²² 
objSqlDataReader
²² +
.
²²+ ,
Read
²², 0
(
²²0 1
)
²²1 2
)
²²2 3
{
³³ 
questionSequences
΄΄ )
++
΄΄) +
;
΄΄+ ,
ViewProgressVM
µµ &
viewProgress
µµ' 3
=
µµ4 5
new
µµ6 9
ViewProgressVM
µµ: H
(
µµH I
)
µµI J
;
µµJ K
viewProgress
¶¶ $
.
¶¶$ %
QuestionSequence
¶¶% 5
=
¶¶6 7
questionSequences
¶¶8 I
;
¶¶I J
object
·· 
objQuestionid
·· ,
=
··- .
objSqlDataReader
··/ ?
[
··? @
$str
··@ L
]
··L M
;
··M N
viewProgress
ΈΈ $
.
ΈΈ$ %

QuestionId
ΈΈ% /
=
ΈΈ0 1
objQuestionid
ΈΈ2 ?
is
ΈΈ@ B
DBNull
ΈΈC I
?
ΈΈJ K
$num
ΈΈL M
:
ΈΈN O
Convert
ΈΈP W
.
ΈΈW X
ToInt32
ΈΈX _
(
ΈΈ_ `
objSqlDataReader
ΈΈ` p
[
ΈΈp q
$str
ΈΈq }
]
ΈΈ} ~
)
ΈΈ~ 
;ΈΈ €
object
ΉΉ 
selectedChoiceObj
ΉΉ 0
=
ΉΉ1 2
objSqlDataReader
ΉΉ3 C
[
ΉΉC D
$str
ΉΉD N
]
ΉΉN O
;
ΉΉO P
viewProgress
ΊΊ $
.
ΊΊ$ %
SelectedChoice
ΊΊ% 3
=
ΊΊ4 5
selectedChoiceObj
ΊΊ6 G
is
ΊΊH J
DBNull
ΊΊK Q
?
ΊΊR S
$num
ΊΊT U
:
ΊΊV W
Convert
ΊΊX _
.
ΊΊ_ `
ToInt32
ΊΊ` g
(
ΊΊg h
objSqlDataReader
ΊΊh x
[
ΊΊx y
$strΊΊy ƒ
]ΊΊƒ „
)ΊΊ„ …
;ΊΊ… †
object
»» 
correctChoiceObj
»» /
=
»»0 1
objSqlDataReader
»»2 B
[
»»B C
$str
»»C P
]
»»P Q
;
»»Q R
viewProgress
ΌΌ $
.
ΌΌ$ %
CorrectChoice
ΌΌ% 2
=
ΌΌ3 4
correctChoiceObj
ΌΌ5 E
is
ΌΌF H
DBNull
ΌΌI O
?
ΌΌP Q
$num
ΌΌR S
:
ΌΌT U
Convert
ΌΌV ]
.
ΌΌ] ^
ToInt32
ΌΌ^ e
(
ΌΌe f
objSqlDataReader
ΌΌf v
[
ΌΌv w
$strΌΌw „
]ΌΌ„ …
)ΌΌ… †
;ΌΌ† ‡
object
½½ 

isRightObj
½½ )
=
½½* +
objSqlDataReader
½½, <
[
½½< =
$str
½½= F
]
½½F G
;
½½G H
viewProgress
ΎΎ $
.
ΎΎ$ %
IsRight
ΎΎ% ,
=
ΎΎ- .

isRightObj
ΎΎ/ 9
is
ΎΎ: <
DBNull
ΎΎ= C
?
ΎΎD E
false
ΎΎF K
:
ΎΎL M
Convert
ΎΎN U
.
ΎΎU V
	ToBoolean
ΎΎV _
(
ΎΎ_ `
objSqlDataReader
ΎΎ` p
[
ΎΎp q
$str
ΎΎq z
]
ΎΎz {
)
ΎΎ{ |
;
ΎΎ| }
object
ΏΏ 
markObj
ΏΏ &
=
ΏΏ' (
objSqlDataReader
ΏΏ) 9
[
ΏΏ9 :
$str
ΏΏ: L
]
ΏΏL M
;
ΏΏM N
viewProgress
ΐΐ $
.
ΐΐ$ %
IsMarked
ΐΐ% -
=
ΐΐ. /
markObj
ΐΐ0 7
is
ΐΐ8 :
DBNull
ΐΐ; A
?
ΐΐB C
false
ΐΐD I
:
ΐΐJ K
Convert
ΐΐL S
.
ΐΐS T
	ToBoolean
ΐΐT ]
(
ΐΐ] ^
objSqlDataReader
ΐΐ^ n
[
ΐΐn o
$strΐΐo 
]ΐΐ ‚
)ΐΐ‚ ƒ
;ΐΐƒ „
object
ΑΑ 
	notestObj
ΑΑ (
=
ΑΑ) *
objSqlDataReader
ΑΑ+ ;
[
ΑΑ; <
$str
ΑΑ< Q
]
ΑΑQ R
;
ΑΑR S
viewProgress
ΒΒ $
.
ΒΒ$ %
HasNotes
ΒΒ% -
=
ΒΒ. /
	notestObj
ΒΒ0 9
is
ΒΒ: <
DBNull
ΒΒ= C
?
ΒΒD E
false
ΒΒF K
:
ΒΒL M
Convert
ΒΒN U
.
ΒΒU V
	ToBoolean
ΒΒV _
(
ΒΒ_ `
objSqlDataReader
ΒΒ` p
[
ΒΒp q
$strΒΒq †
]ΒΒ† ‡
)ΒΒ‡ 
;ΒΒ ‰
object
ΓΓ 
selectedOptionObj
ΓΓ 0
=
ΓΓ1 2
objSqlDataReader
ΓΓ3 C
[
ΓΓC D
$str
ΓΓD Q
]
ΓΓQ R
;
ΓΓR S
viewProgress
ΔΔ $
.
ΔΔ$ %
SelectedOption
ΔΔ% 3
=
ΔΔ4 5
selectedOptionObj
ΔΔ6 G
is
ΔΔH J
DBNull
ΔΔK Q
?
ΔΔR S
$char
ΔΔT W
:
ΔΔX Y
Convert
ΔΔZ a
.
ΔΔa b
ToChar
ΔΔb h
(
ΔΔh i
objSqlDataReader
ΔΔi y
[
ΔΔy z
$strΔΔz ‡
]ΔΔ‡ 
)ΔΔ ‰
;ΔΔ‰ 
object
ΕΕ 
correctOptionObj
ΕΕ /
=
ΕΕ0 1
objSqlDataReader
ΕΕ2 B
[
ΕΕB C
$str
ΕΕC R
]
ΕΕR S
;
ΕΕS T
viewProgress
ΖΖ $
.
ΖΖ$ %
CorrectOption
ΖΖ% 2
=
ΖΖ3 4
correctOptionObj
ΖΖ5 E
is
ΖΖF H
DBNull
ΖΖI O
?
ΖΖP Q
$char
ΖΖR U
:
ΖΖV W
Convert
ΖΖX _
.
ΖΖ_ `
ToChar
ΖΖ` f
(
ΖΖf g
objSqlDataReader
ΖΖg w
[
ΖΖw x
$strΖΖx ‡
]ΖΖ‡ 
)ΖΖ ‰
;ΖΖ‰ 
viewProgressList
ΗΗ (
.
ΗΗ( )
Add
ΗΗ) ,
(
ΗΗ, -
viewProgress
ΗΗ- 9
)
ΗΗ9 :
;
ΗΗ: ;
}
ΘΘ 
objSqlDataReader
ΚΚ $
.
ΚΚ$ %
Close
ΚΚ% *
(
ΚΚ* +
)
ΚΚ+ ,
;
ΚΚ, -
}
ΛΛ 
}
ΜΜ 
return
ΞΞ 
viewProgressList
ΞΞ #
;
ΞΞ# $
}
ΟΟ 	
public
ÒÒ 
static
ÒÒ 
List
ÒÒ 
<
ÒÒ 
PeerDetailVM
ÒÒ '
>
ÒÒ' (
GetPeerDetails
ÒÒ) 7
(
ÒÒ7 8
int
ÒÒ8 ;

questionId
ÒÒ< F
,
ÒÒF G
int
ÒÒH K
userId
ÒÒL R
,
ÒÒR S
int
ÒÒT W
examattemptId
ÒÒX e
)
ÒÒe f
{
ΣΣ 	
List
ΤΤ 
<
ΤΤ 
PeerDetailVM
ΤΤ 
>
ΤΤ 
peerDetailsList
ΤΤ .
=
ΤΤ/ 0
new
ΤΤ1 4
List
ΤΤ5 9
<
ΤΤ9 :
PeerDetailVM
ΤΤ: F
>
ΤΤF G
(
ΤΤG H
)
ΤΤH I
;
ΤΤI J
SqlParameter
ΥΥ 
[
ΥΥ 
]
ΥΥ 
arrSqlParameter
ΥΥ *
=
ΥΥ+ ,
{
ΦΦ 
new
ΧΧ 
SqlParameter
ΧΧ $
(
ΧΧ$ %
$str
ΧΧ% 2
,
ΧΧ2 3

questionId
ΧΧ4 >
)
ΧΧ> ?
,
ΧΧ? @
new
ΨΨ 
SqlParameter
ΨΨ $
(
ΨΨ$ %
$str
ΨΨ% .
,
ΨΨ. /
userId
ΨΨ0 6
)
ΨΨ6 7
,
ΨΨ7 8
new
ΩΩ 
SqlParameter
ΩΩ $
(
ΩΩ$ %
$str
ΩΩ% 5
,
ΩΩ5 6
examattemptId
ΩΩ7 D
)
ΩΩD E
,
ΩΩE F
}
ΪΪ 
;
ΪΪ 
using
ΫΫ 
(
ΫΫ 
SqlDataReader
ΫΫ  
objSqlDataReader
ΫΫ! 1
=
ΫΫ2 3
	SqlHelper
ΫΫ4 =
.
ΫΫ= >
ExecuteReader
ΫΫ> K
(
ΫΫK L#
SqlConnectionProvider
άά %
.
άά% &!
GetConnectionString
άά& 9
(
άά9 :
DataAccessType
άά: H
.
άάH I
Read
άάI M
)
άάM N
,
άάN O
CommandType
άάP [
.
άά[ \
StoredProcedure
άά\ k
,
άάk l
$strάάm 
,άά ‚
arrSqlParameterάάƒ ’
)άά’ “
)άά“ ”
{
έέ 
if
ήή 
(
ήή 
objSqlDataReader
ήή $
.
ήή$ %
HasRows
ήή% ,
)
ήή, -
{
ίί 
while
ΰΰ 
(
ΰΰ 
objSqlDataReader
ΰΰ +
.
ΰΰ+ ,
Read
ΰΰ, 0
(
ΰΰ0 1
)
ΰΰ1 2
)
ΰΰ2 3
{
αα 
PeerDetailVM
ββ $

peerDetail
ββ% /
=
ββ0 1
new
ββ2 5
PeerDetailVM
ββ6 B
(
ββB C
)
ββC D
;
ββD E
object
γγ  
choiceSequendceObj
γγ 1
=
γγ2 3
objSqlDataReader
γγ4 D
[
γγD E
$str
γγE U
]
γγU V
;
γγV W

peerDetail
δδ "
.
δδ" #
ChoiceSequence
δδ# 1
=
δδ2 3 
choiceSequendceObj
δδ4 F
is
δδG I
DBNull
δδJ P
?
δδQ R
$num
δδS T
:
δδU V
Convert
δδW ^
.
δδ^ _
ToInt32
δδ_ f
(
δδf g
objSqlDataReader
δδg w
[
δδw x
$strδδx 
]δδ ‰
)δδ‰ 
;δδ ‹
object
εε 
choiceOptionObj
εε .
=
εε/ 0
objSqlDataReader
εε1 A
[
εεA B
$str
εεB J
]
εεJ K
;
εεK L

peerDetail
ζζ "
.
ζζ" #
ChoiceOption
ζζ# /
=
ζζ0 1
choiceOptionObj
ζζ2 A
is
ζζB D
DBNull
ζζE K
?
ζζL M
$char
ζζN R
:
ζζS T
Convert
ζζU \
.
ζζ\ ]
ToChar
ζζ] c
(
ζζc d
objSqlDataReader
ζζd t
[
ζζt u
$str
ζζu }
]
ζζ} ~
)
ζζ~ 
;ζζ €
object
ηη 
choiceIdObj
ηη *
=
ηη+ ,
objSqlDataReader
ηη- =
[
ηη= >
$str
ηη> I
]
ηηI J
;
ηηJ K

peerDetail
θθ "
.
θθ" #
ChoiceId
θθ# +
=
θθ, -
choiceIdObj
θθ. 9
is
θθ: <
DBNull
θθ= C
?
θθD E
$num
θθF G
:
θθH I
Convert
θθJ Q
.
θθQ R
ToInt32
θθR Y
(
θθY Z
objSqlDataReader
θθZ j
[
θθj k
$str
θθk v
]
θθv w
)
θθw x
;
θθx y
object
ιι 
isRightChoiceObj
ιι /
=
ιι0 1
objSqlDataReader
ιι2 B
[
ιιB C
$str
ιιC R
]
ιιR S
;
ιιS T

peerDetail
κκ "
.
κκ" #
IsRightChoice
κκ# 0
=
κκ1 2
isRightChoiceObj
κκ3 C
is
κκD F
DBNull
κκG M
?
κκN O
false
κκP U
:
κκV W
Convert
κκX _
.
κκ_ `
	ToBoolean
κκ` i
(
κκi j
objSqlDataReader
κκj z
[
κκz {
$strκκ{ 
]κκ ‹
)κκ‹ 
;κκ 
object
λλ 
percentageObj
λλ ,
=
λλ- .
objSqlDataReader
λλ/ ?
[
λλ? @
$str
λλ@ L
]
λλL M
;
λλM N

peerDetail
μμ "
.
μμ" #
ChoicePercentage
μμ# 3
=
μμ4 5
percentageObj
μμ6 C
is
μμD F
DBNull
μμG M
?
μμN O
$num
μμP Q
:
μμR S
Convert
μμT [
.
μμ[ \
ToDouble
μμ\ d
(
μμd e
objSqlDataReader
μμe u
[
μμu v
$strμμv ‚
]μμ‚ ƒ
)μμƒ „
;μμ„ …
object
νν 
usertypeObj
νν *
=
νν+ ,
objSqlDataReader
νν- =
[
νν= >
$str
νν> H
]
ννH I
;
ννI J

peerDetail
ξξ "
.
ξξ" #
UserType
ξξ# +
=
ξξ, -
usertypeObj
ξξ. 9
is
ξξ: <
DBNull
ξξ= C
?
ξξD E
$num
ξξF G
:
ξξH I
Convert
ξξJ Q
.
ξξQ R
ToInt32
ξξR Y
(
ξξY Z
objSqlDataReader
ξξZ j
[
ξξj k
$str
ξξk u
]
ξξu v
)
ξξv w
;
ξξw x
peerDetailsList
οο '
.
οο' (
Add
οο( +
(
οο+ ,

peerDetail
οο, 6
)
οο6 7
;
οο7 8
}
ππ 
objSqlDataReader
ςς $
.
ςς$ %
Close
ςς% *
(
ςς* +
)
ςς+ ,
;
ςς, -
}
σσ 
}
ττ 
return
φφ 
peerDetailsList
φφ "
;
φφ" #
}
χχ 	
public
ϊϊ 
static
ϊϊ 
int
ϊϊ 
GetQuestionCount
ϊϊ *
(
ϊϊ* +
int
ϊϊ+ .
examId
ϊϊ/ 5
)
ϊϊ5 6
{
ϋϋ 	
int
όό 
result
όό 
=
όό 
$num
όό 
;
όό 
SqlParameter
ύύ 
[
ύύ 
]
ύύ 
arrSqlParameter
ύύ *
=
ύύ+ ,
{
ώώ 
new
ÿÿ 
SqlParameter
ÿÿ $
(
ÿÿ$ %
$str
ÿÿ% .
,
ÿÿ. /
examId
ÿÿ0 6
)
ÿÿ6 7
,
ÿÿ7 8
}
€	€	 
;
€	€	 
using
		 
(
		 
SqlDataReader
		  
objSqlDataReader
		! 1
=
		2 3
	SqlHelper
		4 =
.
		= >
ExecuteReader
		> K
(
		K L#
SqlConnectionProvider
‚	‚	 %
.
‚	‚	% &!
GetConnectionString
‚	‚	& 9
(
‚	‚	9 :
DataAccessType
‚	‚	: H
.
‚	‚	H I
Read
‚	‚	I M
)
‚	‚	M N
,
‚	‚	N O
CommandType
‚	‚	P [
.
‚	‚	[ \
StoredProcedure
‚	‚	\ k
,
‚	‚	k l
$str‚	‚	m ƒ
,‚	‚	ƒ „
arrSqlParameter‚	‚	… ”
)‚	‚	” •
)‚	‚	• –
{
ƒ	ƒ	 
if
„	„	 
(
„	„	 
objSqlDataReader
„	„	 $
.
„	„	$ %
HasRows
„	„	% ,
)
„	„	, -
{
…	…	 
while
†	†	 
(
†	†	 
objSqlDataReader
†	†	 +
.
†	†	+ ,
Read
†	†	, 0
(
†	†	0 1
)
†	†	1 2
)
†	†	2 3
{
‡	‡	 
object
		 
objQuestionCount
		 /
=
		0 1
objSqlDataReader
		2 B
[
		B C
$str
		C R
]
		R S
;
		S T
result
‰	‰	 
=
‰	‰	  
objQuestionCount
‰	‰	! 1
is
‰	‰	2 4
DBNull
‰	‰	5 ;
?
‰	‰	< =
$num
‰	‰	> ?
:
‰	‰	@ A
Convert
‰	‰	B I
.
‰	‰	I J
ToInt32
‰	‰	J Q
(
‰	‰	Q R
objSqlDataReader
‰	‰	R b
[
‰	‰	b c
$str
‰	‰	c r
]
‰	‰	r s
)
‰	‰	s t
;
‰	‰	t u
}
		 
objSqlDataReader
		 $
.
		$ %
Close
		% *
(
		* +
)
		+ ,
;
		, -
}
		 
}
		 
return
		 
result
		 
;
		 
}
‘	‘	 	
public
“	“	 
static
“	“	 
void
“	“	 (
UpdateOrAddIncorrectAnswer
“	“	 5
(
“	“	5 6"
IncorrectQuestionDTO
“	“	6 J
incorrectQuestion
“	“	K \
)
“	“	\ ]
{
”	”	 	
SqlParameter
•	•	 
[
•	•	 
]
•	•	 
arrSqlParameter
•	•	 *
=
•	•	+ ,
{
–	–	 
new
—	—	 
SqlParameter
—	—	 $
(
—	—	$ %
$str
—	—	% 3
,
—	—	3 4
incorrectQuestion
—	—	5 F
.
—	—	F G

QuestionId
—	—	G Q
)
—	—	Q R
,
—	—	R S
new
		 
SqlParameter
		 $
(
		$ %
$str
		% .
,
		. /
incorrectQuestion
		0 A
.
		A B
UserId
		B H
)
		H I
,
		I J
new
™	™	 
SqlParameter
™	™	 $
(
™	™	$ %
$str
™	™	% 5
,
™	™	5 6
incorrectQuestion
™	™	7 H
.
™	™	H I
ExamAttemptId
™	™	I V
)
™	™	V W
,
™	™	W X
new
		 
SqlParameter
		 $
(
		$ %
$str
		% /
,
		/ 0
incorrectQuestion
		1 B
.
		B C
IsRight
		C J
)
		J K
,
		K L
}
›	›	 
;
›	›	 
using
		 
(
		 
SqlDataReader
		  
objSqlDataReader
		! 1
=
		2 3
	SqlHelper
		4 =
.
		= >
ExecuteReader
		> K
(
		K L#
SqlConnectionProvider
		 %
.
		% &!
GetConnectionString
		& 9
(
		9 :
DataAccessType
		: H
.
		H I
Read
		I M
)
		M N
,
		N O
CommandType
		P [
.
		[ \
StoredProcedure
		\ k
,
		k l
$str		m 
,		 
arrSqlParameter		‘  
)		  ΅
)		΅ Ά
{
		 
}
		 
}
 	 	 	
public
Ά	Ά	 
static
Ά	Ά	 
void
Ά	Ά	 
SaveIsYourAnswer
Ά	Ά	 +
(
Ά	Ά	+ , 
UpdateSkipAnswered
Ά	Ά	, >
isYourAnswer
Ά	Ά	? K
)
Ά	Ά	K L
{
£	£	 	
SqlParameter
¤	¤	 
[
¤	¤	 
]
¤	¤	 
arrSqlParameter
¤	¤	 *
=
¤	¤	+ ,
{
¥	¥	 
new
¦	¦	 
SqlParameter
¦	¦	 $
(
¦	¦	$ %
$str
¦	¦	% 3
,
¦	¦	3 4
isYourAnswer
¦	¦	5 A
.
¦	¦	A B
currentQuestionId
¦	¦	B S
)
¦	¦	S T
,
¦	¦	T U
new
§	§	 
SqlParameter
§	§	 $
(
§	§	$ %
$str
§	§	% .
,
§	§	. /
isYourAnswer
§	§	0 <
.
§	§	< =
userId
§	§	= C
)
§	§	C D
,
§	§	D E
new
¨	¨	 
SqlParameter
¨	¨	 $
(
¨	¨	$ %
$str
¨	¨	% 5
,
¨	¨	5 6
Convert
¨	¨	7 >
.
¨	¨	> ?
ToInt32
¨	¨	? F
(
¨	¨	F G
isYourAnswer
¨	¨	G S
.
¨	¨	S T
examAttemptId
¨	¨	T a
)
¨	¨	a b
)
¨	¨	b c
,
¨	¨	c d
new
©	©	 
SqlParameter
©	©	 $
(
©	©	$ %
$str
©	©	% 4
,
©	©	4 5
isYourAnswer
©	©	6 B
.
©	©	B C
isYourAnswer
©	©	C O
)
©	©	O P
,
©	©	P Q
}
ª	ª	 
;
ª	ª	 
using
«	«	 
(
«	«	 
SqlDataReader
«	«	  
objSqlDataReader
«	«	! 1
=
«	«	2 3
	SqlHelper
«	«	4 =
.
«	«	= >
ExecuteReader
«	«	> K
(
«	«	K L#
SqlConnectionProvider
¬	¬	 %
.
¬	¬	% &!
GetConnectionString
¬	¬	& 9
(
¬	¬	9 :
DataAccessType
¬	¬	: H
.
¬	¬	H I
Read
¬	¬	I M
)
¬	¬	M N
,
¬	¬	N O
CommandType
¬	¬	P [
.
¬	¬	[ \
StoredProcedure
¬	¬	\ k
,
¬	¬	k l
$str¬	¬	m …
,¬	¬	… †
arrSqlParameter¬	¬	‡ –
)¬	¬	– —
)¬	¬	— 
{
­	­	 
}
®	®	 
}
―	―	 	
public
²	²	 
static
²	²	 
List
²	²	 
<
²	²	 
string
²	²	 !
>
²	²	! " 
GetBCSCExcerptText
²	²	# 5
(
²	²	5 6
int
²	²	6 9

questionId
²	²	: D
)
²	²	D E
{
³	³	 	
List
΄	΄	 
<
΄	΄	 
string
΄	΄	 
>
΄	΄	 
content
΄	΄	  
=
΄	΄	! "
new
΄	΄	# &
List
΄	΄	' +
<
΄	΄	+ ,
string
΄	΄	, 2
>
΄	΄	2 3
(
΄	΄	3 4
)
΄	΄	4 5
;
΄	΄	5 6
SqlParameter
µ	µ	 
[
µ	µ	 
]
µ	µ	 
arrSqlParameter
µ	µ	 *
=
µ	µ	+ ,
{
¶	¶	 
new
·	·	 
SqlParameter
·	·	 $
(
·	·	$ %
$str
·	·	% 2
,
·	·	2 3

questionId
·	·	4 >
)
·	·	> ?
,
·	·	? @
}
Έ	Έ	 
;
Έ	Έ	 
using
Ή	Ή	 
(
Ή	Ή	 
SqlDataReader
Ή	Ή	  
objSqlDataReader
Ή	Ή	! 1
=
Ή	Ή	2 3
	SqlHelper
Ή	Ή	4 =
.
Ή	Ή	= >
ExecuteReader
Ή	Ή	> K
(
Ή	Ή	K L#
SqlConnectionProvider
Ί	Ί	 %
.
Ί	Ί	% &!
GetConnectionString
Ί	Ί	& 9
(
Ί	Ί	9 :
DataAccessType
Ί	Ί	: H
.
Ί	Ί	H I
Read
Ί	Ί	I M
)
Ί	Ί	M N
,
Ί	Ί	N O
CommandType
Ί	Ί	P [
.
Ί	Ί	[ \
StoredProcedure
Ί	Ί	\ k
,
Ί	Ί	k l
$strΊ	Ί	m …
,Ί	Ί	… †
arrSqlParameterΊ	Ί	‡ –
)Ί	Ί	– —
)Ί	Ί	— 
{
»	»	 
if
Ό	Ό	 
(
Ό	Ό	 
objSqlDataReader
Ό	Ό	 $
.
Ό	Ό	$ %
HasRows
Ό	Ό	% ,
)
Ό	Ό	, -
{
½	½	 
while
Ύ	Ύ	 
(
Ύ	Ύ	 
objSqlDataReader
Ύ	Ύ	 +
.
Ύ	Ύ	+ ,
Read
Ύ	Ύ	, 0
(
Ύ	Ύ	0 1
)
Ύ	Ύ	1 2
)
Ύ	Ύ	2 3
{
Ώ	Ώ	 
object
ΐ	ΐ	 

objContent
ΐ	ΐ	 )
=
ΐ	ΐ	* +
objSqlDataReader
ΐ	ΐ	, <
[
ΐ	ΐ	< =
$str
ΐ	ΐ	= F
]
ΐ	ΐ	F G
;
ΐ	ΐ	G H
string
Α	Α	 
contentData
Α	Α	 *
=
Α	Α	+ ,

objContent
Α	Α	- 7
is
Α	Α	8 :
DBNull
Α	Α	; A
?
Α	Α	B C
string
Α	Α	D J
.
Α	Α	J K
Empty
Α	Α	K P
:
Α	Α	Q R
Convert
Α	Α	S Z
.
Α	Α	Z [
ToString
Α	Α	[ c
(
Α	Α	c d
objSqlDataReader
Α	Α	d t
[
Α	Α	t u
$str
Α	Α	u ~
]
Α	Α	~ 
)Α	Α	 €
;Α	Α	€ 
content
Β	Β	 
.
Β	Β	  
Add
Β	Β	  #
(
Β	Β	# $
contentData
Β	Β	$ /
)
Β	Β	/ 0
;
Β	Β	0 1
}
Γ	Γ	 
objSqlDataReader
Ε	Ε	 $
.
Ε	Ε	$ %
Close
Ε	Ε	% *
(
Ε	Ε	* +
)
Ε	Ε	+ ,
;
Ε	Ε	, -
}
Ζ	Ζ	 
}
Η	Η	 
return
Ι	Ι	 
content
Ι	Ι	 
;
Ι	Ι	 
}
Κ	Κ	 	
public
Ν	Ν	 
static
Ν	Ν	 
string
Ν	Ν	  
GetTopicByQuestion
Ν	Ν	 /
(
Ν	Ν	/ 0
int
Ν	Ν	0 3

questionId
Ν	Ν	4 >
)
Ν	Ν	> ?
{
Ξ	Ξ	 	
List
Ο	Ο	 
<
Ο	Ο	 
string
Ο	Ο	 
>
Ο	Ο	 
topicContent
Ο	Ο	 %
=
Ο	Ο	& '
new
Ο	Ο	( +
List
Ο	Ο	, 0
<
Ο	Ο	0 1
string
Ο	Ο	1 7
>
Ο	Ο	7 8
(
Ο	Ο	8 9
)
Ο	Ο	9 :
;
Ο	Ο	: ;
SqlParameter
Π	Π	 
[
Π	Π	 
]
Π	Π	 
arrSqlParameter
Π	Π	 *
=
Π	Π	+ ,
{
Ρ	Ρ	 
new
Ò	Ò	 
SqlParameter
Ò	Ò	 $
(
Ò	Ò	$ %
$str
Ò	Ò	% 2
,
Ò	Ò	2 3

questionId
Ò	Ò	4 >
)
Ò	Ò	> ?
,
Ò	Ò	? @
}
Σ	Σ	 
;
Σ	Σ	 
using
Τ	Τ	 
(
Τ	Τ	 
SqlDataReader
Τ	Τ	  
objSqlDataReader
Τ	Τ	! 1
=
Τ	Τ	2 3
	SqlHelper
Τ	Τ	4 =
.
Τ	Τ	= >
ExecuteReader
Τ	Τ	> K
(
Τ	Τ	K L#
SqlConnectionProvider
Υ	Υ	 %
.
Υ	Υ	% &!
GetConnectionString
Υ	Υ	& 9
(
Υ	Υ	9 :
DataAccessType
Υ	Υ	: H
.
Υ	Υ	H I
Read
Υ	Υ	I M
)
Υ	Υ	M N
,
Υ	Υ	N O
CommandType
Υ	Υ	P [
.
Υ	Υ	[ \
StoredProcedure
Υ	Υ	\ k
,
Υ	Υ	k l
$strΥ	Υ	m …
,Υ	Υ	… †
arrSqlParameterΥ	Υ	‡ –
)Υ	Υ	– —
)Υ	Υ	— 
{
Φ	Φ	 
if
Χ	Χ	 
(
Χ	Χ	 
objSqlDataReader
Χ	Χ	 $
.
Χ	Χ	$ %
HasRows
Χ	Χ	% ,
)
Χ	Χ	, -
{
Ψ	Ψ	 
while
Ω	Ω	 
(
Ω	Ω	 
objSqlDataReader
Ω	Ω	 +
.
Ω	Ω	+ ,
Read
Ω	Ω	, 0
(
Ω	Ω	0 1
)
Ω	Ω	1 2
)
Ω	Ω	2 3
{
Ϊ	Ϊ	 
object
Ϋ	Ϋ	 
objTopicName
Ϋ	Ϋ	 +
=
Ϋ	Ϋ	, -
objSqlDataReader
Ϋ	Ϋ	. >
[
Ϋ	Ϋ	> ?
$str
Ϋ	Ϋ	? J
]
Ϋ	Ϋ	J K
;
Ϋ	Ϋ	K L
string
ά	ά	 
	topicName
ά	ά	 (
=
ά	ά	) *
objTopicName
ά	ά	+ 7
is
ά	ά	8 :
DBNull
ά	ά	; A
?
ά	ά	B C
string
ά	ά	D J
.
ά	ά	J K
Empty
ά	ά	K P
:
ά	ά	Q R
Convert
ά	ά	S Z
.
ά	ά	Z [
ToString
ά	ά	[ c
(
ά	ά	c d
objSqlDataReader
ά	ά	d t
[
ά	ά	t u
$strά	ά	u €
]ά	ά	€ 
)ά	ά	 ‚
;ά	ά	‚ ƒ
topicContent
έ	έ	 $
.
έ	έ	$ %
Add
έ	έ	% (
(
έ	έ	( )
	topicName
έ	έ	) 2
)
έ	έ	2 3
;
έ	έ	3 4
}
ή	ή	 
objSqlDataReader
ΰ	ΰ	 $
.
ΰ	ΰ	$ %
Close
ΰ	ΰ	% *
(
ΰ	ΰ	* +
)
ΰ	ΰ	+ ,
;
ΰ	ΰ	, -
}
α	α	 
}
β	β	 
return
δ	δ	 
string
δ	δ	 
.
δ	δ	 
Join
δ	δ	 
<
δ	δ	 
string
δ	δ	 %
>
δ	δ	% &
(
δ	δ	& '
$str
δ	δ	' *
,
δ	δ	* +
topicContent
δ	δ	, 8
)
δ	δ	8 9
;
δ	δ	9 :
}
ε	ε	 	
public
η	η	 
static
η	η	 
void
η	η	 

UpdateTime
η	η	 %
(
η	η	% &
int
η	η	& )
?
η	η	) *
	attemptId
η	η	+ 4
,
η	η	4 5
double
η	η	6 <
consumedTime
η	η	= I
)
η	η	I J
{
θ	θ	 	
SqlParameter
ι	ι	 
[
ι	ι	 
]
ι	ι	 
arrSqlParameter
ι	ι	 *
=
ι	ι	+ ,
{
κ	κ	 
new
λ	λ	 
SqlParameter
λ	λ	 $
(
λ	λ	$ %
$str
λ	λ	% 5
,
λ	λ	5 6
Convert
λ	λ	7 >
.
λ	λ	> ?
ToInt32
λ	λ	? F
(
λ	λ	F G
	attemptId
λ	λ	G P
)
λ	λ	P Q
)
λ	λ	Q R
,
λ	λ	R S
new
μ	μ	 
SqlParameter
μ	μ	 $
(
μ	μ	$ %
$str
μ	μ	% 4
,
μ	μ	4 5
Convert
μ	μ	6 =
.
μ	μ	= >
ToInt32
μ	μ	> E
(
μ	μ	E F
consumedTime
μ	μ	F R
)
μ	μ	R S
)
μ	μ	S T
,
μ	μ	T U
}
ν	ν	 
;
ν	ν	 
using
ξ	ξ	 
(
ξ	ξ	 
SqlDataReader
ξ	ξ	  
objSqlDataReader
ξ	ξ	! 1
=
ξ	ξ	2 3
	SqlHelper
ξ	ξ	4 =
.
ξ	ξ	= >
ExecuteReader
ξ	ξ	> K
(
ξ	ξ	K L#
SqlConnectionProvider
ο	ο	 %
.
ο	ο	% &!
GetConnectionString
ο	ο	& 9
(
ο	ο	9 :
DataAccessType
ο	ο	: H
.
ο	ο	H I
Read
ο	ο	I M
)
ο	ο	M N
,
ο	ο	N O
CommandType
ο	ο	P [
.
ο	ο	[ \
StoredProcedure
ο	ο	\ k
,
ο	ο	k l
$str
ο	ο	m }
,
ο	ο	} ~
arrSqlParameterο	ο	 
)ο	ο	 
)ο	ο	 
{
π	π	 
}
ρ	ρ	 
}
ς	ς	 	
public
τ	τ	 
static
τ	τ	 
QuestionDetails
τ	τ	 %'
GetQuestionDetails_Search
τ	τ	& ?
(
τ	τ	? @
int
τ	τ	@ C
?
τ	τ	C D

questionId
τ	τ	E O
)
τ	τ	O P
{
υ	υ	 	
QuestionDetails
φ	φ	 
questionDetail
φ	φ	 *
=
φ	φ	+ ,
new
φ	φ	- 0
QuestionDetails
φ	φ	1 @
(
φ	φ	@ A
)
φ	φ	A B
;
φ	φ	B C
SqlParameter
χ	χ	 
[
χ	χ	 
]
χ	χ	 
arrSqlParameter
χ	χ	 *
=
χ	χ	+ ,
{
ψ	ψ	 
new
ω	ω	 
SqlParameter
ω	ω	 
(
ω	ω	 
$str
ω	ω	 *
,
ω	ω	* +
Convert
ω	ω	, 3
.
ω	ω	3 4
ToInt32
ω	ω	4 ;
(
ω	ω	; <

questionId
ω	ω	< F
)
ω	ω	F G
)
ω	ω	G H
,
ω	ω	H I
}
ϊ	ϊ	 
;
ϊ	ϊ	 
using
ϋ	ϋ	 
(
ϋ	ϋ	 
SqlDataReader
ϋ	ϋ	  
objSqlDataReader
ϋ	ϋ	! 1
=
ϋ	ϋ	2 3
	SqlHelper
ϋ	ϋ	4 =
.
ϋ	ϋ	= >
ExecuteReader
ϋ	ϋ	> K
(
ϋ	ϋ	K L#
SqlConnectionProvider
ό	ό	 %
.
ό	ό	% &!
GetConnectionString
ό	ό	& 9
(
ό	ό	9 :
DataAccessType
ό	ό	: H
.
ό	ό	H I
Read
ό	ό	I M
)
ό	ό	M N
,
ό	ό	N O
CommandType
ό	ό	P [
.
ό	ό	[ \
StoredProcedure
ό	ό	\ k
,
ό	ό	k l
$strό	ό	m 
,ό	ό	 
arrSqlParameterό	ό	 
)ό	ό	 
)ό	ό	 
{
ύ	ύ	 
while
ώ	ώ	 
(
ώ	ώ	 
objSqlDataReader
ώ	ώ	 '
.
ώ	ώ	' (
Read
ώ	ώ	( ,
(
ώ	ώ	, -
)
ώ	ώ	- .
)
ώ	ώ	. /
{
ÿ	ÿ	 
questionDetail
€
€
 "
.
€
€
" #

questionId
€
€
# -
=
€
€
. /
Convert
€
€
0 7
.
€
€
7 8
ToInt32
€
€
8 ?
(
€
€
? @
objSqlDataReader
€
€
@ P
[
€
€
P Q
$str
€
€
Q ]
]
€
€
] ^
)
€
€
^ _
;
€
€
_ `
object


 
stemObj


 "
=


# $
objSqlDataReader


% 5
[


5 6
$str


6 <
]


< =
;


= >
questionDetail
‚
‚
 "
.
‚
‚
" #
questionText
‚
‚
# /
=
‚
‚
0 1
stemObj
‚
‚
2 9
is
‚
‚
: <
DBNull
‚
‚
= C
?
‚
‚
D E
null
‚
‚
F J
:
‚
‚
K L
Convert
‚
‚
M T
.
‚
‚
T U
ToString
‚
‚
U ]
(
‚
‚
] ^
objSqlDataReader
‚
‚
^ n
[
‚
‚
n o
$str
‚
‚
o u
]
‚
‚
u v
)
‚
‚
v w
;
‚
‚
w x
object
ƒ
ƒ
 
friendlyidobj
ƒ
ƒ
 (
=
ƒ
ƒ
) *
objSqlDataReader
ƒ
ƒ
+ ;
[
ƒ
ƒ
; <
$str
ƒ
ƒ
< H
]
ƒ
ƒ
H I
;
ƒ
ƒ
I J
questionDetail
„
„
 "
.
„
„
" #

FriendlyId
„
„
# -
=
„
„
. /
friendlyidobj
„
„
0 =
is
„
„
> @
DBNull
„
„
A G
?
„
„
H I
$num
„
„
J K
:
„
„
L M
Convert
„
„
N U
.
„
„
U V
ToInt32
„
„
V ]
(
„
„
] ^
objSqlDataReader
„
„
^ n
[
„
„
n o
$str
„
„
o {
]
„
„
{ |
)
„
„
| }
;
„
„
} ~
}
…
…
 
objSqlDataReader
‡
‡
  
.
‡
‡
  !
Close
‡
‡
! &
(
‡
‡
& '
)
‡
‡
' (
;
‡
‡
( )
List
‰
‰
 
<
‰
‰
 
QuestionImage
‰
‰
 "
>
‰
‰
" #
questionImageList
‰
‰
$ 5
=
‰
‰
6 7
new
‰
‰
8 ;
List
‰
‰
< @
<
‰
‰
@ A
QuestionImage
‰
‰
A N
>
‰
‰
N O
(
‰
‰
O P
)
‰
‰
P Q
;
‰
‰
Q R
questionImageList


 !
=


" #"
GetQuestionImageList


$ 8
(


8 9

questionId


9 C
)


C D
;


D E
questionDetail
‹
‹
 
.
‹
‹
 
questionImage
‹
‹
 ,
=
‹
‹
- .
questionImageList
‹
‹
/ @
;
‹
‹
@ A
return


 
questionDetail


 %
;


% &
}


 
}


 	
public


 
static


 "
ExamAttemptAnswerDTO


 *)
GetExamAttemptAnswer_Search


+ F
(


F G
int


G J

questionId


K U
,


U V
int


W Z
userId


[ a
)


a b
{
‘
‘
 	"
ExamAttemptAnswerDTO
’
’
  
examAttemptAnswer
’
’
! 2
=
’
’
3 4
new
’
’
5 8"
ExamAttemptAnswerDTO
’
’
9 M
(
’
’
M N
)
’
’
N O
;
’
’
O P
SqlConnection
“
“
 

connection
“
“
 $
=
“
“
% &
new
“
“
' *
SqlConnection
“
“
+ 8
(
“
“
8 9#
SqlConnectionProvider
“
“
9 N
.
“
“
N O!
GetConnectionString
“
“
O b
(
“
“
b c
DataAccessType
“
“
c q
.
“
“
q r
Read
“
“
r v
)
“
“
v w
)
“
“
w x
;
“
“
x y

connection
™
™
 
.
™
™
 
Open
™
™
 
(
™
™
 
)
™
™
 
;
™
™
 

SqlCommand


 
cmd


 
=


 
new


  

SqlCommand


! +
(


+ ,
$str


, M
,


M N

connection


O Y
)


Y Z
;


Z [
cmd
›
›
 
.
›
›
 
CommandType
›
›
 
=
›
›
 
CommandType
›
›
 )
.
›
›
) *
StoredProcedure
›
›
* 9
;
›
›
9 :
cmd


 
.


 

Parameters


 
.


 
Add


 
(


 
new


 "
SqlParameter


# /
(


/ 0
$str


0 >
,


> ?

questionId


@ J
)


J K
)


K L
;


L M
cmd


 
.


 

Parameters


 
.


 
Add


 
(


 
new


 "
SqlParameter


# /
(


/ 0
$str


0 :
,


: ;
userId


< B
)


B C
)


C D
;


D E
using


 
(


 
SqlDataReader


  
reader


! '
=


( )
cmd


* -
.


- .
ExecuteReader


. ;
(


; <
)


< =
)


= >
{
 
 
 
if
΅
΅
 
(
΅
΅
 
reader
΅
΅
 
.
΅
΅
 
HasRows
΅
΅
 "
)
΅
΅
" #
{
Ά
Ά
 
while
£
£
 
(
£
£
 
reader
£
£
 !
.
£
£
! "
Read
£
£
" &
(
£
£
& '
)
£
£
' (
)
£
£
( )
{
¤
¤
 
examAttemptAnswer
¥
¥
 )
.
¥
¥
) *!
ExamAttemptAsnwerId
¥
¥
* =
=
¥
¥
> ?
reader
¥
¥
@ F
.
¥
¥
F G
GetInt32
¥
¥
G O
(
¥
¥
O P
reader
¥
¥
P V
.
¥
¥
V W

GetOrdinal
¥
¥
W a
(
¥
¥
a b
$str
¥
¥
b w
)
¥
¥
w x
)
¥
¥
x y
;
¥
¥
y z
examAttemptAnswer
¦
¦
 )
.
¦
¦
) *
ExamAttemptDate
¦
¦
* 9
=
¦
¦
: ;
reader
¦
¦
< B
.
¦
¦
B C
GetDateTime
¦
¦
C N
(
¦
¦
N O
reader
¦
¦
O U
.
¦
¦
U V

GetOrdinal
¦
¦
V `
(
¦
¦
` a
$str
¦
¦
a r
)
¦
¦
r s
)
¦
¦
s t
;
¦
¦
t u
examAttemptAnswer
§
§
 )
.
§
§
) *
ChoiceId
§
§
* 2
=
§
§
3 4
reader
§
§
5 ;
.
§
§
; <
GetInt32
§
§
< D
(
§
§
D E
reader
§
§
E K
.
§
§
K L

GetOrdinal
§
§
L V
(
§
§
V W
$str
§
§
W a
)
§
§
a b
)
§
§
b c
;
§
§
c d
examAttemptAnswer
¨
¨
 )
.
¨
¨
) *
IsRight
¨
¨
* 1
=
¨
¨
2 3
reader
¨
¨
4 :
.
¨
¨
: ;

GetBoolean
¨
¨
; E
(
¨
¨
E F
reader
¨
¨
F L
.
¨
¨
L M

GetOrdinal
¨
¨
M W
(
¨
¨
W X
$str
¨
¨
X a
)
¨
¨
a b
)
¨
¨
b c
;
¨
¨
c d
examAttemptAnswer
©
©
 )
.
©
©
) *
UserId
©
©
* 0
=
©
©
1 2
reader
©
©
3 9
.
©
©
9 :
GetInt32
©
©
: B
(
©
©
B C
reader
©
©
C I
.
©
©
I J

GetOrdinal
©
©
J T
(
©
©
T U
$str
©
©
U ]
)
©
©
] ^
)
©
©
^ _
;
©
©
_ `
examAttemptAnswer
ª
ª
 )
.
ª
ª
) *

QuestionId
ª
ª
* 4
=
ª
ª
5 6
reader
ª
ª
7 =
.
ª
ª
= >
GetInt32
ª
ª
> F
(
ª
ª
F G
reader
ª
ª
G M
.
ª
ª
M N

GetOrdinal
ª
ª
N X
(
ª
ª
X Y
$str
ª
ª
Y e
)
ª
ª
e f
)
ª
ª
f g
;
ª
ª
g h
examAttemptAnswer
«
«
 )
.
«
«
) *
ExamAttemptId
«
«
* 7
=
«
«
8 9
reader
«
«
: @
.
«
«
@ A
GetInt32
«
«
A I
(
«
«
I J
reader
«
«
J P
.
«
«
P Q

GetOrdinal
«
«
Q [
(
«
«
[ \
$str
«
«
\ k
)
«
«
k l
)
«
«
l m
;
«
«
m n
examAttemptAnswer
¬
¬
 )
.
¬
¬
) *
IsYourAnswer
¬
¬
* 6
=
¬
¬
7 8
reader
¬
¬
9 ?
.
¬
¬
? @
GetInt32
¬
¬
@ H
(
¬
¬
H I
reader
¬
¬
I O
.
¬
¬
O P

GetOrdinal
¬
¬
P Z
(
¬
¬
Z [
$str
¬
¬
[ i
)
¬
¬
i j
)
¬
¬
j k
;
¬
¬
k l
}
­
­
 
reader
―
―
 
.
―
―
 
Close
―
―
  
(
―
―
  !
)
―
―
! "
;
―
―
" #
}
°
°
 
else
±
±
 
{
²
²
 
examAttemptAnswer
³
³
 %
.
³
³
% &
ExamAttemptId
³
³
& 3
=
³
³
4 5
$num
³
³
6 7
;
³
³
7 8
}
΄
΄
 
}
µ
µ
 

connection
·
·
 
.
·
·
 
Close
·
·
 
(
·
·
 
)
·
·
 
;
·
·
 
return
Έ
Έ
 
examAttemptAnswer
Έ
Έ
 $
;
Έ
Έ
$ %
}
Ή
Ή
 	
public
»
»
 
static
»
»
 
int
»
»
 
UpdateDeleteTopic
»
»
 +
(
»
»
+ ,"
ExamAttemptAnswerDTO
»
»
, @
attemptAnswer
»
»
A N
)
»
»
N O
{
Ό
Ό
 	
SqlParameter
½
½
 
[
½
½
 
]
½
½
 
arrSqlParameter
½
½
 *
=
½
½
+ ,
{
Ύ
Ύ
 
new
Ώ
Ώ
 
SqlParameter
Ώ
Ώ
 $
(
Ώ
Ώ
$ %
$str
Ώ
Ώ
% 0
,
Ώ
Ώ
0 1
attemptAnswer
Ώ
Ώ
2 ?
.
Ώ
Ώ
? @
ChoiceId
Ώ
Ώ
@ H
)
Ώ
Ώ
H I
,
Ώ
Ώ
I J
new
ΐ
ΐ
 
SqlParameter
ΐ
ΐ
 $
(
ΐ
ΐ
$ %
$str
ΐ
ΐ
% /
,
ΐ
ΐ
/ 0
attemptAnswer
ΐ
ΐ
1 >
.
ΐ
ΐ
> ?
IsRight
ΐ
ΐ
? F
)
ΐ
ΐ
F G
,
ΐ
ΐ
G H
new
Α
Α
 
SqlParameter
Α
Α
 $
(
Α
Α
$ %
$str
Α
Α
% 7
,
Α
Α
7 8
attemptAnswer
Α
Α
9 F
.
Α
Α
F G
ExamAttemptDate
Α
Α
G V
)
Α
Α
V W
,
Α
Α
W X
new
Β
Β
 
SqlParameter
Β
Β
 $
(
Β
Β
$ %
$str
Β
Β
% .
,
Β
Β
. /
attemptAnswer
Β
Β
0 =
.
Β
Β
= >
UserId
Β
Β
> D
)
Β
Β
D E
,
Β
Β
E F
new
Γ
Γ
 
SqlParameter
Γ
Γ
 $
(
Γ
Γ
$ %
$str
Γ
Γ
% 3
,
Γ
Γ
3 4
attemptAnswer
Γ
Γ
5 B
.
Γ
Γ
B C

QuestionId
Γ
Γ
C M
)
Γ
Γ
M N
,
Γ
Γ
N O
new
Δ
Δ
 
SqlParameter
Δ
Δ
 $
(
Δ
Δ
$ %
$str
Δ
Δ
% 5
,
Δ
Δ
5 6
attemptAnswer
Δ
Δ
7 D
.
Δ
Δ
D E
ExamAttemptId
Δ
Δ
E R
)
Δ
Δ
R S
,
Δ
Δ
S T
new
Ζ
Ζ
 
SqlParameter
Ζ
Ζ
 $
(
Ζ
Ζ
$ %
$str
Ζ
Ζ
% *
,
Ζ
Ζ
* +
	SqlDbType
Ζ
Ζ
, 5
.
Ζ
Ζ
5 6
Int
Ζ
Ζ
6 9
)
Ζ
Ζ
9 :
,
Ζ
Ζ
: ;
}
Η
Η
 
;
Η
Η
 
arrSqlParameter
Θ
Θ
 
[
Θ
Θ
 
arrSqlParameter
Θ
Θ
 +
.
Θ
Θ
+ ,
Length
Θ
Θ
, 2
-
Θ
Θ
3 4
$num
Θ
Θ
5 6
]
Θ
Θ
6 7
.
Θ
Θ
7 8
	Direction
Θ
Θ
8 A
=
Θ
Θ
B C 
ParameterDirection
Θ
Θ
D V
.
Θ
Θ
V W
Output
Θ
Θ
W ]
;
Θ
Θ
] ^
	SqlHelper
Ι
Ι
 
.
Ι
Ι
 
ExecuteNonQuery
Ι
Ι
 %
(
Ι
Ι
% &#
SqlConnectionProvider
Ι
Ι
& ;
.
Ι
Ι
; <!
GetConnectionString
Ι
Ι
< O
(
Ι
Ι
O P
DataAccessType
Ι
Ι
P ^
.
Ι
Ι
^ _
Write
Ι
Ι
_ d
)
Ι
Ι
d e
,
Ι
Ι
e f
CommandType
Ι
Ι
g r
.
Ι
Ι
r s
StoredProcedureΙ
Ι
s ‚
,Ι
Ι
‚ ƒ
$strΙ
Ι
„ 
,Ι
Ι
 
arrSqlParameterΙ
Ι
 ®
)Ι
Ι
® ―
;Ι
Ι
― °
object
Κ
Κ
 
	objResult
Κ
Κ
 
=
Κ
Κ
 
arrSqlParameter
Κ
Κ
 .
[
Κ
Κ
. /
arrSqlParameter
Κ
Κ
/ >
.
Κ
Κ
> ?
Length
Κ
Κ
? E
-
Κ
Κ
F G
$num
Κ
Κ
H I
]
Κ
Κ
I J
;
Κ
Κ
J K
return
Λ
Λ
 
int
Λ
Λ
 
.
Λ
Λ
 
Parse
Λ
Λ
 
(
Λ
Λ
 
arrSqlParameter
Λ
Λ
 ,
[
Λ
Λ
, -
arrSqlParameter
Λ
Λ
- <
.
Λ
Λ
< =
Length
Λ
Λ
= C
-
Λ
Λ
D E
$num
Λ
Λ
F G
]
Λ
Λ
G H
.
Λ
Λ
H I
Value
Λ
Λ
I N
.
Λ
Λ
N O
ToString
Λ
Λ
O W
(
Λ
Λ
W X
)
Λ
Λ
X Y
)
Λ
Λ
Y Z
;
Λ
Λ
Z [
}
Μ
Μ
 	
public
Ν
Ν
 
static
Ν
Ν
 
void
Ν
Ν
 
UpdateDeleteTopic
Ν
Ν
 ,
(
Ν
Ν
, -#
SRRecommendedDeleteVM
Ν
Ν
- B
attemptAnswer
Ν
Ν
C P
)
Ν
Ν
P Q
{
Ξ
Ξ
 	
SqlParameter
Ο
Ο
 
[
Ο
Ο
 
]
Ο
Ο
 
arrSqlParameter
Ο
Ο
 *
=
Ο
Ο
+ ,
{
Π
Π
 
new
Ρ
Ρ
 
SqlParameter
Ρ
Ρ
 $
(
Ρ
Ρ
$ %
$str
Ρ
Ρ
% .
,
Ρ
Ρ
. /
attemptAnswer
Ρ
Ρ
0 =
.
Ρ
Ρ
= >
ExamId
Ρ
Ρ
> D
)
Ρ
Ρ
D E
,
Ρ
Ρ
E F
new
Ò
Ò
 
SqlParameter
Ò
Ò
 $
(
Ò
Ò
$ %
$str
Ò
Ò
% /
,
Ò
Ò
/ 0
attemptAnswer
Ò
Ò
1 >
.
Ò
Ò
> ?
IsRight
Ò
Ò
? F
)
Ò
Ò
F G
,
Ò
Ò
G H
new
Σ
Σ
 
SqlParameter
Σ
Σ
 $
(
Σ
Σ
$ %
$str
Σ
Σ
% .
,
Σ
Σ
. /
attemptAnswer
Σ
Σ
0 =
.
Σ
Σ
= >
UserId
Σ
Σ
> D
)
Σ
Σ
D E
,
Σ
Σ
E F
new
Τ
Τ
 
SqlParameter
Τ
Τ
 $
(
Τ
Τ
$ %
$str
Τ
Τ
% 3
,
Τ
Τ
3 4
attemptAnswer
Τ
Τ
5 B
.
Τ
Τ
B C

QuestionId
Τ
Τ
C M
)
Τ
Τ
M N
,
Τ
Τ
N O
}
Φ
Φ
 
;
Φ
Φ
 
using
Χ
Χ
 
(
Χ
Χ
 
SqlDataReader
Χ
Χ
  
objSqlDataReader
Χ
Χ
! 1
=
Χ
Χ
2 3
	SqlHelper
Χ
Χ
4 =
.
Χ
Χ
= >
ExecuteReader
Χ
Χ
> K
(
Χ
Χ
K L#
SqlConnectionProvider
Ψ
Ψ
 %
.
Ψ
Ψ
% &!
GetConnectionString
Ψ
Ψ
& 9
(
Ψ
Ψ
9 :
DataAccessType
Ψ
Ψ
: H
.
Ψ
Ψ
H I
Read
Ψ
Ψ
I M
)
Ψ
Ψ
M N
,
Ψ
Ψ
N O
CommandType
Ψ
Ψ
P [
.
Ψ
Ψ
[ \
StoredProcedure
Ψ
Ψ
\ k
,
Ψ
Ψ
k l
$strΨ
Ψ
m †
,Ψ
Ψ
† ‡
arrSqlParameterΨ
Ψ
 —
)Ψ
Ψ
— 
)Ψ
Ψ
 ™
{
Ω
Ω
 
}
Ϊ
Ϊ
 
}
ί
ί
 	
public
α
α
 
static
α
α
 
int
α
α
 '
GetAttemptedQuestionCount
α
α
 3
(
α
α
3 4
int
α
α
4 7
userId
α
α
8 >
,
α
α
> ?
int
α
α
@ C
	sessionId
α
α
D M
,
α
α
M N
int
α
α
O R
examAttemptId
α
α
S `
)
α
α
` a
{
β
β
 	
int
γ
γ
 
count
γ
γ
 
=
γ
γ
 
$num
γ
γ
 
;
γ
γ
 
SqlParameter
δ
δ
 
[
δ
δ
 
]
δ
δ
 
arrSqlParameter
δ
δ
 *
=
δ
δ
+ ,
{
ε
ε
 
new
ζ
ζ
 
SqlParameter
ζ
ζ
 $
(
ζ
ζ
$ %
$str
ζ
ζ
% .
,
ζ
ζ
. /
userId
ζ
ζ
0 6
)
ζ
ζ
6 7
,
ζ
ζ
7 8
new
η
η
 
SqlParameter
η
η
 $
(
η
η
$ %
$str
η
η
% 1
,
η
η
1 2
	sessionId
η
η
3 <
)
η
η
< =
,
η
η
= >
new
θ
θ
 
SqlParameter
θ
θ
 $
(
θ
θ
$ %
$str
θ
θ
% 5
,
θ
θ
5 6
examAttemptId
θ
θ
7 D
)
θ
θ
D E
,
θ
θ
E F
}
ι
ι
 
;
ι
ι
 
using
κ
κ
 
(
κ
κ
 
SqlDataReader
κ
κ
  
objSqlDataReader
κ
κ
! 1
=
κ
κ
2 3
	SqlHelper
κ
κ
4 =
.
κ
κ
= >
ExecuteReader
κ
κ
> K
(
κ
κ
K L#
SqlConnectionProvider
λ
λ
 %
.
λ
λ
% &!
GetConnectionString
λ
λ
& 9
(
λ
λ
9 :
DataAccessType
λ
λ
: H
.
λ
λ
H I
Read
λ
λ
I M
)
λ
λ
M N
,
λ
λ
N O
CommandType
λ
λ
P [
.
λ
λ
[ \
StoredProcedure
λ
λ
\ k
,
λ
λ
k l
$strλ
λ
m 
,λ
λ
 
arrSqlParameterλ
λ
 
)λ
λ
 
)λ
λ
 
{
μ
μ
 
if
ν
ν
 
(
ν
ν
 
objSqlDataReader
ν
ν
 $
.
ν
ν
$ %
HasRows
ν
ν
% ,
)
ν
ν
, -
{
ξ
ξ
 
while
ο
ο
 
(
ο
ο
 
objSqlDataReader
ο
ο
 +
.
ο
ο
+ ,
Read
ο
ο
, 0
(
ο
ο
0 1
)
ο
ο
1 2
)
ο
ο
2 3
{
π
π
 
object
ρ
ρ
 

objContent
ρ
ρ
 )
=
ρ
ρ
* +
objSqlDataReader
ρ
ρ
, <
[
ρ
ρ
< =
$str
ρ
ρ
= D
]
ρ
ρ
D E
;
ρ
ρ
E F
count
ς
ς
 
=
ς
ς
 

objContent
ς
ς
  *
is
ς
ς
+ -
DBNull
ς
ς
. 4
?
ς
ς
5 6
$num
ς
ς
7 8
:
ς
ς
9 :
Convert
ς
ς
; B
.
ς
ς
B C
ToInt32
ς
ς
C J
(
ς
ς
J K
objSqlDataReader
ς
ς
K [
[
ς
ς
[ \
$str
ς
ς
\ c
]
ς
ς
c d
)
ς
ς
d e
;
ς
ς
e f
}
τ
τ
 
objSqlDataReader
φ
φ
 $
.
φ
φ
$ %
Close
φ
φ
% *
(
φ
φ
* +
)
φ
φ
+ ,
;
φ
φ
, -
}
χ
χ
 
}
ψ
ψ
 
return
ϊ
ϊ
 
count
ϊ
ϊ
 
;
ϊ
ϊ
 
}
ϋ
ϋ
 	
public
ύ
ύ
 
static
ύ
ύ
 
int
ύ
ύ
 "
GetNewEasynessFactor
ύ
ύ
 .
(
ύ
ύ
. /
int
ύ
ύ
/ 2
userId
ύ
ύ
3 9
,
ύ
ύ
9 :
int
ύ
ύ
; >

questionId
ύ
ύ
? I
,
ύ
ύ
I J
int
ύ
ύ
K N
examAttemptId
ύ
ύ
O \
)
ύ
ύ
\ ]
{
ώ
ώ
 	
int
ÿ
ÿ
 
newEasinessFactor
ÿ
ÿ
 !
=
ÿ
ÿ
" #
$num
ÿ
ÿ
$ %
;
ÿ
ÿ
% &
SqlParameter
€€ 
[
€€ 
]
€€ 
arrSqlParameter
€€ *
=
€€+ ,
{
 
new
‚‚ 
SqlParameter
‚‚ $
(
‚‚$ %
$str
‚‚% .
,
‚‚. /
userId
‚‚0 6
)
‚‚6 7
,
‚‚7 8
new
ƒƒ 
SqlParameter
ƒƒ $
(
ƒƒ$ %
$str
ƒƒ% 2
,
ƒƒ2 3

questionId
ƒƒ4 >
)
ƒƒ> ?
,
ƒƒ? @
new
„„ 
SqlParameter
„„ $
(
„„$ %
$str
„„% 5
,
„„5 6
examAttemptId
„„7 D
)
„„D E
,
„„E F
}
…… 
;
…… 
using
†† 
(
†† 
SqlDataReader
††  
objSqlDataReader
††! 1
=
††2 3
	SqlHelper
††4 =
.
††= >
ExecuteReader
††> K
(
††K L#
SqlConnectionProvider
‡‡ %
.
‡‡% &!
GetConnectionString
‡‡& 9
(
‡‡9 :
DataAccessType
‡‡: H
.
‡‡H I
Read
‡‡I M
)
‡‡M N
,
‡‡N O
CommandType
‡‡P [
.
‡‡[ \
StoredProcedure
‡‡\ k
,
‡‡k l
$str‡‡m „
,‡‡„ …
arrSqlParameter‡‡† •
)‡‡• –
)‡‡– —
{
 
if
‰‰ 
(
‰‰ 
objSqlDataReader
‰‰ $
.
‰‰$ %
HasRows
‰‰% ,
)
‰‰, -
{
 
while
‹‹ 
(
‹‹ 
objSqlDataReader
‹‹ +
.
‹‹+ ,
Read
‹‹, 0
(
‹‹0 1
)
‹‹1 2
)
‹‹2 3
{
 
object
 

objContent
 )
=
* +
objSqlDataReader
, <
[
< =
$str
= P
]
P Q
;
Q R
newEasinessFactor
 )
=
* +

objContent
, 6
is
7 9
DBNull
: @
?
A B
$num
C D
:
E F
Convert
G N
.
N O
ToInt32
O V
(
V W
objSqlDataReader
W g
[
g h
$str
h {
]
{ |
)
| }
;
} ~
}
 
objSqlDataReader
’’ $
.
’’$ %
Close
’’% *
(
’’* +
)
’’+ ,
;
’’, -
}
““ 
}
”” 
return
–– 
newEasinessFactor
–– $
;
––$ %
}
—— 	
}
 
}™™ ±±
dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\BCSCMapperDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
BCSCMapperDAL 
{ 
public 
static 
List 
< 
QuestionContentDTO -
>- .
GetQuestions/ ;
(; <
int< ?
	pageIndex@ I
,I J
intK N
noOfRecordsO Z
)Z [
{ 	
List 
< 
QuestionContentDTO #
># $
questionUser% 1
=2 3
new4 7
List8 <
<< =
QuestionContentDTO= O
>O P
(P Q
)Q R
;R S
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA M
,M N
	pageIndexO X
)X Y
,Y Z
new0 3
SqlParameter4 @
(@ A
$strA L
,L M
noOfRecordsN Y
)Y Z
,Z [
}0 1
;1 2
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$strm ~
,~ 
objSqlParameter
€ 
)
 
)
 ‘
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
QuestionContentDTO &
objQuestionsBO' 5
=6 7
new8 ;
QuestionContentDTO< N
(N O
)O P
;P Q
objQuestionsBO "
." #

QuestionId# -
=. /
(0 1
int1 4
)4 5
objSqlDataReader5 E
[E F
$strF R
]R S
;S T
objQuestionsBO "
." #
Stem# '
=( )
Convert* 1
.1 2
ToString2 :
(: ;
objSqlDataReader; K
[K L
$strL R
]R S
)S T
;T U
objQuestionsBO   "
.  " #
	RowNumber  # ,
=  - .
Convert  / 6
.  6 7
ToInt32  7 >
(  > ?
objSqlDataReader  ? O
[  O P
$str  P [
]  [ \
)  \ ]
;  ] ^
objQuestionsBO!! "
.!!" #
RecordCount!!# .
=!!/ 0
Convert!!1 8
.!!8 9
ToInt32!!9 @
(!!@ A
objSqlDataReader!!A Q
[!!Q R
$str!!R _
]!!_ `
)!!` a
;!!a b
objQuestionsBO"" "
.""" #

FriendlyId""# -
="". /
Convert""0 7
.""7 8
ToInt32""8 ?
(""? @
objSqlDataReader""@ P
[""P Q
$str""Q ]
]""] ^
)""^ _
;""_ `
questionUser##  
.##  !
Add##! $
(##$ %
objQuestionsBO##% 3
)##3 4
;##4 5
}$$ 
objSqlDataReader&&  
.&&  !
Close&&! &
(&&& '
)&&' (
;&&( )
}'' 
return)) 
questionUser)) 
;))  
}** 	
public,, 
static,, 
List,, 
<,, 
QuestionContentDTO,, -
>,,- .
GetQuestionContent,,/ A
(,,A B
int,,B E
?,,E F

questionId,,G Q
),,Q R
{-- 	
SqlParameter.. 
[.. 
].. 
objSqlParameter.. *
=..+ ,
{// 
new000 3
SqlParameter004 @
(00@ A
$str00A N
,00N O

questionId00P Z
)00Z [
,00[ \
}110 1
;111 2
using33 
(33 
SqlDataReader33  
objSqlDataReader33! 1
=332 3
	SqlHelper334 =
.33= >
ExecuteReader33> K
(33K L!
SqlConnectionProvider44 %
.44% &
GetConnectionString44& 9
(449 :
DataAccessType44: H
.44H I
Read44I M
)44M N
,44N O
CommandType44P [
.44[ \
StoredProcedure44\ k
,44k l
$str	44m ‹
,
44‹ 
objSqlParameter
44 
)
44 
)
44 
{55 
List66 
<66 
QuestionContentDTO66 '
>66' (
questionContentList66) <
=66= >
new66? B
List66C G
<66G H
QuestionContentDTO66H Z
>66Z [
(66[ \
)66\ ]
;66] ^
while77 
(77 
objSqlDataReader77 '
.77' (
Read77( ,
(77, -
)77- .
)77. /
{88 
QuestionContentDTO99 &
questionContentObj99' 9
=99: ;
new99< ?
QuestionContentDTO99@ R
(99R S
)99S T
;99T U
questionContentObj:: &
.::& '
	programId::' 0
=::1 2
(::3 4
int::4 7
)::7 8
objSqlDataReader::8 H
[::H I
$str::I T
]::T U
;::U V
questionContentObj;; &
.;;& '
program;;' .
=;;/ 0
Convert;;1 8
.;;8 9
ToString;;9 A
(;;A B
objSqlDataReader;;B R
[;;R S
$str;;S \
];;\ ]
);;] ^
;;;^ _
questionContentObj<< &
.<<& '
SubprogramId<<' 3
=<<4 5
(<<6 7
int<<7 :
)<<: ;
objSqlDataReader<<; K
[<<K L
$str<<L Z
]<<Z [
;<<[ \
questionContentObj== &
.==& '

subprogram==' 1
===2 3
Convert==4 ;
.==; <
ToString==< D
(==D E
objSqlDataReader==E U
[==U V
$str==V b
]==b c
)==c d
;==d e
questionContentObj>> &
.>>& '
SubspecialtyId>>' 5
=>>6 7
(>>8 9
int>>9 <
)>>< =
objSqlDataReader>>= M
[>>M N
$str>>N ^
]>>^ _
;>>_ `
questionContentObj?? &
.??& '
Subspecialty??' 3
=??4 5
Convert??6 =
.??= >
ToString??> F
(??F G
objSqlDataReader??G W
[??W X
$str??X f
]??f g
)??g h
;??h i
questionContentObj@@ &
.@@& '
TopicId@@' .
=@@/ 0
(@@1 2
int@@2 5
)@@5 6
objSqlDataReader@@6 F
[@@F G
$str@@G P
]@@P Q
;@@Q R
questionContentObjAA &
.AA& '
	TopicNameAA' 0
=AA1 2
ConvertAA3 :
.AA: ;
ToStringAA; C
(AAC D
objSqlDataReaderAAD T
[AAT U
$strAAU `
]AA` a
)AAa b
;AAb c
questionContentListBB '
.BB' (
AddBB( +
(BB+ ,
questionContentObjBB, >
)BB> ?
;BB? @
}CC 
objSqlDataReaderEE  
.EE  !
CloseEE! &
(EE& '
)EE' (
;EE( )
returnFF 
questionContentListFF *
;FF* +
}GG 
}HH 	
publicJJ 
staticJJ 
boolJJ 
GetButtonStatusJJ *
(JJ* +
intJJ+ .
?JJ. /

questionIdJJ0 :
,JJ: ;
intJJ< ?
?JJ? @
subSpecialityIdJJA P
,JJP Q
intJJR U
?JJU V
topicIdJJW ^
)JJ^ _
{KK 	
boolLL 
resultLL 
=LL 
falseLL 
;LL  
SqlParameterMM 
[MM 
]MM 
objSqlParameterMM *
=MM+ ,
{NN 
newOO0 3
SqlParameterOO4 @
(OO@ A
$strOOA N
,OON O

questionIdOOP Z
)OOZ [
,OO[ \
newPP0 3
SqlParameterPP4 @
(PP@ A
$strPPA R
,PPR S
subSpecialityIdPPT c
)PPc d
,PPd e
newQQ0 3
SqlParameterQQ4 @
(QQ@ A
$strQQA K
,QQK L
topicIdQQM T
)QQT U
,QQU V
}RR- .
;RR. /
usingTT 
(TT 
SqlDataReaderTT  
objSqlDataReaderTT! 1
=TT2 3
	SqlHelperTT4 =
.TT= >
ExecuteReaderTT> K
(TTK L!
SqlConnectionProviderUU %
.UU% &
GetConnectionStringUU& 9
(UU9 :
DataAccessTypeUU: H
.UUH I
ReadUUI M
)UUM N
,UUN O
CommandTypeUUP [
.UU[ \
StoredProcedureUU\ k
,UUk l
$str	UUm 
,
UU ‰
objSqlParameter
UU ™
)
UU™ 
)
UU ›
{VV 
whileWW 
(WW 
objSqlDataReaderWW '
.WW' (
ReadWW( ,
(WW, -
)WW- .
)WW. /
{XX 
resultYY 
=YY 
ConvertYY $
.YY$ %
	ToBooleanYY% .
(YY. /
objSqlDataReaderYY/ ?
[YY? @
$strYY@ H
]YYH I
)YYI J
;YYJ K
}ZZ 
objSqlDataReader[[  
.[[  !
Close[[! &
([[& '
)[[' (
;[[( )
return\\ 
result\\ 
;\\ 
}]] 
}^^ 	
public`` 
static`` 
List`` 
<`` 

ChapterDTO`` %
>``% &

GetChapter``' 1
(``1 2
int``2 5
?``5 6
subspecialtyId``7 E
)``E F
{aa 	
SqlParameterbb 
[bb 
]bb 
objSqlParameterbb *
=bb+ ,
{cc 
newdd0 3
SqlParameterdd4 @
(dd@ A
$strddA R
,ddR S
subspecialtyIdddT b
)ddb c
,ddc d
}ee- .
;ee. /
usinggg 
(gg 
SqlDataReadergg  
objSqlDataReadergg! 1
=gg2 3
	SqlHelpergg4 =
.gg= >
ExecuteReadergg> K
(ggK L!
SqlConnectionProviderhh %
.hh% &
GetConnectionStringhh& 9
(hh9 :
DataAccessTypehh: H
.hhH I
ReadhhI M
)hhM N
,hhN O
CommandTypehhP [
.hh[ \
StoredProcedurehh\ k
,hhk l
$str	hhm 
,
hh 
objSqlParameter
hh 
)
hh  
)
hh  ΅
{ii 
Listjj 
<jj 

ChapterDTOjj 
>jj  
chapterListjj! ,
=jj- .
newjj/ 2
Listjj3 7
<jj7 8

ChapterDTOjj8 B
>jjB C
(jjC D
)jjD E
;jjE F
whilell 
(ll 
objSqlDataReaderll '
.ll' (
Readll( ,
(ll, -
)ll- .
)ll. /
{mm 

ChapterDTOnn 

chapterObjnn )
=nn* +
newnn, /

ChapterDTOnn0 :
(nn: ;
)nn; <
;nn< =

chapterObjoo 
.oo 
Chapteroo &
=oo' (
Convertoo) 0
.oo0 1
ToStringoo1 9
(oo9 :
objSqlDataReaderoo: J
[ooJ K
$strooK T
]ooT U
)ooU V
;ooV W

chapterObjpp 
.pp 
ChapterNamepp *
=pp+ ,
Convertpp- 4
.pp4 5
ToStringpp5 =
(pp= >
objSqlDataReaderpp> N
[ppN O
$strppO X
]ppX Y
)ppY Z
;ppZ [
chapterListqq 
.qq  
Addqq  #
(qq# $

chapterObjqq$ .
)qq. /
;qq/ 0
}rr 
objSqlDataReaderss  
.ss  !
Closess! &
(ss& '
)ss' (
;ss( )
returntt 
chapterListtt "
;tt" #
}uu 
}vv 	
publicxx 
staticxx 
intxx 
InsertContentxx '
(xx' (
TopicContentDTOxx( 7
addTopicContentxx8 G
)xxG H
{yy 	
SqlParameterzz 
[zz 
]zz 
arrSqlParameterzz *
=zz+ ,
{{{ 
new|| 
SqlParameter|| $
(||$ %
$str||% 2
,||2 3
addTopicContent||4 C
.||C D

QuestionId||D N
)||N O
,||O P
new}} 
SqlParameter}} $
(}}$ %
$str}}% 6
,}}6 7
addTopicContent}}8 G
.}}G H
SubspecialtyId}}H V
)}}V W
,}}W X
new~~ 
SqlParameter~~ $
(~~$ %
$str~~% /
,~~/ 0
addTopicContent~~1 @
.~~@ A
Chapter~~A H
)~~H I
,~~I J
new 
SqlParameter $
($ %
$str% 0
,0 1
addTopicContent2 A
.A B
TopicIdB I
)I J
,J K
new
€€ 
SqlParameter
€€ $
(
€€$ %
$str
€€% /
,
€€/ 0
addTopicContent
€€1 @
.
€€@ A
Content
€€A H
)
€€H I
,
€€I J
new
 
SqlParameter
 $
(
$ %
$str
% 1
,
1 2
true
3 7
)
7 8
,
8 9
}
‚‚ 	
;
‚‚	 

	SqlHelper
ƒƒ 
.
ƒƒ 
ExecuteNonQuery
ƒƒ %
(
ƒƒ% &#
SqlConnectionProvider
ƒƒ& ;
.
ƒƒ; <!
GetConnectionString
ƒƒ< O
(
ƒƒO P
DataAccessType
ƒƒP ^
.
ƒƒ^ _
Write
ƒƒ_ d
)
ƒƒd e
,
ƒƒe f
CommandType
ƒƒg r
.
ƒƒr s
StoredProcedureƒƒs ‚
,ƒƒ‚ ƒ
$strƒƒ„ ›
,ƒƒ› 
arrSqlParameterƒƒ ¬
)ƒƒ¬ ­
;ƒƒ­ ®
return
„„ 
$num
„„ 
;
„„ 
}
…… 	
public
‡‡ 
static
‡‡ 
List
‡‡ 
<
‡‡ 
TopicContentDTO
‡‡ *
>
‡‡* +
GetUpdateContent
‡‡, <
(
‡‡< =
int
‡‡= @
?
‡‡@ A

questionId
‡‡B L
,
‡‡L M
int
‡‡N Q
?
‡‡Q R
subSpecialityId
‡‡S b
,
‡‡b c
int
‡‡d g
?
‡‡g h
topicId
‡‡i p
)
‡‡p q
{
 	
SqlParameter
‰‰ 
[
‰‰ 
]
‰‰ 
objSqlParameter
‰‰ *
=
‰‰+ ,
{
 
new
‹‹0 3
SqlParameter
‹‹4 @
(
‹‹@ A
$str
‹‹A N
,
‹‹N O

questionId
‹‹P Z
)
‹‹Z [
,
‹‹[ \
new
0 3
SqlParameter
4 @
(
@ A
$str
A R
,
R S
subSpecialityId
T c
)
c d
,
d e
new
0 3
SqlParameter
4 @
(
@ A
$str
A K
,
K L
topicId
M T
)
T U
,
U V
}
- .
;
. /
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
L a
.
a b!
GetConnectionString
b u
(
u v
DataAccessTypev „
.„ …
Read… ‰
)‰ 
, ‹
CommandType —
.— 
StoredProcedure §
,§ ¨
$str© ½
,½ Ύ
objSqlParameterΏ Ξ
)Ξ Ο
)Ο Π
{
‘‘ 
List
’’ 
<
’’ 
TopicContentDTO
’’ $
>
’’$ %
updateContentList
’’& 7
=
’’8 9
new
’’: =
List
’’> B
<
’’B C
TopicContentDTO
’’C R
>
’’R S
(
’’S T
)
’’T U
;
’’U V
while
““ 
(
““ 
objSqlDataReader
““ '
.
““' (
Read
““( ,
(
““, -
)
““- .
)
““. /
{
”” 
TopicContentDTO
•• #
updateContentObj
••$ 4
=
••5 6
new
••7 :
TopicContentDTO
••; J
(
••J K
)
••K L
;
••L M
updateContentObj
–– $
.
––$ %

QuestionId
––% /
=
––0 1
Convert
––2 9
.
––9 :
ToInt32
––: A
(
––A B
objSqlDataReader
––B R
[
––R S
$str
––S _
]
––_ `
)
––` a
;
––a b
updateContentObj
—— $
.
——$ %
SubspecialtyId
——% 3
=
——4 5
Convert
——6 =
.
——= >
ToInt32
——> E
(
——E F
objSqlDataReader
——F V
[
——V W
$str
——W g
]
——g h
)
——h i
;
——i j
updateContentObj
 $
.
$ %
ChapterName
% 0
=
1 2
Convert
3 :
.
: ;
ToString
; C
(
C D
objSqlDataReader
D T
[
T U
$str
U ^
]
^ _
)
_ `
;
` a
updateContentObj
™™ $
.
™™$ %
Content
™™% ,
=
™™- .
Convert
™™/ 6
.
™™6 7
ToString
™™7 ?
(
™™? @
objSqlDataReader
™™@ P
[
™™P Q
$str
™™Q Z
]
™™Z [
)
™™[ \
;
™™\ ]
DateTime
›› 
?
›› $
lastUpdateOn_IsUpdated
›› 4
=
››5 6
objSqlDataReader
››7 G
[
››G H
$str
››H `
]
››` a
as
››b d
DateTime
››e m
?
››m n
;
››n o
updateContentObj
 $
.
$ %$
LastUpdateOn_IsUpdated
% ;
=
< =$
lastUpdateOn_IsUpdated
> T
.
T U
HasValue
U ]
?
^ _$
lastUpdateOn_IsUpdated
` v
.
v w
Value
w |
.
| }
Date} 
. ‚
ToString‚ 
( ‹
$str‹ —
)— 
:™ 
$str› ¤
;¤ ¥
DateTime
 
?
 (
lastUpdateOn_BookUpdateAPI
 8
=
9 :
objSqlDataReader
; K
[
K L
$str
L h
]
h i
as
j l
DateTime
m u
?
u v
;
v w
updateContentObj
 $
.
$ %(
LastUpdateOn_BookUpdateAPI
% ?
=
@ A(
lastUpdateOn_BookUpdateAPI
B \
.
\ ]
HasValue
] e
?
f g)
lastUpdateOn_BookUpdateAPIh ‚
.‚ ƒ
Valueƒ 
. ‰
Date‰ 
. 
ToString –
(– —
$str— £
)£ ¤
:¥ ¦
$str§ °
;° ±
updateContentList
΅΅ %
.
΅΅% &
Add
΅΅& )
(
΅΅) *
updateContentObj
΅΅* :
)
΅΅: ;
;
΅΅; <
}
ΆΆ 
objSqlDataReader
¤¤  
.
¤¤  !
Close
¤¤! &
(
¤¤& '
)
¤¤' (
;
¤¤( )
return
¥¥ 
updateContentList
¥¥ (
;
¥¥( )
}
¦¦ 
}
§§ 	
public
©© 
static
©© 
List
©© 
<
©©  
QuestionContentDTO
©© -
>
©©- .
GetQuestionById
©©/ >
(
©©> ?
int
©©? B
?
©©B C

questionId
©©D N
)
©©N O
{
ªª 	
SqlParameter
«« 
[
«« 
]
«« 
objSqlParameter
«« *
=
««+ ,
{
¬¬ 
new
­­0 3
SqlParameter
­­4 @
(
­­@ A
$str
­­A N
,
­­N O

questionId
­­P Z
)
­­Z [
,
­­[ \
}
®®- .
;
®®. /
using
°° 
(
°° 
SqlDataReader
°°  
objSqlDataReader
°°! 1
=
°°2 3
	SqlHelper
°°4 =
.
°°= >
ExecuteReader
°°> K
(
°°K L#
SqlConnectionProvider
±± %
.
±±% &!
GetConnectionString
±±& 9
(
±±9 :
DataAccessType
±±: H
.
±±H I
Read
±±I M
)
±±M N
,
±±N O
CommandType
±±P [
.
±±[ \
StoredProcedure
±±\ k
,
±±k l
$str±±m ‰
,±±‰ 
objSqlParameter±±‹ 
)±± ›
)±±› 
{
²² 
List
³³ 
<
³³  
QuestionContentDTO
³³ '
>
³³' (
questionList
³³) 5
=
³³6 7
new
³³8 ;
List
³³< @
<
³³@ A 
QuestionContentDTO
³³A S
>
³³S T
(
³³T U
)
³³U V
;
³³V W
while
µµ 
(
µµ 
objSqlDataReader
µµ '
.
µµ' (
Read
µµ( ,
(
µµ, -
)
µµ- .
)
µµ. /
{
¶¶  
QuestionContentDTO
·· &
questionObj
··' 2
=
··3 4
new
··5 8 
QuestionContentDTO
··9 K
(
··K L
)
··L M
;
··M N
questionObj
ΈΈ 
.
ΈΈ  

QuestionId
ΈΈ  *
=
ΈΈ+ ,
Convert
ΈΈ- 4
.
ΈΈ4 5
ToInt32
ΈΈ5 <
(
ΈΈ< =
objSqlDataReader
ΈΈ= M
[
ΈΈM N
$str
ΈΈN Z
]
ΈΈZ [
)
ΈΈ[ \
;
ΈΈ\ ]
questionObj
ΉΉ 
.
ΉΉ  
Stem
ΉΉ  $
=
ΉΉ% &
Convert
ΉΉ' .
.
ΉΉ. /
ToString
ΉΉ/ 7
(
ΉΉ7 8
objSqlDataReader
ΉΉ8 H
[
ΉΉH I
$str
ΉΉI O
]
ΉΉO P
)
ΉΉP Q
;
ΉΉQ R
questionObj
ΊΊ 
.
ΊΊ  
	RowNumber
ΊΊ  )
=
ΊΊ* +
Convert
ΊΊ, 3
.
ΊΊ3 4
ToInt32
ΊΊ4 ;
(
ΊΊ; <
objSqlDataReader
ΊΊ< L
[
ΊΊL M
$str
ΊΊM X
]
ΊΊX Y
)
ΊΊY Z
;
ΊΊZ [
questionObj
»» 
.
»»  

FriendlyId
»»  *
=
»»+ ,
Convert
»»- 4
.
»»4 5
ToInt32
»»5 <
(
»»< =
objSqlDataReader
»»= M
[
»»M N
$str
»»N Z
]
»»Z [
)
»»[ \
;
»»\ ]
questionList
ΌΌ  
.
ΌΌ  !
Add
ΌΌ! $
(
ΌΌ$ %
questionObj
ΌΌ% 0
)
ΌΌ0 1
;
ΌΌ1 2
}
½½ 
objSqlDataReader
ΏΏ  
.
ΏΏ  !
Close
ΏΏ! &
(
ΏΏ& '
)
ΏΏ' (
;
ΏΏ( )
return
ΐΐ 
questionList
ΐΐ #
;
ΐΐ# $
}
ΑΑ 
}
ΒΒ 	
public
ΔΔ 
static
ΔΔ 
List
ΔΔ 
<
ΔΔ  
QuestionContentDTO
ΔΔ -
>
ΔΔ- . 
GetQuestionByTitle
ΔΔ/ A
(
ΔΔA B
string
ΔΔB H
questionText
ΔΔI U
,
ΔΔU V
int
ΔΔW Z
	pageIndex
ΔΔ[ d
,
ΔΔd e
int
ΔΔf i
noOfRecords
ΔΔj u
,
ΔΔu v
string
ΔΔw }
radioButtonStateΔΔ~ 
)ΔΔ 
{
ΕΕ 	
List
ΖΖ 
<
ΖΖ  
QuestionContentDTO
ΖΖ #
>
ΖΖ# $
questionsList
ΖΖ% 2
=
ΖΖ3 4
new
ΖΖ5 8
List
ΖΖ9 =
<
ΖΖ= > 
QuestionContentDTO
ΖΖ> P
>
ΖΖP Q
(
ΖΖQ R
)
ΖΖR S
;
ΖΖS T
SqlParameter
ΗΗ 
[
ΗΗ 
]
ΗΗ 
objSqlParameter
ΗΗ *
=
ΗΗ+ ,
{
ΘΘ 
new
ΙΙ0 3
SqlParameter
ΙΙ4 @
(
ΙΙ@ A
$str
ΙΙA P
,
ΙΙP Q
questionText
ΙΙR ^
)
ΙΙ^ _
,
ΙΙ_ `
new
ΚΚ0 3
SqlParameter
ΚΚ4 @
(
ΚΚ@ A
$str
ΚΚA M
,
ΚΚM N
	pageIndex
ΚΚO X
)
ΚΚX Y
,
ΚΚY Z
new
ΛΛ0 3
SqlParameter
ΛΛ4 @
(
ΛΛ@ A
$str
ΛΛA L
,
ΛΛL M
noOfRecords
ΛΛN Y
)
ΛΛY Z
,
ΛΛZ [
new
ΜΜ0 3
SqlParameter
ΜΜ4 @
(
ΜΜ@ A
$str
ΜΜA T
,
ΜΜT U
radioButtonState
ΜΜV f
)
ΜΜf g
,
ΜΜg h
}
ΝΝ- .
;
ΝΝ. /
using
ΟΟ 
(
ΟΟ 
SqlDataReader
ΟΟ  
objSqlDataReader
ΟΟ! 1
=
ΟΟ2 3
	SqlHelper
ΟΟ4 =
.
ΟΟ= >
ExecuteReader
ΟΟ> K
(
ΟΟK L#
SqlConnectionProvider
ΠΠ %
.
ΠΠ% &!
GetConnectionString
ΠΠ& 9
(
ΠΠ9 :
DataAccessType
ΠΠ: H
.
ΠΠH I
Read
ΠΠI M
)
ΠΠM N
,
ΠΠN O
CommandType
ΠΠP [
.
ΠΠ[ \
StoredProcedure
ΠΠ\ k
,
ΠΠk l
$strΠΠm …
,ΠΠ… †
objSqlParameterΠΠ‡ –
)ΠΠ– —
)ΠΠ— 
{
ΡΡ 
while
ÒÒ 
(
ÒÒ 
objSqlDataReader
ÒÒ '
.
ÒÒ' (
Read
ÒÒ( ,
(
ÒÒ, -
)
ÒÒ- .
)
ÒÒ. /
{
ΣΣ  
QuestionContentDTO
ΤΤ &
questionsObj
ΤΤ' 3
=
ΤΤ4 5
new
ΤΤ6 9 
QuestionContentDTO
ΤΤ: L
(
ΤΤL M
)
ΤΤM N
;
ΤΤN O
questionsObj
ΥΥ  
.
ΥΥ  !

QuestionId
ΥΥ! +
=
ΥΥ, -
(
ΥΥ. /
int
ΥΥ/ 2
)
ΥΥ2 3
objSqlDataReader
ΥΥ3 C
[
ΥΥC D
$str
ΥΥD P
]
ΥΥP Q
;
ΥΥQ R
questionsObj
ΦΦ  
.
ΦΦ  !
Stem
ΦΦ! %
=
ΦΦ& '
Convert
ΦΦ( /
.
ΦΦ/ 0
ToString
ΦΦ0 8
(
ΦΦ8 9
objSqlDataReader
ΦΦ9 I
[
ΦΦI J
$str
ΦΦJ P
]
ΦΦP Q
)
ΦΦQ R
;
ΦΦR S
questionsObj
ΧΧ  
.
ΧΧ  !
	RowNumber
ΧΧ! *
=
ΧΧ+ ,
Convert
ΧΧ- 4
.
ΧΧ4 5
ToInt32
ΧΧ5 <
(
ΧΧ< =
objSqlDataReader
ΧΧ= M
[
ΧΧM N
$str
ΧΧN Y
]
ΧΧY Z
)
ΧΧZ [
;
ΧΧ[ \
questionsObj
ΨΨ  
.
ΨΨ  !
RecordCount
ΨΨ! ,
=
ΨΨ- .
Convert
ΨΨ/ 6
.
ΨΨ6 7
ToInt32
ΨΨ7 >
(
ΨΨ> ?
objSqlDataReader
ΨΨ? O
[
ΨΨO P
$str
ΨΨP ]
]
ΨΨ] ^
)
ΨΨ^ _
;
ΨΨ_ `
questionsObj
ΩΩ  
.
ΩΩ  !

FriendlyId
ΩΩ! +
=
ΩΩ, -
Convert
ΩΩ. 5
.
ΩΩ5 6
ToInt32
ΩΩ6 =
(
ΩΩ= >
objSqlDataReader
ΩΩ> N
[
ΩΩN O
$str
ΩΩO [
]
ΩΩ[ \
)
ΩΩ\ ]
;
ΩΩ] ^
questionsList
ΫΫ !
.
ΫΫ! "
Add
ΫΫ" %
(
ΫΫ% &
questionsObj
ΫΫ& 2
)
ΫΫ2 3
;
ΫΫ3 4
}
άά 
objSqlDataReader
ήή  
.
ήή  !
Close
ήή! &
(
ήή& '
)
ήή' (
;
ήή( )
}
ίί 
return
αα 
questionsList
αα  
;
αα  !
}
ββ 	
public
δδ 
static
δδ 
List
δδ 
<
δδ 

ProgramDTO
δδ %
>
δδ% &

GetProgram
δδ' 1
(
δδ1 2
)
δδ2 3
{
εε 	
List
ζζ 
<
ζζ 

ProgramDTO
ζζ 
>
ζζ 
programUser
ζζ (
=
ζζ) *
new
ζζ+ .
List
ζζ/ 3
<
ζζ3 4

ProgramDTO
ζζ4 >
>
ζζ> ?
(
ζζ? @
)
ζζ@ A
;
ζζA B
using
θθ 
(
θθ 
SqlDataReader
θθ  
objSqlDataReader
θθ! 1
=
θθ2 3
	SqlHelper
θθ4 =
.
θθ= >
ExecuteReader
θθ> K
(
θθK L#
SqlConnectionProvider
ιι %
.
ιι% &!
GetConnectionString
ιι& 9
(
ιι9 :
DataAccessType
ιι: H
.
ιιH I
Read
ιιI M
)
ιιM N
,
ιιN O
CommandType
ιιP [
.
ιι[ \
StoredProcedure
ιι\ k
,
ιιk l
$str
ιιm ~
)
ιι~ 
)ιι €
{
κκ 
while
λλ 
(
λλ 
objSqlDataReader
λλ '
.
λλ' (
Read
λλ( ,
(
λλ, -
)
λλ- .
)
λλ. /
{
μμ 

ProgramDTO
νν 
objProgramBO
νν +
=
νν, -
new
νν. 1

ProgramDTO
νν2 <
(
νν< =
)
νν= >
;
νν> ?
objProgramBO
οο  
.
οο  !
	programId
οο! *
=
οο+ ,
(
οο- .
int
οο. 1
)
οο1 2
objSqlDataReader
οο2 B
[
οοB C
$str
οοC N
]
οοN O
;
οοO P
objProgramBO
ππ  
.
ππ  !
program
ππ! (
=
ππ) *
(
ππ+ ,
string
ππ, 2
)
ππ2 3
objSqlDataReader
ππ3 C
[
ππC D
$str
ππD M
]
ππM N
;
ππN O
programUser
ςς 
.
ςς  
Add
ςς  #
(
ςς# $
objProgramBO
ςς$ 0
)
ςς0 1
;
ςς1 2
}
σσ 
objSqlDataReader
ττ  
.
ττ  !
Close
ττ! &
(
ττ& '
)
ττ' (
;
ττ( )
}
υυ 
return
χχ 
programUser
χχ 
;
χχ 
}
ψψ 	
public
ϊϊ 
static
ϊϊ 
List
ϊϊ 
<
ϊϊ 

ProgramDTO
ϊϊ %
>
ϊϊ% &
GetSubProgram
ϊϊ' 4
(
ϊϊ4 5
int
ϊϊ5 8
?
ϊϊ8 9
	programId
ϊϊ: C
)
ϊϊC D
{
ϋϋ 	
List
όό 
<
όό 

ProgramDTO
όό 
>
όό 
subProgramUser
όό +
=
όό, -
new
όό. 1
List
όό2 6
<
όό6 7

ProgramDTO
όό7 A
>
όόA B
(
όόB C
)
όόC D
;
όόD E
SqlParameter
ύύ 
[
ύύ 
]
ύύ 
objSqlParameter
ύύ *
=
ύύ+ ,
{
ώώ 
new
ÿÿ0 3
SqlParameter
ÿÿ4 @
(
ÿÿ@ A
$str
ÿÿA M
,
ÿÿM N
	programId
ÿÿO X
)
ÿÿX Y
,
ÿÿY Z
}
€€- .
;
€€. /
using
‚‚ 
(
‚‚ 
SqlDataReader
‚‚  
objSqlDataReader
‚‚! 1
=
‚‚2 3
	SqlHelper
‚‚4 =
.
‚‚= >
ExecuteReader
‚‚> K
(
‚‚K L#
SqlConnectionProvider
ƒƒ %
.
ƒƒ% &!
GetConnectionString
ƒƒ& 9
(
ƒƒ9 :
DataAccessType
ƒƒ: H
.
ƒƒH I
Read
ƒƒI M
)
ƒƒM N
,
ƒƒN O
CommandType
ƒƒP [
.
ƒƒ[ \
StoredProcedure
ƒƒ\ k
,
ƒƒk l
$strƒƒm €
,ƒƒ€ 
objSqlParameterƒƒ‚ ‘
)ƒƒ‘ ’
)ƒƒ’ “
{
„„ 
while
…… 
(
…… 
objSqlDataReader
…… '
.
……' (
Read
……( ,
(
……, -
)
……- .
)
……. /
{
†† 

ProgramDTO
‡‡ 
objSubProgramBO
‡‡ .
=
‡‡/ 0
new
‡‡1 4

ProgramDTO
‡‡5 ?
(
‡‡? @
)
‡‡@ A
;
‡‡A B
objSubProgramBO
‰‰ #
.
‰‰# $
subprogramId
‰‰$ 0
=
‰‰1 2
(
‰‰3 4
int
‰‰4 7
)
‰‰7 8
objSqlDataReader
‰‰8 H
[
‰‰H I
$str
‰‰I W
]
‰‰W X
;
‰‰X Y
objSubProgramBO
 #
.
# $

subprogram
$ .
=
/ 0
(
1 2
string
2 8
)
8 9
objSqlDataReader
9 I
[
I J
$str
J V
]
V W
;
W X
subProgramUser
 "
.
" #
Add
# &
(
& '
objSubProgramBO
' 6
)
6 7
;
7 8
}
 
objSqlDataReader
  
.
  !
Close
! &
(
& '
)
' (
;
( )
}
 
return
‘‘ 
subProgramUser
‘‘ !
;
‘‘! "
}
’’ 	
public
”” 
static
”” 
List
”” 
<
”” 

ProgramDTO
”” %
>
””% &
GetSubSpeciality
””' 7
(
””7 8
int
””8 ;
?
””; <
subProgramId
””= I
)
””I J
{
•• 	
List
–– 
<
–– 

ProgramDTO
–– 
>
–– 
subSpecialityUser
–– .
=
––/ 0
new
––1 4
List
––5 9
<
––9 :

ProgramDTO
––: D
>
––D E
(
––E F
)
––F G
;
––G H
SqlParameter
—— 
[
—— 
]
—— 
objSqlParameter
—— *
=
——+ ,
{
 
new
™™0 3
SqlParameter
™™4 @
(
™™@ A
$str
™™A P
,
™™P Q
subProgramId
™™R ^
)
™™^ _
,
™™_ `
}
- .
;
. /
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm ƒ
,ƒ „
objSqlParameter… ”
)” •
)• –
{
 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
   

ProgramDTO
΅΅  
objSubSpecialityBO
΅΅ 1
=
΅΅2 3
new
΅΅4 7

ProgramDTO
΅΅8 B
(
΅΅B C
)
΅΅C D
;
΅΅D E 
objSubSpecialityBO
££ &
.
££& '
SubspecialtyId
££' 5
=
££6 7
(
££8 9
int
££9 <
)
££< =
objSqlDataReader
££= M
[
££M N
$str
££N ^
]
££^ _
;
££_ ` 
objSubSpecialityBO
¤¤ &
.
¤¤& '
Subspecialty
¤¤' 3
=
¤¤4 5
(
¤¤6 7
string
¤¤7 =
)
¤¤= >
objSqlDataReader
¤¤> N
[
¤¤N O
$str
¤¤O ]
]
¤¤] ^
;
¤¤^ _
subSpecialityUser
¦¦ %
.
¦¦% &
Add
¦¦& )
(
¦¦) * 
objSubSpecialityBO
¦¦* <
)
¦¦< =
;
¦¦= >
}
§§ 
objSqlDataReader
¨¨  
.
¨¨  !
Close
¨¨! &
(
¨¨& '
)
¨¨' (
;
¨¨( )
}
©© 
return
«« 
subSpecialityUser
«« $
;
««$ %
}
¬¬ 	
public
®® 
static
®® 
List
®® 
<
®® 

ProgramDTO
®® %
>
®®% &
GetTopicBySubSpec
®®' 8
(
®®8 9
int
®®9 <
?
®®< =
subSpecialityId
®®> M
)
®®M N
{
―― 	
List
°° 
<
°° 

ProgramDTO
°° 
>
°° 
	topicUser
°° &
=
°°' (
new
°°) ,
List
°°- 1
<
°°1 2

ProgramDTO
°°2 <
>
°°< =
(
°°= >
)
°°> ?
;
°°? @
SqlParameter
±± 
[
±± 
]
±± 
objSqlParameter
±± *
=
±±+ ,
{
²² 
new
³³0 3
SqlParameter
³³4 @
(
³³@ A
$str
³³A R
,
³³R S
subSpecialityId
³³T c
)
³³c d
,
³³d e
}
΄΄- .
;
΄΄. /
using
¶¶ 
(
¶¶ 
SqlDataReader
¶¶  
objSqlDataReader
¶¶! 1
=
¶¶2 3
	SqlHelper
¶¶4 =
.
¶¶= >
ExecuteReader
¶¶> K
(
¶¶K L#
SqlConnectionProvider
·· %
.
··% &!
GetConnectionString
··& 9
(
··9 :
DataAccessType
··: H
.
··H I
Read
··I M
)
··M N
,
··N O
CommandType
··P [
.
··[ \
StoredProcedure
··\ k
,
··k l
$str··m „
,··„ …
objSqlParameter··† •
)··• –
)··– —
{
ΈΈ 
while
ΉΉ 
(
ΉΉ 
objSqlDataReader
ΉΉ '
.
ΉΉ' (
Read
ΉΉ( ,
(
ΉΉ, -
)
ΉΉ- .
)
ΉΉ. /
{
ΊΊ 

ProgramDTO
»» 

objTopicBO
»» )
=
»»* +
new
»», /

ProgramDTO
»»0 :
(
»»: ;
)
»»; <
;
»»< =

objTopicBO
½½ 
.
½½ 
TopicId
½½ &
=
½½' (
(
½½) *
int
½½* -
)
½½- .
objSqlDataReader
½½. >
[
½½> ?
$str
½½? H
]
½½H I
;
½½I J

objTopicBO
ΎΎ 
.
ΎΎ 
	TopicName
ΎΎ (
=
ΎΎ) *
(
ΎΎ+ ,
string
ΎΎ, 2
)
ΎΎ2 3
objSqlDataReader
ΎΎ3 C
[
ΎΎC D
$str
ΎΎD O
]
ΎΎO P
;
ΎΎP Q
	topicUser
ΐΐ 
.
ΐΐ 
Add
ΐΐ !
(
ΐΐ! "

objTopicBO
ΐΐ" ,
)
ΐΐ, -
;
ΐΐ- .
}
ΑΑ 
objSqlDataReader
ΓΓ  
.
ΓΓ  !
Close
ΓΓ! &
(
ΓΓ& '
)
ΓΓ' (
;
ΓΓ( )
}
ΔΔ 
return
ΖΖ 
	topicUser
ΖΖ 
;
ΖΖ 
}
ΗΗ 	
public
ΙΙ 
static
ΙΙ 
List
ΙΙ 
<
ΙΙ  
QuestionContentDTO
ΙΙ -
>
ΙΙ- .
GetQuesByTopic
ΙΙ/ =
(
ΙΙ= >
int
ΙΙ> A
?
ΙΙA B
topicId
ΙΙC J
,
ΙΙJ K
int
ΙΙL O
?
ΙΙO P
subSpecialtyId
ΙΙQ _
,
ΙΙ_ `
int
ΙΙa d
?
ΙΙd e
	programId
ΙΙf o
,
ΙΙo p
int
ΙΙq t
?
ΙΙt u
subProgramIdΙΙv ‚
,ΙΙ‚ ƒ
intΙΙ„ ‡
	pageIndexΙΙ ‘
,ΙΙ‘ ’
intΙΙ“ –
noOfRecordsΙΙ— Ά
)ΙΙΆ £
{
ΚΚ 	
List
ΛΛ 
<
ΛΛ  
QuestionContentDTO
ΛΛ #
>
ΛΛ# $
questionList
ΛΛ% 1
=
ΛΛ2 3
new
ΛΛ4 7
List
ΛΛ8 <
<
ΛΛ< = 
QuestionContentDTO
ΛΛ= O
>
ΛΛO P
(
ΛΛP Q
)
ΛΛQ R
;
ΛΛR S
SqlParameter
ΝΝ 
[
ΝΝ 
]
ΝΝ 
objSqlParameter
ΝΝ *
=
ΝΝ+ ,
{
ΞΞ 
new
ΟΟ0 3
SqlParameter
ΟΟ4 @
(
ΟΟ@ A
$str
ΟΟA K
,
ΟΟK L
topicId
ΟΟM T
)
ΟΟT U
,
ΟΟU V
new
ΠΠ0 3
SqlParameter
ΠΠ4 @
(
ΠΠ@ A
$str
ΠΠA R
,
ΠΠR S
subSpecialtyId
ΠΠT b
)
ΠΠb c
,
ΠΠc d
new
ΡΡ0 3
SqlParameter
ΡΡ4 @
(
ΡΡ@ A
$str
ΡΡA M
,
ΡΡM N
	programId
ΡΡO X
)
ΡΡX Y
,
ΡΡY Z
new
ÒÒ0 3
SqlParameter
ÒÒ4 @
(
ÒÒ@ A
$str
ÒÒA P
,
ÒÒP Q
subProgramId
ÒÒR ^
)
ÒÒ^ _
,
ÒÒ_ `
new
ΣΣ0 3
SqlParameter
ΣΣ4 @
(
ΣΣ@ A
$str
ΣΣA M
,
ΣΣM N
	pageIndex
ΣΣO X
)
ΣΣX Y
,
ΣΣY Z
new
ΤΤ0 3
SqlParameter
ΤΤ4 @
(
ΤΤ@ A
$str
ΤΤA L
,
ΤΤL M
noOfRecords
ΤΤN Y
)
ΤΤY Z
,
ΤΤZ [
}
ΥΥ- .
;
ΥΥ. /
using
ΧΧ 
(
ΧΧ 
SqlDataReader
ΧΧ  
objSqlDataReader
ΧΧ! 1
=
ΧΧ2 3
	SqlHelper
ΧΧ4 =
.
ΧΧ= >
ExecuteReader
ΧΧ> K
(
ΧΧK L#
SqlConnectionProvider
ΨΨ %
.
ΨΨ% &!
GetConnectionString
ΨΨ& 9
(
ΨΨ9 :
DataAccessType
ΨΨ: H
.
ΨΨH I
Read
ΨΨI M
)
ΨΨM N
,
ΨΨN O
CommandType
ΨΨP [
.
ΨΨ[ \
StoredProcedure
ΨΨ\ k
,
ΨΨk l
$strΨΨm ’
,ΨΨ’ “
objSqlParameterΨΨ” £
)ΨΨ£ ¤
)ΨΨ¤ ¥
{
ΩΩ 
while
ΪΪ 
(
ΪΪ 
objSqlDataReader
ΪΪ '
.
ΪΪ' (
Read
ΪΪ( ,
(
ΪΪ, -
)
ΪΪ- .
)
ΪΪ. /
{
ΫΫ  
QuestionContentDTO
άά &
questionObj
άά' 2
=
άά3 4
new
άά5 8 
QuestionContentDTO
άά9 K
(
άάK L
)
άάL M
;
άάM N
questionObj
έέ 
.
έέ  

QuestionId
έέ  *
=
έέ+ ,
(
έέ- .
int
έέ. 1
)
έέ1 2
objSqlDataReader
έέ2 B
[
έέB C
$str
έέC O
]
έέO P
;
έέP Q
questionObj
ήή 
.
ήή  
Stem
ήή  $
=
ήή% &
Convert
ήή' .
.
ήή. /
ToString
ήή/ 7
(
ήή7 8
objSqlDataReader
ήή8 H
[
ήήH I
$str
ήήI O
]
ήήO P
)
ήήP Q
;
ήήQ R
questionObj
ίί 
.
ίί  
	RowNumber
ίί  )
=
ίί* +
Convert
ίί, 3
.
ίί3 4
ToInt32
ίί4 ;
(
ίί; <
objSqlDataReader
ίί< L
[
ίίL M
$str
ίίM X
]
ίίX Y
)
ίίY Z
;
ίίZ [
questionObj
ΰΰ 
.
ΰΰ  
RecordCount
ΰΰ  +
=
ΰΰ, -
Convert
ΰΰ. 5
.
ΰΰ5 6
ToInt32
ΰΰ6 =
(
ΰΰ= >
objSqlDataReader
ΰΰ> N
[
ΰΰN O
$str
ΰΰO \
]
ΰΰ\ ]
)
ΰΰ] ^
;
ΰΰ^ _
questionObj
αα 
.
αα  

FriendlyId
αα  *
=
αα+ ,
Convert
αα- 4
.
αα4 5
ToInt32
αα5 <
(
αα< =
objSqlDataReader
αα= M
[
ααM N
$str
ααN Z
]
ααZ [
)
αα[ \
;
αα\ ]
questionList
ββ  
.
ββ  !
Add
ββ! $
(
ββ$ %
questionObj
ββ% 0
)
ββ0 1
;
ββ1 2
}
γγ 
objSqlDataReader
εε  
.
εε  !
Close
εε! &
(
εε& '
)
εε' (
;
εε( )
return
ζζ 
questionList
ζζ #
;
ζζ# $
}
ηη 
}
θθ 	
public
κκ 
static
κκ 
List
κκ 
<
κκ 
QuestionData
κκ '
>
κκ' (!
GetBCSCQuestDetails
κκ) <
(
κκ< =
int
κκ= @
?
κκ@ A

questionId
κκB L
,
κκL M
int
κκN Q
?
κκQ R
subSpecialityId
κκS b
)
κκb c
{
λλ 	
SqlParameter
μμ 
[
μμ 
]
μμ 
objSqlParameter
μμ *
=
μμ+ ,
{
νν 
new
ξξ0 3
SqlParameter
ξξ4 @
(
ξξ@ A
$str
ξξA N
,
ξξN O

questionId
ξξP Z
)
ξξZ [
,
ξξ[ \
}
οο0 1
;
οο1 2
using
ρρ 
(
ρρ 
SqlDataReader
ρρ  
objSqlDataReader
ρρ! 1
=
ρρ2 3
	SqlHelper
ρρ4 =
.
ρρ= >
ExecuteReader
ρρ> K
(
ρρK L#
SqlConnectionProvider
ςς %
.
ςς% &!
GetConnectionString
ςς& 9
(
ςς9 :
DataAccessType
ςς: H
.
ςςH I
Read
ςςI M
)
ςςM N
,
ςςN O
CommandType
ςςP [
.
ςς[ \
StoredProcedure
ςς\ k
,
ςςk l
$strςςm ‰
,ςς‰ 
objSqlParameterςς‹ 
)ςς ›
)ςς› 
{
σσ 
List
ττ 
<
ττ 
QuestionData
ττ !
>
ττ! "!
questionContentList
ττ# 6
=
ττ7 8
new
ττ9 <
List
ττ= A
<
ττA B
QuestionData
ττB N
>
ττN O
(
ττO P
)
ττP Q
;
ττQ R
while
υυ 
(
υυ 
objSqlDataReader
υυ '
.
υυ' (
Read
υυ( ,
(
υυ, -
)
υυ- .
)
υυ. /
{
φφ 
QuestionData
χχ   
questionContentObj
χχ! 3
=
χχ4 5
new
χχ6 9
QuestionData
χχ: F
(
χχF G
)
χχG H
;
χχH I 
questionContentObj
ψψ &
.
ψψ& '

ChoiceList
ψψ' 1
=
ψψ2 3
AssessmentDAL
ψψ4 A
.
ψψA B0
"GetChoiceBYQuestionIdForBCSCMapper
ψψB d
(
ψψd e
Convert
ψψe l
.
ψψl m
ToInt32
ψψm t
(
ψψt u

questionId
ψψu 
)ψψ €
)ψψ€ 
;ψψ ‚ 
questionContentObj
ωω &
.
ωω& '
RightChoiceId
ωω' 4
=
ωω5 6
AssessmentDAL
ωω7 D
.
ωωD E(
GetRightChoiceByQuestionId
ωωE _
(
ωω_ `
Convert
ωω` g
.
ωωg h
ToInt32
ωωh o
(
ωωo p

questionId
ωωp z
)
ωωz {
)
ωω{ |
;
ωω| } 
questionContentObj
ϊϊ &
.
ϊϊ& '

Discussion
ϊϊ' 1
=
ϊϊ2 3
Convert
ϊϊ4 ;
.
ϊϊ; <
ToString
ϊϊ< D
(
ϊϊD E
objSqlDataReader
ϊϊE U
[
ϊϊU V
$str
ϊϊV b
]
ϊϊb c
)
ϊϊc d
;
ϊϊd e 
questionContentObj
ϋϋ &
.
ϋϋ& '

References
ϋϋ' 1
=
ϋϋ2 3
Convert
ϋϋ4 ;
.
ϋϋ; <
ToString
ϋϋ< D
(
ϋϋD E
objSqlDataReader
ϋϋE U
[
ϋϋU V
$str
ϋϋV b
]
ϋϋb c
)
ϋϋc d
;
ϋϋd e 
questionContentObj
όό &
.
όό& '
RelatedContents
όό' 6
=
όό7 8
Convert
όό9 @
.
όό@ A
ToString
όόA I
(
όόI J
objSqlDataReader
όόJ Z
[
όόZ [
$str
όό[ l
]
όόl m
)
όόm n
;
όόn o!
questionContentList
ύύ '
.
ύύ' (
Add
ύύ( +
(
ύύ+ , 
questionContentObj
ύύ, >
)
ύύ> ?
;
ύύ? @
}
ώώ 
objSqlDataReader
€€  
.
€€  !
Close
€€! &
(
€€& '
)
€€' (
;
€€( )
return
 !
questionContentList
 *
;
* +
}
‚‚ 
}
ƒƒ 	
public
…… 
static
…… 
List
…… 
<
…… 
SubSpecialityDTO
…… +
>
……+ ,"
GetBCSCSectionNumber
……- A
(
……A B
int
……B E
?
……E F
subSpecialityId
……G V
)
……V W
{
†† 	
SqlParameter
‡‡ 
[
‡‡ 
]
‡‡ 
objSqlParameter
‡‡ *
=
‡‡+ ,
{
 
new
‰‰0 3
SqlParameter
‰‰4 @
(
‰‰@ A
$str
‰‰A R
,
‰‰R S
subSpecialityId
‰‰T c
)
‰‰c d
,
‰‰d e
}
0 1
;
1 2
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$str
m 
, €
objSqlParameter 
) ‘
)‘ ’
{
 
List
 
<
 
SubSpecialityDTO
 %
>
% &!
questionContentList
' :
=
; <
new
= @
List
A E
<
E F
SubSpecialityDTO
F V
>
V W
(
W X
)
X Y
;
Y Z
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
‘‘ 
SubSpecialityDTO
’’ $
qsubSpecObj
’’% 0
=
’’1 2
new
’’3 6
SubSpecialityDTO
’’7 G
(
’’G H
)
’’H I
;
’’I J
qsubSpecObj
““ 
.
““  
BCSCSectionNumber
““  1
=
““2 3
Convert
““4 ;
.
““; <
ToInt32
““< C
(
““C D
objSqlDataReader
““D T
[
““T U
$str
““U h
]
““h i
)
““i j
;
““j k
qsubSpecObj
”” 
.
””  
BCSCSectionTitle
””  0
=
””1 2
Convert
””3 :
.
””: ;
ToString
””; C
(
””C D
objSqlDataReader
””D T
[
””T U
$str
””U g
]
””g h
)
””h i
;
””i j!
questionContentList
•• '
.
••' (
Add
••( +
(
••+ ,
qsubSpecObj
••, 7
)
••7 8
;
••8 9
}
–– 
objSqlDataReader
  
.
  !
Close
! &
(
& '
)
' (
;
( )
return
™™ !
questionContentList
™™ *
;
™™* +
}
 
}
›› 	
public
 
static
 
List
 
<
 

ProgramDTO
 %
>
% &(
GetSubSpecFromSpecialityId
' A
(
A B
int
B E
?
E F
subSpecialityId
G V
)
V W
{
 	
List
 
<
 

ProgramDTO
 
>
 
	topicUser
 &
=
' (
new
) ,
List
- 1
<
1 2

ProgramDTO
2 <
>
< =
(
= >
)
> ?
;
? @
SqlParameter
   
[
   
]
   
objSqlParameter
   *
=
  + ,
{
΅΅ 
new
ΆΆ0 3
SqlParameter
ΆΆ4 @
(
ΆΆ@ A
$str
ΆΆA S
,
ΆΆS T
subSpecialityId
ΆΆU d
)
ΆΆd e
,
ΆΆe f
}
££- .
;
££. /
using
¥¥ 
(
¥¥ 
SqlDataReader
¥¥  
objSqlDataReader
¥¥! 1
=
¥¥2 3
	SqlHelper
¥¥4 =
.
¥¥= >
ExecuteReader
¥¥> K
(
¥¥K L#
SqlConnectionProvider
¦¦ %
.
¦¦% &!
GetConnectionString
¦¦& 9
(
¦¦9 :
DataAccessType
¦¦: H
.
¦¦H I
Read
¦¦I M
)
¦¦M N
,
¦¦N O
CommandType
¦¦P [
.
¦¦[ \
StoredProcedure
¦¦\ k
,
¦¦k l
$str¦¦m “
,¦¦“ ”
objSqlParameter¦¦• ¤
)¦¦¤ ¥
)¦¦¥ ¦
{
§§ 
while
¨¨ 
(
¨¨ 
objSqlDataReader
¨¨ '
.
¨¨' (
Read
¨¨( ,
(
¨¨, -
)
¨¨- .
)
¨¨. /
{
©© 

ProgramDTO
ªª 

objTopicBO
ªª )
=
ªª* +
new
ªª, /

ProgramDTO
ªª0 :
(
ªª: ;
)
ªª; <
;
ªª< =

objTopicBO
«« 
.
«« 
SubspecialtyId
«« -
=
««. /
Convert
««0 7
.
««7 8
ToInt32
««8 ?
(
««? @
objSqlDataReader
««@ P
[
««P Q
$str
««Q a
]
««a b
)
««b c
;
««c d

objTopicBO
¬¬ 
.
¬¬ 
Subspecialty
¬¬ +
=
¬¬, -
Convert
¬¬. 5
.
¬¬5 6
ToString
¬¬6 >
(
¬¬> ?
objSqlDataReader
¬¬? O
[
¬¬O P
$str
¬¬P ^
]
¬¬^ _
)
¬¬_ `
;
¬¬` a
	topicUser
­­ 
.
­­ 
Add
­­ !
(
­­! "

objTopicBO
­­" ,
)
­­, -
;
­­- .
}
®® 
objSqlDataReader
°°  
.
°°  !
Close
°°! &
(
°°& '
)
°°' (
;
°°( )
}
±± 
return
³³ 
	topicUser
³³ 
;
³³ 
}
΄΄ 	
public
¶¶ 
static
¶¶ 
List
¶¶ 
<
¶¶ 

ProgramDTO
¶¶ %
>
¶¶% &
GetTopicByTopicId
¶¶' 8
(
¶¶8 9
int
¶¶9 <
?
¶¶< =
topicId
¶¶> E
)
¶¶E F
{
·· 	
List
ΈΈ 
<
ΈΈ 

ProgramDTO
ΈΈ 
>
ΈΈ 
	topicUser
ΈΈ &
=
ΈΈ' (
new
ΈΈ) ,
List
ΈΈ- 1
<
ΈΈ1 2

ProgramDTO
ΈΈ2 <
>
ΈΈ< =
(
ΈΈ= >
)
ΈΈ> ?
;
ΈΈ? @
SqlParameter
ΉΉ 
[
ΉΉ 
]
ΉΉ 
objSqlParameter
ΉΉ *
=
ΉΉ+ ,
{
ΊΊ 
new
»»0 3
SqlParameter
»»4 @
(
»»@ A
$str
»»A K
,
»»K L
topicId
»»M T
)
»»T U
,
»»U V
}
ΌΌ- .
;
ΌΌ. /
using
ΎΎ 
(
ΎΎ 
SqlDataReader
ΎΎ  
objSqlDataReader
ΎΎ! 1
=
ΎΎ2 3
	SqlHelper
ΎΎ4 =
.
ΎΎ= >
ExecuteReader
ΎΎ> K
(
ΎΎK L#
SqlConnectionProvider
ΏΏ %
.
ΏΏ% &!
GetConnectionString
ΏΏ& 9
(
ΏΏ9 :
DataAccessType
ΏΏ: H
.
ΏΏH I
Read
ΏΏI M
)
ΏΏM N
,
ΏΏN O
CommandType
ΏΏP [
.
ΏΏ[ \
StoredProcedure
ΏΏ\ k
,
ΏΏk l
$strΏΏm „
,ΏΏ„ …
objSqlParameterΏΏ† •
)ΏΏ• –
)ΏΏ– —
{
ΐΐ 
while
ΑΑ 
(
ΑΑ 
objSqlDataReader
ΑΑ '
.
ΑΑ' (
Read
ΑΑ( ,
(
ΑΑ, -
)
ΑΑ- .
)
ΑΑ. /
{
ΒΒ 

ProgramDTO
ΓΓ 

objTopicBO
ΓΓ )
=
ΓΓ* +
new
ΓΓ, /

ProgramDTO
ΓΓ0 :
(
ΓΓ: ;
)
ΓΓ; <
;
ΓΓ< =

objTopicBO
ΔΔ 
.
ΔΔ 
TopicId
ΔΔ &
=
ΔΔ' (
Convert
ΔΔ) 0
.
ΔΔ0 1
ToInt32
ΔΔ1 8
(
ΔΔ8 9
objSqlDataReader
ΔΔ9 I
[
ΔΔI J
$str
ΔΔJ S
]
ΔΔS T
)
ΔΔT U
;
ΔΔU V

objTopicBO
ΕΕ 
.
ΕΕ 
	TopicName
ΕΕ (
=
ΕΕ) *
Convert
ΕΕ+ 2
.
ΕΕ2 3
ToString
ΕΕ3 ;
(
ΕΕ; <
objSqlDataReader
ΕΕ< L
[
ΕΕL M
$str
ΕΕM X
]
ΕΕX Y
)
ΕΕY Z
;
ΕΕZ [
	topicUser
ΖΖ 
.
ΖΖ 
Add
ΖΖ !
(
ΖΖ! "

objTopicBO
ΖΖ" ,
)
ΖΖ, -
;
ΖΖ- .
}
ΗΗ 
objSqlDataReader
ΙΙ  
.
ΙΙ  !
Close
ΙΙ! &
(
ΙΙ& '
)
ΙΙ' (
;
ΙΙ( )
}
ΚΚ 
return
ΜΜ 
	topicUser
ΜΜ 
;
ΜΜ 
}
ΝΝ 	
}
ΞΞ 
}ΟΟ Ώ(
cD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\CMECreditDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
CMECreditDAL $
{ 
public 
static 
List 
< 
CMECreditVM &
>& '
GetCreditDetails( 8
(8 9
UserIdVM9 A
userB F
)F G
{ 	
List 
< 
CMECreditVM 
> 

creditList (
=) *
new+ .
List/ 3
<3 4
CMECreditVM4 ?
>? @
(@ A
)A B
;B C
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA J
,J K
userL P
.P Q
UserIdQ W
)W X
,X Y
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m €
,
€ 
objSqlParameter
‚ ‘
)
‘ ’
)
’ “
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
CMECreditVM 

creditData  *
=+ ,
new- 0
CMECreditVM1 <
(< =
)= >
;> ?
object 
subspecialtyidObj ,
=- .
objSqlDataReader/ ?
[? @
$str@ P
]P Q
;Q R

creditData 
. 
SubSpecialityId .
=/ 0
subspecialtyidObj1 B
isC E
DBNullF L
?M N
$numO P
:Q R
ConvertS Z
.Z [
ToInt32[ b
(b c
objSqlDataReaderc s
[s t
$str	t „
]
„ …
)
… †
;
† ‡
object  
bCSCSectionNumberObj /
=0 1
objSqlDataReader2 B
[B C
$strC V
]V W
;W X

creditData 
. 
BCSCSectionNumber 0
=1 2 
bCSCSectionNumberObj3 G
isH J
DBNullK Q
?R S
$numT U
:V W
ConvertX _
._ `
ToInt32` g
(g h
objSqlDataReaderh x
[x y
$str	y 
]
 
)
 
;
 
object    
subspecialty_nameObj   /
=  0 1
objSqlDataReader  2 B
[  B C
$str  C V
]  V W
;  W X

creditData!! 
.!! 
SubSpecialityName!! 0
=!!1 2 
subspecialty_nameObj!!3 G
is!!H J
DBNull!!K Q
?!!R S
string!!T Z
.!!Z [
Empty!![ `
:!!a b
Convert!!c j
.!!j k
ToString!!k s
(!!s t
objSqlDataReader	!!t „
[
!!„ …
$str
!!… 
]
!! ™
)
!!™ 
;
!! ›
object"" 
attemptedCountObj"" ,
=""- .
objSqlDataReader""/ ?
[""? @
$str""@ P
]""P Q
;""Q R

creditData## 
.## 
AttemptedCount## -
=##. /
attemptedCountObj##0 A
is##B D
DBNull##E K
?##L M
$num##N O
:##P Q
Convert##R Y
.##Y Z
ToInt32##Z a
(##a b
objSqlDataReader##b r
[##r s
$str	##s ƒ
]
##ƒ „
)
##„ …
;
##… †
object$$ 
cMECreditPathObj$$ +
=$$, -
objSqlDataReader$$. >
[$$> ?
$str$$? N
]$$N O
;$$O P

creditData%% 
.%% 
CMECreditPath%% ,
=%%- .
cMECreditPathObj%%/ ?
is%%@ B
DBNull%%C I
?%%J K
string%%L R
.%%R S
Empty%%S X
:%%Y Z
Convert%%[ b
.%%b c
ToString%%c k
(%%k l
objSqlDataReader%%l |
[%%| }
$str	%%} 
]
%% 
)
%% 
;
%% 

creditList&& 
.&& 
Add&& "
(&&" #

creditData&&# -
)&&- .
;&&. /
}'' 
objSqlDataReader))  
.))  !
Close))! &
())& '
)))' (
;))( )
}** 
return,, 

creditList,, 
;,, 
}-- 	
}.. 
}// λ
eD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ExamAttemptDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public		 

static		 
class		 
ExamAttemptDAL		 &
{

 
} 
}  ά
^D:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ExamDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ExamDAL 
{ 
public 
static 
List 
< 
ExamHistoryVM (
>( )
GetExamListView* 9
(9 :
int: =
?= >
userId? E
)E F
{ 	
int 
examID 
= 
$num 
; 
List 
< 
ExamHistoryVM 
> 
examSummaryList  /
=0 1
new2 5
List6 :
<: ;
ExamHistoryVM; H
>H I
(I J
)J K
;K L
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA J
,J K
ConvertL S
.S T
ToInt32T [
([ \
userId\ b
)b c
)c d
,d e
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m 
,
 ‚
objSqlParameter
ƒ ’
)
’ “
)
“ ”
{ 
if 
( 
objSqlDataReader $
.$ %
HasRows% ,
), -
{ 
while 
( 
objSqlDataReader +
.+ ,
Read, 0
(0 1
)1 2
)2 3
{ 
ExamHistoryVM %
examHistory& 1
=2 3
new4 7
ExamHistoryVM8 E
(E F
)F G
;G H
object 
	examIdObj (
=) *
objSqlDataReader+ ;
[; <
$str< D
]D E
;E F
examHistory   #
.  # $
ExamId  $ *
=  + ,
examID  - 3
=  4 5
	examIdObj  6 ?
is  @ B
DBNull  C I
?  J K
$num  L M
:  N O
Convert  P W
.  W X
ToInt32  X _
(  _ `
objSqlDataReader  ` p
[  p q
$str  q y
]  y z
)  z {
;  { |
object!! 
examNameObj!! *
=!!+ ,
objSqlDataReader!!- =
[!!= >
$str!!> H
]!!H I
;!!I J
examHistory"" #
.""# $
ExamName""$ ,
=""- .
examNameObj""/ :
is""; =
DBNull""> D
?""E F
string""G M
.""M N
Empty""N S
:""T U
Convert""V ]
.""] ^
ToString""^ f
(""f g
objSqlDataReader""g w
[""w x
$str	""x ‚
]
""‚ ƒ
)
""ƒ „
;
""„ …
object## 
attemptQuestionObj## 1
=##2 3
objSqlDataReader##4 D
[##D E
$str##E W
]##W X
;##X Y
examHistory$$ #
.$$# $!
AttempedQuestionCount$$$ 9
=$$: ;
attemptQuestionObj$$< N
is$$O Q
DBNull$$R X
?$$Y Z
$num$$[ \
:$$] ^
Convert$$_ f
.$$f g
ToInt32$$g n
($$n o
objSqlDataReader$$o 
[	$$ €
$str
$$€ ’
]
$$’ “
)
$$“ ”
;
$$” •
object%% 
noOfQuestionObj%% .
=%%/ 0
objSqlDataReader%%1 A
[%%A B
$str%%B Q
]%%Q R
;%%R S
examHistory&& #
.&&# $
TotalQuestionCount&&$ 6
=&&7 8
noOfQuestionObj&&9 H
is&&I K
DBNull&&L R
?&&S T
$num&&U V
:&&W X
Convert&&Y `
.&&` a
ToInt32&&a h
(&&h i
objSqlDataReader&&i y
[&&y z
$str	&&z ‰
]
&&‰ 
)
&& ‹
;
&&‹ 
object'' 
examTypeObj'' *
=''+ ,
objSqlDataReader''- =
[''= >
$str''> H
]''H I
;''I J
examHistory(( #
.((# $
ExamType(($ ,
=((- .
examTypeObj((/ :
is((; =
DBNull((> D
?((E F
string((G M
.((M N
Empty((N S
:((T U
Convert((V ]
.((] ^
ToString((^ f
(((f g
objSqlDataReader((g w
[((w x
$str	((x ‚
]
((‚ ƒ
)
((ƒ „
;
((„ …
object)) "
examLastAttemptDateObj)) 5
=))6 7
objSqlDataReader))8 H
[))H I
$str))I ^
]))^ _
;))_ `
examHistory** #
.**# $
LastAttempedDate**$ 4
=**5 6"
examLastAttemptDateObj**7 M
is**N P
DBNull**Q W
?**X Y
string**Z `
.**` a
Empty**a f
:**g h
Convert**i p
.**p q
ToString**q y
(**y z
objSqlDataReader	**z 
[
** ‹
$str
**‹  
]
**  ΅
)
**΅ Ά
;
**Ά £
object++ 
lastQuestionIdObj++ 0
=++1 2
objSqlDataReader++3 C
[++C D
$str++D T
]++T U
;++U V
examHistory,, #
.,,# $"
LastAttempedQuestionId,,$ :
=,,; <
lastQuestionIdObj,,= N
is,,O Q
DBNull,,R X
?,,Y Z
$num,,[ \
:,,] ^
Convert,,_ f
.,,f g
ToInt32,,g n
(,,n o
objSqlDataReader,,o 
[	,, €
$str
,,€ 
]
,, ‘
)
,,‘ ’
;
,,’ “
object-- 
nextQuestionIDObj-- 0
=--1 2
objSqlDataReader--3 C
[--C D
$str--D T
]--T U
;--U V
examHistory.. #
...# $!
NextAttemptQuestionId..$ 9
=..: ;
nextQuestionIDObj..< M
is..N P
DBNull..Q W
?..X Y
$num..Z [
:..\ ]
Convert..^ e
...e f
ToInt32..f m
(..m n
objSqlDataReader..n ~
[..~ 
$str	.. 
]
.. 
)
.. ‘
;
..‘ ’
object// 
examCountObj// +
=//, -
objSqlDataReader//. >
[//> ?
$str//? J
]//J K
;//K L
examHistory00 #
.00# $
	ExamCount00$ -
=00. /
examCountObj000 <
is00= ?
DBNull00@ F
?00G H
$num00I J
:00K L
Convert00M T
.00T U
ToInt3200U \
(00\ ]
objSqlDataReader00] m
[00m n
$str00n y
]00y z
)00z {
;00{ |
object11 
examStartDateObj11 /
=110 1
objSqlDataReader112 B
[11B C
$str11C R
]11R S
;11S T
examHistory22 #
.22# $
ExamStartDate22$ 1
=222 3
examStartDateObj224 D
is22E G
DBNull22H N
?22O P
string22Q W
.22W X
Empty22X ]
:22^ _
Convert22` g
.22g h
ToString22h p
(22p q
objSqlDataReader	22q 
[
22 ‚
$str
22‚ ‘
]
22‘ ’
)
22’ “
;
22“ ”
examSummaryList33 '
.33' (
Add33( +
(33+ ,
examHistory33, 7
)337 8
;338 9
}44 
objSqlDataReader66 $
.66$ %
Close66% *
(66* +
)66+ ,
;66, -
}77 
}88 
return:: 
examSummaryList:: "
;::" #
};; 	
public>> 
static>> 
int>> "
GetExamQuestionDefault>> 0
(>>0 1
int>>1 4
?>>4 5
examID>>6 <
)>>< =
{?? 	
int@@ 
examId@@ 
=@@ 
$num@@ 
;@@ 
SqlParameterAA 
[AA 
]AA 
arrSqlParameterAA *
=AA+ ,
{BB 
newCC 
SqlParameterCC %
(CC% &
$strCC& /
,CC/ 0
ConvertCC1 8
.CC8 9
ToInt32CC9 @
(CC@ A
examIDCCA G
)CCG H
)CCH I
,CCI J
}DD 
;DD 
usingEE 
(EE 
SqlDataReaderEE  
objSqlDataReaderEE! 1
=EE2 3
	SqlHelperEE4 =
.EE= >
ExecuteReaderEE> K
(EEK L!
SqlConnectionProviderFF %
.FF% &
GetConnectionStringFF& 9
(FF9 :
DataAccessTypeFF: H
.FFH I
ReadFFI M
)FFM N
,FFN O
CommandTypeFFP [
.FF[ \
StoredProcedureFF\ k
,FFk l
$str	FFm …
,
FF… †
arrSqlParameter
FF‡ –
)
FF– —
)
FF— 
{GG 
ifHH 
(HH 
objSqlDataReaderHH $
.HH$ %
HasRowsHH% ,
)HH, -
{II 
whileJJ 
(JJ 
objSqlDataReaderJJ +
.JJ+ ,
ReadJJ, 0
(JJ0 1
)JJ1 2
)JJ2 3
{KK 
objectLL 

allExamObjLL )
=LL* +
objSqlDataReaderLL, <
[LL< =
$strLL= I
]LLI J
;LLJ K
examIdMM 
=MM  

allExamObjMM! +
isMM, .
DBNullMM/ 5
?MM6 7
$numMM8 9
:MM: ;
ConvertMM< C
.MMC D
ToInt32MMD K
(MMK L
objSqlDataReaderMML \
[MM\ ]
$strMM] i
]MMi j
)MMj k
;MMk l
}NN 
objSqlDataReaderPP $
.PP$ %
ClosePP% *
(PP* +
)PP+ ,
;PP, -
}QQ 
}RR 
returnTT 
examIdTT 
;TT 
}UU 	
publicWW 
staticWW 
intWW 

CreateExamWW $
(WW$ %
ExamDTOWW% ,
examWW- 1
)WW1 2
{XX 	
SqlParameterYY 
[YY 
]YY 
arrSqlParameterYY *
=YY+ ,
{ZZ 
new[[ 
SqlParameter[[  
([[  !
$str[[! ,
,[[, -
exam[[. 2
.[[2 3
ExamName[[3 ;
)[[; <
,[[< =
new\\ 
SqlParameter\\  
(\\  !
$str\\! 3
,\\3 4
DateTime\\5 =
.\\= >
Now\\> A
)\\A B
,\\B C
new]] 
SqlParameter]]  
(]]  !
$str]]! ,
,]], -
exam]]. 2
.]]2 3
ExamType]]3 ;
)]]; <
,]]< =
new^^ 
SqlParameter^^  
(^^  !
$str^^! ,
,^^, -
exam^^. 2
.^^2 3
ExamMode^^3 ;
)^^; <
,^^< =
new__ 
SqlParameter__  
(__  !
$str__! *
,__* +
exam__, 0
.__0 1
UserId__1 7
)__7 8
,__8 9
new`` 
SqlParameter``  
(``  !
$str``! 1
,``1 2
exam``3 7
.``7 8
NoofQuestions``8 E
)``E F
,``F G
newaa 
SqlParameteraa  
(aa  !
$straa! 0
,aa0 1
examaa2 6
.aa6 7
ExamTimeTypeaa7 C
)aaC D
,aaD E
newbb 
SqlParameterbb  
(bb  !
$strbb! -
,bb- .
exambb/ 3
.bb3 4
	IsDeletedbb4 =
)bb= >
,bb> ?
newcc 
SqlParametercc  
(cc  !
$strcc! 4
,cc4 5
examcc6 :
.cc: ;
ExamAnswerToShowcc; K
)ccK L
,ccL M
newdd 
SqlParameterdd  
(dd  !
$strdd! 2
,dd2 3
examdd4 8
.dd8 9
TypeofQuestiondd9 G
)ddG H
,ddH I
newee 
SqlParameteree  
(ee  !
$stree! 2
,ee2 3
examee4 8
.ee8 9
TypeofCategoryee9 G
)eeG H
,eeH I
newff 
SqlParameterff  
(ff  !
$strff! /
,ff/ 0
examff1 5
.ff5 6
RoundNumberff6 A
)ffA B
,ffB C
newgg 
SqlParametergg  
(gg  !
$strgg! -
,gg- .
examgg/ 3
.gg3 4
	SessionIdgg4 =
)gg= >
,gg> ?
newhh 
SqlParameterhh  
(hh  !
$strhh! -
,hh- .
examhh/ 3
.hh3 4
	StartDatehh4 =
)hh= >
,hh> ?
newii 
SqlParameterii  
(ii  !
$strii! +
,ii+ ,
examii- 1
.ii1 2
EndDateii2 9
)ii9 :
,ii: ;
newjj 
SqlParameterjj  
(jj  !
$strjj! =
,jj= >
examjj? C
.jjC D
EmailIdjjD K
)jjK L
,jjL M
newkk 
SqlParameterkk  
(kk  !
$strkk! 7
,kk7 8
examkk9 =
.kk= >
ShowDetailedAnswerskk> Q
)kkQ R
,kkR S
newll 
SqlParameterll  
(ll  !
$strll! >
,ll> ?
examll@ D
.llD E&
ShowAnsAfterExamCompletionllE _
)ll_ `
,ll` a
newmm 
SqlParametermm  
(mm  !
$strmm! 2
,mm2 3
exammm4 8
.mm8 9
CreatorEmailIdmm9 G
)mmG H
,mmH I
newnn 
SqlParameternn  
(nn  !
$strnn! &
,nn& '
	SqlDbTypenn( 1
.nn1 2
Intnn2 5
)nn5 6
{oo 
	Directionpp 
=pp 
ParameterDirectionpp  2
.pp2 3
Outputpp3 9
}qq 
}rr 
;rr 
	SqlHelpertt 
.tt 
ExecuteNonQuerytt %
(tt% &!
SqlConnectionProvidertt& ;
.tt; <
GetConnectionStringtt< O
(ttO P
DataAccessTypettP ^
.tt^ _
Writett_ d
)ttd e
,tte f
CommandTypettg r
.ttr s
StoredProcedure	tts ‚
,
tt‚ ƒ
$str
tt„ ”
,
tt” •
arrSqlParameter
tt– ¥
)
tt¥ ¦
;
tt¦ §
returnuu 
intuu 
.uu 
Parseuu 
(uu 
arrSqlParameteruu ,
[uu, -
arrSqlParameteruu- <
.uu< =
Lengthuu= C
-uuD E
$numuuF G
]uuG H
.uuH I
ValueuuI N
.uuN O
ToStringuuO W
(uuW X
)uuX Y
)uuY Z
;uuZ [
}vv 	
publicxx 
staticxx 
ExamDTOxx 
GetExamBYIdxx )
(xx) *
intxx* -
?xx- .
examIdxx/ 5
)xx5 6
{yy 	
SqlParameterzz 
[zz 
]zz 
objSqlParameterzz *
=zz+ ,
{{{ 
new||0 3
SqlParameter||4 @
(||@ A
$str||A J
,||J K
Convert||L S
.||S T
ToInt32||T [
(||[ \
examId||\ b
)||b c
)||c d
,||d e
}}}- .
;}}. /
using~~ 
(~~ 
SqlDataReader~~  
objSqlDataReader~~! 1
=~~2 3
	SqlHelper~~4 =
.~~= >
ExecuteReader~~> K
(~~K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$strm ~
,~ 
objSqlParameter
€ 
)
 
)
 ‘
{
€€ 
ExamDTO
 
examObj
 
=
  !
new
" %
ExamDTO
& -
(
- .
)
. /
;
/ 0
while
‚‚ 
(
‚‚ 
objSqlDataReader
‚‚ '
.
‚‚' (
Read
‚‚( ,
(
‚‚, -
)
‚‚- .
)
‚‚. /
{
ƒƒ 
examObj
„„ 
.
„„ 
ExamId
„„ "
=
„„# $
Convert
„„% ,
.
„„, -
ToInt32
„„- 4
(
„„4 5
objSqlDataReader
„„5 E
[
„„E F
$str
„„F N
]
„„N O
)
„„O P
;
„„P Q
examObj
…… 
.
…… 
ExamName
…… $
=
……% &
Convert
……' .
.
……. /
ToString
……/ 7
(
……7 8
objSqlDataReader
……8 H
[
……H I
$str
……I S
]
……S T
)
……T U
;
……U V
examObj
†† 
.
†† 
ExamCreateDate
†† *
=
††+ ,
Convert
††- 4
.
††4 5

ToDateTime
††5 ?
(
††? @
objSqlDataReader
††@ P
[
††P Q
$str
††Q a
]
††a b
)
††b c
;
††c d
examObj
‡‡ 
.
‡‡ 
	IsDeleted
‡‡ %
=
‡‡& '
(
‡‡( )
bool
‡‡) -
)
‡‡- .
(
‡‡. /
objSqlDataReader
‡‡/ ?
[
‡‡? @
$str
‡‡@ K
]
‡‡K L
)
‡‡L M
;
‡‡M N
examObj
 
.
 
ExamType
 $
=
% &
Convert
' .
.
. /
ToInt32
/ 6
(
6 7
objSqlDataReader
7 G
[
G H
$str
H R
]
R S
)
S T
;
T U
examObj
‰‰ 
.
‰‰ 
NoofQuestions
‰‰ )
=
‰‰* +
Convert
‰‰, 3
.
‰‰3 4
ToInt32
‰‰4 ;
(
‰‰; <
objSqlDataReader
‰‰< L
[
‰‰L M
$str
‰‰M \
]
‰‰\ ]
)
‰‰] ^
;
‰‰^ _
examObj
 
.
 
ExamTimeType
 (
=
) *
(
+ ,
bool
, 0
)
0 1
(
1 2
objSqlDataReader
2 B
[
B C
$str
C Q
]
Q R
)
R S
;
S T
examObj
‹‹ 
.
‹‹ 
ExamMode
‹‹ $
=
‹‹% &
(
‹‹' (
bool
‹‹( ,
)
‹‹, -
(
‹‹- .
objSqlDataReader
‹‹. >
[
‹‹> ?
$str
‹‹? I
]
‹‹I J
)
‹‹J K
;
‹‹K L
examObj
 
.
 
ExamAnswerToShow
 ,
=
- .
(
/ 0
bool
0 4
)
4 5
(
5 6
objSqlDataReader
6 F
[
F G
$str
G Y
]
Y Z
)
Z [
;
[ \
examObj
 
.
 
TypeofQuestion
 *
=
+ ,
Convert
- 4
.
4 5
ToString
5 =
(
= >
objSqlDataReader
> N
[
N O
$str
O _
]
_ `
)
` a
;
a b
examObj
 
.
 
TypeofCategory
 *
=
+ ,
Convert
- 4
.
4 5
ToString
5 =
(
= >
objSqlDataReader
> N
[
N O
$str
O _
]
_ `
)
` a
;
a b
examObj
 
.
 
UserId
 "
=
# $
Convert
% ,
.
, -
ToInt32
- 4
(
4 5
objSqlDataReader
5 E
[
E F
$str
F N
]
N O
)
O P
;
P Q
examObj
 
.
 
RoundNumber
 '
=
( )
Convert
* 1
.
1 2
ToInt32
2 9
(
9 :
objSqlDataReader
: J
[
J K
$str
K X
]
X Y
)
Y Z
;
Z [
examObj
‘‘ 
.
‘‘ 
	SessionId
‘‘ %
=
‘‘& '
Convert
‘‘( /
.
‘‘/ 0
ToInt32
‘‘0 7
(
‘‘7 8
objSqlDataReader
‘‘8 H
[
‘‘H I
$str
‘‘I T
]
‘‘T U
)
‘‘U V
;
‘‘V W
examObj
’’ 
.
’’ 
	StartDate
’’ %
=
’’& '
objSqlDataReader
’’( 8
[
’’8 9
$str
’’9 D
]
’’D E
==
’’F H
DBNull
’’I O
.
’’O P
Value
’’P U
?
’’V W
(
’’X Y
DateTime
’’Y a
?
’’a b
)
’’b c
null
’’c g
:
’’h i
Convert
’’j q
.
’’q r

ToDateTime
’’r |
(
’’| }
objSqlDataReader’’} 
[’’ 
$str’’ ™
]’’™ 
)’’ ›
;’’› 
examObj
““ 
.
““ 
EndDate
““ #
=
““$ %
objSqlDataReader
““& 6
[
““6 7
$str
““7 @
]
““@ A
==
““B D
DBNull
““E K
.
““K L
Value
““L Q
?
““R S
(
““T U
DateTime
““U ]
?
““] ^
)
““^ _
null
““_ c
:
““d e
Convert
““f m
.
““m n

ToDateTime
““n x
(
““x y
objSqlDataReader““y ‰
[““‰ 
$str““ “
]“““ ”
)““” •
;““• –
examObj
”” 
.
”” 
EmailId
”” #
=
””$ %
Convert
””& -
.
””- .
ToString
””. 6
(
””6 7
objSqlDataReader
””7 G
[
””G H
$str
””H c
]
””c d
)
””d e
;
””e f
}
•• 
return
—— 
examObj
—— 
;
—— 
}
 
}
™™ 	
public
›› 
static
›› 
List
›› 
<
›› 
ExamQuestionDTO
›› *
>
››* +,
GetAttemptedQuestionDetails_SR
››, J
(
››J K
ExamDTO
››K R
examObj
››S Z
,
››Z [
string
››\ b)
selectedQuestionList_string
››c ~
)
››~ 
{
 	
SqlParameter
 
[
 
]
 
objSqlParameter
 *
=
+ ,
{
 
new
 
SqlParameter
  
(
  !
$str
! *
,
* +
Convert
, 3
.
3 4
ToInt32
4 ;
(
; <
examObj
< C
.
C D
ExamId
D J
)
J K
)
K L
,
L M
new
   
SqlParameter
    
(
    !
$str
  ! /
,
  / 0
Convert
  1 8
.
  8 9
ToInt32
  9 @
(
  @ A
examObj
  A H
.
  H I
RoundNumber
  I T
)
  T U
)
  U V
,
  V W
new
ΆΆ 
SqlParameter
ΆΆ  
(
ΆΆ  !
$str
ΆΆ! 0
,
ΆΆ0 1
Convert
ΆΆ2 9
.
ΆΆ9 :
ToString
ΆΆ: B
(
ΆΆB C
examObj
ΆΆC J
.
ΆΆJ K
TypeofCategory
ΆΆK Y
)
ΆΆY Z
)
ΆΆZ [
,
ΆΆ[ \
}
££ 
;
££ 
using
¥¥ 
(
¥¥ 
SqlDataReader
¥¥  
objSqlDataReader
¥¥! 1
=
¥¥2 3
	SqlHelper
¥¥4 =
.
¥¥= >
ExecuteReader
¥¥> K
(
¥¥K L#
SqlConnectionProvider
¥¥L a
.
¥¥a b!
GetConnectionString
¥¥b u
(
¥¥u v
DataAccessType¥¥v „
.¥¥„ …
Read¥¥… ‰
)¥¥‰ 
,¥¥ ‹
CommandType¥¥ —
.¥¥— 
StoredProcedure¥¥ §
,¥¥§ ¨
$str¥¥© Ν
,¥¥Ν Ξ
objSqlParameter¥¥Ο ή
)¥¥ή ί
)¥¥ί ΰ
{
¦¦ 
List
§§ 
<
§§ 
ExamQuestionDTO
§§ $
>
§§$ %&
attemptedQuestionDetails
§§& >
=
§§? @
new
§§A D
List
§§E I
<
§§I J
ExamQuestionDTO
§§J Y
>
§§Y Z
(
§§Z [
)
§§[ \
;
§§\ ]
while
©© 
(
©© 
objSqlDataReader
©© '
.
©©' (
Read
©©( ,
(
©©, -
)
©©- .
)
©©. /
{
ªª 
ExamQuestionDTO
«« #
examQuestionDTO
««$ 3
=
««4 5
new
««6 9
ExamQuestionDTO
««: I
{
¬¬ 
ExamId
­­ 
=
­­  
Convert
­­! (
.
­­( )
ToInt32
­­) 0
(
­­0 1
objSqlDataReader
­­1 A
[
­­A B
$str
­­B J
]
­­J K
)
­­K L
,
­­L M

QuestionId
®® "
=
®®# $
Convert
®®% ,
.
®®, -
ToInt32
®®- 4
(
®®4 5
objSqlDataReader
®®5 E
[
®®E F
$str
®®F R
]
®®R S
)
®®S T
,
®®T U
}
―― 
;
―― &
attemptedQuestionDetails
°° ,
.
°°, -
Add
°°- 0
(
°°0 1
examQuestionDTO
°°1 @
)
°°@ A
;
°°A B
}
±± 
return
³³ &
attemptedQuestionDetails
³³ /
;
³³/ 0
}
΄΄ 
}
µµ 	
public
·· 
static
·· 
List
·· 
<
·· "
QuestionTypeCountDTO
·· /
>
··/ 0"
GetQuestionTypeCount
··1 E
(
··E F
int
··F I
?
··I J
userId
··K Q
)
··Q R
{
ΈΈ 	
SqlParameter
ΉΉ 
[
ΉΉ 
]
ΉΉ 
arrSqlParameter
ΉΉ *
=
ΉΉ+ ,
{
ΊΊ 
new
»» 
SqlParameter
»» $
(
»»$ %
$str
»»% .
,
»». /
Convert
»»0 7
.
»»7 8
ToInt32
»»8 ?
(
»»? @
userId
»»@ F
)
»»F G
)
»»G H
,
»»H I
}
ΌΌ 
;
ΌΌ 
using
½½ 
(
½½ 
SqlDataReader
½½  
objSqlDataReader
½½! 1
=
½½2 3
	SqlHelper
½½4 =
.
½½= >
ExecuteReader
½½> K
(
½½K L#
SqlConnectionProvider
ΎΎ %
.
ΎΎ% &!
GetConnectionString
ΎΎ& 9
(
ΎΎ9 :
DataAccessType
ΎΎ: H
.
ΎΎH I
Read
ΎΎI M
)
ΎΎM N
,
ΎΎN O
CommandType
ΎΎP [
.
ΎΎ[ \
StoredProcedure
ΎΎ\ k
,
ΎΎk l
$strΎΎm ‚
,ΎΎ‚ ƒ
arrSqlParameterΎΎ„ “
)ΎΎ“ ”
)ΎΎ” •
{
ΏΏ 
List
ΐΐ 
<
ΐΐ "
QuestionTypeCountDTO
ΐΐ )
>
ΐΐ) *#
questionTypeCountList
ΐΐ+ @
=
ΐΐA B
new
ΐΐC F
List
ΐΐG K
<
ΐΐK L"
QuestionTypeCountDTO
ΐΐL `
>
ΐΐ` a
(
ΐΐa b
)
ΐΐb c
;
ΐΐc d
while
ΒΒ 
(
ΒΒ 
objSqlDataReader
ΒΒ '
.
ΒΒ' (
Read
ΒΒ( ,
(
ΒΒ, -
)
ΒΒ- .
)
ΒΒ. /
{
ΓΓ "
QuestionTypeCountDTO
ΔΔ (
questionTypeCount
ΔΔ) :
=
ΔΔ; <
new
ΔΔ= @"
QuestionTypeCountDTO
ΔΔA U
(
ΔΔU V
)
ΔΔV W
;
ΔΔW X
questionTypeCount
ΕΕ %
.
ΕΕ% &

TotalCount
ΕΕ& 0
=
ΕΕ1 2
Convert
ΕΕ3 :
.
ΕΕ: ;
ToInt32
ΕΕ; B
(
ΕΕB C
objSqlDataReader
ΕΕC S
[
ΕΕS T
$str
ΕΕT a
]
ΕΕa b
)
ΕΕb c
;
ΕΕc d
questionTypeCount
ΖΖ %
.
ΖΖ% &
MarkQuestionCount
ΖΖ& 7
=
ΖΖ8 9
Convert
ΖΖ: A
.
ΖΖA B
ToInt32
ΖΖB I
(
ΖΖI J
objSqlDataReader
ΖΖJ Z
[
ΖΖZ [
$str
ΖΖ[ o
]
ΖΖo p
)
ΖΖp q
;
ΖΖq r
questionTypeCount
ΗΗ %
.
ΗΗ% &"
IncorrectAnswerCount
ΗΗ& :
=
ΗΗ; <
Convert
ΗΗ= D
.
ΗΗD E
ToInt32
ΗΗE L
(
ΗΗL M
objSqlDataReader
ΗΗM ]
[
ΗΗ] ^
$str
ΗΗ^ u
]
ΗΗu v
)
ΗΗv w
;
ΗΗw x
questionTypeCount
ΘΘ %
.
ΘΘ% &#
ExamSkipQuestionCount
ΘΘ& ;
=
ΘΘ< =
Convert
ΘΘ> E
.
ΘΘE F
ToInt32
ΘΘF M
(
ΘΘM N
objSqlDataReader
ΘΘN ^
[
ΘΘ^ _
$str
ΘΘ_ w
]
ΘΘw x
)
ΘΘx y
;
ΘΘy z#
questionTypeCountList
ΙΙ )
.
ΙΙ) *
Add
ΙΙ* -
(
ΙΙ- .
questionTypeCount
ΙΙ. ?
)
ΙΙ? @
;
ΙΙ@ A
}
ΚΚ 
objSqlDataReader
ΜΜ  
.
ΜΜ  !
Close
ΜΜ! &
(
ΜΜ& '
)
ΜΜ' (
;
ΜΜ( )
return
ΝΝ #
questionTypeCountList
ΝΝ ,
;
ΝΝ, -
}
ΞΞ 
}
ΟΟ 	
public
ΡΡ 
static
ΡΡ 
List
ΡΡ 
<
ΡΡ 
int
ΡΡ 
>
ΡΡ #
GetExamQuestionIdList
ΡΡ  5
(
ΡΡ5 6
int
ΡΡ6 9
?
ΡΡ9 :
specialityId
ΡΡ; G
,
ΡΡG H
int
ΡΡI L
userId
ΡΡM S
,
ΡΡS T
List
ΡΡU Y
<
ΡΡY Z$
SelectedQuestionTypeId
ΡΡZ p
>
ΡΡp q)
selectedQuestionTypeIdListΡΡr 
,ΡΡ 
intΡΡ ‘
topCountΡΡ’ 
)ΡΡ ›
{
ÒÒ 	
List
ΣΣ 
<
ΣΣ 
int
ΣΣ 
>
ΣΣ 
examQuestionList
ΣΣ &
=
ΣΣ' (
new
ΣΣ) ,
List
ΣΣ- 1
<
ΣΣ1 2
int
ΣΣ2 5
>
ΣΣ5 6
(
ΣΣ6 7
)
ΣΣ7 8
;
ΣΣ8 9
SqlConnection
ΤΤ 

connection
ΤΤ $
=
ΤΤ% &
new
ΤΤ' *
SqlConnection
ΤΤ+ 8
(
ΤΤ8 9#
SqlConnectionProvider
ΤΤ9 N
.
ΤΤN O!
GetConnectionString
ΤΤO b
(
ΤΤb c
DataAccessType
ΤΤc q
.
ΤΤq r
Read
ΤΤr v
)
ΤΤv w
)
ΤΤw x
;
ΤΤx y
string
ΥΥ !
sqlQueryAllquestion
ΥΥ &
=
ΥΥ' (
string
ΥΥ) /
.
ΥΥ/ 0
Empty
ΥΥ0 5
;
ΥΥ5 6
string
ΦΦ  
sqlQueryUnAnswered
ΦΦ %
=
ΦΦ& '
string
ΦΦ( .
.
ΦΦ. /
Empty
ΦΦ/ 4
;
ΦΦ4 5
string
ΧΧ 
sqlQueryIncorrect
ΧΧ $
=
ΧΧ% &
string
ΧΧ' -
.
ΧΧ- .
Empty
ΧΧ. 3
;
ΧΧ3 4
string
ΨΨ 
sqlQueryMarked
ΨΨ !
=
ΨΨ" #
string
ΨΨ$ *
.
ΨΨ* +
Empty
ΨΨ+ 0
;
ΨΨ0 1
if
ΩΩ 
(
ΩΩ 
specialityId
ΩΩ 
!=
ΩΩ 
null
ΩΩ  $
)
ΩΩ$ %
{
ΪΪ !
sqlQueryAllquestion
άά #
+=
άά$ &
$str
άΰ' P
+
ΰΰQ R
specialityId
ΰΰS _
+
ΰΰ` a
$strΰΰb Γ
;ΰΰΓ Δ 
sqlQueryUnAnswered
γγ "
=
γγ# $
$str
γε% x
+
εεy z
userIdεε{ 
+εε‚ ƒ
$strεε„ –
+εε— 
$strζζ( 
+ζζ‹ 
userIdζζ “
+ζζ” •
$strζζ– ¬
+ζζ­ ®
$str
ηη( i
+
ηηj k
$str
θθ( l
+
θθm n
$str
ιι( h
+
ιιi j
$str
κκ( h
+
κκi j
$strλλ( “
+λλ” •
$str
μμ( i
+
μμj k
userId
μμl r
+
μμs t
$strμμu 
+μμ 
$strνν( „
+νν… †
$str
ξξ( D
+
ξξE F
specialityId
ξξG S
+
ξξT U
$strξξV 
;ξξ ‰
sqlQueryIncorrect
ϋϋ !
=
ϋϋ" #
$str
ϋ$ D
+
E F
userId
G M
+
N O
$str
P z
+
{ |
specialityId} ‰
+ ‹
$str λ
;λ μ
sqlQueryMarked
„„ 
=
„„  
$str
„‰! :
+
‰‰; <
userId
‰‰= C
+
‰‰D E
$str
‰‰F p
+
‰‰q r
specialityId
‰‰s 
+‰‰€ 
$str‰‰‚ α
;‰‰α β
}
 
foreach
 
(
 
var
 
item
 
in
  (
selectedQuestionTypeIdList
! ;
)
; <
{
 
if
 
(
 
item
 
.
 
questionTypeId
 '
==
( *
$num
+ ,
)
, -
{
 

connection
 
.
 
Open
 #
(
# $
)
$ %
;
% &

SqlCommand
‘‘ 
cmd
‘‘ "
=
‘‘# $
new
‘‘% (

SqlCommand
‘‘) 3
(
‘‘3 4!
sqlQueryAllquestion
‘‘4 G
,
‘‘G H

connection
‘‘I S
)
‘‘S T
;
‘‘T U
using
’’ 
(
’’ 
SqlDataReader
’’ (
reader
’’) /
=
’’0 1
cmd
’’2 5
.
’’5 6
ExecuteReader
’’6 C
(
’’C D
)
’’D E
)
’’E F
{
““ 
if
”” 
(
”” 
reader
”” "
.
””" #
HasRows
””# *
)
””* +
{
•• 
while
—— !
(
——" #
reader
——# )
.
——) *
Read
——* .
(
——. /
)
——/ 0
)
——0 1
{
 
ExamQuestionId
™™  .
examid
™™/ 5
=
™™6 7
new
™™8 ;
ExamQuestionId
™™< J
(
™™J K
)
™™K L
;
™™L M
object
  &
idObj
' ,
=
- .
reader
/ 5
.
5 6

GetOrdinal
6 @
(
@ A
$str
A E
)
E F
;
F G
examid
››  &
.
››& '
examQuestionId
››' 5
=
››6 7
idObj
››8 =
is
››> @
DBNull
››A G
?
››H I
$num
››J K
:
››L M
reader
››N T
.
››T U
GetInt32
››U ]
(
››] ^
reader
››^ d
.
››d e

GetOrdinal
››e o
(
››o p
$str
››p t
)
››t u
)
››u v
;
››v w
examQuestionList
  0
.
0 1
Add
1 4
(
4 5
examid
5 ;
.
; <
examQuestionId
< J
)
J K
;
K L
}
 
reader
 "
.
" #
Close
# (
(
( )
)
) *
;
* +
}
   
}
΅΅ 

connection
££ 
.
££ 
Close
££ $
(
££$ %
)
££% &
;
££& '
}
¤¤ 
else
¥¥ 
if
¥¥ 
(
¥¥ 
item
¥¥ 
.
¥¥ 
questionTypeId
¥¥ ,
==
¥¥- /
$num
¥¥0 1
)
¥¥1 2
{
¦¦ 

connection
§§ 
.
§§ 
Open
§§ #
(
§§# $
)
§§$ %
;
§§% &

SqlCommand
¨¨ 
cmd
¨¨ "
=
¨¨# $
new
¨¨% (

SqlCommand
¨¨) 3
(
¨¨3 4 
sqlQueryUnAnswered
¨¨4 F
,
¨¨F G

connection
¨¨H R
)
¨¨R S
;
¨¨S T
using
©© 
(
©© 
SqlDataReader
©© (
reader
©©) /
=
©©0 1
cmd
©©2 5
.
©©5 6
ExecuteReader
©©6 C
(
©©C D
)
©©D E
)
©©E F
{
ªª 
if
«« 
(
«« 
reader
«« "
.
««" #
HasRows
««# *
)
««* +
{
¬¬ 
while
­­ !
(
­­" #
reader
­­# )
.
­­) *
Read
­­* .
(
­­. /
)
­­/ 0
)
­­0 1
{
®® 
ExamQuestionId
――  .
examid
――/ 5
=
――6 7
new
――8 ;
ExamQuestionId
――< J
(
――J K
)
――K L
;
――L M
object
°°  &
idObj
°°' ,
=
°°- .
reader
°°/ 5
.
°°5 6

GetOrdinal
°°6 @
(
°°@ A
$str
°°A E
)
°°E F
;
°°F G
examid
±±  &
.
±±& '
examQuestionId
±±' 5
=
±±6 7
idObj
±±8 =
is
±±> @
DBNull
±±A G
?
±±H I
$num
±±J K
:
±±L M
reader
±±N T
.
±±T U
GetInt32
±±U ]
(
±±] ^
reader
±±^ d
.
±±d e

GetOrdinal
±±e o
(
±±o p
$str
±±p t
)
±±t u
)
±±u v
;
±±v w
examQuestionList
²²  0
.
²²0 1
Add
²²1 4
(
²²4 5
examid
²²5 ;
.
²²; <
examQuestionId
²²< J
)
²²J K
;
²²K L
}
³³ 
reader
µµ "
.
µµ" #
Close
µµ# (
(
µµ( )
)
µµ) *
;
µµ* +
}
¶¶ 
}
·· 

connection
ΉΉ 
.
ΉΉ 
Close
ΉΉ $
(
ΉΉ$ %
)
ΉΉ% &
;
ΉΉ& '
}
ΊΊ 
else
»» 
if
»» 
(
»» 
item
»» 
.
»» 
questionTypeId
»» ,
==
»»- /
$num
»»0 1
)
»»1 2
{
ΌΌ 

connection
½½ 
.
½½ 
Open
½½ #
(
½½# $
)
½½$ %
;
½½% &

SqlCommand
ΎΎ 
cmd
ΎΎ "
=
ΎΎ# $
new
ΎΎ% (

SqlCommand
ΎΎ) 3
(
ΎΎ3 4
sqlQueryIncorrect
ΎΎ4 E
,
ΎΎE F

connection
ΎΎG Q
)
ΎΎQ R
;
ΎΎR S
using
ΏΏ 
(
ΏΏ 
SqlDataReader
ΏΏ (
reader
ΏΏ) /
=
ΏΏ0 1
cmd
ΏΏ2 5
.
ΏΏ5 6
ExecuteReader
ΏΏ6 C
(
ΏΏC D
)
ΏΏD E
)
ΏΏE F
{
ΐΐ 
if
ΑΑ 
(
ΑΑ 
reader
ΑΑ "
.
ΑΑ" #
HasRows
ΑΑ# *
)
ΑΑ* +
{
ΒΒ 
while
ΓΓ !
(
ΓΓ" #
reader
ΓΓ# )
.
ΓΓ) *
Read
ΓΓ* .
(
ΓΓ. /
)
ΓΓ/ 0
)
ΓΓ0 1
{
ΔΔ 
ExamQuestionId
ΕΕ  .
examid
ΕΕ/ 5
=
ΕΕ6 7
new
ΕΕ8 ;
ExamQuestionId
ΕΕ< J
(
ΕΕJ K
)
ΕΕK L
;
ΕΕL M
object
ΖΖ  &
idObj
ΖΖ' ,
=
ΖΖ- .
reader
ΖΖ/ 5
.
ΖΖ5 6

GetOrdinal
ΖΖ6 @
(
ΖΖ@ A
$str
ΖΖA E
)
ΖΖE F
;
ΖΖF G
examid
ΗΗ  &
.
ΗΗ& '
examQuestionId
ΗΗ' 5
=
ΗΗ6 7
idObj
ΗΗ8 =
is
ΗΗ> @
DBNull
ΗΗA G
?
ΗΗH I
$num
ΗΗJ K
:
ΗΗL M
reader
ΗΗN T
.
ΗΗT U
GetInt32
ΗΗU ]
(
ΗΗ] ^
reader
ΗΗ^ d
.
ΗΗd e

GetOrdinal
ΗΗe o
(
ΗΗo p
$str
ΗΗp t
)
ΗΗt u
)
ΗΗu v
;
ΗΗv w
examQuestionList
ΘΘ  0
.
ΘΘ0 1
Add
ΘΘ1 4
(
ΘΘ4 5
examid
ΘΘ5 ;
.
ΘΘ; <
examQuestionId
ΘΘ< J
)
ΘΘJ K
;
ΘΘK L
}
ΙΙ 
reader
ΛΛ "
.
ΛΛ" #
Close
ΛΛ# (
(
ΛΛ( )
)
ΛΛ) *
;
ΛΛ* +
}
ΜΜ 
}
ΝΝ 

connection
ΟΟ 
.
ΟΟ 
Close
ΟΟ $
(
ΟΟ$ %
)
ΟΟ% &
;
ΟΟ& '
}
ΠΠ 
else
ΡΡ 
if
ΡΡ 
(
ΡΡ 
item
ΡΡ 
.
ΡΡ 
questionTypeId
ΡΡ ,
==
ΡΡ- /
$num
ΡΡ0 1
)
ΡΡ1 2
{
ÒÒ 

connection
ΣΣ 
.
ΣΣ 
Open
ΣΣ #
(
ΣΣ# $
)
ΣΣ$ %
;
ΣΣ% &

SqlCommand
ΤΤ 
cmd
ΤΤ "
=
ΤΤ# $
new
ΤΤ% (

SqlCommand
ΤΤ) 3
(
ΤΤ3 4
sqlQueryMarked
ΤΤ4 B
,
ΤΤB C

connection
ΤΤD N
)
ΤΤN O
;
ΤΤO P
using
ΥΥ 
(
ΥΥ 
SqlDataReader
ΥΥ (
reader
ΥΥ) /
=
ΥΥ0 1
cmd
ΥΥ2 5
.
ΥΥ5 6
ExecuteReader
ΥΥ6 C
(
ΥΥC D
)
ΥΥD E
)
ΥΥE F
{
ΦΦ 
if
ΧΧ 
(
ΧΧ 
reader
ΧΧ "
.
ΧΧ" #
HasRows
ΧΧ# *
)
ΧΧ* +
{
ΨΨ 
while
ΩΩ !
(
ΩΩ" #
reader
ΩΩ# )
.
ΩΩ) *
Read
ΩΩ* .
(
ΩΩ. /
)
ΩΩ/ 0
)
ΩΩ0 1
{
ΪΪ 
ExamQuestionId
ΫΫ  .
examid
ΫΫ/ 5
=
ΫΫ6 7
new
ΫΫ8 ;
ExamQuestionId
ΫΫ< J
(
ΫΫJ K
)
ΫΫK L
;
ΫΫL M
object
άά  &
idObj
άά' ,
=
άά- .
reader
άά/ 5
.
άά5 6

GetOrdinal
άά6 @
(
άά@ A
$str
άάA E
)
άάE F
;
άάF G
examid
έέ  &
.
έέ& '
examQuestionId
έέ' 5
=
έέ6 7
idObj
έέ8 =
is
έέ> @
DBNull
έέA G
?
έέH I
$num
έέJ K
:
έέL M
reader
έέN T
.
έέT U
GetInt32
έέU ]
(
έέ] ^
reader
έέ^ d
.
έέd e

GetOrdinal
έέe o
(
έέo p
$str
έέp t
)
έέt u
)
έέu v
;
έέv w
examQuestionList
ήή  0
.
ήή0 1
Add
ήή1 4
(
ήή4 5
examid
ήή5 ;
.
ήή; <
examQuestionId
ήή< J
)
ήήJ K
;
ήήK L
}
ίί 
reader
αα "
.
αα" #
Close
αα# (
(
αα( )
)
αα) *
;
αα* +
}
ββ 
}
γγ 

connection
εε 
.
εε 
Close
εε $
(
εε$ %
)
εε% &
;
εε& '
}
ζζ 
}
ηη 
List
ιι 
<
ιι 
int
ιι 
>
ιι  
listOfexamQuestion
ιι (
=
ιι) *
new
ιι+ .
List
ιι/ 3
<
ιι3 4
int
ιι4 7
>
ιι7 8
(
ιι8 9
)
ιι9 :
;
ιι: ; 
listOfexamQuestion
κκ 
=
κκ  
examQuestionList
κκ! 1
.
κκ1 2
Distinct
κκ2 :
(
κκ: ;
)
κκ; <
.
κκ< =
ToList
κκ= C
(
κκC D
)
κκD E
;
κκE F
return
λλ  
listOfexamQuestion
λλ %
;
λλ% &
}
μμ 	
public
ξξ 
static
ξξ 
void
ξξ 

UpdateExam
ξξ %
(
ξξ% &
int
ξξ& )
examId
ξξ* 0
,
ξξ0 1
int
ξξ2 5
userId
ξξ6 <
,
ξξ< =
int
ξξ> A
noofQuestion
ξξB N
,
ξξN O
string
ξξP V

columnName
ξξW a
)
ξξa b
{
οο 	
try
ππ 
{
ρρ 
SqlConnection
ςς 

connection
ςς (
=
ςς) *
new
ςς+ .
SqlConnection
ςς/ <
(
ςς< =#
SqlConnectionProvider
ςς= R
.
ςςR S!
GetConnectionString
ςςS f
(
ςςf g
DataAccessType
ςςg u
.
ςςu v
Read
ςςv z
)
ςςz {
)
ςς{ |
;
ςς| }

connection
σσ 
.
σσ 
Open
σσ 
(
σσ  
)
σσ  !
;
σσ! "
using
ττ 
(
ττ 

SqlCommand
ττ !
cmd
ττ" %
=
ττ& '
new
υυ 

SqlCommand
υυ "
(
υυ" #
$str
φφ *
+
φφ+ ,

columnName
φφ- 7
+
φφ8 9
$str
φφ: J
+
φφK L
$str
χχ B
,
χχB C

connection
χχD N
)
χχN O
)
χχO P
{
ψψ 
cmd
ωω 
.
ωω 

Parameters
ωω "
.
ωω" #
AddWithValue
ωω# /
(
ωω/ 0
$str
ωω0 9
,
ωω9 :
userId
ωω; A
)
ωωA B
;
ωωB C
cmd
ϊϊ 
.
ϊϊ 

Parameters
ϊϊ "
.
ϊϊ" #
AddWithValue
ϊϊ# /
(
ϊϊ/ 0
$str
ϊϊ0 9
,
ϊϊ9 :
examId
ϊϊ; A
)
ϊϊA B
;
ϊϊB C
cmd
ϋϋ 
.
ϋϋ 

Parameters
ϋϋ "
.
ϋϋ" #
AddWithValue
ϋϋ# /
(
ϋϋ/ 0
$str
ϋϋ0 ?
,
ϋϋ? @
noofQuestion
ϋϋA M
)
ϋϋM N
;
ϋϋN O
int
όό 
rows
όό 
=
όό 
cmd
όό "
.
όό" #
ExecuteNonQuery
όό# 2
(
όό2 3
)
όό3 4
;
όό4 5

connection
ύύ 
.
ύύ 
Close
ύύ $
(
ύύ$ %
)
ύύ% &
;
ύύ& '
}
ώώ 
}
ÿÿ 
catch
€€ 
(
€€ 
SqlException
€€ 
ex
€€  "
)
€€" #
{
 
Console
‚‚ 
.
‚‚ 
Write
‚‚ 
(
‚‚ 
ex
‚‚  
.
‚‚  !
Message
‚‚! (
)
‚‚( )
;
‚‚) *
}
ƒƒ 
}
„„ 	
public
†† 
static
†† 
void
†† 

DeleteExam
†† %
(
††% &
int
††& )
examId
††* 0
,
††0 1
int
††2 5
userId
††6 <
)
††< =
{
‡‡ 	
try
 
{
‰‰ 
SqlConnection
 

connection
 (
=
) *
new
+ .
SqlConnection
/ <
(
< =#
SqlConnectionProvider
= R
.
R S!
GetConnectionString
S f
(
f g
DataAccessType
g u
.
u v
Read
v z
)
z {
)
{ |
;
| }

connection
‹‹ 
.
‹‹ 
Open
‹‹ 
(
‹‹  
)
‹‹  !
;
‹‹! "
using
 
(
 

SqlCommand
 !
cmd
" %
=
& '
new
( +

SqlCommand
, 6
(
6 7
$str
7 J
+
K L
$str
M v
,
v w

connectionx ‚
)‚ ƒ
)ƒ „
{
 
cmd
 
.
 

Parameters
 "
.
" #
AddWithValue
# /
(
/ 0
$str
0 9
,
9 :
examId
; A
)
A B
;
B C
cmd
 
.
 

Parameters
 "
.
" #
AddWithValue
# /
(
/ 0
$str
0 9
,
9 :
userId
; A
)
A B
;
B C
int
 
rows
 
=
 
cmd
 "
.
" #
ExecuteNonQuery
# 2
(
2 3
)
3 4
;
4 5

connection
‘‘ 
.
‘‘ 
Close
‘‘ $
(
‘‘$ %
)
‘‘% &
;
‘‘& '
}
’’ 
}
““ 
catch
”” 
(
”” 
SqlException
”” 
ex
””  "
)
””" #
{
•• 
Console
–– 
.
–– 
Write
–– 
(
–– 
ex
––  
.
––  !
Message
––! (
)
––( )
;
––) *
}
—— 
}
 	
public
 
static
 
int
 
GetExamIdBYUserId
 +
(
+ ,
int
, /
userId
0 6
)
6 7
{
›› 	
int
 
examId
 
=
 
$num
 
;
 
SqlConnection
 

connection
 $
=
% &
new
' *
SqlConnection
+ 8
(
8 9#
SqlConnectionProvider
9 N
.
N O!
GetConnectionString
O b
(
b c
DataAccessType
c q
.
q r
Read
r v
)
v w
)
w x
;
x y
string
 !
sqlQueryAllquestion
 &
=
' (
string
) /
.
/ 0
Empty
0 5
;
5 6!
sqlQueryAllquestion
 
=
  !
$str
" T
+
U V
@userId
W ^
;
^ _

connection
   
.
   
Open
   
(
   
)
   
;
   

SqlCommand
΅΅ 
cmd
΅΅ 
=
΅΅ 
new
΅΅  

SqlCommand
΅΅! +
(
΅΅+ ,!
sqlQueryAllquestion
΅΅, ?
,
΅΅? @

connection
΅΅A K
)
΅΅K L
;
΅΅L M
using
ΆΆ 
(
ΆΆ 
SqlDataReader
ΆΆ  
reader
ΆΆ! '
=
ΆΆ( )
cmd
ΆΆ* -
.
ΆΆ- .
ExecuteReader
ΆΆ. ;
(
ΆΆ; <
)
ΆΆ< =
)
ΆΆ= >
{
££ 
if
¤¤ 
(
¤¤ 
reader
¤¤ 
.
¤¤ 
HasRows
¤¤ "
)
¤¤" #
{
¥¥ 
while
§§ 
(
§§ 
reader
§§ !
.
§§! "
Read
§§" &
(
§§& '
)
§§' (
)
§§( )
{
¨¨ 
object
©© 
	objExamId
©© (
=
©©) *
reader
©©+ 1
[
©©1 2
$str
©©2 6
]
©©6 7
;
©©7 8
examId
ªª 
=
ªª  
	objExamId
ªª! *
is
ªª+ -
DBNull
ªª. 4
?
ªª5 6
$num
ªª7 8
:
ªª9 :
reader
ªª; A
.
ªªA B
GetInt32
ªªB J
(
ªªJ K
reader
ªªK Q
.
ªªQ R

GetOrdinal
ªªR \
(
ªª\ ]
$str
ªª] a
)
ªªa b
)
ªªb c
;
ªªc d
}
«« 
}
¬¬ 
}
­­ 

connection
―― 
.
―― 
Close
―― 
(
―― 
)
―― 
;
―― 
return
°° 
examId
°° 
;
°° 
}
±± 	
public
΄΄ 
static
΄΄ 
ExamStatusCountVM
΄΄ ' 
GetExamStatusCount
΄΄( :
(
΄΄: ;
ServiceCallVM
΄΄; H
examService
΄΄I T
)
΄΄T U
{
µµ 	
ExamStatusCountVM
¶¶ 
examStatusCount
¶¶ -
=
¶¶. /
new
¶¶0 3
ExamStatusCountVM
¶¶4 E
(
¶¶E F
)
¶¶F G
;
¶¶G H
SqlParameter
·· 
[
·· 
]
·· 
arrSqlParameter
·· *
=
··+ ,
{
ΈΈ 
new
ΉΉ 
SqlParameter
ΉΉ %
(
ΉΉ% &
$str
ΉΉ& /
,
ΉΉ/ 0
examService
ΉΉ1 <
.
ΉΉ< =
userId
ΉΉ= C
)
ΉΉC D
,
ΉΉD E
}
ΊΊ 
;
ΊΊ 
using
»» 
(
»» 
SqlDataReader
»»  
objSqlDataReader
»»! 1
=
»»2 3
	SqlHelper
»»4 =
.
»»= >
ExecuteReader
»»> K
(
»»K L#
SqlConnectionProvider
ΌΌ %
.
ΌΌ% &!
GetConnectionString
ΌΌ& 9
(
ΌΌ9 :
DataAccessType
ΌΌ: H
.
ΌΌH I
Read
ΌΌI M
)
ΌΌM N
,
ΌΌN O
CommandType
ΌΌP [
.
ΌΌ[ \
StoredProcedure
ΌΌ\ k
,
ΌΌk l
$strΌΌm „
,ΌΌ„ …
arrSqlParameterΌΌ† •
)ΌΌ• –
)ΌΌ– —
{
½½ 
if
ΎΎ 
(
ΎΎ 
objSqlDataReader
ΎΎ $
.
ΎΎ$ %
HasRows
ΎΎ% ,
)
ΎΎ, -
{
ΏΏ 
while
ΐΐ 
(
ΐΐ 
objSqlDataReader
ΐΐ +
.
ΐΐ+ ,
Read
ΐΐ, 0
(
ΐΐ0 1
)
ΐΐ1 2
)
ΐΐ2 3
{
ΑΑ 
object
ΒΒ 

allExamObj
ΒΒ )
=
ΒΒ* +
objSqlDataReader
ΒΒ, <
[
ΒΒ< =
$str
ΒΒ= F
]
ΒΒF G
;
ΒΒG H
examStatusCount
ΓΓ '
.
ΓΓ' (
allExam
ΓΓ( /
=
ΓΓ0 1

allExamObj
ΓΓ2 <
is
ΓΓ= ?
DBNull
ΓΓ@ F
?
ΓΓG H
$num
ΓΓI J
:
ΓΓK L
Convert
ΓΓM T
.
ΓΓT U
ToInt32
ΓΓU \
(
ΓΓ\ ]
objSqlDataReader
ΓΓ] m
[
ΓΓm n
$str
ΓΓn w
]
ΓΓw x
)
ΓΓx y
;
ΓΓy z
object
ΔΔ 
completedObj
ΔΔ +
=
ΔΔ, -
objSqlDataReader
ΔΔ. >
[
ΔΔ> ?
$str
ΔΔ? J
]
ΔΔJ K
;
ΔΔK L
examStatusCount
ΕΕ '
.
ΕΕ' (
	completed
ΕΕ( 1
=
ΕΕ2 3
completedObj
ΕΕ4 @
is
ΕΕA C
DBNull
ΕΕD J
?
ΕΕK L
$num
ΕΕM N
:
ΕΕO P
Convert
ΕΕQ X
.
ΕΕX Y
ToInt32
ΕΕY `
(
ΕΕ` a
objSqlDataReader
ΕΕa q
[
ΕΕq r
$str
ΕΕr }
]
ΕΕ} ~
)
ΕΕ~ 
;ΕΕ €
object
ΖΖ 
inProgressObj
ΖΖ ,
=
ΖΖ- .
objSqlDataReader
ΖΖ/ ?
[
ΖΖ? @
$str
ΖΖ@ L
]
ΖΖL M
;
ΖΖM N
examStatusCount
ΗΗ '
.
ΗΗ' (

inProgress
ΗΗ( 2
=
ΗΗ3 4
inProgressObj
ΗΗ5 B
is
ΗΗC E
DBNull
ΗΗF L
?
ΗΗM N
$num
ΗΗO P
:
ΗΗQ R
Convert
ΗΗS Z
.
ΗΗZ [
ToInt32
ΗΗ[ b
(
ΗΗb c
objSqlDataReader
ΗΗc s
[
ΗΗs t
$strΗΗt €
]ΗΗ€ 
)ΗΗ ‚
;ΗΗ‚ ƒ
object
ΘΘ 
notStartedObj
ΘΘ ,
=
ΘΘ- .
objSqlDataReader
ΘΘ/ ?
[
ΘΘ? @
$str
ΘΘ@ L
]
ΘΘL M
;
ΘΘM N
examStatusCount
ΙΙ '
.
ΙΙ' (

notStarted
ΙΙ( 2
=
ΙΙ3 4
notStartedObj
ΙΙ5 B
is
ΙΙC E
DBNull
ΙΙF L
?
ΙΙM N
$num
ΙΙO P
:
ΙΙQ R
Convert
ΙΙS Z
.
ΙΙZ [
ToInt32
ΙΙ[ b
(
ΙΙb c
objSqlDataReader
ΙΙc s
[
ΙΙs t
$strΙΙt €
]ΙΙ€ 
)ΙΙ ‚
;ΙΙ‚ ƒ
}
ΚΚ 
}
ΛΛ 
}
ΜΜ 
return
ΞΞ 
examStatusCount
ΞΞ "
;
ΞΞ" #
}
ΟΟ 	
public
ÒÒ 
static
ÒÒ 
ExamScoreDetailVM
ÒÒ '
GetExamScore
ÒÒ( 4
(
ÒÒ4 5
ServiceCallVM
ÒÒ5 B
examService
ÒÒC N
)
ÒÒN O
{
ΣΣ 	
ExamScoreDetailVM
ΤΤ 
	examScore
ΤΤ '
=
ΤΤ( )
new
ΤΤ* -
ExamScoreDetailVM
ΤΤ. ?
(
ΤΤ? @
)
ΤΤ@ A
;
ΤΤA B
SqlParameter
ΥΥ 
[
ΥΥ 
]
ΥΥ 
arrSqlParameter
ΥΥ *
=
ΥΥ+ ,
{
ΦΦ 
new
ΧΧ 
SqlParameter
ΧΧ %
(
ΧΧ% &
$str
ΧΧ& /
,
ΧΧ/ 0
examService
ΧΧ1 <
.
ΧΧ< =
userId
ΧΧ= C
)
ΧΧC D
,
ΧΧD E
new
ΨΨ 
SqlParameter
ΨΨ %
(
ΨΨ% &
$str
ΨΨ& 1
,
ΨΨ1 2
examService
ΨΨ3 >
.
ΨΨ> ?
examType
ΨΨ? G
)
ΨΨG H
,
ΨΨH I
}
ΩΩ 
;
ΩΩ 
using
ΪΪ 
(
ΪΪ 
SqlDataReader
ΪΪ  
objSqlDataReader
ΪΪ! 1
=
ΪΪ2 3
	SqlHelper
ΪΪ4 =
.
ΪΪ= >
ExecuteReader
ΪΪ> K
(
ΪΪK L#
SqlConnectionProvider
ΫΫ %
.
ΫΫ% &!
GetConnectionString
ΫΫ& 9
(
ΫΫ9 :
DataAccessType
ΫΫ: H
.
ΫΫH I
Read
ΫΫI M
)
ΫΫM N
,
ΫΫN O
CommandType
ΫΫP [
.
ΫΫ[ \
StoredProcedure
ΫΫ\ k
,
ΫΫk l
$strΫΫm ‡
,ΫΫ‡ 
arrSqlParameterΫΫ‰ 
)ΫΫ ™
)ΫΫ™ 
{
άά 
if
έέ 
(
έέ 
objSqlDataReader
έέ $
.
έέ$ %
HasRows
έέ% ,
)
έέ, -
{
ήή 
while
ίί 
(
ίί 
objSqlDataReader
ίί +
.
ίί+ ,
Read
ίί, 0
(
ίί0 1
)
ίί1 2
)
ίί2 3
{
ΰΰ 
object
αα 
avgScoreObj
αα *
=
αα+ ,
objSqlDataReader
αα- =
[
αα= >
$str
αα> H
]
ααH I
;
ααI J
	examScore
ββ !
.
ββ! "
averageScore
ββ" .
=
ββ/ 0
avgScoreObj
ββ1 <
is
ββ= ?
DBNull
ββ@ F
?
ββG H
$num
ββI J
:
ββK L
Convert
ββM T
.
ββT U
ToInt32
ββU \
(
ββ\ ]
objSqlDataReader
ββ] m
[
ββm n
$str
ββn x
]
ββx y
)
ββy z
;
ββz {
object
γγ "
attempedQuestiondObj
γγ 3
=
γγ4 5
objSqlDataReader
γγ6 F
[
γγF G
$str
γγG Z
]
γγZ [
;
γγ[ \
	examScore
δδ !
.
δδ! "#
totalAttempedQuestion
δδ" 7
=
δδ8 9"
attempedQuestiondObj
δδ: N
is
δδO Q
DBNull
δδR X
?
δδY Z
$num
δδ[ \
:
δδ] ^
Convert
δδ_ f
.
δδf g
ToInt32
δδg n
(
δδn o
objSqlDataReader
δδo 
[δδ €
$strδδ€ “
]δδ“ ”
)δδ” •
;δδ• –
object
εε  
correctQuestionObj
εε 1
=
εε2 3
objSqlDataReader
εε4 D
[
εεD E
$str
εεE V
]
εεV W
;
εεW X
	examScore
ζζ !
.
ζζ! "
correctAnswer
ζζ" /
=
ζζ0 1 
correctQuestionObj
ζζ2 D
is
ζζE G
DBNull
ζζH N
?
ζζO P
$num
ζζQ R
:
ζζS T
Convert
ζζU \
.
ζζ\ ]
ToInt32
ζζ] d
(
ζζd e
objSqlDataReader
ζζe u
[
ζζu v
$strζζv ‡
]ζζ‡ 
)ζζ ‰
;ζζ‰ 
object
ηη "
inCorrectQuestionObj
ηη 3
=
ηη4 5
objSqlDataReader
ηη6 F
[
ηηF G
$str
ηηG Z
]
ηηZ [
;
ηη[ \
	examScore
θθ !
.
θθ! "
inCorrectAnswer
θθ" 1
=
θθ2 3"
inCorrectQuestionObj
θθ4 H
is
θθI K
DBNull
θθL R
?
θθS T
$num
θθU V
:
θθW X
Convert
θθY `
.
θθ` a
ToInt32
θθa h
(
θθh i
objSqlDataReader
θθi y
[
θθy z
$strθθz 
]θθ 
)θθ 
;θθ 
}
ιι 
objSqlDataReader
λλ $
.
λλ$ %
Close
λλ% *
(
λλ* +
)
λλ+ ,
;
λλ, -
}
μμ 
}
νν 
return
οο 
	examScore
οο 
;
οο 
}
ππ 	
public
σσ 
static
σσ 
List
σσ 
<
σσ 
DashboardChartVM
σσ +
>
σσ+ ,&
GetCumulativeChartDetail
σσ- E
(
σσE F
ChartParameterVM
σσF V
chartParameters
σσW f
)
σσf g
{
ττ 	
List
υυ 
<
υυ 
DashboardChartVM
υυ !
>
υυ! "
chartDetailsList
υυ# 3
=
υυ4 5
new
υυ6 9
List
υυ: >
<
υυ> ?
DashboardChartVM
υυ? O
>
υυO P
(
υυP Q
)
υυQ R
;
υυR S
SqlParameter
φφ 
[
φφ 
]
φφ 
arrSqlParameter
φφ *
=
φφ+ ,
{
χχ 
new
ψψ 
SqlParameter
ψψ %
(
ψψ% &
$str
ψψ& /
,
ψψ/ 0
chartParameters
ψψ1 @
.
ψψ@ A
UserId
ψψA G
)
ψψG H
,
ψψH I
new
ωω 
SqlParameter
ωω %
(
ωω% &
$str
ωω& 1
,
ωω1 2
chartParameters
ωω3 B
.
ωωB C
ExamType
ωωC K
)
ωωK L
,
ωωL M
new
ϊϊ 
SqlParameter
ϊϊ %
(
ϊϊ% &
$str
ϊϊ& 1
,
ϊϊ1 2
chartParameters
ϊϊ3 B
.
ϊϊB C
FromDate
ϊϊC K
)
ϊϊK L
,
ϊϊL M
new
ϋϋ 
SqlParameter
ϋϋ %
(
ϋϋ% &
$str
ϋϋ& /
,
ϋϋ/ 0
chartParameters
ϋϋ1 @
.
ϋϋ@ A
ToDate
ϋϋA G
)
ϋϋG H
,
ϋϋH I
}
όό 
;
όό 
using
ύύ 
(
ύύ 
SqlDataReader
ύύ  
objSqlDataReader
ύύ! 1
=
ύύ2 3
	SqlHelper
ύύ4 =
.
ύύ= >
ExecuteReader
ύύ> K
(
ύύK L#
SqlConnectionProvider
ώώ %
.
ώώ% &!
GetConnectionString
ώώ& 9
(
ώώ9 :
DataAccessType
ώώ: H
.
ώώH I
Read
ώώI M
)
ώώM N
,
ώώN O
CommandType
ώώP [
.
ώώ[ \
StoredProcedure
ώώ\ k
,
ώώk l
$strώώm ”
,ώώ” •
arrSqlParameterώώ– ¥
)ώώ¥ ¦
)ώώ¦ §
{
ÿÿ 
if
€€ 
(
€€ 
objSqlDataReader
€€ $
.
€€$ %
HasRows
€€% ,
)
€€, -
{
 
while
‚‚ 
(
‚‚ 
objSqlDataReader
‚‚ +
.
‚‚+ ,
Read
‚‚, 0
(
‚‚0 1
)
‚‚1 2
)
‚‚2 3
{
ƒƒ 
DashboardChartVM
„„ (
chartDetail
„„) 4
=
„„5 6
new
„„7 :
DashboardChartVM
„„; K
(
„„K L
)
„„L M
;
„„M N
object
…… 
subspecialtyIdObj
…… 0
=
……1 2
objSqlDataReader
……3 C
[
……C D
$str
……D T
]
……T U
;
……U V
chartDetail
†† #
.
††# $
SubSpecialityId
††$ 3
=
††4 5
subspecialtyIdObj
††6 G
is
††H J
DBNull
††K Q
?
††R S
$num
††T U
:
††V W
Convert
††X _
.
††_ `
ToInt32
††` g
(
††g h
objSqlDataReader
††h x
[
††x y
$str††y ‰
]††‰ 
)†† ‹
;††‹ 
object
‡‡ !
subspecialtyNameObj
‡‡ 2
=
‡‡3 4
objSqlDataReader
‡‡5 E
[
‡‡E F
$str
‡‡F Y
]
‡‡Y Z
;
‡‡Z [
chartDetail
 #
.
# $
SubSpecialityName
$ 5
=
6 7!
subspecialtyNameObj
8 K
is
L N
DBNull
O U
?
V W
string
X ^
.
^ _
Empty
_ d
:
e f
Convert
g n
.
n o
ToString
o w
(
w x
objSqlDataReaderx 
[ ‰
$str‰ 
] 
) 
; 
object
‰‰ 

correctObj
‰‰ )
=
‰‰* +
objSqlDataReader
‰‰, <
[
‰‰< =
$str
‰‰= F
]
‰‰F G
;
‰‰G H
chartDetail
 #
.
# $
Correct
$ +
=
, -

correctObj
. 8
is
9 ;
DBNull
< B
?
C D
$num
E F
:
G H
Convert
I P
.
P Q
ToInt32
Q X
(
X Y
objSqlDataReader
Y i
[
i j
$str
j s
]
s t
)
t u
;
u v
object
‹‹ 
inCorrectObj
‹‹ +
=
‹‹, -
objSqlDataReader
‹‹. >
[
‹‹> ?
$str
‹‹? J
]
‹‹J K
;
‹‹K L
chartDetail
 #
.
# $
	Incorrect
$ -
=
. /
inCorrectObj
0 <
is
= ?
DBNull
@ F
?
G H
$num
I J
:
K L
Convert
M T
.
T U
ToInt32
U \
(
\ ]
objSqlDataReader
] m
[
m n
$str
n y
]
y z
)
z {
;
{ |
object
 
remainingObj
 +
=
, -
objSqlDataReader
. >
[
> ?
$str
? J
]
J K
;
K L
chartDetail
 #
.
# $
	Remaining
$ -
=
. /
remainingObj
0 <
is
= ?
DBNull
@ F
?
G H
$num
I J
:
K L
Convert
M T
.
T U
ToInt32
U \
(
\ ]
objSqlDataReader
] m
[
m n
$str
n y
]
y z
)
z {
;
{ |
object
 
totalQuestionObj
 /
=
0 1
objSqlDataReader
2 B
[
B C
$str
C R
]
R S
;
S T
chartDetail
 #
.
# $
Total
$ )
=
* +
totalQuestionObj
, <
is
= ?
DBNull
@ F
?
G H
$num
I J
:
K L
Convert
M T
.
T U
ToInt32
U \
(
\ ]
objSqlDataReader
] m
[
m n
$str
n }
]
} ~
)
~ 
; €
chartDetailsList
‘‘ (
.
‘‘( )
Add
‘‘) ,
(
‘‘, -
chartDetail
‘‘- 8
)
‘‘8 9
;
‘‘9 :
}
’’ 
objSqlDataReader
”” $
.
””$ %
Close
””% *
(
””* +
)
””+ ,
;
””, -
}
•• 
}
–– 
return
 
chartDetailsList
 #
;
# $
}
™™ 	
public
 
static
 
List
 
<
 
DashboardChartVM
 +
>
+ , 
GetPeerChartDetail
- ?
(
? @
ChartParameterVM
@ P
chartParameters
Q `
)
` a
{
 	
List
 
<
 
DashboardChartVM
 !
>
! "
chartDetailsList
# 3
=
4 5
new
6 9
List
: >
<
> ?
DashboardChartVM
? O
>
O P
(
P Q
)
Q R
;
R S
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
   
new
΅΅ 
SqlParameter
΅΅ %
(
΅΅% &
$str
΅΅& /
,
΅΅/ 0
chartParameters
΅΅1 @
.
΅΅@ A
UserId
΅΅A G
)
΅΅G H
,
΅΅H I
new
ΆΆ 
SqlParameter
ΆΆ %
(
ΆΆ% &
$str
ΆΆ& 1
,
ΆΆ1 2
chartParameters
ΆΆ3 B
.
ΆΆB C
ExamType
ΆΆC K
)
ΆΆK L
,
ΆΆL M
new
££ 
SqlParameter
££ %
(
££% &
$str
££& 1
,
££1 2
chartParameters
££3 B
.
££B C
FromDate
££C K
)
££K L
,
££L M
new
¤¤ 
SqlParameter
¤¤ %
(
¤¤% &
$str
¤¤& /
,
¤¤/ 0
chartParameters
¤¤1 @
.
¤¤@ A
ToDate
¤¤A G
)
¤¤G H
,
¤¤H I
}
¥¥ 
;
¥¥ 
try
¦¦ 
{
§§ 
using
¨¨ 
(
¨¨ 
SqlDataReader
¨¨ $
objSqlDataReader
¨¨% 5
=
¨¨6 7
	SqlHelper
¨¨8 A
.
¨¨A B
ExecuteReader
¨¨B O
(
¨¨O P#
SqlConnectionProvider
©© )
.
©©) *!
GetConnectionString
©©* =
(
©©= >
DataAccessType
©©> L
.
©©L M
Read
©©M Q
)
©©Q R
,
©©R S
CommandType
©©T _
.
©©_ `
StoredProcedure
©©` o
,
©©o p
$str©©q  
,©©  ΅
arrSqlParameter©©Ά ±
)©©± ²
)©©² ³
{
ªª 
if
«« 
(
«« 
objSqlDataReader
«« (
.
««( )
HasRows
««) 0
)
««0 1
{
¬¬ 
while
­­ 
(
­­ 
objSqlDataReader
­­ /
.
­­/ 0
Read
­­0 4
(
­­4 5
)
­­5 6
)
­­6 7
{
®® 
DashboardChartVM
―― ,
chartDetail
――- 8
=
――9 :
new
――; >
DashboardChartVM
――? O
(
――O P
)
――P Q
;
――Q R
object
°° "
subspecialtyIdObj
°°# 4
=
°°5 6
objSqlDataReader
°°7 G
[
°°G H
$str
°°H X
]
°°X Y
;
°°Y Z
chartDetail
±± '
.
±±' (
SubSpecialityId
±±( 7
=
±±8 9
subspecialtyIdObj
±±: K
is
±±L N
DBNull
±±O U
?
±±V W
$num
±±X Y
:
±±Z [
Convert
±±\ c
.
±±c d
ToInt32
±±d k
(
±±k l
objSqlDataReader
±±l |
[
±±| }
$str±±} 
]±± 
)±± 
;±± 
object
²² "!
subspecialtyNameObj
²²# 6
=
²²7 8
objSqlDataReader
²²9 I
[
²²I J
$str
²²J ]
]
²²] ^
;
²²^ _
chartDetail
³³ '
.
³³' (
SubSpecialityName
³³( 9
=
³³: ;!
subspecialtyNameObj
³³< O
is
³³P R
DBNull
³³S Y
?
³³Z [
string
³³\ b
.
³³b c
Empty
³³c h
:
³³i j
Convert
³³k r
.
³³r s
ToString
³³s {
(
³³{ |
objSqlDataReader³³| 
[³³ 
$str³³  
]³³  ΅
)³³΅ Ά
;³³Ά £
object
΄΄ "
selfScoreObj
΄΄# /
=
΄΄0 1
objSqlDataReader
΄΄2 B
[
΄΄B C
$str
΄΄C I
]
΄΄I J
;
΄΄J K
chartDetail
µµ '
.
µµ' (
	SelfScore
µµ( 1
=
µµ2 3
selfScoreObj
µµ4 @
is
µµA C
DBNull
µµD J
?
µµK L
$num
µµM N
:
µµO P
Convert
µµQ X
.
µµX Y
ToInt32
µµY `
(
µµ` a
objSqlDataReader
µµa q
[
µµq r
$str
µµr x
]
µµx y
)
µµy z
;
µµz {
object
¶¶ "
peerScoreObj
¶¶# /
=
¶¶0 1
objSqlDataReader
¶¶2 B
[
¶¶B C
$str
¶¶C I
]
¶¶I J
;
¶¶J K
chartDetail
·· '
.
··' (
	PeerScore
··( 1
=
··2 3
peerScoreObj
··4 @
is
··A C
DBNull
··D J
?
··K L
$num
··M N
:
··O P
Convert
··Q X
.
··X Y
ToInt32
··Y `
(
··` a
objSqlDataReader
··a q
[
··q r
$str
··r x
]
··x y
)
··y z
;
··z {
chartDetailsList
ΈΈ ,
.
ΈΈ, -
Add
ΈΈ- 0
(
ΈΈ0 1
chartDetail
ΈΈ1 <
)
ΈΈ< =
;
ΈΈ= >
}
ΉΉ 
objSqlDataReader
»» (
.
»»( )
Close
»») .
(
»». /
)
»»/ 0
;
»»0 1
}
ΌΌ 
}
½½ 
}
ΎΎ 
catch
ΏΏ 
(
ΏΏ 
	Exception
ΏΏ 
e
ΏΏ 
)
ΏΏ 
{
ΐΐ 
Console
ΑΑ 
.
ΑΑ 
Write
ΑΑ 
(
ΑΑ 
e
ΑΑ 
.
ΑΑ  
Message
ΑΑ  '
)
ΑΑ' (
;
ΑΑ( )
}
ΒΒ 
return
ΔΔ 
chartDetailsList
ΔΔ #
;
ΔΔ# $
}
ΕΕ 	
public
ΘΘ 
static
ΘΘ 
string
ΘΘ $
CheckExamNameAvailable
ΘΘ 3
(
ΘΘ3 4

ExamNameVM
ΘΘ4 >
examName
ΘΘ? G
)
ΘΘG H
{
ΙΙ 	
string
ΚΚ 
result
ΚΚ 
=
ΚΚ 
string
ΚΚ "
.
ΚΚ" #
Empty
ΚΚ# (
;
ΚΚ( )
SqlParameter
ΛΛ 
[
ΛΛ 
]
ΛΛ 
arrSqlParameter
ΛΛ *
=
ΛΛ+ ,
{
ΜΜ 
new
ΝΝ 
SqlParameter
ΝΝ %
(
ΝΝ% &
$str
ΝΝ& 1
,
ΝΝ1 2
examName
ΝΝ3 ;
.
ΝΝ; <
ExamName
ΝΝ< D
)
ΝΝD E
,
ΝΝE F
new
ΞΞ 
SqlParameter
ΞΞ %
(
ΞΞ% &
$str
ΞΞ& /
,
ΞΞ/ 0
examName
ΞΞ1 9
.
ΞΞ9 :
UserId
ΞΞ: @
)
ΞΞ@ A
,
ΞΞA B
}
ΟΟ 
;
ΟΟ 
using
ΠΠ 
(
ΠΠ 
SqlDataReader
ΠΠ  
objSqlDataReader
ΠΠ! 1
=
ΠΠ2 3
	SqlHelper
ΠΠ4 =
.
ΠΠ= >
ExecuteReader
ΠΠ> K
(
ΠΠK L#
SqlConnectionProvider
ΡΡ %
.
ΡΡ% &!
GetConnectionString
ΡΡ& 9
(
ΡΡ9 :
DataAccessType
ΡΡ: H
.
ΡΡH I
Read
ΡΡI M
)
ΡΡM N
,
ΡΡN O
CommandType
ΡΡP [
.
ΡΡ[ \
StoredProcedure
ΡΡ\ k
,
ΡΡk l
$strΡΡm ‡
,ΡΡ‡ 
arrSqlParameterΡΡ‰ 
)ΡΡ ™
)ΡΡ™ 
{
ÒÒ 
if
ΣΣ 
(
ΣΣ 
objSqlDataReader
ΣΣ $
.
ΣΣ$ %
HasRows
ΣΣ% ,
)
ΣΣ, -
{
ΤΤ 
while
ΥΥ 
(
ΥΥ 
objSqlDataReader
ΥΥ +
.
ΥΥ+ ,
Read
ΥΥ, 0
(
ΥΥ0 1
)
ΥΥ1 2
)
ΥΥ2 3
{
ΦΦ 
object
ΧΧ 
examNameObj
ΧΧ *
=
ΧΧ+ ,
objSqlDataReader
ΧΧ- =
[
ΧΧ= >
$str
ΧΧ> H
]
ΧΧH I
;
ΧΧI J
result
ΨΨ 
=
ΨΨ  
examNameObj
ΨΨ! ,
is
ΨΨ- /
DBNull
ΨΨ0 6
?
ΨΨ7 8
$str
ΨΨ9 D
:
ΨΨE F
$str
ΨΨG V
;
ΨΨV W
}
ΩΩ 
objSqlDataReader
ΫΫ $
.
ΫΫ$ %
Close
ΫΫ% *
(
ΫΫ* +
)
ΫΫ+ ,
;
ΫΫ, -
}
άά 
}
έέ 
return
ίί 
result
ίί 
;
ίί 
}
ΰΰ 	
public
γγ 
static
γγ #
ExamCountOnExamTypeVM
γγ +$
GetExamCountOnExamType
γγ, B
(
γγB C
int
γγC F
userId
γγG M
)
γγM N
{
δδ 	#
ExamCountOnExamTypeVM
εε !
examTypeCount
εε" /
=
εε0 1
new
εε2 5#
ExamCountOnExamTypeVM
εε6 K
(
εεK L
)
εεL M
;
εεM N
SqlParameter
ζζ 
[
ζζ 
]
ζζ 
arrSqlParameter
ζζ *
=
ζζ+ ,
{
ηη 
new
θθ 
SqlParameter
θθ %
(
θθ% &
$str
θθ& /
,
θθ/ 0
userId
θθ1 7
)
θθ7 8
,
θθ8 9
}
ιι 
;
ιι 
using
κκ 
(
κκ 
SqlDataReader
κκ  
objSqlDataReader
κκ! 1
=
κκ2 3
	SqlHelper
κκ4 =
.
κκ= >
ExecuteReader
κκ> K
(
κκK L#
SqlConnectionProvider
λλ %
.
λλ% &!
GetConnectionString
λλ& 9
(
λλ9 :
DataAccessType
λλ: H
.
λλH I
Read
λλI M
)
λλM N
,
λλN O
CommandType
λλP [
.
λλ[ \
StoredProcedure
λλ\ k
,
λλk l
$strλλm ‹
,λλ‹ 
arrSqlParameterλλ 
)λλ 
)λλ 
{
μμ 
if
νν 
(
νν 
objSqlDataReader
νν $
.
νν$ %
HasRows
νν% ,
)
νν, -
{
ξξ 
while
οο 
(
οο 
objSqlDataReader
οο +
.
οο+ ,
Read
οο, 0
(
οο0 1
)
οο1 2
)
οο2 3
{
ππ 
object
ρρ 
customCountObj
ρρ -
=
ρρ. /
objSqlDataReader
ρρ0 @
[
ρρ@ A
$str
ρρA N
]
ρρN O
;
ρρO P
examTypeCount
ςς %
.
ςς% &
CustomModeCount
ςς& 5
=
ςς6 7
customCountObj
ςς8 F
is
ςςG I
DBNull
ςςJ P
?
ςςQ R
$num
ςςS T
:
ςςU V
Convert
ςςW ^
.
ςς^ _
ToInt32
ςς_ f
(
ςςf g
objSqlDataReader
ςςg w
[
ςςw x
$strςςx …
]ςς… †
)ςς† ‡
+ςς ‰
$numςς ‹
;ςς‹ 
object
σσ 
simulatedCountObj
σσ 0
=
σσ1 2
objSqlDataReader
σσ3 C
[
σσC D
$str
σσD T
]
σσT U
;
σσU V
examTypeCount
ττ %
.
ττ% & 
SimulatedModeCount
ττ& 8
=
ττ9 :
simulatedCountObj
ττ; L
is
ττM O
DBNull
ττP V
?
ττW X
$num
ττY Z
:
ττ[ \
(
ττ] ^
Convert
ττ^ e
.
ττe f
ToInt32
ττf m
(
ττm n
objSqlDataReader
ττn ~
[
ττ~ 
$strττ 
]ττ 
)ττ ‘
)ττ‘ ’
+ττ“ ”
$numττ• –
;ττ– —
object
υυ 
quickCountObj
υυ ,
=
υυ- .
objSqlDataReader
υυ/ ?
[
υυ? @
$str
υυ@ L
]
υυL M
;
υυM N
examTypeCount
φφ %
.
φφ% &
QuickModeCount
φφ& 4
=
φφ5 6
quickCountObj
φφ7 D
is
φφE G
DBNull
φφH N
?
φφO P
$num
φφQ R
:
φφS T
(
φφU V
Convert
φφV ]
.
φφ] ^
ToInt32
φφ^ e
(
φφe f
objSqlDataReader
φφf v
[
φφv w
$strφφw ƒ
]φφƒ „
)φφ„ …
)φφ… †
+φφ‡ 
$numφφ‰ 
;φφ ‹
object
χχ 
sharedCountObj
χχ -
=
χχ. /
objSqlDataReader
χχ0 @
[
χχ@ A
$str
χχA N
]
χχN O
;
χχO P
examTypeCount
ψψ %
.
ψψ% &
SharedModeCount
ψψ& 5
=
ψψ6 7
sharedCountObj
ψψ8 F
is
ψψG I
DBNull
ψψJ P
?
ψψQ R
$num
ψψS T
:
ψψU V
(
ψψW X
Convert
ψψX _
.
ψψ_ `
ToInt32
ψψ` g
(
ψψg h
objSqlDataReader
ψψh x
[
ψψx y
$strψψy †
]ψψ† ‡
)ψψ‡ 
)ψψ ‰
+ψψ ‹
$numψψ 
;ψψ 
}
ωω 
objSqlDataReader
ϋϋ $
.
ϋϋ$ %
Close
ϋϋ% *
(
ϋϋ* +
)
ϋϋ+ ,
;
ϋϋ, -
}
όό 
}
ύύ 
return
ÿÿ 
examTypeCount
ÿÿ  
;
ÿÿ  !
}
€€ 	
public
ƒƒ 
static
ƒƒ 
List
ƒƒ 
<
ƒƒ 
int
ƒƒ 
>
ƒƒ *
GetSimulatedExamQuestionList
ƒƒ  <
(
ƒƒ< =
int
ƒƒ= @ 
totalInputQuestion
ƒƒA S
)
ƒƒS T
{
„„ 	
List
…… 
<
…… 
int
…… 
>
…… 
questionList
…… "
=
……# $
new
……% (
List
……) -
<
……- .
int
……. 1
>
……1 2
(
……2 3
)
……3 4
;
……4 5#
ExamCountOnExamTypeVM
†† !
examTypeCount
††" /
=
††0 1
new
††2 5#
ExamCountOnExamTypeVM
††6 K
(
††K L
)
††L M
;
††M N
SqlParameter
‡‡ 
[
‡‡ 
]
‡‡ 
arrSqlParameter
‡‡ *
=
‡‡+ ,
{
 
new
‰‰ 
SqlParameter
‰‰ %
(
‰‰% &
$str
‰‰& ;
,
‰‰; < 
totalInputQuestion
‰‰= O
)
‰‰O P
,
‰‰P Q
}
 
;
 
using
‹‹ 
(
‹‹ 
SqlDataReader
‹‹  
objSqlDataReader
‹‹! 1
=
‹‹2 3
	SqlHelper
‹‹4 =
.
‹‹= >
ExecuteReader
‹‹> K
(
‹‹K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm 
, 
arrSqlParameter‘  
)  ΅
)΅ Ά
{
 
if
 
(
 
objSqlDataReader
 $
.
$ %
HasRows
% ,
)
, -
{
 
while
 
(
 
objSqlDataReader
 +
.
+ ,
Read
, 0
(
0 1
)
1 2
)
2 3
{
‘‘ 
int
’’ 

questionId
’’ &
=
’’' (
$num
’’) *
;
’’* +
object
““ 
customCountObj
““ -
=
““. /
objSqlDataReader
““0 @
[
““@ A
$str
““A M
]
““M N
;
““N O

questionId
”” "
=
””# $
customCountObj
””% 3
is
””4 6
DBNull
””7 =
?
””> ?
$num
””@ A
:
””B C
Convert
””D K
.
””K L
ToInt32
””L S
(
””S T
objSqlDataReader
””T d
[
””d e
$str
””e q
]
””q r
)
””r s
;
””s t
questionList
•• $
.
••$ %
Add
••% (
(
••( )

questionId
••) 3
)
••3 4
;
••4 5
}
–– 
objSqlDataReader
 $
.
$ %
Close
% *
(
* +
)
+ ,
;
, -
}
™™ 
}
 
return
 
questionList
 
;
  
}
 	
public
   
static
   
int
   "
GetUserStatusIsFirst
   .
(
  . /
ServiceCallVM
  / <
userService
  = H
)
  H I
{
΅΅ 	
int
ΆΆ 

isLogfirst
ΆΆ 
=
ΆΆ 
$num
ΆΆ 
;
ΆΆ 
SqlParameter
££ 
[
££ 
]
££ 
arrSqlParameter
££ *
=
££+ ,
{
¤¤ 
new
¥¥ 
SqlParameter
¥¥ %
(
¥¥% &
$str
¥¥& /
,
¥¥/ 0
userService
¥¥1 <
.
¥¥< =
userId
¥¥= C
)
¥¥C D
,
¥¥D E
}
¦¦ 
;
¦¦ 
using
§§ 
(
§§ 
SqlDataReader
§§  
objSqlDataReader
§§! 1
=
§§2 3
	SqlHelper
§§4 =
.
§§= >
ExecuteReader
§§> K
(
§§K L#
SqlConnectionProvider
¨¨ %
.
¨¨% &!
GetConnectionString
¨¨& 9
(
¨¨9 :
DataAccessType
¨¨: H
.
¨¨H I
Read
¨¨I M
)
¨¨M N
,
¨¨N O
CommandType
¨¨P [
.
¨¨[ \
StoredProcedure
¨¨\ k
,
¨¨k l
$str¨¨m 
,¨¨ ‚
arrSqlParameter¨¨ƒ ’
)¨¨’ “
)¨¨“ ”
{
©© 
if
ªª 
(
ªª 
objSqlDataReader
ªª $
.
ªª$ %
HasRows
ªª% ,
)
ªª, -
{
«« 
while
¬¬ 
(
¬¬ 
objSqlDataReader
¬¬ +
.
¬¬+ ,
Read
¬¬, 0
(
¬¬0 1
)
¬¬1 2
)
¬¬2 3
{
­­ 
object
®® 
isLogFirstObj
®® ,
=
®®- .
objSqlDataReader
®®/ ?
[
®®? @
$str
®®@ I
]
®®I J
;
®®J K

isLogfirst
―― "
=
――# $
isLogFirstObj
――% 2
is
――3 5
DBNull
――6 <
?
――= >
$num
――? @
:
――A B
Convert
――C J
.
――J K
ToInt32
――K R
(
――R S
objSqlDataReader
――S c
[
――c d
$str
――d m
]
――m n
)
――n o
;
――o p
}
°° 
objSqlDataReader
²² $
.
²²$ %
Close
²²% *
(
²²* +
)
²²+ ,
;
²², -
}
³³ 
}
΄΄ 
return
¶¶ 

isLogfirst
¶¶ 
;
¶¶ 
}
·· 	
public
ΊΊ 
static
ΊΊ 
void
ΊΊ %
UpdateUserStatusIsFirst
ΊΊ 2
(
ΊΊ2 3
ServiceCallVM
ΊΊ3 @
userService
ΊΊA L
)
ΊΊL M
{
»» 	
SqlParameter
ΌΌ 
[
ΌΌ 
]
ΌΌ 
arrSqlParameter
ΌΌ *
=
ΌΌ+ ,
{
½½ 
new
ΎΎ 
SqlParameter
ΎΎ $
(
ΎΎ$ %
$str
ΎΎ% .
,
ΎΎ. /
userService
ΎΎ0 ;
.
ΎΎ; <
userId
ΎΎ< B
)
ΎΎB C
,
ΎΎC D
}
ΏΏ 
;
ΏΏ 
	SqlHelper
ΐΐ 
.
ΐΐ 
ExecuteNonQuery
ΐΐ %
(
ΐΐ% &#
SqlConnectionProvider
ΐΐ& ;
.
ΐΐ; <!
GetConnectionString
ΐΐ< O
(
ΐΐO P
DataAccessType
ΐΐP ^
.
ΐΐ^ _
Write
ΐΐ_ d
)
ΐΐd e
,
ΐΐe f
CommandType
ΐΐg r
.
ΐΐr s
StoredProcedureΐΐs ‚
,ΐΐ‚ ƒ
$strΐΐ„ ›
,ΐΐ› 
arrSqlParameterΐΐ ¬
)ΐΐ¬ ­
;ΐΐ­ ®
}
ΑΑ 	
public
ΔΔ 
static
ΔΔ $
QuestionCountOnSection
ΔΔ ,+
GetQuestionTypeCountBySection
ΔΔ- J
(
ΔΔJ K$
QuestionCountOnSection
ΔΔK a
sectionValue
ΔΔb n
)
ΔΔn o
{
ΕΕ 	$
QuestionCountOnSection
ΖΖ "
qustionCount
ΖΖ# /
=
ΖΖ0 1
new
ΖΖ2 5$
QuestionCountOnSection
ΖΖ6 L
(
ΖΖL M
)
ΖΖM N
;
ΖΖN O
SqlParameter
ΗΗ 
[
ΗΗ 
]
ΗΗ 
arrSqlParameter
ΗΗ *
=
ΗΗ+ ,
{
ΘΘ 
new
ΙΙ 
SqlParameter
ΙΙ %
(
ΙΙ% &
$str
ΙΙ& /
,
ΙΙ/ 0
Convert
ΙΙ1 8
.
ΙΙ8 9
ToInt32
ΙΙ9 @
(
ΙΙ@ A
sectionValue
ΙΙA M
.
ΙΙM N
UserId
ΙΙN T
)
ΙΙT U
)
ΙΙU V
,
ΙΙV W
new
ΚΚ 
SqlParameter
ΚΚ %
(
ΚΚ% &
$str
ΚΚ& /
,
ΚΚ/ 0
Convert
ΚΚ1 8
.
ΚΚ8 9
ToString
ΚΚ9 A
(
ΚΚA B
sectionValue
ΚΚB N
.
ΚΚN O
	SectionId
ΚΚO X
)
ΚΚX Y
)
ΚΚY Z
,
ΚΚZ [
}
ΛΛ 
;
ΛΛ 
using
ΜΜ 
(
ΜΜ 
SqlDataReader
ΜΜ  
objSqlDataReader
ΜΜ! 1
=
ΜΜ2 3
	SqlHelper
ΜΜ4 =
.
ΜΜ= >
ExecuteReader
ΜΜ> K
(
ΜΜK L#
SqlConnectionProvider
ΝΝ %
.
ΝΝ% &!
GetConnectionString
ΝΝ& 9
(
ΝΝ9 :
DataAccessType
ΝΝ: H
.
ΝΝH I
Read
ΝΝI M
)
ΝΝM N
,
ΝΝN O
CommandType
ΝΝP [
.
ΝΝ[ \
StoredProcedure
ΝΝ\ k
,
ΝΝk l
$strΝΝm –
,ΝΝ– —
arrSqlParameterΝΝ §
)ΝΝ§ ¨
)ΝΝ¨ ©
{
ΞΞ 
if
ΟΟ 
(
ΟΟ 
objSqlDataReader
ΟΟ $
.
ΟΟ$ %
HasRows
ΟΟ% ,
)
ΟΟ, -
{
ΠΠ 
while
ΡΡ 
(
ΡΡ 
objSqlDataReader
ΡΡ +
.
ΡΡ+ ,
Read
ΡΡ, 0
(
ΡΡ0 1
)
ΡΡ1 2
)
ΡΡ2 3
{
ÒÒ 
object
ΣΣ 
total_questionObj
ΣΣ 0
=
ΣΣ1 2
objSqlDataReader
ΣΣ3 C
[
ΣΣC D
$str
ΣΣD T
]
ΣΣT U
;
ΣΣU V
qustionCount
ΤΤ $
.
ΤΤ$ %

TotalCount
ΤΤ% /
=
ΤΤ0 1
total_questionObj
ΤΤ2 C
is
ΤΤD F
DBNull
ΤΤG M
?
ΤΤN O
$num
ΤΤP Q
:
ΤΤR S
Convert
ΤΤT [
.
ΤΤ[ \
ToInt32
ΤΤ\ c
(
ΤΤc d
objSqlDataReader
ΤΤd t
[
ΤΤt u
$strΤΤu …
]ΤΤ… †
)ΤΤ† ‡
;ΤΤ‡ 
object
ΦΦ 
skip_questionObj
ΦΦ /
=
ΦΦ0 1
objSqlDataReader
ΦΦ2 B
[
ΦΦB C
$str
ΦΦC R
]
ΦΦR S
;
ΦΦS T
qustionCount
ΧΧ $
.
ΧΧ$ %
	SkipCount
ΧΧ% .
=
ΧΧ/ 0
skip_questionObj
ΧΧ1 A
is
ΧΧB D
DBNull
ΧΧE K
?
ΧΧL M
$num
ΧΧN O
:
ΧΧP Q
Convert
ΧΧR Y
.
ΧΧY Z
ToInt32
ΧΧZ a
(
ΧΧa b
objSqlDataReader
ΧΧb r
[
ΧΧr s
$strΧΧs ‚
]ΧΧ‚ ƒ
)ΧΧƒ „
;ΧΧ„ …
object
ΩΩ &
incorrectAsnwerCountsObj
ΩΩ 7
=
ΩΩ8 9
objSqlDataReader
ΩΩ: J
[
ΩΩJ K
$str
ΩΩK b
]
ΩΩb c
;
ΩΩc d
qustionCount
ΪΪ $
.
ΪΪ$ %
InCorrectCount
ΪΪ% 3
=
ΪΪ4 5&
incorrectAsnwerCountsObj
ΪΪ6 N
is
ΪΪO Q
DBNull
ΪΪR X
?
ΪΪY Z
$num
ΪΪ[ \
:
ΪΪ] ^
Convert
ΪΪ_ f
.
ΪΪf g
ToInt32
ΪΪg n
(
ΪΪn o
objSqlDataReader
ΪΪo 
[ΪΪ €
$strΪΪ€ —
]ΪΪ— 
)ΪΪ ™
;ΪΪ™ 
object
άά #
markQuestionCountsObj
άά 4
=
άά5 6
objSqlDataReader
άά7 G
[
άάG H
$str
άάH \
]
άά\ ]
;
άά] ^
qustionCount
έέ $
.
έέ$ %
	MarkCount
έέ% .
=
έέ/ 0#
markQuestionCountsObj
έέ1 F
is
έέG I
DBNull
έέJ P
?
έέQ R
$num
έέS T
:
έέU V
Convert
έέW ^
.
έέ^ _
ToInt32
έέ_ f
(
έέf g
objSqlDataReader
έέg w
[
έέw x
$strέέx 
]έέ 
)έέ 
;έέ 
}
ήή 
objSqlDataReader
ΰΰ $
.
ΰΰ$ %
Close
ΰΰ% *
(
ΰΰ* +
)
ΰΰ+ ,
;
ΰΰ, -
}
αα 
}
ββ 
return
δδ 
qustionCount
δδ 
;
δδ  
}
εε 	
public
θθ 
static
θθ 
string
θθ  
GetUserOptInStatus
θθ /
(
θθ/ 0
ServiceCallVM
θθ0 =
userService
θθ> I
)
θθI J
{
ιι 	
string
κκ 
optInStatus
κκ 
=
κκ  
null
κκ! %
;
κκ% &
SqlParameter
λλ 
[
λλ 
]
λλ 
arrSqlParameter
λλ *
=
λλ+ ,
{
μμ 
new
νν 
SqlParameter
νν %
(
νν% &
$str
νν& /
,
νν/ 0
userService
νν1 <
.
νν< =
userId
νν= C
)
ννC D
,
ννD E
}
ξξ 
;
ξξ 
using
οο 
(
οο 
SqlDataReader
οο  
objSqlDataReader
οο! 1
=
οο2 3
	SqlHelper
οο4 =
.
οο= >
ExecuteReader
οο> K
(
οοK L#
SqlConnectionProvider
ππ %
.
ππ% &!
GetConnectionString
ππ& 9
(
ππ9 :
DataAccessType
ππ: H
.
ππH I
Read
ππI M
)
ππM N
,
ππN O
CommandType
ππP [
.
ππ[ \
StoredProcedure
ππ\ k
,
ππk l
$strππm 
,ππ ‚
arrSqlParameterππƒ ’
)ππ’ “
)ππ“ ”
{
ρρ 
if
ςς 
(
ςς 
objSqlDataReader
ςς $
.
ςς$ %
HasRows
ςς% ,
)
ςς, -
{
σσ 
while
ττ 
(
ττ 
objSqlDataReader
ττ +
.
ττ+ ,
Read
ττ, 0
(
ττ0 1
)
ττ1 2
)
ττ2 3
{
υυ 
object
φφ 
isLogFirstObj
φφ ,
=
φφ- .
objSqlDataReader
φφ/ ?
[
φφ? @
$str
φφ@ G
]
φφG H
;
φφH I
optInStatus
χχ #
=
χχ$ %
isLogFirstObj
χχ& 3
is
χχ4 6
DBNull
χχ7 =
?
χχ> ?
null
χχ@ D
:
χχE F
Convert
χχG N
.
χχN O
ToString
χχO W
(
χχW X
objSqlDataReader
χχX h
[
χχh i
$str
χχi p
]
χχp q
)
χχq r
;
χχr s
}
ψψ 
objSqlDataReader
ϊϊ $
.
ϊϊ$ %
Close
ϊϊ% *
(
ϊϊ* +
)
ϊϊ+ ,
;
ϊϊ, -
}
ϋϋ 
}
όό 
return
ώώ 
optInStatus
ώώ 
;
ώώ 
}
ÿÿ 	
public
‚‚ 
static
‚‚ 
int
‚‚ 
UpdateUserOptIn
‚‚ )
(
‚‚) *
ServiceCallVM
‚‚* 7
userService
‚‚8 C
)
‚‚C D
{
ƒƒ 	
SqlParameter
„„ 
[
„„ 
]
„„ 
arrSqlParameter
„„ *
=
„„+ ,
{
…… 
new
†† 
SqlParameter
†† $
(
††$ %
$str
††% .
,
††. /
userService
††0 ;
.
††; <
userId
††< B
)
††B C
,
††C D
new
‡‡ 
SqlParameter
‡‡ $
(
‡‡$ %
$str
‡‡% -
,
‡‡- .
userService
‡‡/ :
.
‡‡: ;
OptIn
‡‡; @
)
‡‡@ A
,
‡‡A B
}
 
;
 
int
‰‰ 
rows
‰‰ 
=
‰‰ 
	SqlHelper
‰‰  
.
‰‰  !
ExecuteNonQuery
‰‰! 0
(
‰‰0 1#
SqlConnectionProvider
‰‰1 F
.
‰‰F G!
GetConnectionString
‰‰G Z
(
‰‰Z [
DataAccessType
‰‰[ i
.
‰‰i j
Write
‰‰j o
)
‰‰o p
,
‰‰p q
CommandType
‰‰r }
.
‰‰} ~
StoredProcedure‰‰~ 
,‰‰ 
$str‰‰ ¤
,‰‰¤ ¥
arrSqlParameter‰‰¦ µ
)‰‰µ ¶
;‰‰¶ ·
return
 
rows
 
;
 
}
‹‹ 	
}
 
} ΄Έ
eD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ExamHistoryDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
ExamHistoryDAL 
{ 
public 
static 
List 
< 
ExamHistoryDTO )
>) *
ExamHistoryDetails+ =
(= >
ExamHistoryDTO> L
examhistoryM X
)X Y
{ 	
List 
< 
ExamHistoryDTO 
>  
examHistoryList! 0
=1 2
new3 6
List7 ;
<; <
ExamHistoryDTO< J
>J K
(K L
)L M
;M N
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new 
SqlParameter  
(  !
$str! *
,* +
examhistory, 7
.7 8
UserId8 >
)> ?
,? @
new 
SqlParameter  
(  !
$str! .
,. /
examhistory0 ;
.; <

ExamStatus< F
)F G
,G H
} 
; 
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m 
,
 ‚
objSqlParameter
ƒ ’
)
’ “
)
“ ”
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
ExamHistoryDTO "
objExamListBO# 0
=1 2
new3 6
ExamHistoryDTO7 E
(E F
)F G
;G H
object   
	examIdObj   $
=  % &
objSqlDataReader  ' 7
[  7 8
$str  8 @
]  @ A
;  A B
objExamListBO!! !
.!!! "
ExamId!!" (
=!!) *
	examIdObj!!+ 4
is!!5 7
DBNull!!8 >
?!!? @
$num!!A B
:!!C D
Convert!!E L
.!!L M
ToInt32!!M T
(!!T U
objSqlDataReader!!U e
[!!e f
$str!!f n
]!!n o
)!!o p
;!!p q
object"" 
examNameObj"" &
=""' (
objSqlDataReader"") 9
[""9 :
$str"": D
]""D E
;""E F
objExamListBO## !
.##! "
ExamName##" *
=##+ ,
examNameObj##- 8
is##9 ;
DBNull##< B
?##C D
null##E I
:##J K
Convert##L S
.##S T
ToString##T \
(##\ ]
objSqlDataReader##] m
[##m n
$str##n x
]##x y
)##y z
;##z {
object$$ 
examTypeObj$$ &
=$$' (
objSqlDataReader$$) 9
[$$9 :
$str$$: D
]$$D E
;$$E F
objExamListBO%% !
.%%! "
ExamType%%" *
=%%+ ,
examTypeObj%%- 8
is%%9 ;
DBNull%%< B
?%%C D
null%%E I
:%%J K
Convert%%L S
.%%S T
ToString%%T \
(%%\ ]
objSqlDataReader%%] m
[%%m n
$str%%n x
]%%x y
)%%y z
;%%z {
object&& 
questionAttemptObj&& -
=&&. /
objSqlDataReader&&0 @
[&&@ A
$str&&A R
]&&R S
;&&S T
objExamListBO'' !
.''! "
QuestionAttempt''" 1
=''2 3
questionAttemptObj''4 F
is''G I
DBNull''J P
?''Q R
$num''S T
:''U V
Convert''W ^
.''^ _
ToInt32''_ f
(''f g
objSqlDataReader''g w
[''w x
$str	''x ‰
]
''‰ 
)
'' ‹
;
''‹ 
object(( 
noofQuestionsObj(( +
=((, -
objSqlDataReader((. >
[((> ?
$str((? N
]((N O
;((O P
objExamListBO)) !
.))! "
NoofQuestions))" /
=))0 1
noofQuestionsObj))2 B
is))C E
DBNull))F L
?))M N
$num))O P
:))Q R
Convert))S Z
.))Z [
ToInt32))[ b
())b c
objSqlDataReader))c s
[))s t
$str	))t ƒ
]
))ƒ „
)
))„ …
;
))… †
object** 
scoreObj** #
=**$ %
objSqlDataReader**& 6
[**6 7
$str**7 >
]**> ?
;**? @
objExamListBO++ !
.++! "
Score++" '
=++( )
scoreObj++* 2
is++3 5
DBNull++6 <
?++= >
$num++? @
:++A B
Convert++C J
.++J K
ToInt32++K R
(++R S
objSqlDataReader++S c
[++c d
$str++d k
]++k l
)++l m
;++m n
object,, "
examLastAttemptDateObj,, 1
=,,2 3
objSqlDataReader,,4 D
[,,D E
$str,,E Z
],,Z [
;,,[ \
objExamListBO-- !
.--! "
ExamLastAttemptDate--" 5
=--6 7"
examLastAttemptDateObj--8 N
is--O Q
DBNull--R X
?--Y Z
null--[ _
:--` a
Convert--b i
.--i j
ToString--j r
(--r s
objSqlDataReader	--s ƒ
[
--ƒ „
$str
--„ ™
]
--™ 
)
-- ›
;
--› 
object.. %
examAttemptCreatedDateobj.. 4
=..5 6
objSqlDataReader..7 G
[..G H
$str..H `
]..` a
;..a b
objExamListBO// !
.//! "
ExamCreatedDate//" 1
=//2 3%
examAttemptCreatedDateobj//4 M
is//N P
DBNull//Q W
?//X Y
null//Z ^
://_ `
Convert//a h
.//h i
ToString//i q
(//q r
objSqlDataReader	//r ‚
[
//‚ ƒ
$str
//ƒ ›
]
//› 
)
// 
;
// 
object00 
examStatusobj00 (
=00) *
objSqlDataReader00+ ;
[00; <
$str00< H
]00H I
;00I J
objExamListBO11 !
.11! "

ExamStatus11" ,
=11- .
examStatusobj11/ <
is11= ?
DBNull11@ F
?11G H
$num11I J
:11K L
Convert11M T
.11T U
ToInt3211U \
(11\ ]
objSqlDataReader11] m
[11m n
$str11n z
]11z {
)11{ |
;11| }
object22 
examTimeTypeObj22 *
=22+ ,
objSqlDataReader22- =
[22= >
$str22> L
]22L M
;22M N
objExamListBO33 !
.33! "
ExamTimeType33" .
=33/ 0
examTimeTypeObj331 @
is33A C
DBNull33D J
?33K L
false33M R
:33S T
Convert33U \
.33\ ]
	ToBoolean33] f
(33f g
objSqlDataReader33g w
[33w x
$str	33x †
]
33† ‡
)
33‡ 
;
33 ‰
object44 
examModeObj44 &
=44' (
objSqlDataReader44) 9
[449 :
$str44: D
]44D E
;44E F
objExamListBO55 !
.55! "
ExamMode55" *
=55+ ,
examModeObj55- 8
is559 ;
DBNull55< B
?55C D
$num55E F
:55G H
Convert55I P
.55P Q
ToInt3255Q X
(55X Y
objSqlDataReader55Y i
[55i j
$str55j t
]55t u
)55u v
;55v w
object66 
objLastQuestionID66 ,
=66- .
objSqlDataReader66/ ?
[66? @
$str66@ P
]66P Q
;66Q R
objExamListBO77 !
.77! "
LastQuestionId77" 0
=771 2
objLastQuestionID773 D
is77E G
DBNull77H N
?77O P
$num77Q R
:77S T
Convert77U \
.77\ ]
ToInt3277] d
(77d e
objSqlDataReader77e u
[77u v
$str	77v †
]
77† ‡
)
77‡ 
;
77 ‰
object88 "
objShowDetailedAnswers88 1
=882 3
objSqlDataReader884 D
[88D E
$str88E Z
]88Z [
;88[ \
objExamListBO99 !
.99! "
ShowDetailedAnswers99" 5
=996 7"
objShowDetailedAnswers998 N
is99O Q
DBNull99R X
?99Y Z
false99[ `
:99a b
Convert99c j
.99j k
	ToBoolean99k t
(99t u
objSqlDataReader	99u …
[
99… †
$str
99† ›
]
99› 
)
99 
;
99 
object:: )
objShowAnsAfterExamCompletion:: 8
=::9 :
objSqlDataReader::; K
[::K L
$str::L h
]::h i
;::i j
objExamListBO;; !
.;;! "&
ShowAnsAfterExamCompletion;;" <
=;;= >)
objShowAnsAfterExamCompletion;;? \
is;;] _
DBNull;;` f
?;;g h
false;;i n
:;;o p
Convert;;q x
.;;x y
	ToBoolean	;;y ‚
(
;;‚ ƒ
objSqlDataReader
;;ƒ “
[
;;“ ”
$str
;;” °
]
;;° ±
)
;;± ²
;
;;² ³
object>> 
objIsSharedExam>> *
=>>+ ,
objSqlDataReader>>- =
[>>= >
$str>>> L
]>>L M
;>>M N
objExamListBO?? !
.??! "
IsSharedExam??" .
=??/ 0
objIsSharedExam??1 @
is??A C
DBNull??D J
???K L
false??M R
:??S T
Convert??U \
.??\ ]
	ToBoolean??] f
(??f g
objSqlDataReader??g w
[??w x
$str	??x †
]
??† ‡
)
??‡ 
;
?? ‰
object@@ 
objExamStartDate@@ +
=@@, -
objSqlDataReader@@. >
[@@> ?
$str@@? N
]@@N O
;@@O P
objExamListBOAA !
.AA! "
ExamStartDateAA" /
=AA0 1
objExamStartDateAA2 B
isAAC E
DBNullAAF L
?AAM N
nullAAO S
:AAT U
ConvertAAV ]
.AA] ^
ToStringAA^ f
(AAf g
objSqlDataReaderAAg w
[AAw x
$str	AAx ‡
]
AA‡ 
)
AA ‰
;
AA‰ 
objectBB 
objExamEndDateBB )
=BB* +
objSqlDataReaderBB, <
[BB< =
$strBB= J
]BBJ K
;BBK L
objExamListBOCC !
.CC! "
ExamEndDateCC" -
=CC. /
objExamEndDateCC0 >
isCC? A
DBNullCCB H
?CCI J
nullCCK O
:CCP Q
ConvertCCR Y
.CCY Z
ToStringCCZ b
(CCb c
objSqlDataReaderCCc s
[CCs t
$str	CCt 
]
CC ‚
)
CC‚ ƒ
;
CCƒ „
objectDD 
CreatorEmailIdDD )
=DD* +
objSqlDataReaderDD, <
[DD< =
$strDD= M
]DDM N
;DDN O
objExamListBOEE !
.EE! "
CreatorEmailIdEE" 0
=EE1 2
examTypeObjEE3 >
isEE? A
DBNullEEB H
?EEI J
nullEEK O
:EEP Q
ConvertEER Y
.EEY Z
ToStringEEZ b
(EEb c
objSqlDataReaderEEc s
[EEs t
$str	EEt „
]
EE„ …
)
EE… †
;
EE† ‡
examHistoryListGG #
.GG# $
AddGG$ '
(GG' (
objExamListBOGG( 5
)GG5 6
;GG6 7
}HH 
objSqlDataReaderJJ  
.JJ  !
CloseJJ! &
(JJ& '
)JJ' (
;JJ( )
}KK 
returnMM 
examHistoryListMM "
;MM" #
}NN 	
publicPP 
staticPP 
ListPP 
<PP 
ExamHistoryDTOPP )
>PP) *$
SharedExamHistoryDetailsPP+ C
(PPC D
ExamHistoryDTOPPD R
examhistoryPPS ^
)PP^ _
{QQ 	
ListRR 
<RR 
ExamHistoryDTORR 
>RR  
examHistoryListRR! 0
=RR1 2
newRR3 6
ListRR7 ;
<RR; <
ExamHistoryDTORR< J
>RRJ K
(RRK L
)RRL M
;RRM N
SqlParameterTT 
[TT 
]TT 
objSqlParameterTT *
=TT+ ,
{UU 
newVV 
SqlParameterVV  
(VV  !
$strVV! *
,VV* +
examhistoryVV, 7
.VV7 8
UserIdVV8 >
)VV> ?
,VV? @
newWW 
SqlParameterWW  
(WW  !
$strWW! .
,WW. /
examhistoryWW0 ;
.WW; <

ExamStatusWW< F
)WWF G
,WWG H
}XX 
;XX 
usingZZ 
(ZZ 
SqlDataReaderZZ  
objSqlDataReaderZZ! 1
=ZZ2 3
	SqlHelperZZ4 =
.ZZ= >
ExecuteReaderZZ> K
(ZZK L!
SqlConnectionProvider[[ %
.[[% &
GetConnectionString[[& 9
([[9 :
DataAccessType[[: H
.[[H I
Read[[I M
)[[M N
,[[N O
CommandType[[P [
.[[[ \
StoredProcedure[[\ k
,[[k l
$str	[[m ‡
,
[[‡ 
objSqlParameter
[[‰ 
)
[[ ™
)
[[™ 
{\\ 
while]] 
(]] 
objSqlDataReader]] '
.]]' (
Read]]( ,
(]], -
)]]- .
)]]. /
{^^ 
ExamHistoryDTO__ "
objExamListBO__# 0
=__1 2
new__3 6
ExamHistoryDTO__7 E
(__E F
)__F G
;__G H
object`` 
	examIdObj`` $
=``% &
objSqlDataReader``' 7
[``7 8
$str``8 @
]``@ A
;``A B
objExamListBOaa !
.aa! "
ExamIdaa" (
=aa) *
	examIdObjaa+ 4
isaa5 7
DBNullaa8 >
?aa? @
$numaaA B
:aaC D
ConvertaaE L
.aaL M
ToInt32aaM T
(aaT U
objSqlDataReaderaaU e
[aae f
$straaf n
]aan o
)aao p
;aap q
objectbb 
examNameObjbb &
=bb' (
objSqlDataReaderbb) 9
[bb9 :
$strbb: D
]bbD E
;bbE F
objExamListBOcc !
.cc! "
ExamNamecc" *
=cc+ ,
examNameObjcc- 8
iscc9 ;
DBNullcc< B
?ccC D
nullccE I
:ccJ K
ConvertccL S
.ccS T
ToStringccT \
(cc\ ]
objSqlDataReadercc] m
[ccm n
$strccn x
]ccx y
)ccy z
;ccz {
objectff 
examTypeObjff &
=ff' (
objSqlDataReaderff) 9
[ff9 :
$strff: D
]ffD E
;ffE F
objExamListBOgg !
.gg! "
ExamTypegg" *
=gg+ ,
examTypeObjgg- 8
isgg9 ;
DBNullgg< B
?ggC D
nullggE I
:ggJ K
ConvertggL S
.ggS T
ToStringggT \
(gg\ ]
objSqlDataReadergg] m
[ggm n
$strggn x
]ggx y
)ggy z
;ggz {
objecthh 
questionAttemptObjhh -
=hh. /
objSqlDataReaderhh0 @
[hh@ A
$strhhA R
]hhR S
;hhS T
objExamListBOii !
.ii! "
QuestionAttemptii" 1
=ii2 3
questionAttemptObjii4 F
isiiG I
DBNulliiJ P
?iiQ R
$numiiS T
:iiU V
ConvertiiW ^
.ii^ _
ToInt32ii_ f
(iif g
objSqlDataReaderiig w
[iiw x
$str	iix ‰
]
ii‰ 
)
ii ‹
;
ii‹ 
objectjj 
noofQuestionsObjjj +
=jj, -
objSqlDataReaderjj. >
[jj> ?
$strjj? N
]jjN O
;jjO P
objExamListBOkk !
.kk! "
NoofQuestionskk" /
=kk0 1
noofQuestionsObjkk2 B
iskkC E
DBNullkkF L
?kkM N
$numkkO P
:kkQ R
ConvertkkS Z
.kkZ [
ToInt32kk[ b
(kkb c
objSqlDataReaderkkc s
[kks t
$str	kkt ƒ
]
kkƒ „
)
kk„ …
;
kk… †
objectll 
scoreObjll #
=ll$ %
objSqlDataReaderll& 6
[ll6 7
$strll7 >
]ll> ?
;ll? @
objExamListBOmm !
.mm! "
Scoremm" '
=mm( )
scoreObjmm* 2
ismm3 5
DBNullmm6 <
?mm= >
$nummm? @
:mmA B
ConvertmmC J
.mmJ K
ToInt32mmK R
(mmR S
objSqlDataReadermmS c
[mmc d
$strmmd k
]mmk l
)mml m
;mmm n
objectnn "
examLastAttemptDateObjnn 1
=nn2 3
objSqlDataReadernn4 D
[nnD E
$strnnE Z
]nnZ [
;nn[ \
objExamListBOoo !
.oo! "
ExamLastAttemptDateoo" 5
=oo6 7"
examLastAttemptDateObjoo8 N
isooO Q
DBNullooR X
?ooY Z
nulloo[ _
:oo` a
Convertoob i
.ooi j
ToStringooj r
(oor s
objSqlDataReader	oos ƒ
[
ooƒ „
$str
oo„ ™
]
oo™ 
)
oo ›
;
oo› 
objectpp %
examAttemptCreatedDateobjpp 4
=pp5 6
objSqlDataReaderpp7 G
[ppG H
$strppH `
]pp` a
;ppa b
objExamListBOqq !
.qq! "
ExamCreatedDateqq" 1
=qq2 3%
examAttemptCreatedDateobjqq4 M
isqqN P
DBNullqqQ W
?qqX Y
nullqqZ ^
:qq_ `
Convertqqa h
.qqh i
ToStringqqi q
(qqq r
objSqlDataReader	qqr ‚
[
qq‚ ƒ
$str
qqƒ ›
]
qq› 
)
qq 
;
qq 
objectrr 
examStatusobjrr (
=rr) *
objSqlDataReaderrr+ ;
[rr; <
$strrr< H
]rrH I
;rrI J
objExamListBOss !
.ss! "

ExamStatusss" ,
=ss- .
examStatusobjss/ <
isss= ?
DBNullss@ F
?ssG H
$numssI J
:ssK L
ConvertssM T
.ssT U
ToInt32ssU \
(ss\ ]
objSqlDataReaderss] m
[ssm n
$strssn z
]ssz {
)ss{ |
;ss| }
objecttt 
examTimeTypeObjtt *
=tt+ ,
objSqlDataReadertt- =
[tt= >
$strtt> L
]ttL M
;ttM N
objExamListBOuu !
.uu! "
ExamTimeTypeuu" .
=uu/ 0
examTimeTypeObjuu1 @
isuuA C
DBNulluuD J
?uuK L
falseuuM R
:uuS T
ConvertuuU \
.uu\ ]
	ToBooleanuu] f
(uuf g
objSqlDataReaderuug w
[uuw x
$str	uux †
]
uu† ‡
)
uu‡ 
;
uu ‰
objectvv 
examModeObjvv &
=vv' (
objSqlDataReadervv) 9
[vv9 :
$strvv: D
]vvD E
;vvE F
objExamListBOww !
.ww! "
ExamModeww" *
=ww+ ,
examModeObjww- 8
isww9 ;
DBNullww< B
?wwC D
$numwwE F
:wwG H
ConvertwwI P
.wwP Q
ToInt32wwQ X
(wwX Y
objSqlDataReaderwwY i
[wwi j
$strwwj t
]wwt u
)wwu v
;wwv w
objectxx 
objLastQuestionIDxx ,
=xx- .
objSqlDataReaderxx/ ?
[xx? @
$strxx@ P
]xxP Q
;xxQ R
objExamListBOyy !
.yy! "
LastQuestionIdyy" 0
=yy1 2
objLastQuestionIDyy3 D
isyyE G
DBNullyyH N
?yyO P
$numyyQ R
:yyS T
ConvertyyU \
.yy\ ]
ToInt32yy] d
(yyd e
objSqlDataReaderyye u
[yyu v
$str	yyv †
]
yy† ‡
)
yy‡ 
;
yy ‰
objectzz "
objShowDetailedAnswerszz 1
=zz2 3
objSqlDataReaderzz4 D
[zzD E
$strzzE Z
]zzZ [
;zz[ \
objExamListBO{{ !
.{{! "
ShowDetailedAnswers{{" 5
={{6 7"
objShowDetailedAnswers{{8 N
is{{O Q
DBNull{{R X
?{{Y Z
false{{[ `
:{{a b
Convert{{c j
.{{j k
	ToBoolean{{k t
({{t u
objSqlDataReader	{{u …
[
{{… †
$str
{{† ›
]
{{› 
)
{{ 
;
{{ 
object|| )
objShowAnsAfterExamCompletion|| 8
=||9 :
objSqlDataReader||; K
[||K L
$str||L h
]||h i
;||i j
objExamListBO}} !
.}}! "&
ShowAnsAfterExamCompletion}}" <
=}}= >)
objShowAnsAfterExamCompletion}}? \
is}}] _
DBNull}}` f
?}}g h
false}}i n
:}}o p
Convert}}q x
.}}x y
	ToBoolean	}}y ‚
(
}}‚ ƒ
objSqlDataReader
}}ƒ “
[
}}“ ”
$str
}}” °
]
}}° ±
)
}}± ²
;
}}² ³
object~~ 
objIsSharedExam~~ *
=~~+ ,
objSqlDataReader~~- =
[~~= >
$str~~> L
]~~L M
;~~M N
objExamListBO !
.! "
IsSharedExam" .
=/ 0
objIsSharedExam1 @
isA C
DBNullD J
?K L
falseM R
:S T
ConvertU \
.\ ]
	ToBoolean] f
(f g
objSqlDataReaderg w
[w x
$str	x †
]
† ‡
)
‡ 
;
 ‰
object
€€ 
objExamStartDate
€€ +
=
€€, -
objSqlDataReader
€€. >
[
€€> ?
$str
€€? N
]
€€N O
;
€€O P
objExamListBO
 !
.
! "
ExamStartDate
" /
=
0 1
objExamStartDate
2 B
is
C E
DBNull
F L
?
M N
null
O S
:
T U
Convert
V ]
.
] ^
ToString
^ f
(
f g
objSqlDataReader
g w
[
w x
$strx ‡
]‡ 
) ‰
;‰ 
object
‚‚ 
objExamEndDate
‚‚ )
=
‚‚* +
objSqlDataReader
‚‚, <
[
‚‚< =
$str
‚‚= J
]
‚‚J K
;
‚‚K L
objExamListBO
ƒƒ !
.
ƒƒ! "
ExamEndDate
ƒƒ" -
=
ƒƒ. /
objExamEndDate
ƒƒ0 >
is
ƒƒ? A
DBNull
ƒƒB H
?
ƒƒI J
null
ƒƒK O
:
ƒƒP Q
Convert
ƒƒR Y
.
ƒƒY Z
ToString
ƒƒZ b
(
ƒƒb c
objSqlDataReader
ƒƒc s
[
ƒƒs t
$strƒƒt 
]ƒƒ ‚
)ƒƒ‚ ƒ
;ƒƒƒ „
object
„„ 
CreatorEmailId
„„ )
=
„„* +
objSqlDataReader
„„, <
[
„„< =
$str
„„= M
]
„„M N
;
„„N O
objExamListBO
…… !
.
……! "
CreatorEmailId
……" 0
=
……1 2
examTypeObj
……3 >
is
……? A
DBNull
……B H
?
……I J
null
……K O
:
……P Q
Convert
……R Y
.
……Y Z
ToString
……Z b
(
……b c
objSqlDataReader
……c s
[
……s t
$str……t „
]……„ …
)……… †
;……† ‡
examHistoryList
†† #
.
††# $
Add
††$ '
(
††' (
objExamListBO
††( 5
)
††5 6
;
††6 7
}
‡‡ 
objSqlDataReader
‰‰  
.
‰‰  !
Close
‰‰! &
(
‰‰& '
)
‰‰' (
;
‰‰( )
}
 
return
 
examHistoryList
 "
;
" #
}
 	
public
 
static
 
int
 $
ReshareSharedExamMulti
 0
(
0 1
int
1 4
originalExamId
5 C
,
C D
int
E H
creatorUserId
I V
,
V W
string
X ^
creatorEmailId
_ m
,
m n
IEnumerable
o z
<
z {
string{ 
> ‚
emailsƒ ‰
,‰ 
bool‹ 
force •
=– —
false 
, 
DateTime §
?§ ¨
startUtc© ±
=² ³
null΄ Έ
,Έ Ή
DateTimeΊ Β
?Β Γ
endUtcΔ Κ
=Λ Μ
nullΝ Ρ
)Ρ Ò
{
 	
var
‘‘ 
dt
‘‘ 
=
‘‘ 
new
‘‘ 
System
‘‘ 
.
‘‘  
Data
‘‘  $
.
‘‘$ %
	DataTable
‘‘% .
(
‘‘. /
)
‘‘/ 0
;
‘‘0 1
dt
’’ 
.
’’ 
Columns
’’ 
.
’’ 
Add
’’ 
(
’’ 
$str
’’ $
,
’’$ %
typeof
’’& ,
(
’’, -
string
’’- 3
)
’’3 4
)
’’4 5
;
’’5 6
foreach
““ 
(
““ 
var
““ 
e
““ 
in
““ 
emails
““ $
??
““% '

Enumerable
““( 2
.
““2 3
Empty
““3 8
<
““8 9
string
““9 ?
>
““? @
(
““@ A
)
““A B
)
““B C
{
”” 
var
•• 
trimmed
•• 
=
•• 
(
•• 
e
••  
??
••! #
$str
••$ &
)
••& '
.
••' (
Trim
••( ,
(
••, -
)
••- .
;
••. /
if
–– 
(
–– 
!
–– 
string
–– 
.
–– 
IsNullOrEmpty
–– )
(
––) *
trimmed
––* 1
)
––1 2
)
––2 3
dt
––4 6
.
––6 7
Rows
––7 ;
.
––; <
Add
––< ?
(
––? @
trimmed
––@ G
)
––G H
;
––H I
}
—— 
var
 
arr
 
=
 
new
 
[
 
]
 
{
™™ 
new
 
SqlParameter
  
(
  !
$str
! 2
,
2 3
	SqlDbType
4 =
.
= >
Int
> A
)
A B
{
C D
Value
E J
=
K L
originalExamId
M [
}
\ ]
,
] ^
new
›› 
SqlParameter
››  
(
››  !
$str
››! 1
,
››1 2
	SqlDbType
››3 <
.
››< =
Int
››= @
)
››@ A
{
››B C
Value
››D I
=
››J K
creatorUserId
››L Y
}
››Z [
,
››[ \
new
 
SqlParameter
  
(
  !
$str
! 2
,
2 3
	SqlDbType
4 =
.
= >
VarChar
> E
,
E F
$num
G J
)
J K
{
L M
Value
N S
=
T U
(
V W
object
W ]
)
] ^
creatorEmailId
^ l
??
m o
DBNull
p v
.
v w
Value
w |
}
} ~
,
~ 
new
 
SqlParameter
  
(
  !
$str
! *
,
* +
	SqlDbType
, 5
.
5 6

Structured
6 @
)
@ A
{
B C
TypeName
D L
=
M N
$str
O ^
,
^ _
Value
` e
=
f g
dt
h j
}
k l
,
l m
new
 
SqlParameter
  
(
  !
$str
! )
,
) *
	SqlDbType
+ 4
.
4 5
Bit
5 8
)
8 9
{
: ;
Value
< A
=
B C
force
D I
}
J K
,
K L
new
 
SqlParameter
  
(
  !
$str
! 0
,
0 1
	SqlDbType
2 ;
.
; <
DateTime
< D
)
D E
{
F G
Value
H M
=
N O
(
P Q
object
Q W
)
W X
startUtc
X `
??
a c
DBNull
d j
.
j k
Value
k p
}
q r
,
r s
new
   
SqlParameter
    
(
    !
$str
  ! .
,
  . /
	SqlDbType
  2 ;
.
  ; <
DateTime
  < D
)
  D E
{
  F G
Value
  H M
=
  N O
(
  P Q
object
  Q W
)
  W X
endUtc
  X ^
??
  a c
DBNull
  d j
.
  j k
Value
  k p
}
  q r
}
΅΅ 
;
΅΅ 
using
ΆΆ 
(
ΆΆ 
var
ΆΆ 
rdr
ΆΆ 
=
ΆΆ 
	SqlHelper
ΆΆ &
.
ΆΆ& '
ExecuteReader
ΆΆ' 4
(
ΆΆ4 5#
SqlConnectionProvider
ΆΆ5 J
.
ΆΆJ K!
GetConnectionString
ΆΆK ^
(
ΆΆ^ _
DataAccessType
ΆΆ_ m
.
ΆΆm n
Read
ΆΆn r
)
ΆΆr s
,
ΆΆs t
CommandTypeΆΆu €
.ΆΆ€ 
StoredProcedureΆΆ 
,ΆΆ ‘
$strΆΆ’ ―
,ΆΆ― °
arrΆΆ± ΄
)ΆΆ΄ µ
)ΆΆµ ¶
{
££ 
if
¤¤ 
(
¤¤ 
rdr
¤¤ 
.
¤¤ 
Read
¤¤ 
(
¤¤ 
)
¤¤ 
)
¤¤ 
return
¥¥ 
Convert
¥¥ "
.
¥¥" #
ToInt32
¥¥# *
(
¥¥* +
rdr
¥¥+ .
[
¥¥. /
$str
¥¥/ 9
]
¥¥9 :
)
¥¥: ;
;
¥¥; <
}
¦¦ 
return
¨¨ 
$num
¨¨ 
;
¨¨ 
}
©© 	
public
«« 
static
«« 
void
«« &
DeleteExamHistoryDetails
«« 3
(
««3 4
int
««4 7
examId
««8 >
,
««> ?
int
««@ C
userId
««D J
)
««J K
{
¬¬ 	
SqlParameter
­­ 
[
­­ 
]
­­ 
arrSqlParameter
­­ *
=
­­+ ,
{
®® 
new
―― 
SqlParameter
―― $
(
――$ %
$str
――% .
,
――. /
examId
――0 6
)
――6 7
,
――7 8
new
°° 
SqlParameter
°° $
(
°°$ %
$str
°°% .
,
°°. /
userId
°°0 6
)
°°6 7
,
°°7 8
}
±± 
;
±± 
	SqlHelper
²² 
.
²² 
ExecuteNonQuery
²² %
(
²²% &#
SqlConnectionProvider
²²& ;
.
²²; <!
GetConnectionString
²²< O
(
²²O P
DataAccessType
²²P ^
.
²²^ _
Write
²²_ d
)
²²d e
,
²²e f
CommandType
²²g r
.
²²r s
StoredProcedure²²s ‚
,²²‚ ƒ
$str²²„ ”
,²²” •
arrSqlParameter²²– ¥
)²²¥ ¦
;²²¦ §
}
³³ 	
public
µµ 
static
µµ 
List
µµ 
<
µµ 
string
µµ !
>
µµ! "/
!ReshareSharedExam_CheckDuplicates
µµ# D
(
µµD E
int
µµE H
originalExamId
µµI W
,
µµW X
IEnumerable
µµY d
<
µµd e
string
µµe k
>
µµk l
emails
µµm s
)
µµs t
{
¶¶ 	
var
·· 
dt
·· 
=
·· 
new
·· 
System
·· 
.
··  
Data
··  $
.
··$ %
	DataTable
··% .
(
··. /
)
··/ 0
;
··0 1
dt
ΈΈ 
.
ΈΈ 
Columns
ΈΈ 
.
ΈΈ 
Add
ΈΈ 
(
ΈΈ 
$str
ΈΈ $
,
ΈΈ$ %
typeof
ΈΈ& ,
(
ΈΈ, -
string
ΈΈ- 3
)
ΈΈ3 4
)
ΈΈ4 5
;
ΈΈ5 6
foreach
ΉΉ 
(
ΉΉ 
var
ΉΉ 
e
ΉΉ 
in
ΉΉ 
emails
ΉΉ $
??
ΉΉ% '

Enumerable
ΉΉ( 2
.
ΉΉ2 3
Empty
ΉΉ3 8
<
ΉΉ8 9
string
ΉΉ9 ?
>
ΉΉ? @
(
ΉΉ@ A
)
ΉΉA B
)
ΉΉB C
{
ΊΊ 
var
»» 
t
»» 
=
»» 
(
»» 
e
»» 
??
»» 
$str
»»  
)
»»  !
.
»»! "
Trim
»»" &
(
»»& '
)
»»' (
;
»»( )
if
ΌΌ 
(
ΌΌ 
!
ΌΌ 
string
ΌΌ 
.
ΌΌ 
IsNullOrEmpty
ΌΌ )
(
ΌΌ) *
t
ΌΌ* +
)
ΌΌ+ ,
)
ΌΌ, -
dt
ΌΌ. 0
.
ΌΌ0 1
Rows
ΌΌ1 5
.
ΌΌ5 6
Add
ΌΌ6 9
(
ΌΌ9 :
t
ΌΌ: ;
)
ΌΌ; <
;
ΌΌ< =
}
½½ 
var
ΏΏ 
list
ΏΏ 
=
ΏΏ 
new
ΏΏ 
List
ΏΏ 
<
ΏΏ  
string
ΏΏ  &
>
ΏΏ& '
(
ΏΏ' (
)
ΏΏ( )
;
ΏΏ) *
var
ΐΐ 
arr
ΐΐ 
=
ΐΐ 
new
ΐΐ 
[
ΐΐ 
]
ΐΐ 
{
ΑΑ 
new
ΒΒ 
SqlParameter
ΒΒ  
(
ΒΒ  !
$str
ΒΒ! 2
,
ΒΒ2 3
	SqlDbType
ΒΒ4 =
.
ΒΒ= >
Int
ΒΒ> A
)
ΒΒA B
{
ΒΒC D
Value
ΒΒE J
=
ΒΒK L
originalExamId
ΒΒM [
}
ΒΒ\ ]
,
ΒΒ] ^
new
ΓΓ 
SqlParameter
ΓΓ  
(
ΓΓ  !
$str
ΓΓ! *
,
ΓΓ* +
	SqlDbType
ΓΓ, 5
.
ΓΓ5 6

Structured
ΓΓ6 @
)
ΓΓ@ A
{
ΓΓB C
TypeName
ΓΓD L
=
ΓΓM N
$str
ΓΓO ^
,
ΓΓ^ _
Value
ΓΓ` e
=
ΓΓf g
dt
ΓΓh j
}
ΓΓk l
}
ΔΔ 
;
ΔΔ 
using
ΕΕ 
(
ΕΕ 
var
ΕΕ 
rdr
ΕΕ 
=
ΕΕ 
	SqlHelper
ΕΕ &
.
ΕΕ& '
ExecuteReader
ΕΕ' 4
(
ΕΕ4 5#
SqlConnectionProvider
ΕΕ5 J
.
ΕΕJ K!
GetConnectionString
ΕΕK ^
(
ΕΕ^ _
DataAccessType
ΕΕ_ m
.
ΕΕm n
Read
ΕΕn r
)
ΕΕr s
,
ΕΕs t
CommandTypeΕΕu €
.ΕΕ€ 
StoredProcedureΕΕ 
,ΕΕ ‘
$strΕΕ’ Ή
,ΕΕΉ Ί
arrΕΕ» Ύ
)ΕΕΎ Ώ
)ΕΕΏ ΐ
{
ΖΖ 
while
ΗΗ 
(
ΗΗ 
rdr
ΗΗ 
.
ΗΗ 
Read
ΗΗ 
(
ΗΗ  
)
ΗΗ  !
)
ΗΗ! "
{
ΘΘ 
var
ΙΙ 
email
ΙΙ 
=
ΙΙ 
rdr
ΙΙ  #
[
ΙΙ# $
$str
ΙΙ$ 4
]
ΙΙ4 5
as
ΙΙ6 8
string
ΙΙ9 ?
;
ΙΙ? @
if
ΚΚ 
(
ΚΚ 
!
ΚΚ 
string
ΚΚ 
.
ΚΚ   
IsNullOrWhiteSpace
ΚΚ  2
(
ΚΚ2 3
email
ΚΚ3 8
)
ΚΚ8 9
)
ΚΚ9 :
list
ΚΚ; ?
.
ΚΚ? @
Add
ΚΚ@ C
(
ΚΚC D
email
ΚΚD I
)
ΚΚI J
;
ΚΚJ K
}
ΛΛ 
}
ΜΜ 
return
ΞΞ 
list
ΞΞ 
;
ΞΞ 
}
ΟΟ 	
public
ΡΡ 
static
ΡΡ 
PdfDetailsDataVM
ΡΡ &
GetPdfDetails
ΡΡ' 4
(
ΡΡ4 5
ExamHistoryDTO
ΡΡ5 C
examhistory
ΡΡD O
)
ΡΡO P
{
ÒÒ 	
PdfDetailsDataVM
ΣΣ 
pdfDetailsList
ΣΣ +
=
ΣΣ, -
new
ΣΣ. 1
PdfDetailsDataVM
ΣΣ2 B
(
ΣΣB C
)
ΣΣC D
;
ΣΣD E
SqlParameter
ΥΥ 
[
ΥΥ 
]
ΥΥ 
objSqlParameter
ΥΥ *
=
ΥΥ+ ,
{
ΦΦ 
new
ΧΧ1 4
SqlParameter
ΧΧ5 A
(
ΧΧA B
$str
ΧΧB K
,
ΧΧK L
examhistory
ΧΧM X
.
ΧΧX Y
ExamId
ΧΧY _
)
ΧΧ_ `
,
ΧΧ` a
}
ΨΨ- .
;
ΨΨ. /
using
ΪΪ 
(
ΪΪ 
SqlDataReader
ΪΪ  
objSqlDataReader
ΪΪ! 1
=
ΪΪ2 3
	SqlHelper
ΪΪ4 =
.
ΪΪ= >
ExecuteReader
ΪΪ> K
(
ΪΪK L#
SqlConnectionProvider
ΫΫ %
.
ΫΫ% &!
GetConnectionString
ΫΫ& 9
(
ΫΫ9 :
DataAccessType
ΫΫ: H
.
ΫΫH I
Read
ΫΫI M
)
ΫΫM N
,
ΫΫN O
CommandType
ΫΫP [
.
ΫΫ[ \
StoredProcedure
ΫΫ\ k
,
ΫΫk l
$strΫΫm †
,ΫΫ† ‡
objSqlParameterΫΫ —
)ΫΫ— 
)ΫΫ ™
{
άά 
while
έέ 
(
έέ 
objSqlDataReader
έέ '
.
έέ' (
Read
έέ( ,
(
έέ, -
)
έέ- .
)
έέ. /
{
ήή 
object
ίί 
completionDate
ίί )
=
ίί* +
objSqlDataReader
ίί, <
[
ίί< =
$str
ίί= M
]
ίίM N
;
ίίN O
pdfDetailsList
ΰΰ "
.
ΰΰ" #
CompletionDate
ΰΰ# 1
=
ΰΰ2 3
completionDate
ΰΰ4 B
is
ΰΰC E
DBNull
ΰΰF L
?
ΰΰM N
null
ΰΰO S
:
ΰΰT U
Convert
ΰΰV ]
.
ΰΰ] ^

ToDateTime
ΰΰ^ h
(
ΰΰh i
objSqlDataReader
ΰΰi y
[
ΰΰy z
$strΰΰz 
]ΰΰ ‹
)ΰΰ‹ 
.ΰΰ 
ToStringΰΰ •
(ΰΰ• –
$strΰΰ– Ά
)ΰΰΆ £
;ΰΰ£ ¤
object
αα 
userName
αα #
=
αα$ %
objSqlDataReader
αα& 6
[
αα6 7
$str
αα7 A
]
ααA B
;
ααB C
pdfDetailsList
ββ "
.
ββ" #
UserName
ββ# +
=
ββ, -
userName
ββ. 6
is
ββ7 9
DBNull
ββ: @
?
ββA B
null
ββC G
:
ββH I
Convert
ββJ Q
.
ββQ R
ToString
ββR Z
(
ββZ [
objSqlDataReader
ββ[ k
[
ββk l
$str
ββl v
]
ββv w
)
ββw x
;
ββx y
object
γγ 
residencyEnd
γγ '
=
γγ( )
objSqlDataReader
γγ* :
[
γγ: ;
$str
γγ; I
]
γγI J
;
γγJ K
pdfDetailsList
δδ "
.
δδ" #
ResidencyEndDate
δδ# 3
=
δδ4 5
residencyEnd
δδ6 B
is
δδC E
DBNull
δδF L
?
δδM N
null
δδO S
:
δδT U
Convert
δδV ]
.
δδ] ^

ToDateTime
δδ^ h
(
δδh i
objSqlDataReader
δδi y
[
δδy z
$strδδz 
]δδ ‰
)δδ‰ 
.δδ ‹
ToStringδδ‹ “
(δδ“ ”
$strδδ”  
)δδ  ΅
;δδ΅ Ά
object
εε 
totalQuestion
εε (
=
εε) *
objSqlDataReader
εε+ ;
[
εε; <
$str
εε< K
]
εεK L
;
εεL M
pdfDetailsList
ζζ "
.
ζζ" #
TotalQuestion
ζζ# 0
=
ζζ1 2
totalQuestion
ζζ3 @
is
ζζA C
DBNull
ζζD J
?
ζζK L
$num
ζζM N
:
ζζO P
Convert
ζζQ X
.
ζζX Y
ToInt32
ζζY `
(
ζζ` a
objSqlDataReader
ζζa q
[
ζζq r
$strζζr 
]ζζ ‚
)ζζ‚ ƒ
;ζζƒ „
object
ηη 
	timedExam
ηη $
=
ηη% &
objSqlDataReader
ηη' 7
[
ηη7 8
$str
ηη8 C
]
ηηC D
;
ηηD E
pdfDetailsList
θθ "
.
θθ" #
	TimedExam
θθ# ,
=
θθ- .
	timedExam
θθ/ 8
is
θθ9 ;
DBNull
θθ< B
?
θθC D
null
θθE I
:
θθJ K
Convert
θθL S
.
θθS T
ToString
θθT \
(
θθ\ ]
objSqlDataReader
θθ] m
[
θθm n
$str
θθn y
]
θθy z
)
θθz {
;
θθ{ |
object
ιι 
examMode
ιι #
=
ιι$ %
objSqlDataReader
ιι& 6
[
ιι6 7
$str
ιι7 =
]
ιι= >
;
ιι> ?
pdfDetailsList
κκ "
.
κκ" #
ExamMode
κκ# +
=
κκ, -
examMode
κκ. 6
is
κκ7 9
DBNull
κκ: @
?
κκA B
null
κκC G
:
κκH I
Convert
κκJ Q
.
κκQ R
ToString
κκR Z
(
κκZ [
objSqlDataReader
κκ[ k
[
κκk l
$str
κκl r
]
κκr s
)
κκs t
;
κκt u
object
λλ 
overallScore
λλ '
=
λλ( )
objSqlDataReader
λλ* :
[
λλ: ;
$str
λλ; B
]
λλB C
;
λλC D
pdfDetailsList
μμ "
.
μμ" #
OverallScore
μμ# /
=
μμ0 1
overallScore
μμ2 >
is
μμ? A
DBNull
μμB H
?
μμI J
$num
μμK L
:
μμM N
Convert
μμO V
.
μμV W
ToInt32
μμW ^
(
μμ^ _
objSqlDataReader
μμ_ o
[
μμo p
$str
μμp w
]
μμw x
)
μμx y
;
μμy z
object
νν 
correctAnswers
νν )
=
νν* +
objSqlDataReader
νν, <
[
νν< =
$str
νν= M
]
ννM N
;
ννN O
pdfDetailsList
ξξ "
.
ξξ" #
CorrectAnswers
ξξ# 1
=
ξξ2 3
correctAnswers
ξξ4 B
is
ξξC E
DBNull
ξξF L
?
ξξM N
$num
ξξO P
:
ξξQ R
Convert
ξξS Z
.
ξξZ [
ToInt32
ξξ[ b
(
ξξb c
objSqlDataReader
ξξc s
[
ξξs t
$strξξt „
]ξξ„ …
)ξξ… †
;ξξ† ‡
object
οο 
incorrectAnswers
οο +
=
οο, -
objSqlDataReader
οο. >
[
οο> ?
$str
οο? Q
]
οοQ R
;
οοR S
pdfDetailsList
ππ "
.
ππ" #
IncorrectAnswers
ππ# 3
=
ππ4 5
incorrectAnswers
ππ6 F
is
ππG I
DBNull
ππJ P
?
ππQ R
$num
ππS T
:
ππU V
Convert
ππW ^
.
ππ^ _
ToInt32
ππ_ f
(
ππf g
objSqlDataReader
ππg w
[
ππw x
$strππx 
]ππ ‹
)ππ‹ 
;ππ 
object
ρρ 

unanswered
ρρ %
=
ρρ& '
objSqlDataReader
ρρ( 8
[
ρρ8 9
$str
ρρ9 E
]
ρρE F
;
ρρF G
pdfDetailsList
ςς "
.
ςς" #

Unanswered
ςς# -
=
ςς. /

unanswered
ςς0 :
is
ςς; =
DBNull
ςς> D
?
ςςE F
$num
ςςG H
:
ςςI J
Convert
ςςK R
.
ςςR S
ToInt32
ςςS Z
(
ςςZ [
objSqlDataReader
ςς[ k
[
ςςk l
$str
ςςl x
]
ςςx y
)
ςςy z
;
ςςz {
pdfDetailsList
σσ "
.
σσ" #
SectionLIst
σσ# .
=
σσ/ 0
ExamHistoryDAL
σσ1 ?
.
σσ? @$
GetSectionListBYExamID
σσ@ V
(
σσV W
examhistory
σσW b
.
σσb c
ExamId
σσc i
)
σσi j
;
σσj k
}
ττ 
objSqlDataReader
φφ  
.
φφ  !
Close
φφ! &
(
φφ& '
)
φφ' (
;
φφ( )
}
χχ 
return
ωω 
pdfDetailsList
ωω !
;
ωω! "
}
ϊϊ 	
public
όό 
static
όό 
List
όό 
<
όό 
	SectionVM
όό $
>
όό$ %$
GetSectionListBYExamID
όό& <
(
όό< =
int
όό= @
examId
όόA G
)
όόG H
{
ύύ 	
List
ώώ 
<
ώώ 
	SectionVM
ώώ 
>
ώώ 
sectionList
ώώ '
=
ώώ( )
new
ώώ* -
List
ώώ. 2
<
ώώ2 3
	SectionVM
ώώ3 <
>
ώώ< =
(
ώώ= >
)
ώώ> ?
;
ώώ? @
SqlParameter
€€ 
[
€€ 
]
€€ 
objSqlParameter
€€ *
=
€€+ ,
{
 
new
‚‚1 4
SqlParameter
‚‚5 A
(
‚‚A B
$str
‚‚B K
,
‚‚K L
examId
‚‚M S
)
‚‚T U
,
‚‚U V
}
ƒƒ- .
;
ƒƒ. /
using
…… 
(
…… 
SqlDataReader
……  
objSqlDataReader
……! 1
=
……2 3
	SqlHelper
……4 =
.
……= >
ExecuteReader
……> K
(
……K L#
SqlConnectionProvider
†† %
.
††% &!
GetConnectionString
††& 9
(
††9 :
DataAccessType
††: H
.
††H I
Read
††I M
)
††M N
,
††N O
CommandType
††P [
.
††[ \
StoredProcedure
††\ k
,
††k l
$str††m ‰
,††‰ 
objSqlParameter††‹ 
)†† ›
)††› 
{
‡‡ 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
‰‰ 
	SectionVM
 
section
 %
=
& '
new
( +
	SectionVM
, 5
(
5 6
)
6 7
;
7 8
object
‹‹ 

sectionObj
‹‹ %
=
‹‹& '
objSqlDataReader
‹‹( 8
[
‹‹8 9
$str
‹‹9 B
]
‹‹B C
;
‹‹C D
section
 
.
 
SectionName
 '
=
( )

sectionObj
* 4
is
5 7
DBNull
8 >
?
? @
null
A E
:
F G
Convert
H O
.
O P
ToString
P X
(
X Y
objSqlDataReader
Y i
[
i j
$str
j s
]
s t
)
t u
;
u v
sectionList
 
.
  
Add
  #
(
# $
section
$ +
)
+ ,
;
, -
}
 
objSqlDataReader
  
.
  !
Close
! &
(
& '
)
' (
;
( )
}
‘‘ 
return
““ 
sectionList
““ 
;
““ 
}
”” 	
public
—— 
static
—— 
int
—— 
	ResetExam
—— #
(
——# $
int
——$ '
userId
——( .
)
——. /
{
 	
int
™™ 
result
™™ 
=
™™ 
$num
™™ 
;
™™ 
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
›› 
new
 
SqlParameter
 %
(
% &
$str
& /
,
/ 0
userId
1 7
)
7 8
,
8 9
}
 
;
 
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm „
,„ …
arrSqlParameter† •
)• –
)– —
{
   
if
΅΅ 
(
΅΅ 
objSqlDataReader
΅΅ $
.
΅΅$ %
HasRows
΅΅% ,
)
΅΅, -
{
ΆΆ 
while
££ 
(
££ 
objSqlDataReader
££ +
.
££+ ,
Read
££, 0
(
££0 1
)
££1 2
)
££2 3
{
¤¤ 
object
¥¥ 
	resultObj
¥¥ (
=
¥¥) *
objSqlDataReader
¥¥+ ;
[
¥¥; <
$str
¥¥< D
]
¥¥D E
;
¥¥E F
result
¦¦ 
=
¦¦  
	resultObj
¦¦! *
is
¦¦+ -
DBNull
¦¦. 4
?
¦¦5 6
$num
¦¦7 8
:
¦¦9 :
Convert
¦¦; B
.
¦¦B C
ToInt32
¦¦C J
(
¦¦J K
objSqlDataReader
¦¦K [
[
¦¦[ \
$str
¦¦\ d
]
¦¦d e
)
¦¦e f
;
¦¦f g
}
§§ 
objSqlDataReader
©© $
.
©©$ %
Close
©©% *
(
©©* +
)
©©+ ,
;
©©, -
}
ªª 
}
«« 
return
­­ 
result
­­ 
;
­­ 
}
®® 	
public
°° 
static
°° 
ExamHistoryDTO
°° $/
!InsertorAddEmail_GetOptOutDetails
°°% F
(
°°F G
string
°°G M
email
°°N S
,
°°S T
ExamHistoryDTO
°°U c
values
°°d j
)
°°j k
{
±± 	
ExamHistoryDTO
²² 
emaildetails
²² '
=
²²( )
new
²²* -
ExamHistoryDTO
²². <
(
²²< =
)
²²= >
;
²²> ?
try
³³ 
{
΄΄ 
SqlParameter
µµ 
[
µµ 
]
µµ 
arrSqlParameter
µµ .
=
µµ/ 0
{
¶¶ 
new
·· 
SqlParameter
·· %
(
··% &
$str
··& 0
,
··0 1
email
··2 7
)
··7 8
,
··8 9
new
ΈΈ 
SqlParameter
ΈΈ %
(
ΈΈ% &
$str
ΈΈ& 8
,
ΈΈ8 9
values
ΈΈ: @
.
ΈΈ@ A
UserId
ΈΈA G
)
ΈΈG H
,
ΈΈH I
}
ΉΉ 
;
ΉΉ 
using
ΊΊ 
(
ΊΊ 
SqlDataReader
ΊΊ $
objSqlDataReader
ΊΊ% 5
=
ΊΊ6 7
	SqlHelper
ΊΊ8 A
.
ΊΊA B
ExecuteReader
ΊΊB O
(
ΊΊO P#
SqlConnectionProvider
»» )
.
»») *!
GetConnectionString
»»* =
(
»»= >
DataAccessType
»»> L
.
»»L M
Read
»»M Q
)
»»Q R
,
»»R S
CommandType
»»T _
.
»»_ `
StoredProcedure
»»` o
,
»»o p
$str»»q ”
,»»” •
arrSqlParameter»»– ¥
)»»¥ ¦
)»»¦ §
{
ΌΌ 
if
½½ 
(
½½ 
objSqlDataReader
½½ (
.
½½( )
HasRows
½½) 0
)
½½0 1
{
ΎΎ 
while
ΏΏ 
(
ΏΏ 
objSqlDataReader
ΏΏ /
.
ΏΏ/ 0
Read
ΏΏ0 4
(
ΏΏ4 5
)
ΏΏ5 6
)
ΏΏ6 7
{
ΐΐ 
object
ΑΑ "
idObj
ΑΑ# (
=
ΑΑ) *
objSqlDataReader
ΑΑ+ ;
[
ΑΑ; <
$str
ΑΑ< @
]
ΑΑ@ A
;
ΑΑA B
emaildetails
ΒΒ (
.
ΒΒ( )
Id
ΒΒ) +
=
ΒΒ, -
idObj
ΒΒ. 3
is
ΒΒ4 6
DBNull
ΒΒ7 =
?
ΒΒ> ?
$num
ΒΒ@ A
:
ΒΒB C
Convert
ΒΒD K
.
ΒΒK L
ToInt32
ΒΒL S
(
ΒΒS T
objSqlDataReader
ΒΒT d
[
ΒΒd e
$str
ΒΒe i
]
ΒΒi j
)
ΒΒj k
;
ΒΒk l
object
ΔΔ "
emailObj
ΔΔ# +
=
ΔΔ, -
objSqlDataReader
ΔΔ. >
[
ΔΔ> ?
$str
ΔΔ? H
]
ΔΔH I
;
ΔΔI J
emaildetails
ΕΕ (
.
ΕΕ( )
Emailids
ΕΕ) 1
=
ΕΕ2 3
emailObj
ΕΕ4 <
is
ΕΕ= ?
DBNull
ΕΕ@ F
?
ΕΕG H
$str
ΕΕI S
:
ΕΕT U
Convert
ΕΕV ]
.
ΕΕ] ^
ToString
ΕΕ^ f
(
ΕΕf g
objSqlDataReader
ΕΕg w
[
ΕΕw x
$strΕΕx 
]ΕΕ ‚
)ΕΕ‚ ƒ
;ΕΕƒ „
object
ΗΗ "
	optOutObj
ΗΗ# ,
=
ΗΗ- .
objSqlDataReader
ΗΗ/ ?
[
ΗΗ? @
$str
ΗΗ@ H
]
ΗΗH I
;
ΗΗI J
emaildetails
ΘΘ (
.
ΘΘ( )
OptOut
ΘΘ) /
=
ΘΘ0 1
	optOutObj
ΘΘ2 ;
is
ΘΘ< >
DBNull
ΘΘ? E
?
ΘΘF G
$num
ΘΘH I
:
ΘΘJ K
Convert
ΘΘL S
.
ΘΘS T
ToInt32
ΘΘT [
(
ΘΘ[ \
objSqlDataReader
ΘΘ\ l
[
ΘΘl m
$str
ΘΘm u
]
ΘΘu v
)
ΘΘv w
;
ΘΘw x
}
ΙΙ 
objSqlDataReader
ΛΛ (
.
ΛΛ( )
Close
ΛΛ) .
(
ΛΛ. /
)
ΛΛ/ 0
;
ΛΛ0 1
}
ΜΜ 
}
ΝΝ 
return
ΟΟ 
emaildetails
ΟΟ #
;
ΟΟ# $
}
ΠΠ 
catch
ΡΡ 
(
ΡΡ 
	Exception
ΡΡ 
ex
ΡΡ 
)
ΡΡ  
{
ÒÒ 
Console
ΣΣ 
.
ΣΣ 
Write
ΣΣ 
(
ΣΣ 
ex
ΣΣ  
.
ΣΣ  !
Message
ΣΣ! (
+
ΣΣ) *
$str
ΣΣ+ P
,
ΣΣP Q
$str
ΣΣR b
,
ΣΣb c
$str
ΣΣd o
,
ΣΣo p
values
ΣΣq w
.
ΣΣw x
UserId
ΣΣx ~
)
ΣΣ~ 
;ΣΣ €
return
ΤΤ 
emaildetails
ΤΤ #
;
ΤΤ# $
}
ΥΥ 
}
ΦΦ 	
public
ΨΨ 
static
ΨΨ 
string
ΨΨ 
OptOut
ΨΨ #
(
ΨΨ# $
int
ΨΨ$ '
id
ΨΨ( *
)
ΨΨ* +
{
ΩΩ 	
string
ΪΪ 
emailid
ΪΪ 
=
ΪΪ 
$str
ΪΪ .
;
ΪΪ. /
try
ΫΫ 
{
άά 
SqlParameter
έέ 
[
έέ 
]
έέ 
arrSqlParameter
έέ .
=
έέ/ 0
{
ήή 
new
ίί 
SqlParameter
ίί %
(
ίί% &
$str
ίί& +
,
ίί+ ,
id
ίί- /
)
ίί/ 0
,
ίί0 1
}
ΰΰ 
;
ΰΰ 
using
αα 
(
αα 
SqlDataReader
αα $
objSqlDataReader
αα% 5
=
αα6 7
	SqlHelper
αα8 A
.
ααA B
ExecuteReader
ααB O
(
ααO P#
SqlConnectionProvider
ββ )
.
ββ) *!
GetConnectionString
ββ* =
(
ββ= >
DataAccessType
ββ> L
.
ββL M
Read
ββM Q
)
ββQ R
,
ββR S
CommandType
ββT _
.
ββ_ `
StoredProcedure
ββ` o
,
ββo p
$str
ββq 
,ββ €
arrSqlParameterββ 
)ββ ‘
)ββ‘ ’
{
γγ 
if
δδ 
(
δδ 
objSqlDataReader
δδ (
.
δδ( )
HasRows
δδ) 0
)
δδ0 1
{
εε 
while
ζζ 
(
ζζ 
objSqlDataReader
ζζ /
.
ζζ/ 0
Read
ζζ0 4
(
ζζ4 5
)
ζζ5 6
)
ζζ6 7
{
ηη 
object
θθ "
idObj
θθ# (
=
θθ) *
objSqlDataReader
θθ+ ;
[
θθ; <
$str
θθ< E
]
θθE F
;
θθF G
emailid
ιι #
=
ιι$ %
idObj
ιι& +
is
ιι, .
DBNull
ιι/ 5
?
ιι6 7
$str
ιι8 ;
:
ιι< =
Convert
ιι> E
.
ιιE F
ToString
ιιF N
(
ιιN O
objSqlDataReader
ιιO _
[
ιι_ `
$str
ιι` i
]
ιιi j
)
ιιj k
;
ιιk l
}
κκ 
}
λλ 
}
μμ 
return
ξξ 
emailid
ξξ 
;
ξξ 
}
οο 
catch
ππ 
(
ππ 
	Exception
ππ 
ex
ππ 
)
ππ  
{
ρρ 
Console
ςς 
.
ςς 
	WriteLine
ςς !
(
ςς! "
ex
ςς" $
)
ςς$ %
;
ςς% &
return
σσ 
null
σσ 
;
σσ 
}
ττ 
}
υυ 	
}
φφ 
}χχ ίQ
fD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ExamQuestionDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ExamQuestionDAL '
{ 
public 
static 
int 
AddExamQuestion )
() *
List* .
<. /
ExamQuestionDTO/ >
>> ?
examQuestionList@ P
,P Q
ExamDTOR Y
examObjZ a
)a b
{ 	
List 
< 
SelectedQuestion !
>! "
questionList# /
=0 1
new2 5
List6 :
<: ;
SelectedQuestion; K
>K L
(L M
)M N
;N O
foreach 
( 
ExamQuestionDTO $
examQuestion% 1
in2 4
examQuestionList5 E
)E F
{ 
questionList 
. 
Add  
(  !
new! $
SelectedQuestion% 5
{6 7
ExamId8 >
=? @
examQuestionA M
.M N
ExamIdN T
,T U

QuestionIdV `
=a b
examQuestionc o
.o p

QuestionIdp z
}{ |
)| }
;} ~
} 
string 
tmpTable 
= 
$str	 
;
 
	DataTable 
table 
= 
new !
	DataTable" +
(+ ,
), -
;- .
table 
. 
Columns 
. 
Add 
( 
new !

DataColumn" ,
(, -
$str- 1
,1 2
typeof3 9
(9 :
long: >
)> ?
)? @
)@ A
;A B
table 
. 
Columns 
. 
Add 
( 
new !

DataColumn" ,
(, -
$str- 5
,5 6
typeof7 =
(= >
int> A
)A B
)B C
)C D
;D E
table 
. 
Columns 
. 
Add 
( 
new !

DataColumn" ,
(, -
$str- 9
,9 :
typeof; A
(A B
intB E
)E F
)F G
)G H
;H I
int 
id 
= 
$num 
; 
foreach   
(   
SelectedQuestion   %
questionListitem  & 6
in  7 9
questionList  : F
)  F G
{!! 
DataRow"" 
row"" 
="" 
table"" #
.""# $
NewRow""$ *
(""* +
)""+ ,
;"", -
row## 
[## 
$str## 
]## 
=## 
id## 
;## 
row$$ 
[$$ 
$str$$ 
]$$ 
=$$ 
questionListitem$$  0
.$$0 1
ExamId$$1 7
;$$7 8
row%% 
[%% 
$str%%  
]%%  !
=%%" #
questionListitem%%$ 4
.%%4 5

QuestionId%%5 ?
;%%? @
table&& 
.&& 
Rows&& 
.&& 
Add&& 
(&& 
row&& "
)&&" #
;&&# $
id'' 
++'' 
;'' 
}(( 
string++ 
	conString++ 
=++ !
SqlConnectionProvider++ 4
.++4 5
GetConnectionString++5 H
(++H I
DataAccessType++I W
.++W X
Write++X ]
)++] ^
;++^ _
using,, 
(,, 
SqlConnection,,  
con,,! $
=,,% &
new,,' *
SqlConnection,,+ 8
(,,8 9
	conString,,9 B
),,B C
),,C D
{-- 
con.. 
... 
Open.. 
(.. 
).. 
;.. 

SqlCommand11 
cmd11 
=11  
new11! $

SqlCommand11% /
(11/ 0
tmpTable110 8
,118 9
con11: =
)11= >
;11> ?
cmd22 
.22 
ExecuteNonQuery22 #
(22# $
)22$ %
;22% &
using55 
(55 
SqlBulkCopy55 "
bulk55# '
=55( )
new55* -
SqlBulkCopy55. 9
(559 :
con55: =
)55= >
)55> ?
{66 
bulk77 
.77  
DestinationTableName77 -
=77. /
$str770 D
;77D E
bulk88 
.88 
WriteToServer88 &
(88& '
table88' ,
)88, -
;88- .
}99 
string;; 
mergeSql;; 
=;;  !
string;;" (
.;;( )
Empty;;) .
;;;. /
if<< 
(<< 
examObj<< 
.<< 
ExamType<< $
==<<% '
Convert<<( /
.<</ 0
ToInt32<<0 7
(<<7 8
ExamManagerEnum<<8 G
.<<G H
ExamType<<H P
.<<P Q
SpacedRepetition<<Q a
)<<a b
)<<b c
{== 
mergeSql>> 
=>> 
$str>> J
+>>K L
examObj>>M T
.>>T U
ExamId>>U [
+>>\ ]
$str	>>^ Μ
;
>>Μ Ν
}?? 
else@@ 
{AA 
mergeSqlCC 
=CC 
$strCC C
+CCD E
$strDD& K
+DDL M
$strEE& +
+EE, -
$strFF& D
+FFE F
$strGG& R
+GGS T
$strHH& :
+HH; <
$strII& W
+IIX Y
$strJJ& >
+JJ? @
$strKK& l
;KKl m
}LL 
cmdMM 
.MM 
CommandTextMM 
=MM  !
mergeSqlMM" *
;MM* +
cmdNN 
.NN 
ExecuteNonQueryNN #
(NN# $
)NN$ %
;NN% &
ifQQ 
(QQ 
examObjQQ 
.QQ 
ExamTypeQQ $
==QQ% '
$numQQ( )
)QQ) *
{RR 
stringUU 
getRelatedExamsSqlUU -
=UU. /
$strUY0 R
;YYR S
cmd[[ 
.[[ 
CommandText[[ #
=[[$ %
getRelatedExamsSql[[& 8
;[[8 9
cmd\\ 
.\\ 

Parameters\\ "
.\\" #
Clear\\# (
(\\( )
)\\) *
;\\* +
cmd]] 
.]] 

Parameters]] "
.]]" #
AddWithValue]]# /
(]]/ 0
$str]]0 ;
,]]; <
examObj]]= D
.]]D E
ExamName]]E M
??]]N P
$str]]Q S
)]]S T
;]]T U
cmd^^ 
.^^ 

Parameters^^ "
.^^" #
AddWithValue^^# /
(^^/ 0
$str^^0 ;
,^^; <
examObj^^= D
.^^D E
ExamType^^E M
)^^M N
;^^N O
cmd__ 
.__ 

Parameters__ "
.__" #
AddWithValue__# /
(__/ 0
$str__0 A
,__A B
examObj__C J
.__J K
ExamId__K Q
)__Q R
;__R S
Listaa 
<aa 
intaa 
>aa 
relatedExamIdsaa ,
=aa- .
newaa/ 2
Listaa3 7
<aa7 8
intaa8 ;
>aa; <
(aa< =
)aa= >
;aa> ?
usingbb 
(bb 
SqlDataReaderbb (
readerbb) /
=bb0 1
cmdbb2 5
.bb5 6
ExecuteReaderbb6 C
(bbC D
)bbD E
)bbE F
{cc 
whiledd 
(dd 
readerdd %
.dd% &
Readdd& *
(dd* +
)dd+ ,
)dd, -
{ee 
relatedExamIdsff *
.ff* +
Addff+ .
(ff. /
readerff/ 5
.ff5 6
GetInt32ff6 >
(ff> ?
$numff? @
)ff@ A
)ffA B
;ffB C
}gg 
}hh 
foreachkk 
(kk 
intkk  
relatedExamIdkk! .
inkk/ 1
relatedExamIdskk2 @
)kk@ A
{ll 
foreachnn 
(nn  !
SelectedQuestionnn! 1
questionListitemnn2 B
innnC E
questionListnnF R
)nnR S
{oo 
stringpp "
directInsertSqlpp# 2
=pp3 4
$str	pp5 ‚
;
pp‚ ƒ
cmdqq 
.qq  
CommandTextqq  +
=qq, -
directInsertSqlqq. =
;qq= >
cmdrr 
.rr  

Parametersrr  *
.rr* +
Clearrr+ 0
(rr0 1
)rr1 2
;rr2 3
cmdss 
.ss  

Parametersss  *
.ss* +
AddWithValuess+ 7
(ss7 8
$strss8 A
,ssA B
relatedExamIdssC P
)ssP Q
;ssQ R
cmdtt 
.tt  

Parameterstt  *
.tt* +
AddWithValuett+ 7
(tt7 8
$strtt8 E
,ttE F
questionListitemttG W
.ttW X

QuestionIdttX b
)ttb c
;ttc d
cmduu 
.uu  
ExecuteNonQueryuu  /
(uu/ 0
)uu0 1
;uu1 2
}vv 
}ww 
}xx 
cmd{{ 
.{{ 
CommandText{{ 
={{  !
$str{{" A
;{{A B
cmd|| 
.|| 
ExecuteNonQuery|| #
(||# $
)||$ %
;||% &
con}} 
.}} 
Close}} 
(}} 
)}} 
;}} 
}~~ 
return
€€ 
$num
€€ 
;
€€ 
}
 	
}
‚‚ 
internal
„„ 
class
„„ 
SelectedQuestion
„„ #
{
…… 
public
†† 
int
†† 
ExamId
†† 
{
†† 
get
†† 
;
††  
set
††! $
;
††$ %
}
††& '
public
 
int
 

QuestionId
 
{
 
get
  #
;
# $
set
% (
;
( )
}
* +
}
‰‰ 
} ΅Ι
`D:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ImportDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
	ImportDAL !
{ 
public 
static 
int 
SaveQuestionData *
(* +

QuestionVM+ 5
questioData6 A
)A B
{ 	
SqlParameter 
[ 
] 
arrSqlParameter *
=+ ,
{ 
new 
SqlParameter $
($ %
$str% 4
,4 5
Convert6 =
.= >
	ToBoolean> G
(G H
questioDataH S
.S T
QuestionTypeT `
)` a
)a b
,b c
new 
SqlParameter $
($ %
$str% 8
,8 9
questioData: E
.E F
IdF H
)H I
,I J
new 
SqlParameter $
($ %
$str% ;
,; <
questioData= H
.H I

ReferencesI S
)S T
,T U
new 
SqlParameter $
($ %
$str% .
,. /
Convert0 7
.7 8
ToInt328 ?
(? @
questioData@ K
.K L
StatusL R
)R S
)S T
,T U
new 
SqlParameter $
($ %
$str% ,
,, -
questioData. 9
.9 :
Stem: >
)> ?
,? @
new 
SqlParameter $
($ %
$str% 2
,2 3
questioData4 ?
.? @

FriendlyId@ J
)J K
,K L
new 
SqlParameter $
($ %
$str% 0
,0 1
Convert2 9
.9 :
	ToBoolean: C
(C D
questioDataD O
.O P
ActiveP V
)V W
)W X
,X Y
new 
SqlParameter $
($ %
$str% 1
,1 2
questioData3 >
.> ?
	Createdon? H
)H I
,I J
new 
SqlParameter $
($ %
$str% 2
,2 3
questioData4 ?
.? @

ModifiedOn@ J
)J K
,K L
new 
SqlParameter $
($ %
$str% 1
,1 2
Convert3 :
.: ;
	ToBoolean; D
(D E
questioDataE P
.P Q
DeletedQ X
)X Y
)Y Z
,Z [
new 
SqlParameter $
($ %
$str% *
,* +
	SqlDbType, 5
.5 6
Int6 9
)9 :
,: ;
} 
; 
arrSqlParameter 
[ 
arrSqlParameter +
.+ ,
Length, 2
-3 4
$num5 6
]6 7
.7 8
	Direction8 A
=B C
ParameterDirectionD V
.V W
OutputW ]
;] ^
	SqlHelper 
. 
ExecuteNonQuery %
(% &!
SqlConnectionProvider& ;
.; <
GetConnectionString< O
(O P
DataAccessTypeP ^
.^ _
Write_ d
)d e
,e f
CommandTypeg r
.r s
StoredProcedure	s ‚
,
‚ ƒ
$str
„ 
,
 ›
arrSqlParameter
 «
)
« ¬
;
¬ ­
return   
int   
.   
Parse   
(   
arrSqlParameter   ,
[  , -
arrSqlParameter  - <
.  < =
Length  = C
-  D E
$num  F G
]  G H
.  H I
Value  I N
.  N O
ToString  O W
(  W X
)  X Y
)  Y Z
;  Z [
}!! 	
public$$ 
static$$ 
int$$ 
InsertImageData$$ )
($$) *
ImageVM$$* 1
image$$2 7
,$$7 8
int$$9 <
referenceId$$= H
,$$H I
string$$J P
	tableName$$Q Z
)$$Z [
{%% 	
SqlParameter&& 
[&& 
]&& 
arrSqlParameter&& *
=&&+ ,
{'' 
new(( 
SqlParameter(( $
((($ %
$str((% 1
,((1 2
	tableName((3 <
)((< =
,((= >
new)) 
SqlParameter)) $
())$ %
$str))% /
,))/ 0
image))1 6
.))6 7
Caption))7 >
)))> ?
,))? @
new** 
SqlParameter** $
(**$ %
$str**% 0
,**0 1
image**2 7
.**7 8
Comments**8 @
)**@ A
,**A B
new++ 
SqlParameter++ $
(++$ %
$str++% .
,++. /
image++0 5
.++5 6
Credit++6 <
)++< =
,++= >
new,, 
SqlParameter,, $
(,,$ %
$str,,% .
,,,. /
image,,0 5
.,,5 6
Figure,,6 <
),,< =
,,,= >
new-- 
SqlParameter-- $
(--$ %
$str--% 1
,--1 2
image--3 8
.--8 9
Path--9 =
)--= >
,--> ?
new.. 
SqlParameter.. $
(..$ %
$str..% .
,... /
image..0 5
...5 6
Source..6 <
)..< =
,..= >
new// 
SqlParameter// $
(//$ %
$str//% -
,//- .
image/// 4
.//4 5
Title//5 :
)//: ;
,//; <
new00 
SqlParameter00 $
(00$ %
$str00% 3
,003 4
referenceId005 @
)00@ A
,00A B
new11 
SqlParameter11 $
(11$ %
$str11% *
,11* +
	SqlDbType11, 5
.115 6
Int116 9
)119 :
,11: ;
}22 
;22 
arrSqlParameter33 
[33 
arrSqlParameter33 +
.33+ ,
Length33, 2
-333 4
$num335 6
]336 7
.337 8
	Direction338 A
=33B C
ParameterDirection33D V
.33V W
Output33W ]
;33] ^
	SqlHelper44 
.44 
ExecuteNonQuery44 %
(44% &!
SqlConnectionProvider44& ;
.44; <
GetConnectionString44< O
(44O P
DataAccessType44P ^
.44^ _
Write44_ d
)44d e
,44e f
CommandType44g r
.44r s
StoredProcedure	44s ‚
,
44‚ ƒ
$str
44„ ™
,
44™ 
arrSqlParameter
44› ª
)
44ª «
;
44« ¬
return55 
int55 
.55 
Parse55 
(55 
arrSqlParameter55 ,
[55, -
arrSqlParameter55- <
.55< =
Length55= C
-55D E
$num55F G
]55G H
.55H I
Value55I N
.55N O
ToString55O W
(55W X
)55X Y
)55Y Z
;55Z [
}66 	
public99 
static99 
int99 
SaveDiscussionData99 ,
(99, -
DiscussionVM99- 9
discussionData99: H
)99H I
{:: 	
SqlParameter;; 
[;; 
];; 
arrSqlParameter;; *
=;;+ ,
{<< 
new== 
SqlParameter== $
(==$ %
$str==% 7
,==7 8
discussionData==9 G
.==G H
DiscussionText==H V
)==V W
,==W X
new>> 
SqlParameter>> $
(>>$ %
$str>>% 2
,>>2 3
discussionData>>4 B
.>>B C

QuestionId>>C M
)>>M N
,>>N O
new?? 
SqlParameter?? $
(??$ %
$str??% 7
,??7 8
discussionData??9 G
.??G H
DiscussionType??H V
)??V W
,??W X
new@@ 
SqlParameter@@ $
(@@$ %
$str@@% *
,@@* +
	SqlDbType@@, 5
.@@5 6
Int@@6 9
)@@9 :
,@@: ;
}AA 
;AA 
arrSqlParameterBB 
[BB 
arrSqlParameterBB +
.BB+ ,
LengthBB, 2
-BB3 4
$numBB5 6
]BB6 7
.BB7 8
	DirectionBB8 A
=BBB C
ParameterDirectionBBD V
.BBV W
OutputBBW ]
;BB] ^
	SqlHelperCC 
.CC 
ExecuteNonQueryCC %
(CC% &!
SqlConnectionProviderCC& ;
.CC; <
GetConnectionStringCC< O
(CCO P
DataAccessTypeCCP ^
.CC^ _
WriteCC_ d
)CCd e
,CCe f
CommandTypeCCg r
.CCr s
StoredProcedure	CCs ‚
,
CC‚ ƒ
$str
CC„ 
,
CC 
arrSqlParameter
CC ­
)
CC­ ®
;
CC® ―
returnDD 
intDD 
.DD 
ParseDD 
(DD 
arrSqlParameterDD ,
[DD, -
arrSqlParameterDD- <
.DD< =
LengthDD= C
-DDD E
$numDDF G
]DDG H
.DDH I
ValueDDI N
.DDN O
ToStringDDO W
(DDW X
)DDX Y
)DDY Z
;DDZ [
}EE 	
publicHH 
staticHH 
intHH 
SaveAnswerDataHH (
(HH( )
AnswerVMHH) 1
answerVMHH2 :
)HH: ;
{II 	
SqlParameterJJ 
[JJ 
]JJ 
arrSqlParameterJJ *
=JJ+ ,
{KK 
newLL 
SqlParameterLL $
(LL$ %
$strLL% 5
,LL5 6
answerVMLL7 ?
.LL? @
CorrectLL@ G
)LLG H
,LLH I
newMM 
SqlParameterMM $
(MM$ %
$strMM% 2
,MM2 3
answerVMMM4 <
.MM< =

QuestionIdMM= G
)MMG H
,MMH I
newNN 
SqlParameterNN $
(NN$ %
$strNN% 2
,NN2 3
answerVMNN4 <
.NN< =
TextNN= A
)NNA B
,NNB C
newOO 
SqlParameterOO $
(OO$ %
$strOO% 6
,OO6 7
answerVMOO8 @
.OO@ A
SequenceOOA I
)OOI J
,OOJ K
newPP 
SqlParameterPP $
(PP$ %
$strPP% 2
,PP2 3
answerVMPP4 <
.PP< =

AnswerTypePP= G
)PPG H
,PPH I
newQQ 
SqlParameterQQ $
(QQ$ %
$strQQ% 5
,QQ5 6
answerVMQQ7 ?
.QQ? @
IdQQ@ B
)QQB C
,QQC D
newRR 
SqlParameterRR $
(RR$ %
$strRR% *
,RR* +
	SqlDbTypeRR, 5
.RR5 6
IntRR6 9
)RR9 :
,RR: ;
}SS 
;SS 
arrSqlParameterTT 
[TT 
arrSqlParameterTT +
.TT+ ,
LengthTT, 2
-TT3 4
$numTT5 6
]TT6 7
.TT7 8
	DirectionTT8 A
=TTB C
ParameterDirectionTTD V
.TTV W
OutputTTW ]
;TT] ^
	SqlHelperUU 
.UU 
ExecuteNonQueryUU %
(UU% &!
SqlConnectionProviderUU& ;
.UU; <
GetConnectionStringUU< O
(UUO P
DataAccessTypeUUP ^
.UU^ _
WriteUU_ d
)UUd e
,UUe f
CommandTypeUUg r
.UUr s
StoredProcedure	UUs ‚
,
UU‚ ƒ
$str
UU„ 
,
UU ™
arrSqlParameter
UU ©
)
UU© ª
;
UUª «
returnVV 
intVV 
.VV 
ParseVV 
(VV 
arrSqlParameterVV ,
[VV, -
arrSqlParameterVV- <
.VV< =
LengthVV= C
-VVD E
$numVVF G
]VVG H
.VVH I
ValueVVI N
.VVN O
ToStringVVO W
(VVW X
)VVX Y
)VVY Z
;VVZ [
}WW 	
publicZZ 
staticZZ 
intZZ 
SaveTopicDataZZ '
(ZZ' (
TopicContentVMZZ( 6
topicContentZZ7 C
)ZZC D
{[[ 	
SqlParameter\\ 
[\\ 
]\\ 
arrSqlParameter\\ *
=\\+ ,
{]] 
new^^ 
SqlParameter^^ $
(^^$ %
$str^^% 3
,^^3 4
topicContent^^5 A
.^^A B
TopicId^^B I
)^^I J
,^^J K
new__ 
SqlParameter__ $
(__$ %
$str__% ,
,__, -
topicContent__. :
.__: ;
Code__; ?
)__? @
,__@ A
new`` 
SqlParameter`` $
(``$ %
$str``% /
,``/ 0
Convert``1 8
.``8 9
	ToBoolean``9 B
(``B C
topicContent``C O
.``O P
Deleted``P W
)``W X
)``X Y
,``Y Z
newaa 
SqlParameteraa $
(aa$ %
$straa% 2
,aa2 3
topicContentaa4 @
.aa@ A

ModifiedOnaaA K
)aaK L
,aaL M
newbb 
SqlParameterbb $
(bb$ %
$strbb% -
,bb- .
topicContentbb/ ;
.bb; <
Titlebb< A
)bbA B
,bbB C
newcc 
SqlParametercc $
(cc$ %
$strcc% /
,cc/ 0
topicContentcc1 =
.cc= >
Chaptercc> E
)ccE F
,ccF G
newdd 
SqlParameterdd $
(dd$ %
$strdd% 3
,dd3 4
topicContentdd5 A
.ddA B
ChapterNameddB M
)ddM N
,ddN O
newee 
SqlParameteree $
(ee$ %
$stree% -
,ee- .
topicContentee/ ;
.ee; <
Topicee< A
)eeA B
,eeB C
newff 
SqlParameterff $
(ff$ %
$strff% 1
,ff1 2
topicContentff3 ?
.ff? @
	TopicNameff@ I
)ffI J
,ffJ K
newgg 
SqlParametergg $
(gg$ %
$strgg% 0
,gg0 1
Convertgg2 9
.gg9 :
	ToBooleangg: C
(ggC D
topicContentggD P
.ggP Q
ActiveggQ W
)ggW X
)ggX Y
,ggY Z
newhh 
SqlParameterhh $
(hh$ %
$strhh% *
,hh* +
	SqlDbTypehh, 5
.hh5 6
Inthh6 9
)hh9 :
,hh: ;
}ii 
;ii 
arrSqlParameterjj 
[jj 
arrSqlParameterjj +
.jj+ ,
Lengthjj, 2
-jj3 4
$numjj5 6
]jj6 7
.jj7 8
	Directionjj8 A
=jjB C
ParameterDirectionjjD V
.jjV W
OutputjjW ]
;jj] ^
	SqlHelperkk 
.kk 
ExecuteNonQuerykk %
(kk% &!
SqlConnectionProviderkk& ;
.kk; <
GetConnectionStringkk< O
(kkO P
DataAccessTypekkP ^
.kk^ _
Writekk_ d
)kkd e
,kke f
CommandTypekkg r
.kkr s
StoredProcedure	kks ‚
,
kk‚ ƒ
$str
kk„ —
,
kk— 
arrSqlParameter
kk™ ¨
)
kk¨ ©
;
kk© ª
returnll 
intll 
.ll 
Parsell 
(ll 
arrSqlParameterll ,
[ll, -
arrSqlParameterll- <
.ll< =
Lengthll= C
-llD E
$numllF G
]llG H
.llH I
ValuellI N
.llN O
ToStringllO W
(llW X
)llX Y
)llY Z
;llZ [
}mm 	
publicpp 
staticpp 
intpp &
SaveQuestionTopicXWalkDatapp 4
(pp4 5 
QuestionTopicXWalkVMpp5 I
questionTopicXWalkppJ \
)pp\ ]
{qq 	
SqlParameterrr 
[rr 
]rr 
arrSqlParameterrr *
=rr+ ,
{ss 
newtt 
SqlParametertt $
(tt$ %
$strtt% 2
,tt2 3
questionTopicXWalktt4 F
.ttF G

QuestionIdttG Q
)ttQ R
,ttR S
newuu 
SqlParameteruu $
(uu$ %
$struu% 7
,uu7 8
questionTopicXWalkuu9 K
.uuK L
QASQuestionIduuL Y
)uuY Z
,uuZ [
newvv 
SqlParametervv $
(vv$ %
$strvv% 3
,vv3 4
questionTopicXWalkvv5 G
.vvG H

QASTopicIdvvH R
)vvR S
,vvS T
newww 
SqlParameterww $
(ww$ %
$strww% /
,ww/ 0
questionTopicXWalkww1 C
.wwC D
TopicIdwwD K
)wwK L
,wwL M
newxx 
SqlParameterxx $
(xx$ %
$strxx% *
,xx* +
	SqlDbTypexx, 5
.xx5 6
Intxx6 9
)xx9 :
,xx: ;
}yy 
;yy 
arrSqlParameterzz 
[zz 
arrSqlParameterzz +
.zz+ ,
Lengthzz, 2
-zz3 4
$numzz5 6
]zz6 7
.zz7 8
	Directionzz8 A
=zzB C
ParameterDirectionzzD V
.zzV W
OutputzzW ]
;zz] ^
	SqlHelper{{ 
.{{ 
ExecuteNonQuery{{ %
({{% &!
SqlConnectionProvider{{& ;
.{{; <
GetConnectionString{{< O
({{O P
DataAccessType{{P ^
.{{^ _
Write{{_ d
){{d e
,{{e f
CommandType{{g r
.{{r s
StoredProcedure	{{s ‚
,
{{‚ ƒ
$str
{{„ ¤
,
{{¤ ¥
arrSqlParameter
{{¦ µ
)
{{µ ¶
;
{{¶ ·
return|| 
int|| 
.|| 
Parse|| 
(|| 
arrSqlParameter|| ,
[||, -
arrSqlParameter||- <
.||< =
Length||= C
-||D E
$num||F G
]||G H
.||H I
Value||I N
.||N O
ToString||O W
(||W X
)||X Y
)||Y Z
;||Z [
}}} 	
public
€€ 
static
€€ 
int
€€ 
SaveProgramData
€€ )
(
€€) *
	ProgramVM
€€* 3
program
€€4 ;
)
€€; <
{
 	
SqlParameter
‚‚ 
[
‚‚ 
]
‚‚ 
arrSqlParameter
‚‚ *
=
‚‚+ ,
{
ƒƒ 
new
„„ 
SqlParameter
„„ $
(
„„$ %
$str
„„% /
,
„„/ 0
program
„„1 8
.
„„8 9
Program
„„9 @
)
„„@ A
,
„„A B
new
…… 
SqlParameter
…… $
(
……$ %
$str
……% 5
,
……5 6
program
……7 >
.
……> ?
QASProgramid
……? K
)
……K L
,
……L M
new
†† 
SqlParameter
†† $
(
††$ %
$str
††% *
,
††* +
	SqlDbType
††, 5
.
††5 6
Int
††6 9
)
††9 :
,
††: ;
}
‡‡ 
;
‡‡ 
arrSqlParameter
 
[
 
arrSqlParameter
 +
.
+ ,
Length
, 2
-
3 4
$num
5 6
]
6 7
.
7 8
	Direction
8 A
=
B C 
ParameterDirection
D V
.
V W
Output
W ]
;
] ^
	SqlHelper
‰‰ 
.
‰‰ 
ExecuteNonQuery
‰‰ %
(
‰‰% &#
SqlConnectionProvider
‰‰& ;
.
‰‰; <!
GetConnectionString
‰‰< O
(
‰‰O P
DataAccessType
‰‰P ^
.
‰‰^ _
Write
‰‰_ d
)
‰‰d e
,
‰‰e f
CommandType
‰‰g r
.
‰‰r s
StoredProcedure‰‰s ‚
,‰‰‚ ƒ
$str‰‰„ ™
,‰‰™ 
arrSqlParameter‰‰› ª
)‰‰ª «
;‰‰« ¬
return
 
int
 
.
 
Parse
 
(
 
arrSqlParameter
 ,
[
, -
arrSqlParameter
- <
.
< =
Length
= C
-
D E
$num
F G
]
G H
.
H I
Value
I N
.
N O
ToString
O W
(
W X
)
X Y
)
Y Z
;
Z [
}
‹‹ 	
public
 
static
 
int
  
SaveSubProgramData
 ,
(
, -
SubProgramVM
- 9

subProgram
: D
)
D E
{
 	
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
‘‘ 
new
’’ 
SqlParameter
’’ $
(
’’$ %
$str
’’% 2
,
’’2 3

subProgram
’’4 >
.
’’> ?

Subprogram
’’? I
)
’’I J
,
’’J K
new
““ 
SqlParameter
““ $
(
““$ %
$str
““% 8
,
““8 9

subProgram
““: D
.
““D E
QASSubprogramid
““E T
)
““T U
,
““U V
new
”” 
SqlParameter
”” $
(
””$ %
$str
””% 1
,
””1 2

subProgram
””3 =
.
””= >
	ProgramId
””> G
)
””G H
,
””H I
new
•• 
SqlParameter
•• $
(
••$ %
$str
••% *
,
••* +
	SqlDbType
••, 5
.
••5 6
Int
••6 9
)
••9 :
,
••: ;
}
–– 
;
–– 
arrSqlParameter
—— 
[
—— 
arrSqlParameter
—— +
.
——+ ,
Length
——, 2
-
——3 4
$num
——5 6
]
——6 7
.
——7 8
	Direction
——8 A
=
——B C 
ParameterDirection
——D V
.
——V W
Output
——W ]
;
——] ^
	SqlHelper
 
.
 
ExecuteNonQuery
 %
(
% &#
SqlConnectionProvider
& ;
.
; <!
GetConnectionString
< O
(
O P
DataAccessType
P ^
.
^ _
Write
_ d
)
d e
,
e f
CommandType
g r
.
r s
StoredProcedures ‚
,‚ ƒ
$str„ 
, 
arrSqlParameter ­
)­ ®
;® ―
return
™™ 
int
™™ 
.
™™ 
Parse
™™ 
(
™™ 
arrSqlParameter
™™ ,
[
™™, -
arrSqlParameter
™™- <
.
™™< =
Length
™™= C
-
™™D E
$num
™™F G
]
™™G H
.
™™H I
Value
™™I N
.
™™N O
ToString
™™O W
(
™™W X
)
™™X Y
)
™™Y Z
;
™™Z [
}
 	
public
 
static
 
int
 #
SaveSubSpecialityData
 /
(
/ 0
SubProgramVM
0 <

subProgram
= G
)
G H
{
 	
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
   
new
΅΅ 
SqlParameter
΅΅ $
(
΅΅$ %
$str
΅΅% 2
,
΅΅2 3

subProgram
΅΅4 >
.
΅΅> ?

Subprogram
΅΅? I
)
΅΅I J
,
΅΅J K
new
ΆΆ 
SqlParameter
ΆΆ $
(
ΆΆ$ %
$str
ΆΆ% 8
,
ΆΆ8 9

subProgram
ΆΆ: D
.
ΆΆD E
QASSubprogramid
ΆΆE T
)
ΆΆT U
,
ΆΆU V
new
££ 
SqlParameter
££ $
(
££$ %
$str
££% 1
,
££1 2

subProgram
££3 =
.
££= >
	ProgramId
££> G
)
££G H
,
££H I
new
¤¤ 
SqlParameter
¤¤ $
(
¤¤$ %
$str
¤¤% *
,
¤¤* +
	SqlDbType
¤¤, 5
.
¤¤5 6
Int
¤¤6 9
)
¤¤9 :
,
¤¤: ;
}
¥¥ 
;
¥¥ 
arrSqlParameter
¦¦ 
[
¦¦ 
arrSqlParameter
¦¦ +
.
¦¦+ ,
Length
¦¦, 2
-
¦¦3 4
$num
¦¦5 6
]
¦¦6 7
.
¦¦7 8
	Direction
¦¦8 A
=
¦¦B C 
ParameterDirection
¦¦D V
.
¦¦V W
Output
¦¦W ]
;
¦¦] ^
	SqlHelper
§§ 
.
§§ 
ExecuteNonQuery
§§ %
(
§§% &#
SqlConnectionProvider
§§& ;
.
§§; <!
GetConnectionString
§§< O
(
§§O P
DataAccessType
§§P ^
.
§§^ _
Write
§§_ d
)
§§d e
,
§§e f
CommandType
§§g r
.
§§r s
StoredProcedure§§s ‚
,§§‚ ƒ
$str§§„ 
,§§ 
arrSqlParameter§§ ­
)§§­ ®
;§§® ―
return
¨¨ 
int
¨¨ 
.
¨¨ 
Parse
¨¨ 
(
¨¨ 
arrSqlParameter
¨¨ ,
[
¨¨, -
arrSqlParameter
¨¨- <
.
¨¨< =
Length
¨¨= C
-
¨¨D E
$num
¨¨F G
]
¨¨G H
.
¨¨H I
Value
¨¨I N
.
¨¨N O
ToString
¨¨O W
(
¨¨W X
)
¨¨X Y
)
¨¨Y Z
;
¨¨Z [
}
©© 	
public
¬¬ 
static
¬¬ 
int
¬¬ #
SaveSubSpecialityData
¬¬ /
(
¬¬/ 0
SubSpecialityVM
¬¬0 ?
subSpeciality
¬¬@ M
)
¬¬M N
{
­­ 	
SqlParameter
®® 
[
®® 
]
®® 
arrSqlParameter
®® *
=
®®+ ,
{
―― 
new
°° 
SqlParameter
°° $
(
°°$ %
$str
°°% 4
,
°°4 5
subSpeciality
°°6 C
.
°°C D
Subspecialty
°°D P
)
°°P Q
,
°°Q R
new
±± 
SqlParameter
±± $
(
±±$ %
$str
±±% :
,
±±: ;
subSpeciality
±±< I
.
±±I J
QASSubspecialtyid
±±J [
)
±±[ \
,
±±\ ]
new
²² 
SqlParameter
²² $
(
²²$ %
$str
²²% 4
,
²²4 5
subSpeciality
²²6 C
.
²²C D
SubprogramId
²²D P
)
²²P Q
,
²²Q R
new
³³ 
SqlParameter
³³ $
(
³³$ %
$str
³³% *
,
³³* +
	SqlDbType
³³, 5
.
³³5 6
Int
³³6 9
)
³³9 :
,
³³: ;
}
΄΄ 
;
΄΄ 
arrSqlParameter
µµ 
[
µµ 
arrSqlParameter
µµ +
.
µµ+ ,
Length
µµ, 2
-
µµ3 4
$num
µµ5 6
]
µµ6 7
.
µµ7 8
	Direction
µµ8 A
=
µµB C 
ParameterDirection
µµD V
.
µµV W
Output
µµW ]
;
µµ] ^
	SqlHelper
¶¶ 
.
¶¶ 
ExecuteNonQuery
¶¶ %
(
¶¶% &#
SqlConnectionProvider
¶¶& ;
.
¶¶; <!
GetConnectionString
¶¶< O
(
¶¶O P
DataAccessType
¶¶P ^
.
¶¶^ _
Write
¶¶_ d
)
¶¶d e
,
¶¶e f
CommandType
¶¶g r
.
¶¶r s
StoredProcedure¶¶s ‚
,¶¶‚ ƒ
$str¶¶„ 
,¶¶  
arrSqlParameter¶¶΅ °
)¶¶° ±
;¶¶± ²
return
·· 
int
·· 
.
·· 
Parse
·· 
(
·· 
arrSqlParameter
·· ,
[
··, -
arrSqlParameter
··- <
.
··< =
Length
··= C
-
··D E
$num
··F G
]
··G H
.
··H I
Value
··I N
.
··N O
ToString
··O W
(
··W X
)
··X Y
)
··Y Z
;
··Z [
}
ΈΈ 	
public
»» 
static
»» 
int
»» ,
SaveSubspecialtyTopicXWalkData
»» 8
(
»»8 9&
SubspecialtyTopicXWalkVM
»»9 Q$
subspecialtyTopicXWalk
»»R h
)
»»h i
{
ΌΌ 	
SqlParameter
½½ 
[
½½ 
]
½½ 
arrSqlParameter
½½ *
=
½½+ ,
{
ΎΎ 
new
ΏΏ 
SqlParameter
ΏΏ $
(
ΏΏ$ %
$str
ΏΏ% 6
,
ΏΏ6 7$
subspecialtyTopicXWalk
ΏΏ8 N
.
ΏΏN O
SubSpecialityId
ΏΏO ^
)
ΏΏ^ _
,
ΏΏ_ `
new
ΐΐ 
SqlParameter
ΐΐ $
(
ΐΐ$ %
$str
ΐΐ% /
,
ΐΐ/ 0$
subspecialtyTopicXWalk
ΐΐ1 G
.
ΐΐG H
TopicId
ΐΐH O
)
ΐΐO P
,
ΐΐP Q
new
ΑΑ 
SqlParameter
ΑΑ $
(
ΑΑ$ %
$str
ΑΑ% *
,
ΑΑ* +
	SqlDbType
ΑΑ, 5
.
ΑΑ5 6
Int
ΑΑ6 9
)
ΑΑ9 :
,
ΑΑ: ;
}
ΒΒ 
;
ΒΒ 
arrSqlParameter
ΓΓ 
[
ΓΓ 
arrSqlParameter
ΓΓ +
.
ΓΓ+ ,
Length
ΓΓ, 2
-
ΓΓ3 4
$num
ΓΓ5 6
]
ΓΓ6 7
.
ΓΓ7 8
	Direction
ΓΓ8 A
=
ΓΓB C 
ParameterDirection
ΓΓD V
.
ΓΓV W
Output
ΓΓW ]
;
ΓΓ] ^
	SqlHelper
ΔΔ 
.
ΔΔ 
ExecuteNonQuery
ΔΔ %
(
ΔΔ% &#
SqlConnectionProvider
ΔΔ& ;
.
ΔΔ; <!
GetConnectionString
ΔΔ< O
(
ΔΔO P
DataAccessType
ΔΔP ^
.
ΔΔ^ _
Write
ΔΔ_ d
)
ΔΔd e
,
ΔΔe f
CommandType
ΔΔg r
.
ΔΔr s
StoredProcedureΔΔs ‚
,ΔΔ‚ ƒ
$strΔΔ„ ª
,ΔΔª «
arrSqlParameterΔΔ¬ »
)ΔΔ» Ό
;ΔΔΌ ½
return
ΕΕ 
int
ΕΕ 
.
ΕΕ 
Parse
ΕΕ 
(
ΕΕ 
arrSqlParameter
ΕΕ ,
[
ΕΕ, -
arrSqlParameter
ΕΕ- <
.
ΕΕ< =
Length
ΕΕ= C
-
ΕΕD E
$num
ΕΕF G
]
ΕΕG H
.
ΕΕH I
Value
ΕΕI N
.
ΕΕN O
ToString
ΕΕO W
(
ΕΕW X
)
ΕΕX Y
)
ΕΕY Z
;
ΕΕZ [
}
ΖΖ 	
public
ΚΚ 
static
ΚΚ 
int
ΚΚ !
RetiredQuestionData
ΚΚ -
(
ΚΚ- .

QuestionVM
ΚΚ. 8
questioData
ΚΚ9 D
)
ΚΚD E
{
ΛΛ 	
SqlParameter
ΜΜ 
[
ΜΜ 
]
ΜΜ 
arrSqlParameter
ΜΜ *
=
ΜΜ+ ,
{
ΝΝ 
new
ΞΞ 
SqlParameter
ΞΞ $
(
ΞΞ$ %
$str
ΞΞ% 8
,
ΞΞ8 9
questioData
ΞΞ: E
.
ΞΞE F
Id
ΞΞF H
)
ΞΞH I
,
ΞΞI J
new
ΟΟ 
SqlParameter
ΟΟ $
(
ΟΟ$ %
$str
ΟΟ% .
,
ΟΟ. /
Convert
ΟΟ0 7
.
ΟΟ7 8
ToInt32
ΟΟ8 ?
(
ΟΟ? @
questioData
ΟΟ@ K
.
ΟΟK L
Status
ΟΟL R
)
ΟΟR S
)
ΟΟS T
,
ΟΟT U
new
ΠΠ 
SqlParameter
ΠΠ $
(
ΠΠ$ %
$str
ΠΠ% 0
,
ΠΠ0 1
Convert
ΠΠ2 9
.
ΠΠ9 :
	ToBoolean
ΠΠ: C
(
ΠΠC D
questioData
ΠΠD O
.
ΠΠO P
Active
ΠΠP V
)
ΠΠV W
)
ΠΠW X
,
ΠΠX Y
new
ΡΡ 
SqlParameter
ΡΡ $
(
ΡΡ$ %
$str
ΡΡ% *
,
ΡΡ* +
	SqlDbType
ΡΡ, 5
.
ΡΡ5 6
Int
ΡΡ6 9
)
ΡΡ9 :
,
ΡΡ: ;
}
ÒÒ 
;
ÒÒ 
arrSqlParameter
ΣΣ 
[
ΣΣ 
arrSqlParameter
ΣΣ +
.
ΣΣ+ ,
Length
ΣΣ, 2
-
ΣΣ3 4
$num
ΣΣ5 6
]
ΣΣ6 7
.
ΣΣ7 8
	Direction
ΣΣ8 A
=
ΣΣB C 
ParameterDirection
ΣΣD V
.
ΣΣV W
Output
ΣΣW ]
;
ΣΣ] ^
	SqlHelper
ΤΤ 
.
ΤΤ 
ExecuteNonQuery
ΤΤ %
(
ΤΤ% &#
SqlConnectionProvider
ΤΤ& ;
.
ΤΤ; <!
GetConnectionString
ΤΤ< O
(
ΤΤO P
DataAccessType
ΤΤP ^
.
ΤΤ^ _
Write
ΤΤ_ d
)
ΤΤd e
,
ΤΤe f
CommandType
ΤΤg r
.
ΤΤr s
StoredProcedureΤΤs ‚
,ΤΤ‚ ƒ
$strΤΤ„ 
,ΤΤ 
arrSqlParameterΤΤ ®
)ΤΤ® ―
;ΤΤ― °
return
ΥΥ 
int
ΥΥ 
.
ΥΥ 
Parse
ΥΥ 
(
ΥΥ 
arrSqlParameter
ΥΥ ,
[
ΥΥ, -
arrSqlParameter
ΥΥ- <
.
ΥΥ< =
Length
ΥΥ= C
-
ΥΥD E
$num
ΥΥF G
]
ΥΥG H
.
ΥΥH I
Value
ΥΥI N
.
ΥΥN O
ToString
ΥΥO W
(
ΥΥW X
)
ΥΥX Y
)
ΥΥY Z
;
ΥΥZ [
}
ΦΦ 	
public
ΪΪ 
static
ΪΪ 
int
ΪΪ  
UpdateQuestionData
ΪΪ ,
(
ΪΪ, -

QuestionVM
ΪΪ- 7
questioData
ΪΪ8 C
)
ΪΪC D
{
ΫΫ 	
SqlParameter
άά 
[
άά 
]
άά 
arrSqlParameter
άά *
=
άά+ ,
{
έέ 
new
ήή 
SqlParameter
ήή $
(
ήή$ %
$str
ήή% 4
,
ήή4 5
Convert
ήή6 =
.
ήή= >
	ToBoolean
ήή> G
(
ήήG H
questioData
ήήH S
.
ήήS T
QuestionType
ήήT `
)
ήή` a
)
ήήa b
,
ήήb c
new
ίί 
SqlParameter
ίί $
(
ίί$ %
$str
ίί% 8
,
ίί8 9
questioData
ίί: E
.
ίίE F
Id
ίίF H
)
ίίH I
,
ίίI J
new
ΰΰ 
SqlParameter
ΰΰ $
(
ΰΰ$ %
$str
ΰΰ% ;
,
ΰΰ; <
questioData
ΰΰ= H
.
ΰΰH I

References
ΰΰI S
)
ΰΰS T
,
ΰΰT U
new
αα 
SqlParameter
αα $
(
αα$ %
$str
αα% .
,
αα. /
Convert
αα0 7
.
αα7 8
ToInt32
αα8 ?
(
αα? @
questioData
αα@ K
.
ααK L
Status
ααL R
)
ααR S
)
ααS T
,
ααT U
new
ββ 
SqlParameter
ββ $
(
ββ$ %
$str
ββ% ,
,
ββ, -
questioData
ββ. 9
.
ββ9 :
Stem
ββ: >
)
ββ> ?
,
ββ? @
new
γγ 
SqlParameter
γγ $
(
γγ$ %
$str
γγ% 2
,
γγ2 3
questioData
γγ4 ?
.
γγ? @

FriendlyId
γγ@ J
)
γγJ K
,
γγK L
new
δδ 
SqlParameter
δδ $
(
δδ$ %
$str
δδ% 0
,
δδ0 1
Convert
δδ2 9
.
δδ9 :
	ToBoolean
δδ: C
(
δδC D
questioData
δδD O
.
δδO P
Active
δδP V
)
δδV W
)
δδW X
,
δδX Y
new
εε 
SqlParameter
εε $
(
εε$ %
$str
εε% 1
,
εε1 2
questioData
εε3 >
.
εε> ?
	Createdon
εε? H
)
εεH I
,
εεI J
new
ζζ 
SqlParameter
ζζ $
(
ζζ$ %
$str
ζζ% 2
,
ζζ2 3
questioData
ζζ4 ?
.
ζζ? @

ModifiedOn
ζζ@ J
)
ζζJ K
,
ζζK L
new
ηη 
SqlParameter
ηη $
(
ηη$ %
$str
ηη% 1
,
ηη1 2
Convert
ηη3 :
.
ηη: ;
	ToBoolean
ηη; D
(
ηηD E
questioData
ηηE P
.
ηηP Q
Deleted
ηηQ X
)
ηηX Y
)
ηηY Z
,
ηηZ [
new
θθ 
SqlParameter
θθ $
(
θθ$ %
$str
θθ% ;
,
θθ; <
Convert
θθ= D
.
θθD E
	ToBoolean
θθE N
(
θθN O
questioData
θθO Z
.
θθZ [!
NotRandomizeAnswers
θθ[ n
)
θθn o
)
θθo p
,
θθp q
new
ιι 
SqlParameter
ιι $
(
ιι$ %
$str
ιι% *
,
ιι* +
	SqlDbType
ιι, 5
.
ιι5 6
Int
ιι6 9
)
ιι9 :
,
ιι: ;
}
κκ 
;
κκ 
arrSqlParameter
λλ 
[
λλ 
arrSqlParameter
λλ +
.
λλ+ ,
Length
λλ, 2
-
λλ3 4
$num
λλ5 6
]
λλ6 7
.
λλ7 8
	Direction
λλ8 A
=
λλB C 
ParameterDirection
λλD V
.
λλV W
Output
λλW ]
;
λλ] ^
	SqlHelper
μμ 
.
μμ 
ExecuteNonQuery
μμ %
(
μμ% &#
SqlConnectionProvider
μμ& ;
.
μμ; <!
GetConnectionString
μμ< O
(
μμO P
DataAccessType
μμP ^
.
μμ^ _
Write
μμ_ d
)
μμd e
,
μμe f
CommandType
μμg r
.
μμr s
StoredProcedureμμs ‚
,μμ‚ ƒ
$strμμ„ 
,μμ 
arrSqlParameterμμ ­
)μμ­ ®
;μμ® ―
return
νν 
int
νν 
.
νν 
Parse
νν 
(
νν 
arrSqlParameter
νν ,
[
νν, -
arrSqlParameter
νν- <
.
νν< =
Length
νν= C
-
ννD E
$num
ννF G
]
ννG H
.
ννH I
Value
ννI N
.
ννN O
ToString
ννO W
(
ννW X
)
ννX Y
)
ννY Z
;
ννZ [
}
ξξ 	
public
ρρ 
static
ρρ 
int
ρρ +
UpdateorInsertRelatedContents
ρρ 7
(
ρρ7 8

QuestionVM
ρρ8 B
questioData
ρρC N
,
ρρN O
int
ρρP S

questionId
ρρT ^
)
ρρ^ _
{
ςς 	
SqlParameter
σσ 
[
σσ 
]
σσ 
arrSqlParameter
σσ *
=
σσ+ ,
{
ττ 
new
υυ 
SqlParameter
υυ %
(
υυ% &
$str
υυ& 3
,
υυ3 4
questioData
υυ5 @
.
υυ@ A

FriendlyId
υυA K
)
υυK L
,
υυL M
new
φφ 
SqlParameter
φφ %
(
φφ% &
$str
φφ& 3
,
φφ3 4

questionId
φφ5 ?
)
φφ? @
,
φφ@ A
new
χχ 
SqlParameter
χχ %
(
χχ% &
$str
χχ& 8
,
χχ8 9
questioData
χχ: E
.
χχE F
Id
χχF H
)
χχH I
,
χχI J
new
ψψ 
SqlParameter
ψψ %
(
ψψ% &
$str
ψψ& 8
,
ψψ8 9
Convert
ψψ: A
.
ψψA B
ToString
ψψB J
(
ψψJ K
questioData
ψψK V
.
ψψV W
RelatedContents
ψψW f
)
ψψf g
)
ψψg h
,
ψψh i
new
ωω 
SqlParameter
ωω %
(
ωω% &
$str
ωω& 6
,
ωω6 7
questioData
ωω8 C
.
ωωC D
	Createdon
ωωD M
)
ωωM N
,
ωωN O
new
ϊϊ 
SqlParameter
ϊϊ %
(
ϊϊ% &
$str
ϊϊ& 7
,
ϊϊ7 8
questioData
ϊϊ9 D
.
ϊϊD E

ModifiedOn
ϊϊE O
)
ϊϊO P
,
ϊϊP Q
new
ϋϋ 
SqlParameter
ϋϋ %
(
ϋϋ% &
$str
ϋϋ& +
,
ϋϋ+ ,
	SqlDbType
ϋϋ- 6
.
ϋϋ6 7
Int
ϋϋ7 :
)
ϋϋ: ;
,
ϋϋ; <
}
όό 
;
όό 
arrSqlParameter
ύύ 
[
ύύ 
arrSqlParameter
ύύ +
.
ύύ+ ,
Length
ύύ, 2
-
ύύ3 4
$num
ύύ5 6
]
ύύ6 7
.
ύύ7 8
	Direction
ύύ8 A
=
ύύB C 
ParameterDirection
ύύD V
.
ύύV W
Output
ύύW ]
;
ύύ] ^
	SqlHelper
ώώ 
.
ώώ 
ExecuteNonQuery
ώώ %
(
ώώ% &#
SqlConnectionProvider
ώώ& ;
.
ώώ; <!
GetConnectionString
ώώ< O
(
ώώO P
DataAccessType
ώώP ^
.
ώώ^ _
Write
ώώ_ d
)
ώώd e
,
ώώe f
CommandType
ώώg r
.
ώώr s
StoredProcedureώώs ‚
,ώώ‚ ƒ
$strώώ„ §
,ώώ§ ¨
arrSqlParameterώώ© Έ
)ώώΈ Ή
;ώώΉ Ί
return
ÿÿ 
int
ÿÿ 
.
ÿÿ 
Parse
ÿÿ 
(
ÿÿ 
arrSqlParameter
ÿÿ ,
[
ÿÿ, -
arrSqlParameter
ÿÿ- <
.
ÿÿ< =
Length
ÿÿ= C
-
ÿÿD E
$num
ÿÿF G
]
ÿÿG H
.
ÿÿH I
Value
ÿÿI N
.
ÿÿN O
ToString
ÿÿO W
(
ÿÿW X
)
ÿÿX Y
)
ÿÿY Z
;
ÿÿZ [
}
€€ 	
public
ƒƒ 
static
ƒƒ 
int
ƒƒ 
UpdateTopicData
ƒƒ )
(
ƒƒ) *
TopicContentVM
ƒƒ* 8
topicContent
ƒƒ9 E
)
ƒƒE F
{
„„ 	
SqlParameter
…… 
[
…… 
]
…… 
arrSqlParameter
…… *
=
……+ ,
{
†† 
new
‡‡ 
SqlParameter
‡‡ $
(
‡‡$ %
$str
‡‡% 3
,
‡‡3 4
topicContent
‡‡5 A
.
‡‡A B
TopicId
‡‡B I
)
‡‡I J
,
‡‡J K
new
 
SqlParameter
 $
(
$ %
$str
% ,
,
, -
topicContent
. :
.
: ;
Code
; ?
)
? @
,
@ A
new
‰‰ 
SqlParameter
‰‰ $
(
‰‰$ %
$str
‰‰% /
,
‰‰/ 0
Convert
‰‰1 8
.
‰‰8 9
	ToBoolean
‰‰9 B
(
‰‰B C
topicContent
‰‰C O
.
‰‰O P
Deleted
‰‰P W
)
‰‰W X
)
‰‰X Y
,
‰‰Y Z
new
 
SqlParameter
 $
(
$ %
$str
% 2
,
2 3
topicContent
4 @
.
@ A

ModifiedOn
A K
)
K L
,
L M
new
‹‹ 
SqlParameter
‹‹ $
(
‹‹$ %
$str
‹‹% -
,
‹‹- .
topicContent
‹‹/ ;
.
‹‹; <
Title
‹‹< A
)
‹‹A B
,
‹‹B C
new
 
SqlParameter
 $
(
$ %
$str
% /
,
/ 0
topicContent
1 =
.
= >
Chapter
> E
)
E F
,
F G
new
 
SqlParameter
 $
(
$ %
$str
% 3
,
3 4
topicContent
5 A
.
A B
ChapterName
B M
)
M N
,
N O
new
 
SqlParameter
 $
(
$ %
$str
% -
,
- .
topicContent
/ ;
.
; <
Topic
< A
)
A B
,
B C
new
 
SqlParameter
 $
(
$ %
$str
% 1
,
1 2
topicContent
3 ?
.
? @
	TopicName
@ I
)
I J
,
J K
new
 
SqlParameter
 $
(
$ %
$str
% 0
,
0 1
Convert
2 9
.
9 :
	ToBoolean
: C
(
C D
topicContent
D P
.
P Q
Active
Q W
)
W X
)
X Y
,
Y Z
new
‘‘ 
SqlParameter
‘‘ $
(
‘‘$ %
$str
‘‘% *
,
‘‘* +
	SqlDbType
‘‘, 5
.
‘‘5 6
Int
‘‘6 9
)
‘‘9 :
,
‘‘: ;
}
’’ 
;
’’ 
arrSqlParameter
““ 
[
““ 
arrSqlParameter
““ +
.
““+ ,
Length
““, 2
-
““3 4
$num
““5 6
]
““6 7
.
““7 8
	Direction
““8 A
=
““B C 
ParameterDirection
““D V
.
““V W
Output
““W ]
;
““] ^
	SqlHelper
”” 
.
”” 
ExecuteNonQuery
”” %
(
””% &#
SqlConnectionProvider
””& ;
.
””; <!
GetConnectionString
””< O
(
””O P
DataAccessType
””P ^
.
””^ _
Write
””_ d
)
””d e
,
””e f
CommandType
””g r
.
””r s
StoredProcedure””s ‚
,””‚ ƒ
$str””„ ™
,””™ 
arrSqlParameter””› ª
)””ª «
;””« ¬
return
•• 
int
•• 
.
•• 
Parse
•• 
(
•• 
arrSqlParameter
•• ,
[
••, -
arrSqlParameter
••- <
.
••< =
Length
••= C
-
••D E
$num
••F G
]
••G H
.
••H I
Value
••I N
.
••N O
ToString
••O W
(
••W X
)
••X Y
)
••Y Z
;
••Z [
}
–– 	
public
™™ 
static
™™ 
int
™™ *
UpdateQuestionTopicXWalkData
™™ 6
(
™™6 7"
QuestionTopicXWalkVM
™™7 K 
questionTopicXWalk
™™L ^
)
™™^ _
{
 	
SqlParameter
›› 
[
›› 
]
›› 
arrSqlParameter
›› *
=
››+ ,
{
 
new
 
SqlParameter
 $
(
$ %
$str
% 2
,
2 3 
questionTopicXWalk
4 F
.
F G

QuestionId
G Q
)
Q R
,
R S
new
 
SqlParameter
 $
(
$ %
$str
% 7
,
7 8 
questionTopicXWalk
9 K
.
K L
QASQuestionId
L Y
)
Y Z
,
Z [
new
 
SqlParameter
 $
(
$ %
$str
% 3
,
3 4 
questionTopicXWalk
5 G
.
G H

QASTopicId
H R
)
R S
,
S T
new
   
SqlParameter
   $
(
  $ %
$str
  % /
,
  / 0 
questionTopicXWalk
  1 C
.
  C D
TopicId
  D K
)
  K L
,
  L M
new
΅΅ 
SqlParameter
΅΅ $
(
΅΅$ %
$str
΅΅% *
,
΅΅* +
	SqlDbType
΅΅, 5
.
΅΅5 6
Int
΅΅6 9
)
΅΅9 :
,
΅΅: ;
}
ΆΆ 
;
ΆΆ 
arrSqlParameter
££ 
[
££ 
arrSqlParameter
££ +
.
££+ ,
Length
££, 2
-
££3 4
$num
££5 6
]
££6 7
.
££7 8
	Direction
££8 A
=
££B C 
ParameterDirection
££D V
.
££V W
Output
££W ]
;
££] ^
	SqlHelper
¤¤ 
.
¤¤ 
ExecuteNonQuery
¤¤ %
(
¤¤% &#
SqlConnectionProvider
¤¤& ;
.
¤¤; <!
GetConnectionString
¤¤< O
(
¤¤O P
DataAccessType
¤¤P ^
.
¤¤^ _
Write
¤¤_ d
)
¤¤d e
,
¤¤e f
CommandType
¤¤g r
.
¤¤r s
StoredProcedure¤¤s ‚
,¤¤‚ ƒ
$str¤¤„ ¦
,¤¤¦ §
arrSqlParameter¤¤¨ ·
)¤¤· Έ
;¤¤Έ Ή
return
¥¥ 
int
¥¥ 
.
¥¥ 
Parse
¥¥ 
(
¥¥ 
arrSqlParameter
¥¥ ,
[
¥¥, -
arrSqlParameter
¥¥- <
.
¥¥< =
Length
¥¥= C
-
¥¥D E
$num
¥¥F G
]
¥¥G H
.
¥¥H I
Value
¥¥I N
.
¥¥N O
ToString
¥¥O W
(
¥¥W X
)
¥¥X Y
)
¥¥Y Z
;
¥¥Z [
}
¦¦ 	
public
©© 
static
©© 
int
©© 
UpdateProgramData
©© +
(
©©+ ,
	ProgramVM
©©, 5
program
©©6 =
)
©©= >
{
ªª 	
SqlParameter
«« 
[
«« 
]
«« 
arrSqlParameter
«« *
=
««+ ,
{
¬¬ 
new
­­ 
SqlParameter
­­ $
(
­­$ %
$str
­­% /
,
­­/ 0
program
­­1 8
.
­­8 9
Program
­­9 @
)
­­@ A
,
­­A B
new
®® 
SqlParameter
®® $
(
®®$ %
$str
®®% 5
,
®®5 6
program
®®7 >
.
®®> ?
QASProgramid
®®? K
)
®®K L
,
®®L M
new
―― 
SqlParameter
―― $
(
――$ %
$str
――% *
,
――* +
	SqlDbType
――, 5
.
――5 6
Int
――6 9
)
――9 :
,
――: ;
}
°° 
;
°° 
arrSqlParameter
±± 
[
±± 
arrSqlParameter
±± +
.
±±+ ,
Length
±±, 2
-
±±3 4
$num
±±5 6
]
±±6 7
.
±±7 8
	Direction
±±8 A
=
±±B C 
ParameterDirection
±±D V
.
±±V W
Output
±±W ]
;
±±] ^
	SqlHelper
²² 
.
²² 
ExecuteNonQuery
²² %
(
²²% &#
SqlConnectionProvider
²²& ;
.
²²; <!
GetConnectionString
²²< O
(
²²O P
DataAccessType
²²P ^
.
²²^ _
Write
²²_ d
)
²²d e
,
²²e f
CommandType
²²g r
.
²²r s
StoredProcedure²²s ‚
,²²‚ ƒ
$str²²„ ›
,²²› 
arrSqlParameter²² ¬
)²²¬ ­
;²²­ ®
return
³³ 
int
³³ 
.
³³ 
Parse
³³ 
(
³³ 
arrSqlParameter
³³ ,
[
³³, -
arrSqlParameter
³³- <
.
³³< =
Length
³³= C
-
³³D E
$num
³³F G
]
³³G H
.
³³H I
Value
³³I N
.
³³N O
ToString
³³O W
(
³³W X
)
³³X Y
)
³³Y Z
;
³³Z [
}
΄΄ 	
public
·· 
static
·· 
int
·· "
UpdateSubProgramData
·· .
(
··. /
SubProgramVM
··/ ;

subProgram
··< F
)
··F G
{
ΈΈ 	
SqlParameter
ΉΉ 
[
ΉΉ 
]
ΉΉ 
arrSqlParameter
ΉΉ *
=
ΉΉ+ ,
{
ΊΊ 
new
»» 
SqlParameter
»» $
(
»»$ %
$str
»»% 2
,
»»2 3

subProgram
»»4 >
.
»»> ?

Subprogram
»»? I
)
»»I J
,
»»J K
new
ΌΌ 
SqlParameter
ΌΌ $
(
ΌΌ$ %
$str
ΌΌ% 8
,
ΌΌ8 9

subProgram
ΌΌ: D
.
ΌΌD E
QASSubprogramid
ΌΌE T
)
ΌΌT U
,
ΌΌU V
new
½½ 
SqlParameter
½½ $
(
½½$ %
$str
½½% 1
,
½½1 2

subProgram
½½3 =
.
½½= >
	ProgramId
½½> G
)
½½G H
,
½½H I
new
ΎΎ 
SqlParameter
ΎΎ $
(
ΎΎ$ %
$str
ΎΎ% *
,
ΎΎ* +
	SqlDbType
ΎΎ, 5
.
ΎΎ5 6
Int
ΎΎ6 9
)
ΎΎ9 :
,
ΎΎ: ;
}
ΏΏ 
;
ΏΏ 
arrSqlParameter
ΐΐ 
[
ΐΐ 
arrSqlParameter
ΐΐ +
.
ΐΐ+ ,
Length
ΐΐ, 2
-
ΐΐ3 4
$num
ΐΐ5 6
]
ΐΐ6 7
.
ΐΐ7 8
	Direction
ΐΐ8 A
=
ΐΐB C 
ParameterDirection
ΐΐD V
.
ΐΐV W
Output
ΐΐW ]
;
ΐΐ] ^
	SqlHelper
ΑΑ 
.
ΑΑ 
ExecuteNonQuery
ΑΑ %
(
ΑΑ% &#
SqlConnectionProvider
ΑΑ& ;
.
ΑΑ; <!
GetConnectionString
ΑΑ< O
(
ΑΑO P
DataAccessType
ΑΑP ^
.
ΑΑ^ _
Write
ΑΑ_ d
)
ΑΑd e
,
ΑΑe f
CommandType
ΑΑg r
.
ΑΑr s
StoredProcedureΑΑs ‚
,ΑΑ‚ ƒ
$strΑΑ„ 
,ΑΑ 
arrSqlParameterΑΑ  ―
)ΑΑ― °
;ΑΑ° ±
return
ΒΒ 
int
ΒΒ 
.
ΒΒ 
Parse
ΒΒ 
(
ΒΒ 
arrSqlParameter
ΒΒ ,
[
ΒΒ, -
arrSqlParameter
ΒΒ- <
.
ΒΒ< =
Length
ΒΒ= C
-
ΒΒD E
$num
ΒΒF G
]
ΒΒG H
.
ΒΒH I
Value
ΒΒI N
.
ΒΒN O
ToString
ΒΒO W
(
ΒΒW X
)
ΒΒX Y
)
ΒΒY Z
;
ΒΒZ [
}
ΓΓ 	
public
ΖΖ 
static
ΖΖ 
int
ΖΖ %
UpdateSubSpecialityData
ΖΖ 1
(
ΖΖ1 2
SubSpecialityVM
ΖΖ2 A
subSpeciality
ΖΖB O
)
ΖΖO P
{
ΗΗ 	
SqlParameter
ΘΘ 
[
ΘΘ 
]
ΘΘ 
arrSqlParameter
ΘΘ *
=
ΘΘ+ ,
{
ΙΙ 
new
ΚΚ 
SqlParameter
ΚΚ $
(
ΚΚ$ %
$str
ΚΚ% 4
,
ΚΚ4 5
subSpeciality
ΚΚ6 C
.
ΚΚC D
Subspecialty
ΚΚD P
)
ΚΚP Q
,
ΚΚQ R
new
ΛΛ 
SqlParameter
ΛΛ $
(
ΛΛ$ %
$str
ΛΛ% :
,
ΛΛ: ;
subSpeciality
ΛΛ< I
.
ΛΛI J
QASSubspecialtyid
ΛΛJ [
)
ΛΛ[ \
,
ΛΛ\ ]
new
ΜΜ 
SqlParameter
ΜΜ $
(
ΜΜ$ %
$str
ΜΜ% 4
,
ΜΜ4 5
subSpeciality
ΜΜ6 C
.
ΜΜC D
SubprogramId
ΜΜD P
)
ΜΜP Q
,
ΜΜQ R
new
ΝΝ 
SqlParameter
ΝΝ $
(
ΝΝ$ %
$str
ΝΝ% *
,
ΝΝ* +
	SqlDbType
ΝΝ, 5
.
ΝΝ5 6
Int
ΝΝ6 9
)
ΝΝ9 :
,
ΝΝ: ;
}
ΞΞ 
;
ΞΞ 
arrSqlParameter
ΟΟ 
[
ΟΟ 
arrSqlParameter
ΟΟ +
.
ΟΟ+ ,
Length
ΟΟ, 2
-
ΟΟ3 4
$num
ΟΟ5 6
]
ΟΟ6 7
.
ΟΟ7 8
	Direction
ΟΟ8 A
=
ΟΟB C 
ParameterDirection
ΟΟD V
.
ΟΟV W
Output
ΟΟW ]
;
ΟΟ] ^
	SqlHelper
ΠΠ 
.
ΠΠ 
ExecuteNonQuery
ΠΠ %
(
ΠΠ% &#
SqlConnectionProvider
ΠΠ& ;
.
ΠΠ; <!
GetConnectionString
ΠΠ< O
(
ΠΠO P
DataAccessType
ΠΠP ^
.
ΠΠ^ _
Write
ΠΠ_ d
)
ΠΠd e
,
ΠΠe f
CommandType
ΠΠg r
.
ΠΠr s
StoredProcedureΠΠs ‚
,ΠΠ‚ ƒ
$strΠΠ„ ΅
,ΠΠ΅ Ά
arrSqlParameterΠΠ£ ²
)ΠΠ² ³
;ΠΠ³ ΄
return
ΡΡ 
int
ΡΡ 
.
ΡΡ 
Parse
ΡΡ 
(
ΡΡ 
arrSqlParameter
ΡΡ ,
[
ΡΡ, -
arrSqlParameter
ΡΡ- <
.
ΡΡ< =
Length
ΡΡ= C
-
ΡΡD E
$num
ΡΡF G
]
ΡΡG H
.
ΡΡH I
Value
ΡΡI N
.
ΡΡN O
ToString
ΡΡO W
(
ΡΡW X
)
ΡΡX Y
)
ΡΡY Z
;
ΡΡZ [
}
ÒÒ 	
public
ΥΥ 
static
ΥΥ 
int
ΥΥ .
 UpdateSubspecialtyTopicXWalkData
ΥΥ :
(
ΥΥ: ;&
SubspecialtyTopicXWalkVM
ΥΥ; S$
subspecialtyTopicXWalk
ΥΥT j
)
ΥΥj k
{
ΦΦ 	
SqlParameter
ΧΧ 
[
ΧΧ 
]
ΧΧ 
arrSqlParameter
ΧΧ *
=
ΧΧ+ ,
{
ΨΨ 
new
ΩΩ 
SqlParameter
ΩΩ $
(
ΩΩ$ %
$str
ΩΩ% 6
,
ΩΩ6 7$
subspecialtyTopicXWalk
ΩΩ8 N
.
ΩΩN O
SubSpecialityId
ΩΩO ^
)
ΩΩ^ _
,
ΩΩ_ `
new
ΪΪ 
SqlParameter
ΪΪ $
(
ΪΪ$ %
$str
ΪΪ% /
,
ΪΪ/ 0$
subspecialtyTopicXWalk
ΪΪ1 G
.
ΪΪG H
TopicId
ΪΪH O
)
ΪΪO P
,
ΪΪP Q
new
ΫΫ 
SqlParameter
ΫΫ $
(
ΫΫ$ %
$str
ΫΫ% *
,
ΫΫ* +
	SqlDbType
ΫΫ, 5
.
ΫΫ5 6
Int
ΫΫ6 9
)
ΫΫ9 :
,
ΫΫ: ;
}
άά 
;
άά 
arrSqlParameter
έέ 
[
έέ 
arrSqlParameter
έέ +
.
έέ+ ,
Length
έέ, 2
-
έέ3 4
$num
έέ5 6
]
έέ6 7
.
έέ7 8
	Direction
έέ8 A
=
έέB C 
ParameterDirection
έέD V
.
έέV W
Output
έέW ]
;
έέ] ^
	SqlHelper
ήή 
.
ήή 
ExecuteNonQuery
ήή %
(
ήή% &#
SqlConnectionProvider
ήή& ;
.
ήή; <!
GetConnectionString
ήή< O
(
ήήO P
DataAccessType
ήήP ^
.
ήή^ _
Write
ήή_ d
)
ήήd e
,
ήήe f
CommandType
ήήg r
.
ήήr s
StoredProcedureήήs ‚
,ήή‚ ƒ
$strήή„ ¬
,ήή¬ ­
arrSqlParameterήή® ½
)ήή½ Ύ
;ήήΎ Ώ
return
ίί 
int
ίί 
.
ίί 
Parse
ίί 
(
ίί 
arrSqlParameter
ίί ,
[
ίί, -
arrSqlParameter
ίί- <
.
ίί< =
Length
ίί= C
-
ίίD E
$num
ίίF G
]
ίίG H
.
ίίH I
Value
ίίI N
.
ίίN O
ToString
ίίO W
(
ίίW X
)
ίίX Y
)
ίίY Z
;
ίίZ [
}
ΰΰ 	
public
γγ 
static
γγ 
int
γγ "
UpdateDiscussionData
γγ .
(
γγ. /
DiscussionVM
γγ/ ;
discussionData
γγ< J
)
γγJ K
{
δδ 	
SqlParameter
εε 
[
εε 
]
εε 
arrSqlParameter
εε *
=
εε+ ,
{
ζζ 
new
ηη 
SqlParameter
ηη $
(
ηη$ %
$str
ηη% 7
,
ηη7 8
discussionData
ηη9 G
.
ηηG H
DiscussionText
ηηH V
)
ηηV W
,
ηηW X
new
θθ 
SqlParameter
θθ $
(
θθ$ %
$str
θθ% 2
,
θθ2 3
discussionData
θθ4 B
.
θθB C

QuestionId
θθC M
)
θθM N
,
θθN O
new
ιι 
SqlParameter
ιι $
(
ιι$ %
$str
ιι% 7
,
ιι7 8
discussionData
ιι9 G
.
ιιG H
DiscussionType
ιιH V
)
ιιV W
,
ιιW X
new
κκ 
SqlParameter
κκ $
(
κκ$ %
$str
κκ% *
,
κκ* +
	SqlDbType
κκ, 5
.
κκ5 6
Int
κκ6 9
)
κκ9 :
,
κκ: ;
}
λλ 
;
λλ 
arrSqlParameter
μμ 
[
μμ 
arrSqlParameter
μμ +
.
μμ+ ,
Length
μμ, 2
-
μμ3 4
$num
μμ5 6
]
μμ6 7
.
μμ7 8
	Direction
μμ8 A
=
μμB C 
ParameterDirection
μμD V
.
μμV W
Output
μμW ]
;
μμ] ^
	SqlHelper
νν 
.
νν 
ExecuteNonQuery
νν %
(
νν% &#
SqlConnectionProvider
νν& ;
.
νν; <!
GetConnectionString
νν< O
(
ννO P
DataAccessType
ννP ^
.
νν^ _
Write
νν_ d
)
ννd e
,
ννe f
CommandType
ννg r
.
ννr s
StoredProcedureννs ‚
,νν‚ ƒ
$strνν„ 
,νν 
arrSqlParameterνν  ―
)νν― °
;νν° ±
return
ξξ 
int
ξξ 
.
ξξ 
Parse
ξξ 
(
ξξ 
arrSqlParameter
ξξ ,
[
ξξ, -
arrSqlParameter
ξξ- <
.
ξξ< =
Length
ξξ= C
-
ξξD E
$num
ξξF G
]
ξξG H
.
ξξH I
Value
ξξI N
.
ξξN O
ToString
ξξO W
(
ξξW X
)
ξξX Y
)
ξξY Z
;
ξξZ [
}
οο 	
public
ςς 
static
ςς 
int
ςς 
UpdateAnswerData
ςς *
(
ςς* +
AnswerVM
ςς+ 3
answerVM
ςς4 <
)
ςς< =
{
σσ 	
SqlParameter
ττ 
[
ττ 
]
ττ 
arrSqlParameter
ττ *
=
ττ+ ,
{
υυ 
new
φφ 
SqlParameter
φφ $
(
φφ$ %
$str
φφ% 5
,
φφ5 6
Convert
φφ7 >
.
φφ> ?
	ToBoolean
φφ? H
(
φφH I
answerVM
φφI Q
.
φφQ R
Correct
φφR Y
)
φφY Z
)
φφZ [
,
φφ[ \
new
χχ 
SqlParameter
χχ $
(
χχ$ %
$str
χχ% 2
,
χχ2 3
answerVM
χχ4 <
.
χχ< =

QuestionId
χχ= G
)
χχG H
,
χχH I
new
ψψ 
SqlParameter
ψψ $
(
ψψ$ %
$str
ψψ% 2
,
ψψ2 3
answerVM
ψψ4 <
.
ψψ< =
Text
ψψ= A
)
ψψA B
,
ψψB C
new
ωω 
SqlParameter
ωω $
(
ωω$ %
$str
ωω% 6
,
ωω6 7
Convert
ωω8 ?
.
ωω? @
ToInt32
ωω@ G
(
ωωG H
answerVM
ωωH P
.
ωωP Q
Sequence
ωωQ Y
)
ωωY Z
)
ωωZ [
,
ωω[ \
new
ϊϊ 
SqlParameter
ϊϊ $
(
ϊϊ$ %
$str
ϊϊ% 2
,
ϊϊ2 3
answerVM
ϊϊ4 <
.
ϊϊ< =

AnswerType
ϊϊ= G
)
ϊϊG H
,
ϊϊH I
new
ϋϋ 
SqlParameter
ϋϋ $
(
ϋϋ$ %
$str
ϋϋ% 5
,
ϋϋ5 6
answerVM
ϋϋ7 ?
.
ϋϋ? @
Id
ϋϋ@ B
)
ϋϋB C
,
ϋϋC D
new
όό 
SqlParameter
όό $
(
όό$ %
$str
όό% *
,
όό* +
	SqlDbType
όό, 5
.
όό5 6
Int
όό6 9
)
όό9 :
,
όό: ;
}
ύύ 
;
ύύ 
arrSqlParameter
ώώ 
[
ώώ 
arrSqlParameter
ώώ +
.
ώώ+ ,
Length
ώώ, 2
-
ώώ3 4
$num
ώώ5 6
]
ώώ6 7
.
ώώ7 8
	Direction
ώώ8 A
=
ώώB C 
ParameterDirection
ώώD V
.
ώώV W
Output
ώώW ]
;
ώώ] ^
	SqlHelper
ÿÿ 
.
ÿÿ 
ExecuteNonQuery
ÿÿ %
(
ÿÿ% &#
SqlConnectionProvider
ÿÿ& ;
.
ÿÿ; <!
GetConnectionString
ÿÿ< O
(
ÿÿO P
DataAccessType
ÿÿP ^
.
ÿÿ^ _
Write
ÿÿ_ d
)
ÿÿd e
,
ÿÿe f
CommandType
ÿÿg r
.
ÿÿr s
StoredProcedureÿÿs ‚
,ÿÿ‚ ƒ
$strÿÿ„ 
,ÿÿ ›
arrSqlParameterÿÿ «
)ÿÿ« ¬
;ÿÿ¬ ­
return
€€ 
int
€€ 
.
€€ 
Parse
€€ 
(
€€ 
arrSqlParameter
€€ ,
[
€€, -
arrSqlParameter
€€- <
.
€€< =
Length
€€= C
-
€€D E
$num
€€F G
]
€€G H
.
€€H I
Value
€€I N
.
€€N O
ToString
€€O W
(
€€W X
)
€€X Y
)
€€Y Z
;
€€Z [
}
 	
public
„„ 
static
„„ 
void
„„ !
DeleteReferenceData
„„ .
(
„„. /
int
„„/ 2
referenceId
„„3 >
,
„„> ?
string
„„@ F
	tableName
„„G P
)
„„P Q
{
…… 	
SqlParameter
†† 
[
†† 
]
†† 
arrSqlParameter
†† *
=
††+ ,
{
‡‡ 
new
 
SqlParameter
 %
(
% &
$str
& 4
,
4 5
referenceId
6 A
)
A B
,
B C
new
‰‰ 
SqlParameter
‰‰ %
(
‰‰% &
$str
‰‰& 2
,
‰‰2 3
	tableName
‰‰4 =
)
‰‰= >
,
‰‰> ?
}
 
;
 
	SqlHelper
 
.
 
ExecuteNonQuery
 %
(
% &#
SqlConnectionProvider
& ;
.
; <!
GetConnectionString
< O
(
O P
DataAccessType
P ^
.
^ _
Write
_ d
)
d e
,
e f
CommandType
g r
.
r s
StoredProcedures ‚
,‚ ƒ
$str„ 
, 
arrSqlParameter ®
)® ―
;― °
}
 	
public
 
static
 
int
 
GetQuestionCount
 *
(
* +
ServiceCallVM
+ 8
serviceCall
9 D
)
D E
{
 	
int
‘‘ 
questionCount
‘‘ 
=
‘‘ 
$num
‘‘  !
;
‘‘! "
SqlParameter
’’ 
[
’’ 
]
’’ 
arrSqlParameter
’’ *
=
’’+ ,
{
““ 
new
”” 
SqlParameter
”” %
(
””% &
$str
””& /
,
””/ 0
serviceCall
””1 <
.
””< =
Status
””= C
)
””C D
,
””D E
}
•• 
;
•• 
using
—— 
(
—— 
SqlDataReader
——  
objSqlDataReader
——! 1
=
——2 3
	SqlHelper
——4 =
.
——= >
ExecuteReader
——> K
(
——K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm €
,€ 
arrSqlParameter‚ ‘
)‘ ’
)’ “
{
™™ 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
›› 
object
 
countObj
 #
=
$ %
objSqlDataReader
& 6
[
6 7
$str
7 F
]
F G
;
G H
questionCount
 !
=
" #
countObj
$ ,
is
- /
DBNull
0 6
?
7 8
$num
9 :
:
; <
Convert
= D
.
D E
ToInt32
E L
(
L M
objSqlDataReader
M ]
[
] ^
$str
^ m
]
m n
)
n o
;
o p
}
 
objSqlDataReader
    
.
    !
Close
  ! &
(
  & '
)
  ' (
;
  ( )
}
΅΅ 
return
££ 
questionCount
££  
;
££  !
}
¤¤ 	
public
§§ 
static
§§ 
void
§§ -
RetiredQuestionFromRelatedTable
§§ :
(
§§: ;
int
§§; >

questionId
§§? I
)
§§I J
{
¨¨ 	
SqlParameter
©© 
[
©© 
]
©© 
arrSqlParameter
©© *
=
©©+ ,
{
ªª 
new
«« 
SqlParameter
«« %
(
««% &
$str
««& 3
,
««3 4

questionId
««5 ?
)
««? @
,
««@ A
}
¬¬ 
;
¬¬ 
	SqlHelper
­­ 
.
­­ 
ExecuteNonQuery
­­ %
(
­­% &#
SqlConnectionProvider
­­& ;
.
­­; <!
GetConnectionString
­­< O
(
­­O P
DataAccessType
­­P ^
.
­­^ _
Write
­­_ d
)
­­d e
,
­­e f
CommandType
­­g r
.
­­r s
StoredProcedure­­s ‚
,­­‚ ƒ
$str­­„ £
,­­£ ¤
arrSqlParameter­­¥ ΄
)­­΄ µ
;­­µ ¶
}
®® 	
public
°° 
static
°° 
List
°° 
<
°° 
int
°° 
>
°° 
GetQuestionList
°°  /
(
°°/ 0
)
°°0 1
{
±± 	
List
²² 
<
²² 
int
²² 
>
²² 
questionList
²² "
=
²²# $
new
²²% (
List
²²) -
<
²²- .
int
²². 1
>
²²1 2
(
²²2 3
)
²²3 4
;
²²4 5
SqlConnection
³³ 

connection
³³ $
=
³³% &
new
³³' *
SqlConnection
³³+ 8
(
³³8 9#
SqlConnectionProvider
³³9 N
.
³³N O!
GetConnectionString
³³O b
(
³³b c
DataAccessType
³³c q
.
³³q r
Read
³³r v
)
³³v w
)
³³w x
;
³³x y
string
΄΄ !
sqlQueryAllquestion
΄΄ &
=
΄΄' (
string
΄΄) /
.
΄΄/ 0
Empty
΄΄0 5
;
΄΄5 6!
sqlQueryAllquestion
µµ 
=
µµ  !
$str
µµ" I
;
µµI J

connection
¶¶ 
.
¶¶ 
Open
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 

SqlCommand
·· 
cmd
·· 
=
·· 
new
··  

SqlCommand
··! +
(
··+ ,!
sqlQueryAllquestion
··, ?
,
··? @

connection
··A K
)
··K L
;
··L M
using
ΈΈ 
(
ΈΈ 
SqlDataReader
ΈΈ  
reader
ΈΈ! '
=
ΈΈ( )
cmd
ΈΈ* -
.
ΈΈ- .
ExecuteReader
ΈΈ. ;
(
ΈΈ; <
)
ΈΈ< =
)
ΈΈ= >
{
ΉΉ 
if
ΊΊ 
(
ΊΊ 
reader
ΊΊ 
.
ΊΊ 
HasRows
ΊΊ "
)
ΊΊ" #
{
»» 
while
½½ 
(
½½ 
reader
½½ !
.
½½! "
Read
½½" &
(
½½& '
)
½½' (
)
½½( )
{
ΎΎ 
int
ΏΏ 

questionId
ΏΏ &
;
ΏΏ& '
object
ΐΐ 
objID
ΐΐ $
=
ΐΐ% &
reader
ΐΐ' -
[
ΐΐ- .
$str
ΐΐ. 2
]
ΐΐ2 3
;
ΐΐ3 4
if
ΑΑ 
(
ΑΑ 
objID
ΑΑ !
is
ΑΑ" $
DBNull
ΑΑ% +
)
ΑΑ+ ,
{
ΒΒ 

questionId
ΓΓ &
=
ΓΓ' (
$num
ΓΓ) *
;
ΓΓ* +
}
ΔΔ 
else
ΕΕ 
{
ΖΖ 

questionId
ΗΗ &
=
ΗΗ' (
reader
ΗΗ) /
.
ΗΗ/ 0
GetInt32
ΗΗ0 8
(
ΗΗ8 9
reader
ΗΗ9 ?
.
ΗΗ? @

GetOrdinal
ΗΗ@ J
(
ΗΗJ K
$str
ΗΗK O
)
ΗΗO P
)
ΗΗP Q
;
ΗΗQ R
}
ΘΘ 
questionList
ΚΚ $
.
ΚΚ$ %
Add
ΚΚ% (
(
ΚΚ( )

questionId
ΚΚ) 3
)
ΚΚ3 4
;
ΚΚ4 5
}
ΛΛ 
reader
ΝΝ 
.
ΝΝ 
Close
ΝΝ  
(
ΝΝ  !
)
ΝΝ! "
;
ΝΝ" #
}
ΞΞ 
}
ΟΟ 

connection
ΡΡ 
.
ΡΡ 
Close
ΡΡ 
(
ΡΡ 
)
ΡΡ 
;
ΡΡ 
return
ÒÒ 
questionList
ÒÒ 
;
ÒÒ  
}
ΣΣ 
public
ΥΥ 
static
ΥΥ 
List
ΥΥ 
<
ΥΥ 
BCSCContentVM
ΥΥ (
>
ΥΥ( )/
!GetBCSCSectionChapterTopicDetails
ΥΥ* K
(
ΥΥK L
int
ΥΥL O

questionId
ΥΥP Z
)
ΥΥZ [
{
ΦΦ 	
List
ΧΧ 
<
ΧΧ 
BCSCContentVM
ΧΧ 
>
ΧΧ 
bCSCContents
ΧΧ  ,
=
ΧΧ- .
new
ΧΧ/ 2
List
ΧΧ3 7
<
ΧΧ7 8
BCSCContentVM
ΧΧ8 E
>
ΧΧE F
(
ΧΧF G
)
ΧΧG H
;
ΧΧH I
SqlParameter
ΨΨ 
[
ΨΨ 
]
ΨΨ 
arrSqlParameter
ΨΨ *
=
ΨΨ+ ,
{
ΩΩ 
new
ΪΪ 
SqlParameter
ΪΪ %
(
ΪΪ% &
$str
ΪΪ& 3
,
ΪΪ3 4

questionId
ΪΪ5 ?
)
ΪΪ? @
,
ΪΪ@ A
}
ΫΫ 
;
ΫΫ 
using
έέ 
(
έέ 
SqlDataReader
έέ  
objSqlDataReader
έέ! 1
=
έέ2 3
	SqlHelper
έέ4 =
.
έέ= >
ExecuteReader
έέ> K
(
έέK L#
SqlConnectionProvider
ήή %
.
ήή% &!
GetConnectionString
ήή& 9
(
ήή9 :
DataAccessType
ήή: H
.
ήήH I
Read
ήήI M
)
ήήM N
,
ήήN O
CommandType
ήήP [
.
ήή[ \
StoredProcedure
ήή\ k
,
ήήk l
$strήήm ”
,ήή” •
arrSqlParameterήή– ¥
)ήή¥ ¦
)ήή¦ §
{
ίί 
while
ΰΰ 
(
ΰΰ 
objSqlDataReader
ΰΰ '
.
ΰΰ' (
Read
ΰΰ( ,
(
ΰΰ, -
)
ΰΰ- .
)
ΰΰ. /
{
αα 
BCSCContentVM
ββ !
bCSCContent
ββ" -
=
ββ. /
new
ββ0 3
BCSCContentVM
ββ4 A
(
ββA B
)
ββB C
;
ββC D
object
δδ 
questionIdObj
δδ (
=
δδ) *
objSqlDataReader
δδ+ ;
[
δδ; <
$str
δδ< H
]
δδH I
;
δδI J
bCSCContent
εε 
.
εε  

QuestionId
εε  *
=
εε+ ,
questionIdObj
εε- :
is
εε; =
DBNull
εε> D
?
εεE F
$num
εεG H
:
εεI J
Convert
εεK R
.
εεR S
ToInt32
εεS Z
(
εεZ [
objSqlDataReader
εε[ k
[
εεk l
$str
εεl x
]
εεx y
)
εεy z
;
εεz {
object
ηη 
subspecialtyIdObj
ηη ,
=
ηη- .
objSqlDataReader
ηη/ ?
[
ηη? @
$str
ηη@ P
]
ηηP Q
;
ηηQ R
bCSCContent
θθ 
.
θθ  
SubSpecialityId
θθ  /
=
θθ0 1
subspecialtyIdObj
θθ2 C
is
θθD F
DBNull
θθG M
?
θθN O
$num
θθP Q
:
θθR S
Convert
θθT [
.
θθ[ \
ToInt32
θθ\ c
(
θθc d
objSqlDataReader
θθd t
[
θθt u
$strθθu …
]θθ… †
)θθ† ‡
;θθ‡ 
object
κκ "
bCSCSectionNumberObj
κκ /
=
κκ0 1
objSqlDataReader
κκ2 B
[
κκB C
$str
κκC V
]
κκV W
;
κκW X
bCSCContent
λλ 
.
λλ  
BCSCSectionNumber
λλ  1
=
λλ2 3"
bCSCSectionNumberObj
λλ4 H
is
λλI K
DBNull
λλL R
?
λλS T
$num
λλU V
:
λλW X
Convert
λλY `
.
λλ` a
ToInt32
λλa h
(
λλh i
objSqlDataReader
λλi y
[
λλy z
$strλλz 
]λλ 
)λλ 
;λλ 
object
νν !
bCSCSectionTitleObj
νν .
=
νν/ 0
objSqlDataReader
νν1 A
[
ννA B
$str
ννB T
]
ννT U
;
ννU V
bCSCContent
ξξ 
.
ξξ  
BCSCSectionTitle
ξξ  0
=
ξξ1 2!
bCSCSectionTitleObj
ξξ3 F
is
ξξG I
DBNull
ξξJ P
?
ξξQ R
string
ξξS Y
.
ξξY Z
Empty
ξξZ _
:
ξξ` a
Convert
ξξb i
.
ξξi j
ToString
ξξj r
(
ξξr s
objSqlDataReaderξξs ƒ
[ξξƒ „
$strξξ„ –
]ξξ– —
)ξξ— 
;ξξ ™
object
ππ 

chapterObj
ππ %
=
ππ& '
objSqlDataReader
ππ( 8
[
ππ8 9
$str
ππ9 B
]
ππB C
;
ππC D
bCSCContent
ρρ 
.
ρρ  
Chapter
ρρ  '
=
ρρ( )
questionIdObj
ρρ* 7
is
ρρ8 :
DBNull
ρρ; A
?
ρρB C
string
ρρD J
.
ρρJ K
Empty
ρρK P
:
ρρQ R
Convert
ρρS Z
.
ρρZ [
ToString
ρρ[ c
(
ρρc d
objSqlDataReader
ρρd t
[
ρρt u
$str
ρρu ~
]
ρρ~ 
)ρρ €
;ρρ€ 
object
σσ 
chapterNameObj
σσ )
=
σσ* +
objSqlDataReader
σσ, <
[
σσ< =
$str
σσ= J
]
σσJ K
;
σσK L
bCSCContent
ττ 
.
ττ  
ChapterName
ττ  +
=
ττ, -
chapterNameObj
ττ. <
is
ττ= ?
DBNull
ττ@ F
?
ττG H
string
ττI O
.
ττO P
Empty
ττP U
:
ττV W
Convert
ττX _
.
ττ_ `
ToString
ττ` h
(
ττh i
objSqlDataReader
ττi y
[
ττy z
$strττz ‡
]ττ‡ 
)ττ ‰
;ττ‰ 
object
φφ 
topicObj
φφ #
=
φφ$ %
objSqlDataReader
φφ& 6
[
φφ6 7
$str
φφ7 @
]
φφ@ A
;
φφA B
bCSCContent
χχ 
.
χχ  
TopicId
χχ  '
=
χχ( )
topicObj
χχ* 2
is
χχ3 5
DBNull
χχ6 <
?
χχ= >
$num
χχ? @
:
χχA B
Convert
χχC J
.
χχJ K
ToInt32
χχK R
(
χχR S
objSqlDataReader
χχS c
[
χχc d
$str
χχd m
]
χχm n
)
χχn o
;
χχo p
object
ωω 
topicNameObj
ωω '
=
ωω( )
objSqlDataReader
ωω* :
[
ωω: ;
$str
ωω; F
]
ωωF G
;
ωωG H
bCSCContent
ϊϊ 
.
ϊϊ  
	TopicName
ϊϊ  )
=
ϊϊ* +
topicNameObj
ϊϊ, 8
is
ϊϊ9 ;
DBNull
ϊϊ< B
?
ϊϊC D
string
ϊϊE K
.
ϊϊK L
Empty
ϊϊL Q
:
ϊϊR S
Convert
ϊϊT [
.
ϊϊ[ \
ToString
ϊϊ\ d
(
ϊϊd e
objSqlDataReader
ϊϊe u
[
ϊϊu v
$strϊϊv 
]ϊϊ ‚
)ϊϊ‚ ƒ
;ϊϊƒ „
bCSCContents
ϋϋ  
.
ϋϋ  !
Add
ϋϋ! $
(
ϋϋ$ %
bCSCContent
ϋϋ% 0
)
ϋϋ0 1
;
ϋϋ1 2
}
όό 
objSqlDataReader
ώώ  
.
ώώ  !
Close
ώώ! &
(
ώώ& '
)
ώώ' (
;
ώώ( )
}
ÿÿ 
return
 
bCSCContents
 
;
  
}
‚‚ 	
public
„„ 
static
„„ 
void
„„ '
InsertContentInBCSCMapper
„„ 4
(
„„4 5
BCSCContentVM
„„5 B
bCSCContent
„„C N
)
„„N O
{
…… 	
SqlParameter
†† 
[
†† 
]
†† 
arrSqlParameter
†† *
=
††+ ,
{
‡‡ 
new
 
SqlParameter
 %
(
% &
$str
& 3
,
3 4
bCSCContent
5 @
.
@ A

QuestionId
A K
)
K L
,
L M
new
‰‰ 
SqlParameter
‰‰ %
(
‰‰% &
$str
‰‰& 7
,
‰‰7 8
bCSCContent
‰‰9 D
.
‰‰D E
SubSpecialityId
‰‰E T
)
‰‰T U
,
‰‰U V
new
 
SqlParameter
 %
(
% &
$str
& 0
,
0 1
bCSCContent
2 =
.
= >
ChapterName
> I
)
I J
,
J K
new
‹‹ 
SqlParameter
‹‹ %
(
‹‹% &
$str
‹‹& 0
,
‹‹0 1
bCSCContent
‹‹2 =
.
‹‹= >
TopicId
‹‹> E
)
‹‹E F
,
‹‹F G
new
 
SqlParameter
 %
(
% &
$str
& 0
,
0 1
bCSCContent
2 =
.
= >
Content
> E
)
E F
,
F G
new
 
SqlParameter
 %
(
% &
$str
& 6
,
6 7
bCSCContent
8 C
.
C D
BCSCbookWordCount
D U
)
U V
,
V W
}
 
;
 
	SqlHelper
 
.
 
ExecuteNonQuery
 %
(
% &#
SqlConnectionProvider
& ;
.
; <!
GetConnectionString
< O
(
O P
DataAccessType
P ^
.
^ _
Write
_ d
)
d e
,
e f
CommandType
g r
.
r s
StoredProcedures ‚
,‚ ƒ
$str„ £
,£ ¤
arrSqlParameter¥ ΄
)΄ µ
;µ ¶
}
 	
public
’’ 
static
’’ 
void
’’ )
DeleteContentFromBCSCMapper
’’ 6
(
’’6 7
int
’’7 :
question
’’; C
,
’’C D
int
’’E H
topicId
’’I P
)
’’P Q
{
““ 	
SqlParameter
”” 
[
”” 
]
”” 
arrSqlParameter
”” *
=
””+ ,
{
•• 
new
–– 
SqlParameter
–– %
(
––% &
$str
––& 3
,
––3 4
question
––5 =
)
––= >
,
––> ?
new
—— 
SqlParameter
—— %
(
——% &
$str
——& 0
,
——0 1
topicId
——2 9
)
——9 :
,
——: ;
}
 
;
 
	SqlHelper
™™ 
.
™™ 
ExecuteNonQuery
™™ %
(
™™% &#
SqlConnectionProvider
™™& ;
.
™™; <!
GetConnectionString
™™< O
(
™™O P
DataAccessType
™™P ^
.
™™^ _
Write
™™_ d
)
™™d e
,
™™e f
CommandType
™™g r
.
™™r s
StoredProcedure™™s ‚
,™™‚ ƒ
$str™™„ £
,™™£ ¤
arrSqlParameter™™¥ ΄
)™™΄ µ
;™™µ ¶
}
 	
public
 
static
 
void
 2
$DeleteContentFromBCSCMapperOnRetired
 ?
(
? @
int
@ C
question
D L
)
L M
{
 	
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
 
new
   
SqlParameter
   %
(
  % &
$str
  & 3
,
  3 4
question
  5 =
)
  = >
,
  > ?
}
΅΅ 
;
΅΅ 
	SqlHelper
ΆΆ 
.
ΆΆ 
ExecuteNonQuery
ΆΆ %
(
ΆΆ% &#
SqlConnectionProvider
ΆΆ& ;
.
ΆΆ; <!
GetConnectionString
ΆΆ< O
(
ΆΆO P
DataAccessType
ΆΆP ^
.
ΆΆ^ _
Write
ΆΆ_ d
)
ΆΆd e
,
ΆΆe f
CommandType
ΆΆg r
.
ΆΆr s
StoredProcedureΆΆs ‚
,ΆΆ‚ ƒ
$strΆΆ„ £
,ΆΆ£ ¤
arrSqlParameterΆΆ¥ ΄
)ΆΆ΄ µ
;ΆΆµ ¶
}
££ 	
public
¥¥ 
static
¥¥ 
List
¥¥ 
<
¥¥ 
int
¥¥ 
>
¥¥ '
GetQASTopicIdByQuestionId
¥¥  9
(
¥¥9 :
int
¥¥: =
?
¥¥= >

questionId
¥¥? I
)
¥¥I J
{
¦¦ 	
List
§§ 
<
§§ 
int
§§ 
>
§§ 
dBtopicIdList
§§ #
=
§§$ %
new
§§& )
List
§§* .
<
§§. /
int
§§/ 2
>
§§2 3
(
§§3 4
)
§§4 5
;
§§5 6
SqlParameter
©© 
[
©© 
]
©© 
objSqlParameter
©© *
=
©©+ ,
{
ªª 
new
««0 3
SqlParameter
««4 @
(
««@ A
$str
««A N
,
««N O

questionId
««P Z
)
««Z [
,
««[ \
}
¬¬- .
;
¬¬. /
using
®® 
(
®® 
SqlDataReader
®®  
objSqlDataReader
®®! 1
=
®®2 3
	SqlHelper
®®4 =
.
®®= >
ExecuteReader
®®> K
(
®®K L#
SqlConnectionProvider
―― %
.
――% &!
GetConnectionString
――& 9
(
――9 :
DataAccessType
――: H
.
――H I
Read
――I M
)
――M N
,
――N O
CommandType
――P [
.
――[ \
StoredProcedure
――\ k
,
――k l
$str――m 
,―― 
objSqlParameter―― 
)―― 
)―― 
{
°° 
while
±± 
(
±± 
objSqlDataReader
±± '
.
±±' (
Read
±±( ,
(
±±, -
)
±±- .
)
±±. /
{
²² 
int
³³ 

dbToipicId
³³ "
=
³³# $
Convert
³³% ,
.
³³, -
ToInt32
³³- 4
(
³³4 5
objSqlDataReader
³³5 E
[
³³E F
$str
³³F O
]
³³O P
)
³³P Q
;
³³Q R
dBtopicIdList
΄΄ !
.
΄΄! "
Add
΄΄" %
(
΄΄% &

dbToipicId
΄΄& 0
)
΄΄0 1
;
΄΄1 2
}
µµ 
objSqlDataReader
··  
.
··  !
Close
··! &
(
··& '
)
··' (
;
··( )
}
ΈΈ 
return
ΊΊ 
dBtopicIdList
ΊΊ  
;
ΊΊ  !
}
»» 	
public
½½ 
static
½½ 
void
½½ *
UpdateBCSCMapperContentField
½½ 7
(
½½7 8
BCSCContentVM
½½8 E
bCSCContent
½½F Q
)
½½Q R
{
ΎΎ 	
SqlParameter
ΏΏ 
[
ΏΏ 
]
ΏΏ 
arrSqlParameter
ΏΏ *
=
ΏΏ+ ,
{
ΐΐ 
new
ΑΑ 
SqlParameter
ΑΑ %
(
ΑΑ% &
$str
ΑΑ& 3
,
ΑΑ3 4
bCSCContent
ΑΑ5 @
.
ΑΑ@ A

QuestionId
ΑΑA K
)
ΑΑK L
,
ΑΑL M
new
ΒΒ 
SqlParameter
ΒΒ %
(
ΒΒ% &
$str
ΒΒ& 7
,
ΒΒ7 8
bCSCContent
ΒΒ9 D
.
ΒΒD E
SubSpecialityId
ΒΒE T
)
ΒΒT U
,
ΒΒU V
new
ΓΓ 
SqlParameter
ΓΓ %
(
ΓΓ% &
$str
ΓΓ& 0
,
ΓΓ0 1
bCSCContent
ΓΓ2 =
.
ΓΓ= >
ChapterName
ΓΓ> I
)
ΓΓI J
,
ΓΓJ K
new
ΔΔ 
SqlParameter
ΔΔ %
(
ΔΔ% &
$str
ΔΔ& 0
,
ΔΔ0 1
bCSCContent
ΔΔ2 =
.
ΔΔ= >
TopicId
ΔΔ> E
)
ΔΔE F
,
ΔΔF G
new
ΕΕ 
SqlParameter
ΕΕ %
(
ΕΕ% &
$str
ΕΕ& 0
,
ΕΕ0 1
bCSCContent
ΕΕ2 =
.
ΕΕ= >
Content
ΕΕ> E
)
ΕΕE F
,
ΕΕF G
new
ΖΖ 
SqlParameter
ΖΖ %
(
ΖΖ% &
$str
ΖΖ& 6
,
ΖΖ6 7
bCSCContent
ΖΖ8 C
.
ΖΖC D
BCSCbookWordCount
ΖΖD U
)
ΖΖU V
,
ΖΖV W
}
ΗΗ 
;
ΗΗ 
	SqlHelper
ΘΘ 
.
ΘΘ 
ExecuteNonQuery
ΘΘ %
(
ΘΘ% &#
SqlConnectionProvider
ΘΘ& ;
.
ΘΘ; <!
GetConnectionString
ΘΘ< O
(
ΘΘO P
DataAccessType
ΘΘP ^
.
ΘΘ^ _
Write
ΘΘ_ d
)
ΘΘd e
,
ΘΘe f
CommandType
ΘΘg r
.
ΘΘr s
StoredProcedureΘΘs ‚
,ΘΘ‚ ƒ
$strΘΘ„ ¦
,ΘΘ¦ §
arrSqlParameterΘΘ¨ ·
)ΘΘ· Έ
;ΘΘΈ Ή
}
ΙΙ 	
public
ΛΛ 
static
ΛΛ 
void
ΛΛ 0
"InsertContentInBCSCMapperIfNotInDb
ΛΛ =
(
ΛΛ= >
BCSCContentVM
ΛΛ> K
bCSCContent
ΛΛL W
)
ΛΛW X
{
ΜΜ 	
SqlParameter
ΝΝ 
[
ΝΝ 
]
ΝΝ 
arrSqlParameter
ΝΝ *
=
ΝΝ+ ,
{
ΞΞ 
new
ΟΟ 
SqlParameter
ΟΟ %
(
ΟΟ% &
$str
ΟΟ& 3
,
ΟΟ3 4
bCSCContent
ΟΟ5 @
.
ΟΟ@ A

QuestionId
ΟΟA K
)
ΟΟK L
,
ΟΟL M
new
ΠΠ 
SqlParameter
ΠΠ %
(
ΠΠ% &
$str
ΠΠ& 7
,
ΠΠ7 8
bCSCContent
ΠΠ9 D
.
ΠΠD E
SubSpecialityId
ΠΠE T
)
ΠΠT U
,
ΠΠU V
new
ΡΡ 
SqlParameter
ΡΡ %
(
ΡΡ% &
$str
ΡΡ& 0
,
ΡΡ0 1
bCSCContent
ΡΡ2 =
.
ΡΡ= >
ChapterName
ΡΡ> I
)
ΡΡI J
,
ΡΡJ K
new
ÒÒ 
SqlParameter
ÒÒ %
(
ÒÒ% &
$str
ÒÒ& 0
,
ÒÒ0 1
bCSCContent
ÒÒ2 =
.
ÒÒ= >
TopicId
ÒÒ> E
)
ÒÒE F
,
ÒÒF G
new
ΣΣ 
SqlParameter
ΣΣ %
(
ΣΣ% &
$str
ΣΣ& 0
,
ΣΣ0 1
bCSCContent
ΣΣ2 =
.
ΣΣ= >
Content
ΣΣ> E
)
ΣΣE F
,
ΣΣF G
new
ΤΤ 
SqlParameter
ΤΤ %
(
ΤΤ% &
$str
ΤΤ& 6
,
ΤΤ6 7
bCSCContent
ΤΤ8 C
.
ΤΤC D
BCSCbookWordCount
ΤΤD U
)
ΤΤU V
,
ΤΤV W
}
ΥΥ 
;
ΥΥ 
	SqlHelper
ΦΦ 
.
ΦΦ 
ExecuteNonQuery
ΦΦ %
(
ΦΦ% &#
SqlConnectionProvider
ΦΦ& ;
.
ΦΦ; <!
GetConnectionString
ΦΦ< O
(
ΦΦO P
DataAccessType
ΦΦP ^
.
ΦΦ^ _
Write
ΦΦ_ d
)
ΦΦd e
,
ΦΦe f
CommandType
ΦΦg r
.
ΦΦr s
StoredProcedureΦΦs ‚
,ΦΦ‚ ƒ
$strΦΦ„ ¬
,ΦΦ¬ ­
arrSqlParameterΦΦ® ½
)ΦΦ½ Ύ
;ΦΦΎ Ώ
}
ΧΧ 	
public
ΩΩ 
static
ΩΩ 
void
ΩΩ 1
#UpdateBCSCMapperContentOnBookChange
ΩΩ >
(
ΩΩ> ?
BCSCContentVM
ΩΩ? L
bCSCContent
ΩΩM X
)
ΩΩX Y
{
ΪΪ 	
SqlParameter
ΫΫ 
[
ΫΫ 
]
ΫΫ 
arrSqlParameter
ΫΫ *
=
ΫΫ+ ,
{
άά 
new
έέ 
SqlParameter
έέ %
(
έέ% &
$str
έέ& 3
,
έέ3 4
bCSCContent
έέ5 @
.
έέ@ A

QuestionId
έέA K
)
έέK L
,
έέL M
new
ήή 
SqlParameter
ήή %
(
ήή% &
$str
ήή& 7
,
ήή7 8
bCSCContent
ήή9 D
.
ήήD E
SubSpecialityId
ήήE T
)
ήήT U
,
ήήU V
new
ίί 
SqlParameter
ίί %
(
ίί% &
$str
ίί& 0
,
ίί0 1
bCSCContent
ίί2 =
.
ίί= >
ChapterName
ίί> I
)
ίίI J
,
ίίJ K
new
ΰΰ 
SqlParameter
ΰΰ %
(
ΰΰ% &
$str
ΰΰ& 0
,
ΰΰ0 1
bCSCContent
ΰΰ2 =
.
ΰΰ= >
TopicId
ΰΰ> E
)
ΰΰE F
,
ΰΰF G
new
αα 
SqlParameter
αα %
(
αα% &
$str
αα& 0
,
αα0 1
bCSCContent
αα2 =
.
αα= >
Content
αα> E
)
ααE F
,
ααF G
new
ββ 
SqlParameter
ββ %
(
ββ% &
$str
ββ& 6
,
ββ6 7
bCSCContent
ββ8 C
.
ββC D
BCSCbookWordCount
ββD U
)
ββU V
,
ββV W
}
γγ 
;
γγ 
	SqlHelper
δδ 
.
δδ 
ExecuteNonQuery
δδ %
(
δδ% &#
SqlConnectionProvider
δδ& ;
.
δδ; <!
GetConnectionString
δδ< O
(
δδO P
DataAccessType
δδP ^
.
δδ^ _
Write
δδ_ d
)
δδd e
,
δδe f
CommandType
δδg r
.
δδr s
StoredProcedureδδs ‚
,δδ‚ ƒ
$strδδ„ µ
,δδµ ¶
arrSqlParameterδδ· Ζ
)δδΖ Η
;δδΗ Θ
}
εε 	
public
ηη 
static
ηη 
void
ηη  
DeleteOldTopicData
ηη -
(
ηη- .
)
ηη. /
{
θθ 	
SqlParameter
ιι 
[
ιι 
]
ιι 
arrSqlParameter
ιι *
=
ιι+ ,
{
λλ 
}
λλ 
;
λλ 
	SqlHelper
νν 
.
νν 
ExecuteNonQuery
νν %
(
νν% &#
SqlConnectionProvider
νν& ;
.
νν; <!
GetConnectionString
νν< O
(
ννO P
DataAccessType
ννP ^
.
νν^ _
Write
νν_ d
)
ννd e
,
ννe f
CommandType
ννg r
.
ννr s
StoredProcedureννs ‚
,νν‚ ƒ
$strνν„ 
,νν 
arrSqlParameterνν ­
)νν­ ®
;νν® ―
}
ξξ 	
}
οο 
}ππ Δ<
rD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\IncorrectQuestionDetailsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class '
IncorrectQuestionDetailsDAL ,
{ 
public 
static 
List 
< '
IncorrectQuestionDetailsDTO 6
>6 7$
IncorrectQuestionDetails8 P
(P Q
intQ T
?T U
userIdV \
,\ ]
int^ a
?a b
subspecialtyIdc q
,q r
DateTimes {
?{ |
examStartDate	} 
,
 ‹
DateTime
 ”
?
” •
examCompletedDate
– §
,
§ ¨
int
© ¬
?
¬ ­
noOfRecords
® Ή
,
Ή Ί
int
» Ύ
?
Ύ Ώ
pageNo
ΐ Ζ
,
Ζ Η
int
Θ Λ
year
Μ Π
)
Π Ρ
{ 	
List 
< '
IncorrectQuestionDetailsDTO ,
>, -
incorrectReportList. A
=B C
newD G
ListH L
<L M'
IncorrectQuestionDetailsDTOM h
>h i
(i j
)j k
;k l
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{, -
new0 3
SqlParameter4 @
(@ A
$strA J
,J K
ConvertL S
.S T
ToInt32T [
([ \
userId\ b
)b c
)c d
,d e
new0 3
SqlParameter4 @
(@ A
$strA R
,R S
ConvertT [
.[ \
ToInt32\ c
(c d
subspecialtyIdd r
)r s
)s t
,t u
new0 3
SqlParameter4 @
(@ A
$strA M
,M N
examStartDateO \
)\ ]
,] ^
new0 3
SqlParameter4 @
(@ A
$strA K
,K L
examCompletedDateM ^
)^ _
,_ `
new0 3
SqlParameter4 @
(@ A
$strA L
,L M
noOfRecordsN Y
)Y Z
,Z [
new0 3
SqlParameter4 @
(@ A
$strA M
,M N
pageNoO U
)U V
,V W
new0 3
SqlParameter4 @
(@ A
$strA L
,L M
yearN R
)R S
,S T
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ‘
,
‘ ’
objSqlParameter
“ Ά
)
Ά £
)
£ ¤
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ '
IncorrectQuestionDetailsDTO   /
inCorrectListBO  0 ?
=  @ A
new  B E'
IncorrectQuestionDetailsDTO  F a
(  a b
)  b c
;  c d
object!! 
	examidObj!! $
=!!% &
objSqlDataReader!!' 7
[!!7 8
$str!!8 @
]!!@ A
;!!A B
inCorrectListBO"" #
.""# $
ExamId""$ *
=""+ ,
	examidObj""- 6
is""7 9
DBNull"": @
?""A B
$num""C D
:""E F
Convert""G N
.""N O
ToInt32""O V
(""V W
objSqlDataReader""W g
[""g h
$str""h p
]""p q
)""q r
;""r s
object$$ 
questionIdObj$$ (
=$$) *
objSqlDataReader$$+ ;
[$$; <
$str$$< H
]$$H I
;$$I J
inCorrectListBO%% #
.%%# $

QuestionId%%$ .
=%%/ 0
questionIdObj%%1 >
is%%? A
DBNull%%B H
?%%I J
$num%%K L
:%%M N
Convert%%O V
.%%V W
ToInt32%%W ^
(%%^ _
objSqlDataReader%%_ o
[%%o p
$str%%p |
]%%| }
)%%} ~
;%%~ 
object'' 
questionIdCountObj'' -
=''. /
objSqlDataReader''0 @
[''@ A
$str''A N
]''N O
;''O P
inCorrectListBO(( #
.((# $
QuestionIdCount(($ 3
=((4 5
questionIdCountObj((6 H
is((I K
DBNull((L R
?((S T
$num((U V
:((W X
Convert((Y `
.((` a
ToInt32((a h
(((h i
objSqlDataReader((i y
[((y z
$str	((z ‡
]
((‡ 
)
(( ‰
;
((‰ 
object** 
subspecialtyObj** *
=**+ ,
objSqlDataReader**- =
[**= >
$str**> L
]**L M
;**M N
inCorrectListBO++ #
.++# $
Subspecialty++$ 0
=++1 2
questionIdCountObj++3 E
is++F H
DBNull++I O
?++P Q
string++R X
.++X Y
Empty++Y ^
:++_ `
Convert++a h
.++h i
ToString++i q
(++q r
objSqlDataReader	++r ‚
[
++‚ ƒ
$str
++ƒ ‘
]
++‘ ’
)
++’ “
;
++“ ”
object-- 

sectionObj-- %
=--& '
objSqlDataReader--( 8
[--8 9
$str--9 B
]--B C
;--C D
inCorrectListBO.. #
...# $
Section..$ +
=.., -

sectionObj... 8
is..9 ;
DBNull..< B
?..C D
$num..E F
:..G H
Convert..I P
...P Q
ToInt32..Q X
(..X Y
objSqlDataReader..Y i
[..i j
$str..j s
]..s t
)..t u
;..u v
object00 
rownumberObj00 '
=00( )
objSqlDataReader00* :
[00: ;
$str00; F
]00F G
;00G H
inCorrectListBO11 #
.11# $
	Rownumber11$ -
=11. /
rownumberObj110 <
is11= ?
DBNull11@ F
?11G H
$num11I J
:11K L
Convert11M T
.11T U
ToInt3211U \
(11\ ]
objSqlDataReader11] m
[11m n
$str11n y
]11y z
)11z {
;11{ |
object33 
examtypeObj33 &
=33' (
objSqlDataReader33) 9
[339 :
$str33: D
]33D E
;33E F
inCorrectListBO44 #
.44# $
ExamType44$ ,
=44- .
examtypeObj44/ :
is44; =
DBNull44> D
?44E F
$num44G H
:44I J
Convert44K R
.44R S
ToInt3244S Z
(44Z [
objSqlDataReader44[ k
[44k l
$str44l v
]44v w
)44w x
;44x y
incorrectReportList66 '
.66' (
Add66( +
(66+ ,
inCorrectListBO66, ;
)66; <
;66< =
}77 
objSqlDataReader99  
.99  !
Close99! &
(99& '
)99' (
;99( )
}:: 
return<< 
incorrectReportList<< &
;<<& '
}== 	
}>> 
}?? ”Ί
bD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\NoteBookDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
NoteBookDAL #
{ 
public 
static 
List 
< 
NoteSections '
>' (
GetNotesSection) 8
(8 9
)9 :
{ 	
List 
< 
NoteSections 
> 
noteSectionsList /
=0 1
new2 5
List6 :
<: ;
NoteSections; G
>G H
(H I
)I J
;J K
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ‚
,
‚ ƒ
objSqlParameter
„ “
)
“ ”
)
” •
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
NoteSections  
noteSections! -
=. /
new0 3
NoteSections4 @
(@ A
)A B
;B C
object 
subspecialtyIdObj ,
=- .
objSqlDataReader/ ?
[? @
$str@ P
]P Q
;Q R
noteSections  
.  !
SubSpecialtyId! /
=0 1
subspecialtyIdObj2 C
isD F
DBNullG M
?N O
$numP Q
:R S
ConvertT [
.[ \
ToInt32\ c
(c d
objSqlDataReaderd t
[t u
$str	u …
]
… †
)
† ‡
;
‡ 
object   
subspecialtyObj   *
=  + ,
objSqlDataReader  - =
[  = >
$str  > L
]  L M
;  M N
noteSections!!  
.!!  !
SubSpecialty!!! -
=!!. /
subspecialtyObj!!0 ?
is!!@ B
DBNull!!C I
?!!J K
string!!L R
.!!R S
Empty!!S X
:!!Y Z
Convert!![ b
.!!b c
ToString!!c k
(!!k l
objSqlDataReader!!l |
[!!| }
$str	!!} ‹
]
!!‹ 
)
!! 
;
!! 
object##  
bCSCSectionNumberObj## /
=##0 1
objSqlDataReader##2 B
[##B C
$str##C V
]##V W
;##W X
noteSections$$  
.$$  !
BCSCSectionNumber$$! 2
=$$3 4 
bCSCSectionNumberObj$$5 I
is$$J L
DBNull$$M S
?$$T U
$num$$V W
:$$X Y
Convert$$Z a
.$$a b
ToInt32$$b i
($$i j
objSqlDataReader$$j z
[$$z {
$str	$${ 
]
$$ 
)
$$ 
;
$$ ‘
object&& 
bCSCSectionTitleObj&& .
=&&/ 0
objSqlDataReader&&1 A
[&&A B
$str&&B T
]&&T U
;&&U V
noteSections''  
.''  !
BCSCSectionTitle''! 1
=''2 3
bCSCSectionTitleObj''4 G
is''H J
DBNull''K Q
?''R S
string''T Z
.''Z [
Empty''[ `
:''a b
Convert''c j
.''j k
ToString''k s
(''s t
objSqlDataReader	''t „
[
''„ …
$str
''… —
]
''— 
)
'' ™
;
''™ 
noteSectionsList)) $
.))$ %
Add))% (
())( )
noteSections))) 5
)))5 6
;))6 7
}** 
objSqlDataReader,,  
.,,  !
Close,,! &
(,,& '
),,' (
;,,( )
}-- 
return// 
noteSectionsList// #
;//# $
}00 	
public22 
static22 
NoteSections22 "#
GetSectionOnSubspecilty22# :
(22: ;
int22; >
subSpecialtyId22? M
)22M N
{33 	
NoteSections44 
noteSectionsList44 #
=44$ %
new44& )
NoteSections44* 6
(446 7
)447 8
;448 9
SqlParameter66 
[66 
]66 
objSqlParameter66 $
=66% &
{77 
new88 
SqlParameter88  
(88  !
$str88! 2
,882 3
Convert884 ;
.88; <
ToInt3288< C
(88C D
subSpecialtyId88D R
)88R S
)88S T
,88T U
}99- .
;99. /
using;; 
(;; 
SqlDataReader;; 
objSqlDataReader;; +
=;;, -
	SqlHelper;;. 7
.;;7 8
ExecuteReader;;8 E
(;;E F!
SqlConnectionProvider<< %
.<<% &
GetConnectionString<<& 9
(<<9 :
DataAccessType<<: H
.<<H I
Read<<I M
)<<M N
,<<N O
CommandType<<P [
.<<[ \
StoredProcedure<<\ k
,<<k l
$str	<<m …
,
<<… †
objSqlParameter
<<‡ –
)
<<– —
)
<<— 
{== 
while>> 
(>> 
objSqlDataReader>> '
.>>' (
Read>>( ,
(>>, -
)>>- .
)>>. /
{?? 
object@@ 
subspecialtyIdObj@@ ,
=@@- .
objSqlDataReader@@/ ?
[@@? @
$str@@@ P
]@@P Q
;@@Q R
noteSectionsListAA $
.AA$ %
SubSpecialtyIdAA% 3
=AA4 5
subspecialtyIdObjAA6 G
isAAH J
DBNullAAK Q
?AAR S
$numAAT U
:AAV W
ConvertAAX _
.AA_ `
ToInt32AA` g
(AAg h
objSqlDataReaderAAh x
[AAx y
$str	AAy ‰
]
AA‰ 
)
AA ‹
;
AA‹ 
objectCC 
subspecialtyObjCC *
=CC+ ,
objSqlDataReaderCC- =
[CC= >
$strCC> L
]CCL M
;CCM N
noteSectionsListDD $
.DD$ %
SubSpecialtyDD% 1
=DD2 3
subspecialtyObjDD4 C
isDDD F
DBNullDDG M
?DDN O
stringDDP V
.DDV W
EmptyDDW \
:DD] ^
ConvertDD_ f
.DDf g
ToStringDDg o
(DDo p
objSqlDataReader	DDp €
[
DD€ 
$str
DD 
]
DD 
)
DD ‘
;
DD‘ ’
objectFF  
bCSCSectionNumberObjFF /
=FF0 1
objSqlDataReaderFF2 B
[FFB C
$strFFC V
]FFV W
;FFW X
noteSectionsListGG $
.GG$ %
BCSCSectionNumberGG% 6
=GG7 8 
bCSCSectionNumberObjGG9 M
isGGN P
DBNullGGQ W
?GGX Y
$numGGZ [
:GG\ ]
ConvertGG^ e
.GGe f
ToInt32GGf m
(GGm n
objSqlDataReaderGGn ~
[GG~ 
$str	GG ’
]
GG’ “
)
GG“ ”
;
GG” •
objectII 
bCSCSectionTitleObjII .
=II/ 0
objSqlDataReaderII1 A
[IIA B
$strIIB T
]IIT U
;IIU V
noteSectionsListJJ $
.JJ$ %
BCSCSectionTitleJJ% 5
=JJ6 7
bCSCSectionTitleObjJJ8 K
isJJL N
DBNullJJO U
?JJV W
stringJJX ^
.JJ^ _
EmptyJJ_ d
:JJe f
ConvertJJg n
.JJn o
ToStringJJo w
(JJw x
objSqlDataReader	JJx 
[
JJ ‰
$str
JJ‰ ›
]
JJ› 
)
JJ 
;
JJ 
}KK 
objSqlDataReaderMM  
.MM  !
CloseMM! &
(MM& '
)MM' (
;MM( )
}NN 
returnPP 
noteSectionsListPP 
;PP 
}QQ 	
publicSS 
staticSS 
ListSS 
<SS 
ChapterDetailsSS )
>SS) *

GetChapterSS+ 5
(SS5 6
intSS6 9
?SS9 :
subSpecialtyIdSS; I
,SSI J
NoteBookRequestSSK Z
noteBookRequestSS[ j
)SSj k
{TT 	
ListUU 
<UU 
ChapterDetailsUU 
>UU  
chapterListUU! ,
=UU- .
newUU/ 2
ListUU3 7
<UU7 8
ChapterDetailsUU8 F
>UUF G
(UUG H
)UUH I
;UUI J
SqlParameterWW 
[WW 
]WW 
objSqlParameterWW *
=WW+ ,
{XX 
newYY 
SqlParameterYY  
(YY  !
$strYY! 2
,YY2 3
ConvertYY4 ;
.YY; <
ToInt32YY< C
(YYC D
subSpecialtyIdYYD R
)YYR S
)YYS T
,YYT U
newZZ 
SqlParameterZZ  
(ZZ  !
$strZZ! ,
,ZZ, -
noteBookRequestZZ. =
.ZZ= >
NoOfRecordsZZ> I
)ZZI J
,ZZJ K
new[[ 
SqlParameter[[  
([[  !
$str[[! -
,[[- .
noteBookRequest[[/ >
.[[> ?
PageNo[[? E
)[[E F
,[[F G
new\\ 
SqlParameter\\  
(\\  !
$str\\! *
,\\* +
Convert\\, 3
.\\3 4
ToInt32\\4 ;
(\\; <
noteBookRequest\\< K
.\\K L
UserId\\L R
)\\R S
)\\S T
,\\T U
}]]- .
;]]. /
using__ 
(__ 
SqlDataReader__  
objSqlDataReader__! 1
=__2 3
	SqlHelper__4 =
.__= >
ExecuteReader__> K
(__K L!
SqlConnectionProvider`` %
.``% &
GetConnectionString``& 9
(``9 :
DataAccessType``: H
.``H I
Read``I M
)``M N
,``N O
CommandType``P [
.``[ \
StoredProcedure``\ k
,``k l
$str	``m ’
,
``’ “
objSqlParameter
``” £
)
``£ ¤
)
``¤ ¥
{aa 
whilebb 
(bb 
objSqlDataReaderbb '
.bb' (
Readbb( ,
(bb, -
)bb- .
)bb. /
{cc 
ChapterDetailsdd "
chapterdd# *
=dd+ ,
newdd- 0
ChapterDetailsdd1 ?
(dd? @
)dd@ A
;ddA B
objectee 
chapterNameObjee )
=ee* +
objSqlDataReaderee, <
[ee< =
$stree= J
]eeJ K
;eeK L
chapterff 
.ff 
ChapterNameff '
=ff( )
chapterNameObjff* 8
isff9 ;
DBNullff< B
?ffC D
stringffE K
.ffK L
EmptyffL Q
:ffR S
ConvertffT [
.ff[ \
ToStringff\ d
(ffd e
objSqlDataReaderffe u
[ffu v
$str	ffv ƒ
]
ffƒ „
)
ff„ …
;
ff… †
objecthh 

chapterObjhh %
=hh& '
objSqlDataReaderhh( 8
[hh8 9
$strhh9 B
]hhB C
;hhC D
chapterii 
.ii 
Chapterii #
=ii$ %

chapterObjii& 0
isii1 3
DBNullii4 :
?ii; <
stringii= C
.iiC D
EmptyiiD I
:iiJ K
ConvertiiL S
.iiS T
ToStringiiT \
(ii\ ]
objSqlDataReaderii] m
[iim n
$striin w
]iiw x
)iix y
;iiy z
objectkk 
recordCountObjkk )
=kk* +
objSqlDataReaderkk, <
[kk< =
$strkk= J
]kkJ K
;kkK L
chapterll 
.ll 
ChapterCountll (
=ll) *
recordCountObjll+ 9
isll: <
DBNullll= C
?llD E
$numllF G
:llH I
ConvertllJ Q
.llQ R
ToInt32llR Y
(llY Z
objSqlDataReaderllZ j
[llj k
$strllk x
]llx y
)lly z
;llz {
objectnn 
rowNumberObjnn '
=nn( )
objSqlDataReadernn* :
[nn: ;
$strnn; F
]nnF G
;nnG H
chapteroo 
.oo 
ChapterSerialNumberoo /
=oo0 1
rowNumberObjoo2 >
isoo? A
DBNullooB H
?ooI J
$numooK L
:ooM N
ConvertooO V
.ooV W
ToInt32ooW ^
(oo^ _
objSqlDataReaderoo_ o
[ooo p
$stroop {
]oo{ |
)oo| }
;oo} ~
chapterListqq 
.qq  
Addqq  #
(qq# $
chapterqq$ +
)qq+ ,
;qq, -
}rr 
objSqlDataReadertt  
.tt  !
Closett! &
(tt& '
)tt' (
;tt( )
}uu 
chapterListww 
=ww 
chapterListww %
.ww% &

DistinctByww& 0
(ww0 1
iww1 2
=>ww3 5
iww6 7
.ww7 8
ChapterNameww8 C
)wwC D
.wwD E
ToListwwE K
(wwK L
)wwL M
;wwM N
returnxx 
chapterListxx 
;xx 
}yy 	
public{{ 
static{{ 
List{{ 
<{{ 
ChapterDetails{{ )
>{{) *(
GetChapter_withoutPagination{{+ G
({{G H
int{{H K
?{{K L
subSpecialtyId{{M [
,{{[ \
NoteBookRequest{{] l
noteBookRequest{{m |
){{| }
{|| 	
List}} 
<}} 
ChapterDetails}} 
>}}  
chapterList}}! ,
=}}- .
new}}/ 2
List}}3 7
<}}7 8
ChapterDetails}}8 F
>}}F G
(}}G H
)}}H I
;}}I J
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{
€€ 
new
 
SqlParameter
  
(
  !
$str
! 2
,
2 3
Convert
4 ;
.
; <
ToInt32
< C
(
C D
subSpecialtyId
D R
)
R S
)
S T
,
T U
new
‚‚ 
SqlParameter
‚‚  
(
‚‚  !
$str
‚‚! ,
,
‚‚, -
noteBookRequest
‚‚. =
.
‚‚= >
NoOfRecords
‚‚> I
)
‚‚I J
,
‚‚J K
new
ƒƒ 
SqlParameter
ƒƒ  
(
ƒƒ  !
$str
ƒƒ! -
,
ƒƒ- .
noteBookRequest
ƒƒ/ >
.
ƒƒ> ?
PageNo
ƒƒ? E
)
ƒƒE F
,
ƒƒF G
new
„„ 
SqlParameter
„„  
(
„„  !
$str
„„! *
,
„„* +
Convert
„„, 3
.
„„3 4
ToInt32
„„4 ;
(
„„; <
noteBookRequest
„„< K
.
„„K L
UserId
„„L R
)
„„R S
)
„„S T
,
„„T U
}
……- .
;
……. /
using
‡‡ 
(
‡‡ 
SqlDataReader
‡‡  
objSqlDataReader
‡‡! 1
=
‡‡2 3
	SqlHelper
‡‡4 =
.
‡‡= >
ExecuteReader
‡‡> K
(
‡‡K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm ¤
,¤ ¥
objSqlParameter¦ µ
)µ ¶
)¶ ·
{
‰‰ 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
‹‹ 
ChapterDetails
 "
chapter
# *
=
+ ,
new
- 0
ChapterDetails
1 ?
(
? @
)
@ A
;
A B
object
 
chapterNameObj
 )
=
* +
objSqlDataReader
, <
[
< =
$str
= J
]
J K
;
K L
chapter
 
.
 
ChapterName
 '
=
( )
chapterNameObj
* 8
is
9 ;
DBNull
< B
?
C D
string
E K
.
K L
Empty
L Q
:
R S
Convert
T [
.
[ \
ToString
\ d
(
d e
objSqlDataReader
e u
[
u v
$strv ƒ
]ƒ „
)„ …
;… †
object
 

chapterObj
 %
=
& '
objSqlDataReader
( 8
[
8 9
$str
9 B
]
B C
;
C D
chapter
‘‘ 
.
‘‘ 
Chapter
‘‘ #
=
‘‘$ %

chapterObj
‘‘& 0
is
‘‘1 3
DBNull
‘‘4 :
?
‘‘; <
string
‘‘= C
.
‘‘C D
Empty
‘‘D I
:
‘‘J K
Convert
‘‘L S
.
‘‘S T
ToString
‘‘T \
(
‘‘\ ]
objSqlDataReader
‘‘] m
[
‘‘m n
$str
‘‘n w
]
‘‘w x
)
‘‘x y
;
‘‘y z
object
““ 
recordCountObj
““ )
=
““* +
objSqlDataReader
““, <
[
““< =
$str
““= J
]
““J K
;
““K L
chapter
”” 
.
”” 
ChapterCount
”” (
=
””) *
recordCountObj
””+ 9
is
””: <
DBNull
””= C
?
””D E
$num
””F G
:
””H I
Convert
””J Q
.
””Q R
ToInt32
””R Y
(
””Y Z
objSqlDataReader
””Z j
[
””j k
$str
””k x
]
””x y
)
””y z
;
””z {
object
–– 
rowNumberObj
–– '
=
––( )
objSqlDataReader
––* :
[
––: ;
$str
––; F
]
––F G
;
––G H
chapter
—— 
.
—— !
ChapterSerialNumber
—— /
=
——0 1
rowNumberObj
——2 >
is
——? A
DBNull
——B H
?
——I J
$num
——K L
:
——M N
Convert
——O V
.
——V W
ToInt32
——W ^
(
——^ _
objSqlDataReader
——_ o
[
——o p
$str
——p {
]
——{ |
)
——| }
;
——} ~
chapterList
™™ 
.
™™  
Add
™™  #
(
™™# $
chapter
™™$ +
)
™™+ ,
;
™™, -
}
 
objSqlDataReader
  
.
  !
Close
! &
(
& '
)
' (
;
( )
}
 
chapterList
 
=
 
chapterList
 %
.
% &

DistinctBy
& 0
(
0 1
i
1 2
=>
3 5
i
6 7
.
7 8
ChapterName
8 C
)
C D
.
D E
ToList
E K
(
K L
)
L M
;
M N
return
   
chapterList
   
;
   
}
΅΅ 	
public
££ 
static
££ 
List
££ 
<
££ 
ChapterDetails
££ )
>
££) *
GetChapterList
££+ 9
(
££9 :
int
££: =
?
££= >
subSpecialtyId
££? M
)
££M N
{
¤¤ 	
List
¥¥ 
<
¥¥ 
ChapterDetails
¥¥ 
>
¥¥  
chapterList
¥¥! ,
=
¥¥- .
new
¥¥/ 2
List
¥¥3 7
<
¥¥7 8
ChapterDetails
¥¥8 F
>
¥¥F G
(
¥¥G H
)
¥¥H I
;
¥¥I J
SqlParameter
§§ 
[
§§ 
]
§§ 
objSqlParameter
§§ *
=
§§+ ,
{
¨¨ 
new
©© 
SqlParameter
©©  
(
©©  !
$str
©©! 2
,
©©2 3
Convert
©©4 ;
.
©©; <
ToInt32
©©< C
(
©©C D
subSpecialtyId
©©D R
)
©©R S
)
©©S T
,
©©T U
}
ªª- .
;
ªª. /
using
¬¬ 
(
¬¬ 
SqlDataReader
¬¬  
objSqlDataReader
¬¬! 1
=
¬¬2 3
	SqlHelper
¬¬4 =
.
¬¬= >
ExecuteReader
¬¬> K
(
¬¬K L#
SqlConnectionProvider
­­ %
.
­­% &!
GetConnectionString
­­& 9
(
­­9 :
DataAccessType
­­: H
.
­­H I
Read
­­I M
)
­­M N
,
­­N O
CommandType
­­P [
.
­­[ \
StoredProcedure
­­\ k
,
­­k l
$str­­m „
,­­„ …
objSqlParameter­­† •
)­­• –
)­­– —
{
®® 
while
―― 
(
―― 
objSqlDataReader
―― '
.
――' (
Read
――( ,
(
――, -
)
――- .
)
――. /
{
°° 
ChapterDetails
±± "
chapter
±±# *
=
±±+ ,
new
±±- 0
ChapterDetails
±±1 ?
(
±±? @
)
±±@ A
;
±±A B
object
²² 
chapterNameObj
²² )
=
²²* +
objSqlDataReader
²², <
[
²²< =
$str
²²= J
]
²²J K
;
²²K L
chapter
³³ 
.
³³ 
ChapterName
³³ '
=
³³( )
chapterNameObj
³³* 8
is
³³9 ;
DBNull
³³< B
?
³³C D
string
³³E K
.
³³K L
Empty
³³L Q
:
³³R S
Convert
³³T [
.
³³[ \
ToString
³³\ d
(
³³d e
objSqlDataReader
³³e u
[
³³u v
$str³³v ƒ
]³³ƒ „
)³³„ …
;³³… †
object
µµ 

chapterObj
µµ %
=
µµ& '
objSqlDataReader
µµ( 8
[
µµ8 9
$str
µµ9 B
]
µµB C
;
µµC D
chapter
¶¶ 
.
¶¶ 
Chapter
¶¶ #
=
¶¶$ %

chapterObj
¶¶& 0
is
¶¶1 3
DBNull
¶¶4 :
?
¶¶; <
string
¶¶= C
.
¶¶C D
Empty
¶¶D I
:
¶¶J K
Convert
¶¶L S
.
¶¶S T
ToString
¶¶T \
(
¶¶\ ]
objSqlDataReader
¶¶] m
[
¶¶m n
$str
¶¶n w
]
¶¶w x
)
¶¶x y
;
¶¶y z
chapterList
ΈΈ 
.
ΈΈ  
Add
ΈΈ  #
(
ΈΈ# $
chapter
ΈΈ$ +
)
ΈΈ+ ,
;
ΈΈ, -
}
ΉΉ 
objSqlDataReader
»»  
.
»»  !
Close
»»! &
(
»»& '
)
»»' (
;
»»( )
}
ΌΌ 
chapterList
ΎΎ 
=
ΎΎ 
chapterList
ΎΎ %
.
ΎΎ% &

DistinctBy
ΎΎ& 0
(
ΎΎ0 1
i
ΎΎ1 2
=>
ΎΎ3 5
i
ΎΎ6 7
.
ΎΎ7 8
ChapterName
ΎΎ8 C
)
ΎΎC D
.
ΎΎD E
ToList
ΎΎE K
(
ΎΎK L
)
ΎΎL M
;
ΎΎM N
return
ΏΏ 
chapterList
ΏΏ 
;
ΏΏ 
}
ΐΐ 	
public
ΒΒ 
static
ΒΒ 
List
ΒΒ 
<
ΒΒ 
QuestionDetail
ΒΒ )
>
ΒΒ) *
GetNotesQuestion
ΒΒ+ ;
(
ΒΒ; <
int
ΒΒ< ?
?
ΒΒ? @
subSpecialityId
ΒΒA P
,
ΒΒP Q
string
ΒΒR X
chapterName
ΒΒY d
,
ΒΒd e
int
ΒΒf i
userId
ΒΒj p
)
ΒΒp q
{
ΓΓ 	
List
ΔΔ 
<
ΔΔ 
QuestionDetail
ΔΔ 
>
ΔΔ  
notesDetailList
ΔΔ! 0
=
ΔΔ1 2
new
ΔΔ3 6
List
ΔΔ7 ;
<
ΔΔ; <
QuestionDetail
ΔΔ< J
>
ΔΔJ K
(
ΔΔK L
)
ΔΔL M
;
ΔΔM N
SqlParameter
ΖΖ 
[
ΖΖ 
]
ΖΖ 
objSqlParameter
ΖΖ *
=
ΖΖ+ ,
{
ΗΗ 
new
ΘΘ 
SqlParameter
ΘΘ  
(
ΘΘ  !
$str
ΘΘ! 2
,
ΘΘ2 3
Convert
ΘΘ4 ;
.
ΘΘ; <
ToInt32
ΘΘ< C
(
ΘΘC D
subSpecialityId
ΘΘD S
)
ΘΘS T
)
ΘΘT U
,
ΘΘU V
new
ΙΙ 
SqlParameter
ΙΙ  
(
ΙΙ  !
$str
ΙΙ! /
,
ΙΙ/ 0
chapterName
ΙΙ1 <
)
ΙΙ< =
,
ΙΙ= >
new
ΚΚ 
SqlParameter
ΚΚ  
(
ΚΚ  !
$str
ΚΚ! *
,
ΚΚ* +
Convert
ΚΚ, 3
.
ΚΚ3 4
ToInt32
ΚΚ4 ;
(
ΚΚ; <
userId
ΚΚ< B
)
ΚΚB C
)
ΚΚC D
,
ΚΚD E
}
ΛΛ- .
;
ΛΛ. /
using
ΝΝ 
(
ΝΝ 
SqlDataReader
ΝΝ  
objSqlDataReader
ΝΝ! 1
=
ΝΝ2 3
	SqlHelper
ΝΝ4 =
.
ΝΝ= >
ExecuteReader
ΝΝ> K
(
ΝΝK L#
SqlConnectionProvider
ΞΞ %
.
ΞΞ% &!
GetConnectionString
ΞΞ& 9
(
ΞΞ9 :
DataAccessType
ΞΞ: H
.
ΞΞH I
Read
ΞΞI M
)
ΞΞM N
,
ΞΞN O
CommandType
ΞΞP [
.
ΞΞ[ \
StoredProcedure
ΞΞ\ k
,
ΞΞk l
$strΞΞm 
,ΞΞ ‹
objSqlParameterΞΞ ›
)ΞΞ› 
)ΞΞ 
{
ΟΟ 
while
ΠΠ 
(
ΠΠ 
objSqlDataReader
ΠΠ '
.
ΠΠ' (
Read
ΠΠ( ,
(
ΠΠ, -
)
ΠΠ- .
)
ΠΠ. /
{
ΡΡ 
QuestionDetail
ÒÒ "
notesDetail
ÒÒ# .
=
ÒÒ/ 0
new
ÒÒ1 4
QuestionDetail
ÒÒ5 C
(
ÒÒC D
)
ÒÒD E
;
ÒÒE F
object
ΣΣ 
questionIdObj
ΣΣ (
=
ΣΣ) *
objSqlDataReader
ΣΣ+ ;
[
ΣΣ; <
$str
ΣΣ< H
]
ΣΣH I
;
ΣΣI J
notesDetail
ΤΤ 
.
ΤΤ  

QuestionId
ΤΤ  *
=
ΤΤ+ ,
questionIdObj
ΤΤ- :
is
ΤΤ; =
DBNull
ΤΤ> D
?
ΤΤE F
$num
ΤΤG H
:
ΤΤI J
Convert
ΤΤK R
.
ΤΤR S
ToInt32
ΤΤS Z
(
ΤΤZ [
objSqlDataReader
ΤΤ[ k
[
ΤΤk l
$str
ΤΤl x
]
ΤΤx y
)
ΤΤy z
;
ΤΤz {
object
ΦΦ 
stemObj
ΦΦ "
=
ΦΦ# $
objSqlDataReader
ΦΦ% 5
[
ΦΦ5 6
$str
ΦΦ6 <
]
ΦΦ< =
;
ΦΦ= >
notesDetail
ΧΧ 
.
ΧΧ  
Stem
ΧΧ  $
=
ΧΧ% &
stemObj
ΧΧ' .
is
ΧΧ/ 1
DBNull
ΧΧ2 8
?
ΧΧ9 :
string
ΧΧ; A
.
ΧΧA B
Empty
ΧΧB G
:
ΧΧH I
Convert
ΧΧJ Q
.
ΧΧQ R
ToString
ΧΧR Z
(
ΧΧZ [
objSqlDataReader
ΧΧ[ k
[
ΧΧk l
$str
ΧΧl r
]
ΧΧr s
)
ΧΧs t
;
ΧΧt u
object
ΩΩ 
topicNameObj
ΩΩ '
=
ΩΩ( )
objSqlDataReader
ΩΩ* :
[
ΩΩ: ;
$str
ΩΩ; F
]
ΩΩF G
;
ΩΩG H
notesDetail
ΪΪ 
.
ΪΪ  
	TopicName
ΪΪ  )
=
ΪΪ* +
topicNameObj
ΪΪ, 8
is
ΪΪ9 ;
DBNull
ΪΪ< B
?
ΪΪC D
string
ΪΪE K
.
ΪΪK L
Empty
ΪΪL Q
:
ΪΪR S
Convert
ΪΪT [
.
ΪΪ[ \
ToString
ΪΪ\ d
(
ΪΪd e
objSqlDataReader
ΪΪe u
[
ΪΪu v
$strΪΪv 
]ΪΪ ‚
)ΪΪ‚ ƒ
;ΪΪƒ „
object
άά 
topicObj
άά #
=
άά$ %
objSqlDataReader
άά& 6
[
άά6 7
$str
άά7 >
]
άά> ?
;
άά? @
notesDetail
έέ 
.
έέ  
Topic
έέ  %
=
έέ& '
topicObj
έέ( 0
is
έέ1 3
DBNull
έέ4 :
?
έέ; <
string
έέ= C
.
έέC D
Empty
έέD I
:
έέJ K
Convert
έέL S
.
έέS T
ToString
έέT \
(
έέ\ ]
objSqlDataReader
έέ] m
[
έέm n
$str
έέn u
]
έέu v
)
έέv w
;
έέw x
notesDetailList
ήή #
.
ήή# $
Add
ήή$ '
(
ήή' (
notesDetail
ήή( 3
)
ήή3 4
;
ήή4 5
}
ίί 
objSqlDataReader
αα  
.
αα  !
Close
αα! &
(
αα& '
)
αα' (
;
αα( )
}
ββ 
notesDetailList
δδ 
=
δδ 
notesDetailList
δδ -
.
δδ- .

DistinctBy
δδ. 8
(
δδ8 9
i
δδ9 :
=>
δδ; =
i
δδ> ?
.
δδ? @

QuestionId
δδ@ J
)
δδJ K
.
δδK L
ToList
δδL R
(
δδR S
)
δδS T
;
δδT U
notesDetailList
εε 
=
εε 
notesDetailList
εε -
.
εε- .
OrderBy
εε. 5
(
εε5 6
x
εε6 7
=>
εε8 :
x
εε; <
.
εε< =
Topic
εε= B
)
εεB C
.
εεC D
ToList
εεD J
(
εεJ K
)
εεK L
;
εεL M
return
ζζ 
notesDetailList
ζζ "
;
ζζ" #
}
ηη 	
public
ιι 
static
ιι 
IEnumerable
ιι !
<
ιι! "
T
ιι" #
>
ιι# $

DistinctBy
ιι% /
<
ιι/ 0
T
ιι0 1
,
ιι1 2
TKey
ιι3 7
>
ιι7 8
(
ιι8 9
this
ιι9 =
IEnumerable
ιι> I
<
ιιI J
T
ιιJ K
>
ιιK L

enumerable
ιιM W
,
ιιW X
Func
ιιY ]
<
ιι] ^
T
ιι^ _
,
ιι_ `
TKey
ιιa e
>
ιιe f
keySelector
ιιg r
)
ιιr s
{
κκ 	
return
λλ 

enumerable
λλ 
.
λλ 
GroupBy
λλ %
(
λλ% &
keySelector
λλ& 1
)
λλ1 2
.
λλ2 3
Select
λλ3 9
(
λλ9 :
grp
λλ: =
=>
λλ> @
grp
λλA D
.
λλD E
First
λλE J
(
λλJ K
)
λλK L
)
λλL M
;
λλM N
}
μμ 	
public
ξξ 
static
ξξ 
List
ξξ 
<
ξξ 
Notes
ξξ  
>
ξξ  !
GetNotesList
ξξ" .
(
ξξ. /
int
ξξ/ 2

questionId
ξξ3 =
,
ξξ= >
int
ξξ@ C
userId
ξξD J
)
ξξJ K
{
οο 	
List
ππ 
<
ππ 
Notes
ππ 
>
ππ 
	notesList
ππ !
=
ππ" #
new
ππ$ '
List
ππ( ,
<
ππ, -
Notes
ππ- 2
>
ππ2 3
(
ππ3 4
)
ππ4 5
;
ππ5 6
SqlParameter
ςς 
[
ςς 
]
ςς 
objSqlParameter
ςς *
=
ςς+ ,
{
σσ 
new
ττ 
SqlParameter
ττ  
(
ττ  !
$str
ττ! .
,
ττ. /
Convert
ττ0 7
.
ττ7 8
ToInt32
ττ8 ?
(
ττ? @

questionId
ττ@ J
)
ττJ K
)
ττK L
,
ττL M
new
υυ 
SqlParameter
υυ  
(
υυ  !
$str
υυ! *
,
υυ* +
Convert
υυ, 3
.
υυ3 4
ToInt32
υυ4 ;
(
υυ; <
userId
υυ< B
)
υυB C
)
υυC D
,
υυD E
}
φφ- .
;
φφ. /
using
ψψ 
(
ψψ 
SqlDataReader
ψψ  
objSqlDataReader
ψψ! 1
=
ψψ2 3
	SqlHelper
ψψ4 =
.
ψψ= >
ExecuteReader
ψψ> K
(
ψψK L#
SqlConnectionProvider
ωω %
.
ωω% &!
GetConnectionString
ωω& 9
(
ωω9 :
DataAccessType
ωω: H
.
ωωH I
Read
ωωI M
)
ωωM N
,
ωωN O
CommandType
ωωP [
.
ωω[ \
StoredProcedure
ωω\ k
,
ωωk l
$str
ωωm 
,ωω €
objSqlParameterωω 
)ωω ‘
)ωω‘ ’
{
ϊϊ 
while
ϋϋ 
(
ϋϋ 
objSqlDataReader
ϋϋ '
.
ϋϋ' (
Read
ϋϋ( ,
(
ϋϋ, -
)
ϋϋ- .
)
ϋϋ. /
{
όό 
Notes
ύύ 
notes
ύύ 
=
ύύ  !
new
ύύ" %
Notes
ύύ& +
(
ύύ+ ,
)
ύύ, -
;
ύύ- .
object
ώώ 

notesIdObj
ώώ %
=
ώώ& '
objSqlDataReader
ώώ( 8
[
ώώ8 9
$str
ώώ9 B
]
ώώB C
;
ώώC D
notes
ÿÿ 
.
ÿÿ 
NotesId
ÿÿ !
=
ÿÿ" #

notesIdObj
ÿÿ$ .
is
ÿÿ/ 1
DBNull
ÿÿ2 8
?
ÿÿ9 :
$num
ÿÿ; <
:
ÿÿ= >
Convert
ÿÿ? F
.
ÿÿF G
ToInt32
ÿÿG N
(
ÿÿN O
objSqlDataReader
ÿÿO _
[
ÿÿ_ `
$str
ÿÿ` i
]
ÿÿi j
)
ÿÿj k
;
ÿÿk l
object
 
notesObj
 #
=
$ %
objSqlDataReader
& 6
[
6 7
$str
7 >
]
> ?
;
? @
notes
‚‚ 
.
‚‚ 
	NotesText
‚‚ #
=
‚‚$ %
notesObj
‚‚& .
is
‚‚/ 1
DBNull
‚‚2 8
?
‚‚9 :
string
‚‚; A
.
‚‚A B
Empty
‚‚B G
:
‚‚H I
Convert
‚‚J Q
.
‚‚Q R
ToString
‚‚R Z
(
‚‚Z [
objSqlDataReader
‚‚[ k
[
‚‚k l
$str
‚‚l s
]
‚‚s t
)
‚‚t u
;
‚‚u v
	notesList
ƒƒ 
.
ƒƒ 
Add
ƒƒ !
(
ƒƒ! "
notes
ƒƒ" '
)
ƒƒ' (
;
ƒƒ( )
}
„„ 
objSqlDataReader
††  
.
††  !
Close
††! &
(
††& '
)
††' (
;
††( )
}
‡‡ 
return
‰‰ 
	notesList
‰‰ 
;
‰‰ 
}
 	
public
 
static
 
List
 
<
 
Choice
 !
>
! "
GetChoiceList
# 0
(
0 1
int
1 4

questionId
5 ?
)
? @
{
 	
List
 
<
 
Choice
 
>
 

choiceList
 #
=
$ %
new
& )
List
* .
<
. /
Choice
/ 5
>
5 6
(
6 7
)
7 8
;
8 9
SqlParameter
 
[
 
]
 
objSqlParameter
 *
=
+ ,
{
‘‘ 
new
’’ 
SqlParameter
’’  
(
’’  !
$str
’’! .
,
’’. /
Convert
’’0 7
.
’’7 8
ToInt32
’’8 ?
(
’’? @

questionId
’’@ J
)
’’J K
)
’’K L
,
’’L M
}
““- .
;
““. /
using
•• 
(
•• 
SqlDataReader
••  
objSqlDataReader
••! 1
=
••2 3
	SqlHelper
••4 =
.
••= >
ExecuteReader
••> K
(
••K L#
SqlConnectionProvider
–– %
.
––% &!
GetConnectionString
––& 9
(
––9 :
DataAccessType
––: H
.
––H I
Read
––I M
)
––M N
,
––N O
CommandType
––P [
.
––[ \
StoredProcedure
––\ k
,
––k l
$str––m €
,––€ 
objSqlParameter––‚ ‘
)––‘ ’
)––’ “
{
—— 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
™™ 
Choice
 
choice
 !
=
" #
new
$ '
Choice
( .
(
. /
)
/ 0
;
0 1
object
›› 
iDObj
››  
=
››! "
objSqlDataReader
››# 3
[
››3 4
$str
››4 8
]
››8 9
;
››9 :
choice
 
.
 
choiceId
 #
=
$ %
iDObj
& +
is
, .
DBNull
/ 5
?
6 7
$num
8 9
:
: ;
Convert
< C
.
C D
ToInt32
D K
(
K L
objSqlDataReader
L \
[
\ ]
$str
] a
]
a b
)
b c
;
c d
object
 
textObj
 "
=
# $
objSqlDataReader
% 5
[
5 6
$str
6 <
]
< =
;
= >
choice
 
.
 

choiceText
 %
=
& '
textObj
( /
is
0 2
DBNull
3 9
?
: ;
string
< B
.
B C
Empty
C H
:
I J
Convert
K R
.
R S
ToString
S [
(
[ \
objSqlDataReader
\ l
[
l m
$str
m s
]
s t
)
t u
;
u v

choiceList
 
.
 
Add
 "
(
" #
choice
# )
)
) *
;
* +
}
   
objSqlDataReader
ΆΆ  
.
ΆΆ  !
Close
ΆΆ! &
(
ΆΆ& '
)
ΆΆ' (
;
ΆΆ( )
}
££ 
return
¥¥ 

choiceList
¥¥ 
;
¥¥ 
}
¦¦ 	
public
¨¨ 
static
¨¨ 
List
¨¨ 
<
¨¨ 
Notes
¨¨  
>
¨¨  !
AddNotes
¨¨" *
(
¨¨* +
NotesRequest
¨¨+ 7
notesRequest
¨¨8 D
)
¨¨D E
{
©© 	
List
ªª 
<
ªª 
Notes
ªª 
>
ªª 
	notesList
ªª !
=
ªª" #
new
ªª$ '
List
ªª( ,
<
ªª, -
Notes
ªª- 2
>
ªª2 3
(
ªª3 4
)
ªª4 5
;
ªª5 6
SqlParameter
¬¬ 
[
¬¬ 
]
¬¬ 
objSqlParameter
¬¬ *
=
¬¬+ ,
{
­­ 
new
®® 
SqlParameter
®®  
(
®®  !
$str
®®! .
,
®®. /
Convert
®®0 7
.
®®7 8
ToInt32
®®8 ?
(
®®? @
notesRequest
®®@ L
.
®®L M

QuestionId
®®M W
)
®®W X
)
®®X Y
,
®®Y Z
new
―― 
SqlParameter
――  
(
――  !
$str
――! *
,
――* +
Convert
――, 3
.
――3 4
ToInt32
――4 ;
(
――; <
notesRequest
――< H
.
――H I
UserId
――I O
)
――O P
)
――P Q
,
――Q R
new
°° 
SqlParameter
°°  
(
°°  !
$str
°°! *
,
°°* +
Convert
°°, 3
.
°°3 4
ToInt32
°°4 ;
(
°°; <
notesRequest
°°< H
.
°°H I
ExamId
°°I O
)
°°O P
)
°°P Q
,
°°Q R
new
±± 
SqlParameter
±±  
(
±±  !
$str
±±! 1
,
±±1 2
Convert
±±3 :
.
±±: ;
ToInt32
±±; B
(
±±B C
notesRequest
±±C O
.
±±O P
ExamAttemptId
±±P ]
)
±±] ^
)
±±^ _
,
±±_ `
new
²² 
SqlParameter
²²  
(
²²  !
$str
²²! -
,
²²- .
Convert
²²/ 6
.
²²6 7
ToString
²²7 ?
(
²²? @
notesRequest
²²@ L
.
²²L M
	NotesText
²²M V
)
²²V W
)
²²W X
,
²²X Y
new
³³ 
SqlParameter
³³  
(
³³  !
$str
³³! 4
,
³³4 5
notesRequest
³³6 B
.
³³B C
NotesCreatedDate
³³C S
)
³³S T
,
³³T U
new
΄΄ 
SqlParameter
΄΄  
(
΄΄  !
$str
΄΄! 4
,
΄΄4 5
notesRequest
΄΄6 B
.
΄΄B C
NotesUpdatedDate
΄΄C S
)
΄΄S T
,
΄΄T U
}
µµ- .
;
µµ. /
using
·· 
(
·· 
SqlDataReader
··  
objSqlDataReader
··! 1
=
··2 3
	SqlHelper
··4 =
.
··= >
ExecuteReader
··> K
(
··K L#
SqlConnectionProvider
ΈΈ %
.
ΈΈ% &!
GetConnectionString
ΈΈ& 9
(
ΈΈ9 :
DataAccessType
ΈΈ: H
.
ΈΈH I
Read
ΈΈI M
)
ΈΈM N
,
ΈΈN O
CommandType
ΈΈP [
.
ΈΈ[ \
StoredProcedure
ΈΈ\ k
,
ΈΈk l
$strΈΈm …
,ΈΈ… †
objSqlParameterΈΈ‡ –
)ΈΈ– —
)ΈΈ— 
{
ΉΉ 
while
ΊΊ 
(
ΊΊ 
objSqlDataReader
ΊΊ '
.
ΊΊ' (
Read
ΊΊ( ,
(
ΊΊ, -
)
ΊΊ- .
)
ΊΊ. /
{
»» 
Notes
ΌΌ 
notes
ΌΌ 
=
ΌΌ  !
new
ΌΌ" %
Notes
ΌΌ& +
(
ΌΌ+ ,
)
ΌΌ, -
;
ΌΌ- .
object
½½ 

notesIdObj
½½ %
=
½½& '
objSqlDataReader
½½( 8
[
½½8 9
$str
½½9 B
]
½½B C
;
½½C D
notes
ΎΎ 
.
ΎΎ 
NotesId
ΎΎ !
=
ΎΎ" #

notesIdObj
ΎΎ$ .
is
ΎΎ/ 1
DBNull
ΎΎ2 8
?
ΎΎ9 :
$num
ΎΎ; <
:
ΎΎ= >
Convert
ΎΎ? F
.
ΎΎF G
ToInt32
ΎΎG N
(
ΎΎN O
objSqlDataReader
ΎΎO _
[
ΎΎ_ `
$str
ΎΎ` i
]
ΎΎi j
)
ΎΎj k
;
ΎΎk l
object
ΐΐ 
notesObj
ΐΐ #
=
ΐΐ$ %
objSqlDataReader
ΐΐ& 6
[
ΐΐ6 7
$str
ΐΐ7 >
]
ΐΐ> ?
;
ΐΐ? @
notes
ΑΑ 
.
ΑΑ 
	NotesText
ΑΑ #
=
ΑΑ$ %
notesObj
ΑΑ& .
is
ΑΑ/ 1
DBNull
ΑΑ2 8
?
ΑΑ9 :
string
ΑΑ; A
.
ΑΑA B
Empty
ΑΑB G
:
ΑΑH I
Convert
ΑΑJ Q
.
ΑΑQ R
ToString
ΑΑR Z
(
ΑΑZ [
objSqlDataReader
ΑΑ[ k
[
ΑΑk l
$str
ΑΑl s
]
ΑΑs t
)
ΑΑt u
;
ΑΑu v
object
ΓΓ 
questionIdObj
ΓΓ (
=
ΓΓ) *
objSqlDataReader
ΓΓ+ ;
[
ΓΓ; <
$str
ΓΓ< H
]
ΓΓH I
;
ΓΓI J
notes
ΔΔ 
.
ΔΔ 

QuestionId
ΔΔ $
=
ΔΔ% &
questionIdObj
ΔΔ' 4
is
ΔΔ5 7
DBNull
ΔΔ8 >
?
ΔΔ? @
$num
ΔΔA B
:
ΔΔC D
Convert
ΔΔE L
.
ΔΔL M
ToInt16
ΔΔM T
(
ΔΔT U
objSqlDataReader
ΔΔU e
[
ΔΔe f
$str
ΔΔf r
]
ΔΔr s
)
ΔΔs t
;
ΔΔt u
	notesList
ΕΕ 
.
ΕΕ 
Add
ΕΕ !
(
ΕΕ! "
notes
ΕΕ" '
)
ΕΕ' (
;
ΕΕ( )
}
ΖΖ 
objSqlDataReader
ΘΘ  
.
ΘΘ  !
Close
ΘΘ! &
(
ΘΘ& '
)
ΘΘ' (
;
ΘΘ( )
}
ΙΙ 
return
ΛΛ 
	notesList
ΛΛ 
;
ΛΛ 
}
ΜΜ 	
public
ΞΞ 
static
ΞΞ 
List
ΞΞ 
<
ΞΞ 
Notes
ΞΞ  
>
ΞΞ  !
UpdateNotes
ΞΞ" -
(
ΞΞ- .
NotesRequest
ΞΞ. :
notesRequest
ΞΞ; G
)
ΞΞG H
{
ΟΟ 	
List
ΠΠ 
<
ΠΠ 
Notes
ΠΠ 
>
ΠΠ 
	notesList
ΠΠ !
=
ΠΠ" #
new
ΠΠ$ '
List
ΠΠ( ,
<
ΠΠ, -
Notes
ΠΠ- 2
>
ΠΠ2 3
(
ΠΠ3 4
)
ΠΠ4 5
;
ΠΠ5 6
SqlParameter
ÒÒ 
[
ÒÒ 
]
ÒÒ 
objSqlParameter
ÒÒ *
=
ÒÒ+ ,
{
ΣΣ 
new
ΤΤ 
SqlParameter
ΤΤ  
(
ΤΤ  !
$str
ΤΤ! .
,
ΤΤ. /
Convert
ΤΤ0 7
.
ΤΤ7 8
ToInt32
ΤΤ8 ?
(
ΤΤ? @
notesRequest
ΤΤ@ L
.
ΤΤL M

QuestionId
ΤΤM W
)
ΤΤW X
)
ΤΤX Y
,
ΤΤY Z
new
ΥΥ 
SqlParameter
ΥΥ  
(
ΥΥ  !
$str
ΥΥ! *
,
ΥΥ* +
Convert
ΥΥ, 3
.
ΥΥ3 4
ToInt32
ΥΥ4 ;
(
ΥΥ; <
notesRequest
ΥΥ< H
.
ΥΥH I
UserId
ΥΥI O
)
ΥΥO P
)
ΥΥP Q
,
ΥΥQ R
new
ΦΦ 
SqlParameter
ΦΦ  
(
ΦΦ  !
$str
ΦΦ! +
,
ΦΦ+ ,
Convert
ΦΦ- 4
.
ΦΦ4 5
ToInt32
ΦΦ5 <
(
ΦΦ< =
notesRequest
ΦΦ= I
.
ΦΦI J
NotesId
ΦΦJ Q
)
ΦΦQ R
)
ΦΦR S
,
ΦΦS T
new
ΧΧ 
SqlParameter
ΧΧ  
(
ΧΧ  !
$str
ΧΧ! -
,
ΧΧ- .
Convert
ΧΧ/ 6
.
ΧΧ6 7
ToString
ΧΧ7 ?
(
ΧΧ? @
notesRequest
ΧΧ@ L
.
ΧΧL M
	NotesText
ΧΧM V
)
ΧΧV W
)
ΧΧW X
,
ΧΧX Y
new
ΨΨ 
SqlParameter
ΨΨ  
(
ΨΨ  !
$str
ΨΨ! 4
,
ΨΨ4 5
notesRequest
ΨΨ6 B
.
ΨΨB C
NotesUpdatedDate
ΨΨC S
)
ΨΨS T
,
ΨΨT U
}
ΩΩ- .
;
ΩΩ. /
using
ΫΫ 
(
ΫΫ 
SqlDataReader
ΫΫ  
objSqlDataReader
ΫΫ! 1
=
ΫΫ2 3
	SqlHelper
ΫΫ4 =
.
ΫΫ= >
ExecuteReader
ΫΫ> K
(
ΫΫK L#
SqlConnectionProvider
άά %
.
άά% &!
GetConnectionString
άά& 9
(
άά9 :
DataAccessType
άά: H
.
άάH I
Read
άάI M
)
άάM N
,
άάN O
CommandType
άάP [
.
άά[ \
StoredProcedure
άά\ k
,
άάk l
$strάάm 
,άά ‰
objSqlParameterάά ™
)άά™ 
)άά ›
{
έέ 
while
ήή 
(
ήή 
objSqlDataReader
ήή '
.
ήή' (
Read
ήή( ,
(
ήή, -
)
ήή- .
)
ήή. /
{
ίί 
Notes
ΰΰ 
notes
ΰΰ 
=
ΰΰ  !
new
ΰΰ" %
Notes
ΰΰ& +
(
ΰΰ+ ,
)
ΰΰ, -
;
ΰΰ- .
object
αα 

notesIdObj
αα %
=
αα& '
objSqlDataReader
αα( 8
[
αα8 9
$str
αα9 B
]
ααB C
;
ααC D
notes
ββ 
.
ββ 
NotesId
ββ !
=
ββ" #

notesIdObj
ββ$ .
is
ββ/ 1
DBNull
ββ2 8
?
ββ9 :
$num
ββ; <
:
ββ= >
Convert
ββ? F
.
ββF G
ToInt32
ββG N
(
ββN O
objSqlDataReader
ββO _
[
ββ_ `
$str
ββ` i
]
ββi j
)
ββj k
;
ββk l
object
δδ 
notesObj
δδ #
=
δδ$ %
objSqlDataReader
δδ& 6
[
δδ6 7
$str
δδ7 >
]
δδ> ?
;
δδ? @
notes
εε 
.
εε 
	NotesText
εε #
=
εε$ %
notesObj
εε& .
is
εε/ 1
DBNull
εε2 8
?
εε9 :
string
εε; A
.
εεA B
Empty
εεB G
:
εεH I
Convert
εεJ Q
.
εεQ R
ToString
εεR Z
(
εεZ [
objSqlDataReader
εε[ k
[
εεk l
$str
εεl s
]
εεs t
)
εεt u
;
εεu v
object
ηη 
questionIdObj
ηη (
=
ηη) *
objSqlDataReader
ηη+ ;
[
ηη; <
$str
ηη< H
]
ηηH I
;
ηηI J
notes
θθ 
.
θθ 

QuestionId
θθ $
=
θθ% &
questionIdObj
θθ' 4
is
θθ5 7
DBNull
θθ8 >
?
θθ? @
$num
θθA B
:
θθC D
Convert
θθE L
.
θθL M
ToInt16
θθM T
(
θθT U
objSqlDataReader
θθU e
[
θθe f
$str
θθf r
]
θθr s
)
θθs t
;
θθt u
	notesList
ιι 
.
ιι 
Add
ιι !
(
ιι! "
notes
ιι" '
)
ιι' (
;
ιι( )
}
κκ 
objSqlDataReader
μμ  
.
μμ  !
Close
μμ! &
(
μμ& '
)
μμ' (
;
μμ( )
}
νν 
return
οο 
	notesList
οο 
;
οο 
}
ππ 	
public
ςς 
static
ςς 
List
ςς 
<
ςς 
Notes
ςς  
>
ςς  !
DeleteNotes
ςς" -
(
ςς- .
NotesRequest
ςς. :
notesRequest
ςς; G
)
ςςG H
{
σσ 	
List
ττ 
<
ττ 
Notes
ττ 
>
ττ 
	notesList
ττ !
=
ττ" #
new
ττ$ '
List
ττ( ,
<
ττ, -
Notes
ττ- 2
>
ττ2 3
(
ττ3 4
)
ττ4 5
;
ττ5 6
SqlParameter
φφ 
[
φφ 
]
φφ 
objSqlParameter
φφ *
=
φφ+ ,
{
χχ 
new
ψψ 
SqlParameter
ψψ  
(
ψψ  !
$str
ψψ! .
,
ψψ. /
Convert
ψψ0 7
.
ψψ7 8
ToInt32
ψψ8 ?
(
ψψ? @
notesRequest
ψψ@ L
.
ψψL M

QuestionId
ψψM W
)
ψψW X
)
ψψX Y
,
ψψY Z
new
ωω 
SqlParameter
ωω  
(
ωω  !
$str
ωω! *
,
ωω* +
Convert
ωω, 3
.
ωω3 4
ToInt32
ωω4 ;
(
ωω; <
notesRequest
ωω< H
.
ωωH I
UserId
ωωI O
)
ωωO P
)
ωωP Q
,
ωωQ R
new
ϊϊ 
SqlParameter
ϊϊ  
(
ϊϊ  !
$str
ϊϊ! +
,
ϊϊ+ ,
Convert
ϊϊ- 4
.
ϊϊ4 5
ToInt32
ϊϊ5 <
(
ϊϊ< =
notesRequest
ϊϊ= I
.
ϊϊI J
NotesId
ϊϊJ Q
)
ϊϊQ R
)
ϊϊR S
,
ϊϊS T
new
ϋϋ 
SqlParameter
ϋϋ  
(
ϋϋ  !
$str
ϋϋ! 4
,
ϋϋ4 5
notesRequest
ϋϋ6 B
.
ϋϋB C
NotesUpdatedDate
ϋϋC S
)
ϋϋS T
,
ϋϋT U
}
όό- .
;
όό. /
using
ώώ 
(
ώώ 
SqlDataReader
ώώ  
objSqlDataReader
ώώ! 1
=
ώώ2 3
	SqlHelper
ώώ4 =
.
ώώ= >
ExecuteReader
ώώ> K
(
ώώK L#
SqlConnectionProvider
ÿÿ %
.
ÿÿ% &!
GetConnectionString
ÿÿ& 9
(
ÿÿ9 :
DataAccessType
ÿÿ: H
.
ÿÿH I
Read
ÿÿI M
)
ÿÿM N
,
ÿÿN O
CommandType
ÿÿP [
.
ÿÿ[ \
StoredProcedure
ÿÿ\ k
,
ÿÿk l
$strÿÿm 
,ÿÿ ‰
objSqlParameterÿÿ ™
)ÿÿ™ 
)ÿÿ ›
{
€€ 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
‚‚ 
Notes
ƒƒ 
notes
ƒƒ 
=
ƒƒ  !
new
ƒƒ" %
Notes
ƒƒ& +
(
ƒƒ+ ,
)
ƒƒ, -
;
ƒƒ- .
object
„„ 

notesIdObj
„„ %
=
„„& '
objSqlDataReader
„„( 8
[
„„8 9
$str
„„9 B
]
„„B C
;
„„C D
notes
…… 
.
…… 
NotesId
…… !
=
……" #

notesIdObj
……$ .
is
……/ 1
DBNull
……2 8
?
……9 :
$num
……; <
:
……= >
Convert
……? F
.
……F G
ToInt32
……G N
(
……N O
objSqlDataReader
……O _
[
……_ `
$str
……` i
]
……i j
)
……j k
;
……k l
object
‡‡ 
notesObj
‡‡ #
=
‡‡$ %
objSqlDataReader
‡‡& 6
[
‡‡6 7
$str
‡‡7 >
]
‡‡> ?
;
‡‡? @
notes
 
.
 
	NotesText
 #
=
$ %
notesObj
& .
is
/ 1
DBNull
2 8
?
9 :
string
; A
.
A B
Empty
B G
:
H I
Convert
J Q
.
Q R
ToString
R Z
(
Z [
objSqlDataReader
[ k
[
k l
$str
l s
]
s t
)
t u
;
u v
object
 
questionIdObj
 (
=
) *
objSqlDataReader
+ ;
[
; <
$str
< H
]
H I
;
I J
notes
‹‹ 
.
‹‹ 

QuestionId
‹‹ $
=
‹‹% &
questionIdObj
‹‹' 4
is
‹‹5 7
DBNull
‹‹8 >
?
‹‹? @
$num
‹‹A B
:
‹‹C D
Convert
‹‹E L
.
‹‹L M
ToInt16
‹‹M T
(
‹‹T U
objSqlDataReader
‹‹U e
[
‹‹e f
$str
‹‹f r
]
‹‹r s
)
‹‹s t
;
‹‹t u
	notesList
 
.
 
Add
 !
(
! "
notes
" '
)
' (
;
( )
}
 
objSqlDataReader
  
.
  !
Close
! &
(
& '
)
' (
;
( )
}
 
return
’’ 
	notesList
’’ 
;
’’ 
}
““ 	
public
•• 
static
•• 
ChapterDetails
•• $
GetChapterByName
••% 5
(
••5 6
NoteBookRequest
••6 E
noteBookRequest
••F U
)
••U V
{
–– 	
ChapterDetails
—— 
chapterDetails
—— )
=
——* +
new
——, /
ChapterDetails
——0 >
(
——> ?
)
——? @
;
——@ A
SqlParameter
™™ 
[
™™ 
]
™™ 
objSqlParameter
™™ *
=
™™+ ,
{
 
new
›› 
SqlParameter
››  
(
››  !
$str
››! 2
,
››2 3
Convert
››4 ;
.
››; <
ToInt32
››< C
(
››C D
noteBookRequest
››D S
.
››S T
SubSpecialtyId
››T b
)
››b c
)
››c d
,
››d e
new
 
SqlParameter
  
(
  !
$str
! /
,
/ 0
noteBookRequest
1 @
.
@ A
ChapterName
A L
)
L M
,
M N
}
- .
;
. /
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
   %
.
  % &!
GetConnectionString
  & 9
(
  9 :
DataAccessType
  : H
.
  H I
Read
  I M
)
  M N
,
  N O
CommandType
  P [
.
  [ \
StoredProcedure
  \ k
,
  k l
$str  m 
,   ‹
objSqlParameter   ›
)  › 
)   
{
΅΅ 
while
ΆΆ 
(
ΆΆ 
objSqlDataReader
ΆΆ '
.
ΆΆ' (
Read
ΆΆ( ,
(
ΆΆ, -
)
ΆΆ- .
)
ΆΆ. /
{
££ 
object
¤¤ 
chapterNameObj
¤¤ )
=
¤¤* +
objSqlDataReader
¤¤, <
[
¤¤< =
$str
¤¤= J
]
¤¤J K
;
¤¤K L
chapterDetails
¥¥ "
.
¥¥" #
ChapterName
¥¥# .
=
¥¥/ 0
chapterNameObj
¥¥1 ?
is
¥¥@ B
DBNull
¥¥C I
?
¥¥J K
string
¥¥L R
.
¥¥R S
Empty
¥¥S X
:
¥¥Y Z
Convert
¥¥[ b
.
¥¥b c
ToString
¥¥c k
(
¥¥k l
objSqlDataReader
¥¥l |
[
¥¥| }
$str¥¥} 
]¥¥ ‹
)¥¥‹ 
;¥¥ 
object
§§ 

chapterObj
§§ %
=
§§& '
objSqlDataReader
§§( 8
[
§§8 9
$str
§§9 B
]
§§B C
;
§§C D
chapterDetails
¨¨ "
.
¨¨" #
Chapter
¨¨# *
=
¨¨+ ,

chapterObj
¨¨- 7
is
¨¨8 :
DBNull
¨¨; A
?
¨¨B C
string
¨¨D J
.
¨¨J K
Empty
¨¨K P
:
¨¨Q R
Convert
¨¨S Z
.
¨¨Z [
ToString
¨¨[ c
(
¨¨c d
objSqlDataReader
¨¨d t
[
¨¨t u
$str
¨¨u ~
]
¨¨~ 
)¨¨ €
;¨¨€ 
}
©© 
objSqlDataReader
««  
.
««  !
Close
««! &
(
««& '
)
««' (
;
««( )
}
¬¬ 
return
®® 
chapterDetails
®® !
;
®®! "
}
―― 	
}
°° 
}±± ο®
tD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\NotificationMessageSettingDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class )
NotificationMessageSettingDAL .
{ 
public 
static 
List 
< &
NotificationMessageSetting 5
>5 6,
 GetAllNotificationMessageSetting7 W
(W X
SearchParametersX h

queDetailsi s
)s t
{ 	
List 
< &
NotificationMessageSetting +
>+ ,
performanceList- <
== >
new? B
ListC G
<G H&
NotificationMessageSettingH b
>b c
(c d
)d e
;e f
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new2 5
SqlParameter6 B
(B C
$strC Q
,Q R

queDetailsS ]
.] ^
OffsetValue^ i
)i j
,j k
new2 5
SqlParameter6 B
(B C
$strC P
,P Q

queDetailsR \
.\ ]

PagingSize] g
)g h
,h i
new2 5
SqlParameter6 B
(B C
$strC L
,L M

queDetailsN X
.X Y
SearchY _
)_ `
,` a
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m “
,
“ ”
objSqlParameter
• ¤
)
¤ ¥
)
¥ ¦
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ &
NotificationMessageSetting   .
reportListBO  / ;
=  < =
new  > A&
NotificationMessageSetting  B \
(  \ ]
)  ] ^
;  ^ _
object!! +
NotificationMessageSettingIdObj!! :
=!!; <
objSqlDataReader!!= M
[!!M N
$str!!N l
]!!l m
;!!m n
reportListBO""  
.""  !(
NotificationMessageSettingId""! =
=""> ?+
NotificationMessageSettingIdObj""@ _
is""` b
DBNull""c i
?""j k
$num""l m
:""n o
Convert""p w
.""w x
ToInt32""x 
(	"" €-
NotificationMessageSettingIdObj
""€ 
)
""  
;
""  ΅
object$$ 
	UserIdObj$$ $
=$$% &
objSqlDataReader$$' 7
[$$7 8
$str$$8 @
]$$@ A
;$$A B
reportListBO%%  
.%%  !
UserId%%! '
=%%( )
	UserIdObj%%* 3
is%%4 6
DBNull%%7 =
?%%> ?
(%%@ A
int%%A D
?%%D E
)%%E F
null%%F J
:%%K L
Convert%%M T
.%%T U
ToInt32%%U \
(%%\ ]
	UserIdObj%%] f
)%%f g
;%%g h
object'' "
NotificationMessageObj'' 1
=''2 3
objSqlDataReader''4 D
[''D E
$str''E Z
]''Z [
;''[ \
reportListBO((  
.((  !
NotificationMessage((! 4
=((5 6"
NotificationMessageObj((7 M
is((N P
DBNull((Q W
?((X Y
null((Z ^
:((_ `
Convert((a h
.((h i
ToString((i q
(((q r#
NotificationMessageObj	((r 
)
(( ‰
;
((‰ 
object** 
NoOfTimeObj** &
=**' (
objSqlDataReader**) 9
[**9 :
$str**: D
]**D E
;**E F
reportListBO++  
.++  !
NoOfTime++! )
=++* +
NoOfTimeObj++, 7
is++8 :
DBNull++; A
?++B C
$num++D E
:++F G
Convert++H O
.++O P
ToInt32++P W
(++W X
NoOfTimeObj++X c
)++c d
;++d e
object-- 
OnholdScreenTimeObj-- .
=--/ 0
objSqlDataReader--1 A
[--A B
$str--B T
]--T U
;--U V
reportListBO..  
...  !
OnholdScreenTime..! 1
=..2 3
OnholdScreenTimeObj..4 G
is..H J
DBNull..K Q
?..R S
$num..T U
:..V W
Convert..X _
..._ `
ToInt32..` g
(..g h
OnholdScreenTimeObj..h {
)..{ |
;..| }
object00 
IsUnableObj00 &
=00' (
objSqlDataReader00) 9
[009 :
$str00: D
]00D E
;00E F
reportListBO11  
.11  !
IsUnable11! )
=11* +
IsUnableObj11, 7
is118 :
DBNull11; A
?11B C
false11D I
:11J K
Convert11L S
.11S T
	ToBoolean11T ]
(11] ^
IsUnableObj11^ i
)11i j
;11j k
object33 /
#ISDoYouWishToSeeThisMessageAgainObj33 >
=33? @
objSqlDataReader33A Q
[33Q R
$str33R t
]33t u
;33u v
reportListBO44  
.44  !,
 ISDoYouWishToSeeThisMessageAgain44! A
=44B C/
#ISDoYouWishToSeeThisMessageAgainObj44D g
is44h j
DBNull44k q
?44r s
false44t y
:44z {
Convert	44| ƒ
.
44ƒ „
	ToBoolean
44„ 
(
44 1
#ISDoYouWishToSeeThisMessageAgainObj
44 ±
)
44± ²
;
44² ³
object66 
TotalObj66 #
=66$ %
objSqlDataReader66& 6
[666 7
$str667 >
]66> ?
;66? @
reportListBO77  
.77  !
Total77! &
=77' (
TotalObj77) 1
is772 4
DBNull775 ;
?77< =
$num77> ?
:77@ A
Convert77B I
.77I J
ToInt3277J Q
(77Q R
TotalObj77R Z
)77Z [
;77[ \
performanceList99 #
.99# $
Add99$ '
(99' (
reportListBO99( 4
)994 5
;995 6
}:: 
objSqlDataReader<<  
.<<  !
Close<<! &
(<<& '
)<<' (
;<<( )
}== 
return?? 
performanceList?? "
;??" #
}@@ 	
publicBB 
staticBB 
ListBB 
<BB &
NotificationMessageSettingBB 5
>BB5 6&
GetAllMessageSettingByUserBB7 Q
(BBQ R
SearchParametersBBR b

queDetailsBBc m
)BBm n
{CC 	
ListDD 
<DD &
NotificationMessageSettingDD +
>DD+ ,
performanceListDD- <
=DD= >
newDD? B
ListDDC G
<DDG H&
NotificationMessageSettingDDH b
>DDb c
(DDc d
)DDd e
;DDe f
SqlParameterEE 
[EE 
]EE 
objSqlParameterEE *
=EE+ ,
{FF 
newGG 
SqlParameterGG  
(GG  !
$strGG! *
,GG* +

queDetailsGG, 6
.GG6 7
UserIdGG7 =
)GG= >
,GG> ?
}HH 
;HH 
usingJJ 
(JJ 
SqlDataReaderJJ  
objSqlDataReaderJJ! 1
=JJ2 3
	SqlHelperJJ4 =
.JJ= >
ExecuteReaderJJ> K
(JJK L!
SqlConnectionProviderKK %
.KK% &
GetConnectionStringKK& 9
(KK9 :
DataAccessTypeKK: H
.KKH I
ReadKKI M
)KKM N
,KKN O
CommandTypeKKP [
.KK[ \
StoredProcedureKK\ k
,KKk l
$str	KKm ™
,
KK™ 
objSqlParameter
KK› ª
)
KKª «
)
KK« ¬
{LL 
whileMM 
(MM 
objSqlDataReaderMM '
.MM' (
ReadMM( ,
(MM, -
)MM- .
)MM. /
{NN &
NotificationMessageSettingOO .
reportListBOOO/ ;
=OO< =
newOO> A&
NotificationMessageSettingOOB \
(OO\ ]
)OO] ^
;OO^ _
objectPP +
NotificationMessageSettingIdObjPP :
=PP; <
objSqlDataReaderPP= M
[PPM N
$strPPN l
]PPl m
;PPm n
reportListBOQQ  
.QQ  !(
NotificationMessageSettingIdQQ! =
=QQ> ?+
NotificationMessageSettingIdObjQQ@ _
isQQ` b
DBNullQQc i
?QQj k
$numQQl m
:QQn o
ConvertQQp w
.QQw x
ToInt32QQx 
(	QQ €-
NotificationMessageSettingIdObj
QQ€ 
)
QQ  
;
QQ  ΅
objectSS 
	UserIdObjSS $
=SS% &
objSqlDataReaderSS' 7
[SS7 8
$strSS8 @
]SS@ A
;SSA B
reportListBOTT  
.TT  !
UserIdTT! '
=TT( )
	UserIdObjTT* 3
isTT4 6
DBNullTT7 =
?TT> ?
(TT@ A
intTTA D
?TTD E
)TTE F
nullTTF J
:TTK L
ConvertTTM T
.TTT U
ToInt32TTU \
(TT\ ]
	UserIdObjTT] f
)TTf g
;TTg h
objectVV "
NotificationMessageObjVV 1
=VV2 3
objSqlDataReaderVV4 D
[VVD E
$strVVE Z
]VVZ [
;VV[ \
reportListBOWW  
.WW  !
NotificationMessageWW! 4
=WW5 6"
NotificationMessageObjWW7 M
isWWN P
DBNullWWQ W
?WWX Y
nullWWZ ^
:WW_ `
ConvertWWa h
.WWh i
ToStringWWi q
(WWq r#
NotificationMessageObj	WWr 
)
WW ‰
;
WW‰ 
objectYY 
NoOfTimeObjYY &
=YY' (
objSqlDataReaderYY) 9
[YY9 :
$strYY: D
]YYD E
;YYE F
reportListBOZZ  
.ZZ  !
NoOfTimeZZ! )
=ZZ* +
NoOfTimeObjZZ, 7
isZZ8 :
DBNullZZ; A
?ZZB C
$numZZD E
:ZZF G
ConvertZZH O
.ZZO P
ToInt32ZZP W
(ZZW X
NoOfTimeObjZZX c
)ZZc d
;ZZd e
object\\ 
OnholdScreenTimeObj\\ .
=\\/ 0
objSqlDataReader\\1 A
[\\A B
$str\\B T
]\\T U
;\\U V
reportListBO]]  
.]]  !
OnholdScreenTime]]! 1
=]]2 3
OnholdScreenTimeObj]]4 G
is]]H J
DBNull]]K Q
?]]R S
$num]]T U
:]]V W
Convert]]X _
.]]_ `
ToInt32]]` g
(]]g h
OnholdScreenTimeObj]]h {
)]]{ |
;]]| }
object__ 
IsUnableObj__ &
=__' (
objSqlDataReader__) 9
[__9 :
$str__: D
]__D E
;__E F
reportListBO``  
.``  !
IsUnable``! )
=``* +
IsUnableObj``, 7
is``8 :
DBNull``; A
?``B C
false``D I
:``J K
Convert``L S
.``S T
	ToBoolean``T ]
(``] ^
IsUnableObj``^ i
)``i j
;``j k
objectbb /
#ISDoYouWishToSeeThisMessageAgainObjbb >
=bb? @
objSqlDataReaderbbA Q
[bbQ R
$strbbR t
]bbt u
;bbu v
reportListBOcc  
.cc  !,
 ISDoYouWishToSeeThisMessageAgaincc! A
=ccB C/
#ISDoYouWishToSeeThisMessageAgainObjccD g
iscch j
DBNullcck q
?ccr s
falsecct y
:ccz {
Convert	cc| ƒ
.
ccƒ „
	ToBoolean
cc„ 
(
cc 1
#ISDoYouWishToSeeThisMessageAgainObj
cc ±
)
cc± ²
;
cc² ³
performanceListff #
.ff# $
Addff$ '
(ff' (
reportListBOff( 4
)ff4 5
;ff5 6
}gg 
objSqlDataReaderii  
.ii  !
Closeii! &
(ii& '
)ii' (
;ii( )
}jj 
returnll 
performanceListll "
;ll" #
}mm 	
publicoo 
staticoo 
Listoo 
<oo %
SharedExamNotificationDTOoo 4
>oo4 5,
 GetSharedExamNotificationsByUseroo6 V
(ooV W
intooW Z
userIdoo[ a
)ooa b
{pp 	
Listqq 
<qq %
SharedExamNotificationDTOqq *
>qq* +
notificationListqq, <
=qq= >
newqq? B
ListqqC G
<qqG H%
SharedExamNotificationDTOqqH a
>qqa b
(qqb c
)qqc d
;qqd e
SqlParameterrr 
[rr 
]rr 

parametersrr %
=rr& '
newrr( +
SqlParameterrr, 8
[rr8 9
]rr9 :
{rr; <
newss 
SqlParameterss  
(ss  !
$strss! *
,ss* +
userIdss, 2
)ss2 3
}tt 
;tt 
usingvv 
(vv 
SqlDataReadervv  
objSqlDataReadervv! 1
=vv2 3
	SqlHelpervv4 =
.vv= >
ExecuteReadervv> K
(vvK L!
SqlConnectionProviderww $
.ww$ %
GetConnectionStringww% 8
(ww8 9
DataAccessTypeww9 G
.wwG H
ReadwwH L
)wwL M
,wwM N
CommandTypewwO Z
.wwZ [
StoredProcedureww[ j
,wwj k
$str	wwl ‹
,
ww‹ 

parameters
ww —
)
ww— 
)
ww ™
{xx 
whileyy 
(yy 
objSqlDataReaderyy '
.yy' (
Readyy( ,
(yy, -
)yy- .
)yy. /
{zz %
SharedExamNotificationDTO{{ -
notification{{. :
={{; <
new{{= @%
SharedExamNotificationDTO{{A Z
{|| )
IsSharedExamNotificationShown}} 5
=}}6 7
objSqlDataReader}}8 H
[}}H I
$str}}I h
]}}h i
is}}j l
DBNull}}m s
?}}t u
false}}v {
:}}| }
Convert	}}~ …
.
}}… †
	ToBoolean
}}† 
(
}} 
objSqlDataReader
}}  
[
}}  ΅
$str
}}΅ ΐ
]
}}ΐ Α
)
}}Α Β
,
}}Β Γ
NotificationMessage~~ +
=~~, -
objSqlDataReader~~. >
[~~> ?
$str~~? T
]~~T U
is~~V X
DBNull~~Y _
?~~` a
string~~b h
.~~h i
Empty~~i n
:~~o p
Convert~~q x
.~~x y
ToString	~~y 
(
~~ ‚
objSqlDataReader
~~‚ ’
[
~~’ “
$str
~~“ ¨
]
~~¨ ©
)
~~© ª
} 
; 
notificationList
€€ $
.
€€$ %
Add
€€% (
(
€€( )
notification
€€) 5
)
€€5 6
;
€€6 7
}
 
objSqlDataReader
ƒƒ  
.
ƒƒ  !
Close
ƒƒ! &
(
ƒƒ& '
)
ƒƒ' (
;
ƒƒ( )
}
„„ 
return
…… 
notificationList
…… #
;
……# $
}
†† 	
public
 
static
 
bool
 &
UpdateNotificationStatus
 3
(
3 4
int
4 7
userId
8 >
)
> ?
{
‰‰ 	
SqlParameter
 
[
 
]
 

parameters
 %
=
& '
new
( +
SqlParameter
, 8
[
8 9
]
9 :
{
‹‹ 
new
 
SqlParameter
  
(
  !
$str
! *
,
* +
userId
, 2
)
2 3
}
 
;
 
int
 
rowsAffected
 
=
 
	SqlHelper
 (
.
( )
ExecuteNonQuery
) 8
(
8 9#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Write
I N
)
N O
,
O P
CommandType
Q \
.
\ ]
StoredProcedure
] l
,
l m
$strn 
, 

parameters 
) ™
;™ 
return
‘‘ 
rowsAffected
‘‘ 
>
‘‘  !
$num
‘‘" #
;
‘‘# $
}
’’ 	
public
”” 
static
”” (
NotificationMessageSetting
”” 0+
GetNotificationMessageSetting
””1 N
(
””N O
SearchParameters
””O _

queDetails
””` j
)
””j k
{
•• 	
List
–– 
<
–– (
NotificationMessageSetting
–– +
>
––+ ,
performanceList
––- <
=
––= >
new
––? B
List
––C G
<
––G H(
NotificationMessageSetting
––H b
>
––b c
(
––c d
)
––d e
;
––e f
SqlParameter
—— 
[
—— 
]
—— 
objSqlParameter
—— *
=
——+ ,
{
 
new
™™ 
SqlParameter
™™  
(
™™  !
$str
™™! &
,
™™& '

queDetails
™™( 2
.
™™2 3
Id
™™3 5
)
™™5 6
}
 
;
 
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm ”
,” •
objSqlParameter– ¥
)¥ ¦
)¦ §
{
 
while
 
(
 
objSqlDataReader
 '
.
' (
Read
( ,
(
, -
)
- .
)
. /
{
   (
NotificationMessageSetting
΅΅ .
reportListBO
΅΅/ ;
=
΅΅< =
new
΅΅> A(
NotificationMessageSetting
΅΅B \
(
΅΅\ ]
)
΅΅] ^
;
΅΅^ _
object
ΆΆ -
NotificationMessageSettingIdObj
ΆΆ :
=
ΆΆ; <
objSqlDataReader
ΆΆ= M
[
ΆΆM N
$str
ΆΆN l
]
ΆΆl m
;
ΆΆm n
reportListBO
££  
.
££  !*
NotificationMessageSettingId
££! =
=
££> ?-
NotificationMessageSettingIdObj
££@ _
is
££` b
DBNull
££c i
?
££j k
$num
££l m
:
££n o
Convert
££p w
.
££w x
ToInt32
££x 
(££ €/
NotificationMessageSettingIdObj££€ 
)££  
;££  ΅
object
¥¥ 
	UserIdObj
¥¥ $
=
¥¥% &
objSqlDataReader
¥¥' 7
[
¥¥7 8
$str
¥¥8 @
]
¥¥@ A
;
¥¥A B
reportListBO
¦¦  
.
¦¦  !
UserId
¦¦! '
=
¦¦( )
	UserIdObj
¦¦* 3
is
¦¦4 6
DBNull
¦¦7 =
?
¦¦> ?
(
¦¦@ A
int
¦¦A D
?
¦¦D E
)
¦¦E F
null
¦¦F J
:
¦¦K L
Convert
¦¦M T
.
¦¦T U
ToInt32
¦¦U \
(
¦¦\ ]
	UserIdObj
¦¦] f
)
¦¦f g
;
¦¦g h
object
¨¨ $
NotificationMessageObj
¨¨ 1
=
¨¨2 3
objSqlDataReader
¨¨4 D
[
¨¨D E
$str
¨¨E Z
]
¨¨Z [
;
¨¨[ \
reportListBO
©©  
.
©©  !!
NotificationMessage
©©! 4
=
©©5 6$
NotificationMessageObj
©©7 M
is
©©N P
DBNull
©©Q W
?
©©X Y
null
©©Z ^
:
©©_ `
Convert
©©a h
.
©©h i
ToString
©©i q
(
©©q r%
NotificationMessageObj©©r 
)©© ‰
;©©‰ 
object
«« 
NoOfTimeObj
«« &
=
««' (
objSqlDataReader
««) 9
[
««9 :
$str
««: D
]
««D E
;
««E F
reportListBO
¬¬  
.
¬¬  !
NoOfTime
¬¬! )
=
¬¬* +
NoOfTimeObj
¬¬, 7
is
¬¬8 :
DBNull
¬¬; A
?
¬¬B C
$num
¬¬D E
:
¬¬F G
Convert
¬¬H O
.
¬¬O P
ToInt32
¬¬P W
(
¬¬W X
NoOfTimeObj
¬¬X c
)
¬¬c d
;
¬¬d e
object
®® !
OnholdScreenTimeObj
®® .
=
®®/ 0
objSqlDataReader
®®1 A
[
®®A B
$str
®®B T
]
®®T U
;
®®U V
reportListBO
――  
.
――  !
OnholdScreenTime
――! 1
=
――2 3!
OnholdScreenTimeObj
――4 G
is
――H J
DBNull
――K Q
?
――R S
$num
――T U
:
――V W
Convert
――X _
.
――_ `
ToInt32
――` g
(
――g h!
OnholdScreenTimeObj
――h {
)
――{ |
;
――| }
object
±± 
IsUnableObj
±± &
=
±±' (
objSqlDataReader
±±) 9
[
±±9 :
$str
±±: D
]
±±D E
;
±±E F
reportListBO
²²  
.
²²  !
IsUnable
²²! )
=
²²* +
IsUnableObj
²², 7
is
²²8 :
DBNull
²²; A
?
²²B C
false
²²D I
:
²²J K
Convert
²²L S
.
²²S T
	ToBoolean
²²T ]
(
²²] ^
IsUnableObj
²²^ i
)
²²i j
;
²²j k
object
΄΄ 1
#ISDoYouWishToSeeThisMessageAgainObj
΄΄ >
=
΄΄? @
objSqlDataReader
΄΄A Q
[
΄΄Q R
$str
΄΄R t
]
΄΄t u
;
΄΄u v
reportListBO
µµ  
.
µµ  !.
 ISDoYouWishToSeeThisMessageAgain
µµ! A
=
µµB C1
#ISDoYouWishToSeeThisMessageAgainObj
µµD g
is
µµh j
DBNull
µµk q
?
µµr s
false
µµt y
:
µµz {
Convertµµ| ƒ
.µµƒ „
	ToBooleanµµ„ 
(µµ 3
#ISDoYouWishToSeeThisMessageAgainObjµµ ±
)µµ± ²
;µµ² ³
performanceList
·· #
.
··# $
Add
··$ '
(
··' (
reportListBO
··( 4
)
··4 5
;
··5 6
}
ΈΈ 
objSqlDataReader
ΊΊ  
.
ΊΊ  !
Close
ΊΊ! &
(
ΊΊ& '
)
ΊΊ' (
;
ΊΊ( )
}
»» 
return
½½ 
performanceList
½½ "
.
½½" #
FirstOrDefault
½½# 1
(
½½1 2
)
½½2 3
;
½½3 4
}
ΎΎ 	
public
ΑΑ 
static
ΑΑ 
void
ΑΑ ,
SaveNotificationMessageSetting
ΑΑ 9
(
ΑΑ9 :(
NotificationMessageSetting
ΑΑ: T(
notificationMessageSetting
ΑΑU o
)
ΑΑo p
{
ΒΒ 	
try
ΓΓ 
{
ΔΔ 
SqlParameter
ΕΕ 
[
ΕΕ 
]
ΕΕ 
objSqlParameter
ΕΕ .
=
ΕΕ/ 0
{
ΖΖ 
new
ΗΗ 
SqlParameter
ΗΗ  
(
ΗΗ  !
$str
ΗΗ! @
,
ΗΗ@ A(
notificationMessageSetting
ΗΗB \
.
ΗΗ\ ]*
NotificationMessageSettingId
ΗΗ] y
)
ΗΗy z
,
ΗΗz {
new
ΘΘ 
SqlParameter
ΘΘ  
(
ΘΘ  !
$str
ΘΘ! 7
,
ΘΘ7 8(
notificationMessageSetting
ΘΘ9 S
.
ΘΘS T!
NotificationMessage
ΘΘT g
)
ΘΘg h
,
ΘΘh i
new
ΙΙ 
SqlParameter
ΙΙ  
(
ΙΙ  !
$str
ΙΙ! ,
,
ΙΙ, -
Convert
ΙΙ. 5
.
ΙΙ5 6
ToInt32
ΙΙ6 =
(
ΙΙ= >(
notificationMessageSetting
ΙΙ> X
.
ΙΙX Y
NoOfTime
ΙΙY a
)
ΙΙa b
)
ΙΙb c
,
ΙΙc d
new
ΚΚ 
SqlParameter
ΚΚ  
(
ΚΚ  !
$str
ΚΚ! 4
,
ΚΚ4 5(
notificationMessageSetting
ΚΚ6 P
.
ΚΚP Q
OnholdScreenTime
ΚΚQ a
)
ΚΚa b
,
ΚΚb c
new
ΛΛ 
SqlParameter
ΛΛ  
(
ΛΛ  !
$str
ΛΛ! ,
,
ΛΛ, -(
notificationMessageSetting
ΛΛ. H
.
ΛΛH I
IsUnable
ΛΛI Q
)
ΛΛQ R
,
ΛΛR S
new
ΜΜ 
SqlParameter
ΜΜ  
(
ΜΜ  !
$str
ΜΜ! *
,
ΜΜ* +(
notificationMessageSetting
ΜΜ, F
.
ΜΜF G
UserId
ΜΜG M
)
ΜΜM N
,
ΜΜN O
new
ΝΝ 
SqlParameter
ΝΝ  
(
ΝΝ  !
$str
ΝΝ! D
,
ΝΝD E(
notificationMessageSetting
ΝΝF `
.
ΝΝ` a/
 ISDoYouWishToSeeThisMessageAgainΝΝa 
)ΝΝ ‚
,ΝΝ‚ ƒ
}
ΞΞ 
;
ΞΞ 
int
ΠΠ 
result
ΠΠ 
=
ΠΠ 
	SqlHelper
ΠΠ &
.
ΠΠ& '
ExecuteNonQuery
ΠΠ' 6
(
ΠΠ6 7#
SqlConnectionProvider
ΠΠ7 L
.
ΠΠL M!
GetConnectionString
ΠΠM `
(
ΠΠ` a
DataAccessType
ΠΠa o
.
ΠΠo p
Write
ΠΠp u
)
ΠΠu v
,
ΠΠv w
CommandTypeΠΠx ƒ
.ΠΠƒ „
StoredProcedureΠΠ„ “
,ΠΠ“ ”
$strΠΠ• Γ
,ΠΠΓ Δ
objSqlParameterΠΠΕ Τ
)ΠΠΤ Υ
;ΠΠΥ Φ
}
ΡΡ 
catch
ÒÒ 
(
ÒÒ 
	Exception
ÒÒ 
e
ÒÒ 
)
ÒÒ 
{
ΣΣ 
}
ΥΥ 
}
ΦΦ 	
public
ΨΨ 
static
ΨΨ 
bool
ΨΨ "
DeleteMessageSetting
ΨΨ /
(
ΨΨ/ 0
SearchParameters
ΨΨ0 @

queDetails
ΨΨA K
)
ΨΨK L
{
ΩΩ 	
SqlParameter
ΪΪ 
[
ΪΪ 
]
ΪΪ 
objSqlParameter
ΪΪ *
=
ΪΪ+ ,
{
ΫΫ 
new
άά 
SqlParameter
άά  
(
άά  !
$str
άά! @
,
άά@ A

queDetails
άάB L
.
άάL M
Id
άάM O
)
άάO P
,
άάP Q
}
έέ 
;
έέ 
int
ίί 
count
ίί 
=
ίί 
	SqlHelper
ίί !
.
ίί! "
ExecuteNonQuery
ίί" 1
(
ίί1 2#
SqlConnectionProvider
ίί2 G
.
ίίG H!
GetConnectionString
ίίH [
(
ίί[ \
DataAccessType
ίί\ j
.
ίίj k
Write
ίίk p
)
ίίp q
,
ίίq r
CommandType
ίίs ~
.
ίί~ 
StoredProcedureίί 
,ίί 
$strίί ¶
,ίί¶ ·
objSqlParameterίίΈ Η
)ίίΗ Θ
;ίίΘ Ι
return
αα 
count
αα 
>
αα 
$num
αα 
?
αα 
true
αα #
:
αα$ %
false
αα& +
;
αα+ ,
}
ββ 	
public
δδ 
static
δδ 
bool
δδ .
 InsertOrUpdateUserMessageSetting
δδ ;
(
δδ; <
SearchParameters
δδ< L

queDetails
δδM W
)
δδW X
{
εε 	
SqlParameter
ζζ 
[
ζζ 
]
ζζ 
objSqlParameter
ζζ *
=
ζζ+ ,
{
ηη 
new
θθ 
SqlParameter
θθ  
(
θθ  !
$str
θθ! *
,
θθ* +

queDetails
θθ, 6
.
θθ6 7
UserId
θθ7 =
)
θθ= >
,
θθ> ?
}
ιι 
;
ιι 
int
λλ 
count
λλ 
=
λλ 
	SqlHelper
λλ !
.
λλ! "
ExecuteNonQuery
λλ" 1
(
λλ1 2#
SqlConnectionProvider
λλ2 G
.
λλG H!
GetConnectionString
λλH [
(
λλ[ \
DataAccessType
λλ\ j
.
λλj k
Write
λλk p
)
λλp q
,
λλq r
CommandType
λλs ~
.
λλ~ 
StoredProcedureλλ 
,λλ 
$strλλ Ί
,λλΊ »
objSqlParameterλλΌ Λ
)λλΛ Μ
;λλΜ Ν
return
νν 
true
νν 
;
νν 
}
ξξ 	
public
ππ 
static
ππ 
ExamDTO
ππ 
GetExamData
ππ )
(
ππ) *
SearchParameters
ππ* :
loginDetails
ππ; G
)
ππG H
{
ρρ 	
SqlParameter
ςς 
[
ςς 
]
ςς 
objSqlParameter
ςς *
=
ςς+ ,
{
σσ 
new
ττ0 3
SqlParameter
ττ4 @
(
ττ@ A
$str
ττA J
,
ττJ K
Convert
ττL S
.
ττS T
ToInt32
ττT [
(
ττ[ \
loginDetails
ττ\ h
.
ττh i
UserId
ττi o
)
ττo p
)
ττp q
,
ττq r
}
υυ- .
;
υυ. /
using
φφ 
(
φφ 
SqlDataReader
φφ  
objSqlDataReader
φφ! 1
=
φφ2 3
	SqlHelper
φφ4 =
.
φφ= >
ExecuteReader
φφ> K
(
φφK L#
SqlConnectionProvider
χχ %
.
χχ% &!
GetConnectionString
χχ& 9
(
χχ9 :
DataAccessType
χχ: H
.
χχH I
Read
χχI M
)
χχM N
,
χχN O
CommandType
χχP [
.
χχ[ \
StoredProcedure
χχ\ k
,
χχk l
$str
χχm ~
,
χχ~ 
objSqlParameterχχ€ 
)χχ 
)χχ ‘
{
ψψ 
ExamDTO
ωω 
examObj
ωω 
=
ωω  !
new
ωω" %
ExamDTO
ωω& -
(
ωω- .
)
ωω. /
;
ωω/ 0
while
ϊϊ 
(
ϊϊ 
objSqlDataReader
ϊϊ '
.
ϊϊ' (
Read
ϊϊ( ,
(
ϊϊ, -
)
ϊϊ- .
)
ϊϊ. /
{
ϋϋ 
object
όό 
	objExamId
όό $
=
όό% &
objSqlDataReader
όό' 7
[
όό7 8
$str
όό8 @
]
όό@ A
;
όόA B
examObj
ύύ 
.
ύύ 
ExamId
ύύ "
=
ύύ# $
	objExamId
ύύ% .
is
ύύ/ 1
DBNull
ύύ2 8
?
ύύ9 :
$num
ύύ; <
:
ύύ= >
Convert
ύύ? F
.
ύύF G
ToInt32
ύύG N
(
ύύN O
objSqlDataReader
ύύO _
[
ύύ_ `
$str
ύύ` h
]
ύύh i
)
ύύi j
;
ύύj k
object
ώώ 
objExamName
ώώ &
=
ώώ' (
objSqlDataReader
ώώ) 9
[
ώώ9 :
$str
ώώ: D
]
ώώD E
;
ώώE F
examObj
ÿÿ 
.
ÿÿ 
ExamName
ÿÿ $
=
ÿÿ% &
objExamName
ÿÿ' 2
is
ÿÿ3 5
DBNull
ÿÿ6 <
?
ÿÿ= >
string
ÿÿ? E
.
ÿÿE F
Empty
ÿÿF K
:
ÿÿL M
Convert
ÿÿN U
.
ÿÿU V
ToString
ÿÿV ^
(
ÿÿ^ _
objSqlDataReader
ÿÿ_ o
[
ÿÿo p
$str
ÿÿp z
]
ÿÿz {
)
ÿÿ{ |
;
ÿÿ| }
examObj
€€ 
.
€€ 
ExamCreateDate
€€ *
=
€€+ ,
Convert
€€- 4
.
€€4 5

ToDateTime
€€5 ?
(
€€? @
objSqlDataReader
€€@ P
[
€€P Q
$str
€€Q a
]
€€a b
)
€€b c
;
€€c d
object
 
objIsDeleted
 '
=
( )
objSqlDataReader
* :
[
: ;
$str
; F
]
F G
;
G H
examObj
‚‚ 
.
‚‚ 
	IsDeleted
‚‚ %
=
‚‚& '
objIsDeleted
‚‚( 4
is
‚‚5 7
DBNull
‚‚8 >
?
‚‚? @
false
‚‚A F
:
‚‚G H
(
‚‚I J
bool
‚‚J N
)
‚‚N O
(
‚‚O P
objSqlDataReader
‚‚P `
[
‚‚` a
$str
‚‚a l
]
‚‚l m
)
‚‚m n
;
‚‚n o
examObj
ƒƒ 
.
ƒƒ 
ExamType
ƒƒ $
=
ƒƒ% &
Convert
ƒƒ' .
.
ƒƒ. /
ToInt32
ƒƒ/ 6
(
ƒƒ6 7
objSqlDataReader
ƒƒ7 G
[
ƒƒG H
$str
ƒƒH R
]
ƒƒR S
)
ƒƒS T
;
ƒƒT U
object
„„ 
objNoofQuestions
„„ +
=
„„, -
objSqlDataReader
„„. >
[
„„> ?
$str
„„? N
]
„„N O
;
„„O P
examObj
…… 
.
…… 
NoofQuestions
…… )
=
……* +
objNoofQuestions
……, <
is
……= ?
DBNull
……@ F
?
……G H
$num
……I J
:
……K L
Convert
……M T
.
……T U
ToInt32
……U \
(
……\ ]
objSqlDataReader
……] m
[
……m n
$str
……n }
]
……} ~
)
……~ 
;…… €
object
†† 
objExamTimeType
†† *
=
††+ ,
objSqlDataReader
††- =
[
††= >
$str
††> L
]
††L M
;
††M N
examObj
‡‡ 
.
‡‡ 
ExamTimeType
‡‡ (
=
‡‡) *
objExamTimeType
‡‡+ :
is
‡‡; =
DBNull
‡‡> D
?
‡‡E F
false
‡‡G L
:
‡‡M N
(
‡‡O P
bool
‡‡P T
)
‡‡T U
(
‡‡U V
objSqlDataReader
‡‡V f
[
‡‡f g
$str
‡‡g u
]
‡‡u v
)
‡‡v w
;
‡‡w x
object
 
objExamMode
 &
=
' (
objSqlDataReader
) 9
[
9 :
$str
: D
]
D E
;
E F
examObj
‰‰ 
.
‰‰ 
ExamMode
‰‰ $
=
‰‰% &
objExamMode
‰‰' 2
is
‰‰3 5
DBNull
‰‰6 <
?
‰‰= >
false
‰‰? D
:
‰‰E F
(
‰‰G H
bool
‰‰H L
)
‰‰L M
(
‰‰M N
objSqlDataReader
‰‰N ^
[
‰‰^ _
$str
‰‰_ i
]
‰‰i j
)
‰‰j k
;
‰‰k l
object
 !
objExamAnswerToShow
 .
=
/ 0
objSqlDataReader
1 A
[
A B
$str
B T
]
T U
;
U V
examObj
‹‹ 
.
‹‹ 
ExamAnswerToShow
‹‹ ,
=
‹‹- .!
objExamAnswerToShow
‹‹/ B
is
‹‹C E
DBNull
‹‹F L
?
‹‹M N
false
‹‹O T
:
‹‹U V
(
‹‹W X
bool
‹‹X \
)
‹‹\ ]
(
‹‹] ^
objSqlDataReader
‹‹^ n
[
‹‹n o
$str‹‹o 
]‹‹ ‚
)‹‹‚ ƒ
;‹‹ƒ „
object
 
objTypeofQuestion
 ,
=
- .
objSqlDataReader
/ ?
[
? @
$str
@ P
]
P Q
;
Q R
examObj
 
.
 
TypeofQuestion
 *
=
+ ,
objTypeofQuestion
- >
is
? A
DBNull
B H
?
I J
string
K Q
.
Q R
Empty
R W
:
X Y
Convert
Z a
.
a b
ToString
b j
(
j k
objSqlDataReader
k {
[
{ |
$str| 
] 
) 
; 
object
 
objTypeofCategory
 ,
=
- .
objSqlDataReader
/ ?
[
? @
$str
@ P
]
P Q
;
Q R
examObj
 
.
 
TypeofCategory
 *
=
+ ,
objTypeofCategory
- >
is
? A
DBNull
B H
?
I J
string
K Q
.
Q R
Empty
R W
:
X Y
Convert
Z a
.
a b
ToString
b j
(
j k
objSqlDataReader
k {
[
{ |
$str| 
] 
) 
; 
object
 
	objUserId
 $
=
% &
objSqlDataReader
' 7
[
7 8
$str
8 @
]
@ A
;
A B
examObj
‘‘ 
.
‘‘ 
UserId
‘‘ "
=
‘‘# $
	objUserId
‘‘% .
is
‘‘/ 1
DBNull
‘‘2 8
?
‘‘9 :
$num
‘‘; <
:
‘‘= >
Convert
‘‘? F
.
‘‘F G
ToInt32
‘‘G N
(
‘‘N O
objSqlDataReader
‘‘O _
[
‘‘_ `
$str
‘‘` h
]
‘‘h i
)
‘‘i j
;
‘‘j k
object
’’ 
objExamStatus
’’ (
=
’’) *
objSqlDataReader
’’+ ;
[
’’; <
$str
’’< H
]
’’H I
;
’’I J
examObj
““ 
.
““ 

ExamStatus
““ &
=
““' (
objExamStatus
““) 6
is
““7 9
DBNull
““: @
?
““A B
$num
““C D
:
““E F
Convert
““G N
.
““N O
ToInt32
““O V
(
““V W
objSqlDataReader
““W g
[
““g h
$str
““h t
]
““t u
)
““u v
;
““v w
object
”” 
objExamAttemptId
”” +
=
””, -
objSqlDataReader
””. >
[
””> ?
$str
””? N
]
””N O
;
””O P
examObj
•• 
.
•• 
ExamAttemptId
•• )
=
••* +
objExamAttemptId
••, <
is
••= ?
DBNull
••@ F
?
••G H
$num
••I J
:
••K L
Convert
••M T
.
••T U
ToInt32
••U \
(
••\ ]
objSqlDataReader
••] m
[
••m n
$str
••n }
]
••} ~
)
••~ 
;•• €
object
—— 
objExamType
—— &
=
——' (
objSqlDataReader
——) 9
[
——9 :
$str
——: D
]
——D E
;
——E F
examObj
 
.
 
ExamType
 $
=
% &
objExamType
' 2
is
3 5
DBNull
6 <
?
= >
$num
? @
:
A B
Convert
C J
.
J K
ToInt32
K R
(
R S
objSqlDataReader
S c
[
c d
$str
d n
]
n o
)
o p
;
p q
}
™™ 
objSqlDataReader
››  
.
››  !
Close
››! &
(
››& '
)
››' (
;
››( )
return
 
examObj
 
;
 
}
 
}
 	
}
 
}   ¶2
fD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\OptInReportsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
OptInReportsDAL  
{ 
public 
static 
List 
< 
OptInReports '
>' (
OptInReports) 5
(5 6
OptInReports6 B
optInReportsC O
)O P
{ 	
string 
ordering 
= 
string $
.$ %
Empty% *
;* +
if 
( 
optInReports 
. 
OrderBy $
!=% '
null( ,
), -
{ 
ordering 
= 
$str '
+( )
optInReports* 6
.6 7
OrderBy7 >
+? @
$strA D
+E F
optInReportsG S
.S T
SeqT W
;W X
} 
List 
< 
OptInReports 
> 

reportList )
=* +
new, /
List0 4
<4 5
OptInReports5 A
>A B
(B C
)C D
;D E
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new 
SqlParameter !
(! "
$str" .
,. /
optInReports0 <
.< =
Year= A
)A B
,B C
new 
SqlParameter !
(! "
$str" *
,* +
ordering, 4
)4 5
,5 6
} 
; 
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ‚
,
‚ ƒ
objSqlParameter
„ “
)
“ ”
)
” •
{ 
while   
(   
objSqlDataReader   '
.  ' (
Read  ( ,
(  , -
)  - .
)  . /
{!! 
OptInReports""  
reportListBO""! -
="". /
new""0 3
OptInReports""4 @
(""@ A
)""A B
;""B C
reportListBO##  
.##  !
UserName##! )
=##* +
Convert##, 3
.##3 4
ToString##4 <
(##< =
objSqlDataReader##= M
[##M N
$str##N X
]##X Y
)##Y Z
;##Z [
object%% 
customerIdObj%% (
=%%) *
objSqlDataReader%%+ ;
[%%; <
$str%%< N
]%%N O
;%%O P
reportListBO&&  
.&&  !
MasterCustomerID&&! 1
=&&2 3
customerIdObj&&4 A
is&&B D
DBNull&&E K
?&&L M
string&&N T
.&&T U
Empty&&U Z
:&&[ \
Convert&&] d
.&&d e
ToString&&e m
(&&m n
objSqlDataReader&&n ~
[&&~ 
$str	&& ‘
]
&&‘ ’
)
&&’ “
;
&&“ ”
reportListBO''  
.''  !
OptIn''! &
=''' (
Convert'') 0
.''0 1
ToString''1 9
(''9 :
objSqlDataReader'': J
[''J K
$str''K R
]''R S
)''S T
;''T U

reportList(( 
.(( 
Add(( "
(((" #
reportListBO((# /
)((/ 0
;((0 1
})) 
objSqlDataReader++  
.++  !
Close++! &
(++& '
)++' (
;++( )
},, 
return.. 

reportList.. 
;.. 
}// 	
public11 
static11 
List11 
<11 
OptInReports11 '
>11' (
GetOptIn11) 1
(111 2
OptInReports112 >
optInReports11? K
)11K L
{22 	
List33 
<33 
OptInReports33 
>33 

reportList33 )
=33* +
new33, /
List330 4
<334 5
OptInReports335 A
>33A B
(33B C
)33C D
;33D E
SqlParameter44 
[44 
]44 
objSqlParameter44 *
=44+ ,
{55 
new66 
SqlParameter66 "
(66" #
$str66# /
,66/ 0
optInReports661 =
.66= >
Year66> B
)66B C
,66C D
}77 
;77 
using99 
(99 
SqlDataReader99  
objSqlDataReader99! 1
=992 3
	SqlHelper994 =
.99= >
ExecuteReader99> K
(99K L!
SqlConnectionProvider:: %
.::% &
GetConnectionString::& 9
(::9 :
DataAccessType::: H
.::H I
Read::I M
)::M N
,::N O
CommandType::P [
.::[ \
StoredProcedure::\ k
,::k l
$str::m {
,::{ |
objSqlParameter	::} 
)
:: 
)
:: 
{;; 
while<< 
(<< 
objSqlDataReader<< '
.<<' (
Read<<( ,
(<<, -
)<<- .
)<<. /
{== 
OptInReports>>  
reportListBO>>! -
=>>. /
new>>0 3
OptInReports>>4 @
(>>@ A
)>>A B
;>>B C
reportListBO??  
.??  !
OptIn??! &
=??' (
Convert??) 0
.??0 1
ToString??1 9
(??9 :
objSqlDataReader??: J
[??J K
$str??K R
]??R S
)??S T
;??T U

reportList@@ 
.@@ 
Add@@ "
(@@" #
reportListBO@@# /
)@@/ 0
;@@0 1
}AA 
objSqlDataReaderCC  
.CC  !
CloseCC! &
(CC& '
)CC' (
;CC( )
}DD 
returnFF 

reportListFF 
;FF 
}GG 	
}HH 
}II ™
nD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 5
)5 6
]6 7
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *„/
gD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ReportDetailsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ReportDetailsDAL (
{ 
public 
static 
List 
< 
ReportsDetailsVM +
>+ ,
ReportDetails- :
(: ;
ReportsDetailsVM; K
reportDetailsL Y
)Y Z
{ 	
List 
< 
ReportsDetailsVM !
>! "

reportList# -
=. /
new0 3
List4 8
<8 9
ReportsDetailsVM9 I
>I J
(J K
)K L
;L M
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA J
,J K
reportDetailsL Y
.Y Z
UserIdZ `
)` a
,a b
new0 3
SqlParameter4 @
(@ A
$strA M
,M N
reportDetailsO \
.\ ]
ExamStartDate] j
)j k
,k l
new0 3
SqlParameter4 @
(@ A
$strA K
,K L
reportDetailsM Z
.Z [
ExamCompletedDate[ l
)l m
,m n
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m 
,
 
objSqlParameter
 
)
  
)
  ΅
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
ReportsDetailsVM $
reportListBO% 1
=2 3
new4 7
ReportsDetailsVM8 H
(H I
)I J
;J K
object 
subspecialtyIdObj ,
=- .
objSqlDataReader/ ?
[? @
$str@ P
]P Q
;Q R
reportListBO  
.  !
SubspecialtyId! /
=0 1
subspecialtyIdObj2 C
isD F
DBNullG M
?N O
$numP Q
:R S
ConvertT [
.[ \
ToInt32\ c
(c d
objSqlDataReaderd t
[t u
$str	u …
]
… †
)
† ‡
;
‡ 
object 
subspecialtyNameObj .
=/ 0
objSqlDataReader1 A
[A B
$strB U
]U V
;V W
reportListBO    
.    !
SubspecialtyName  ! 1
=  2 3
subspecialtyNameObj  4 G
is  H J
DBNull  K Q
?  R S
null  T X
:  Y Z
Convert  [ b
.  b c
ToString  c k
(  k l
objSqlDataReader  l |
[  | }
$str	  } 
]
   ‘
)
  ‘ ’
;
  ’ “
object!! 

correctObj!! %
=!!& '
objSqlDataReader!!( 8
[!!8 9
$str!!9 B
]!!B C
;!!C D
reportListBO""  
.""  !
Correct""! (
="") *

correctObj""+ 5
is""6 8
DBNull""9 ?
?""@ A
$num""B C
:""D E
Convert""F M
.""M N
ToInt32""N U
(""U V
objSqlDataReader""V f
[""f g
$str""g p
]""p q
)""q r
;""r s
object## 
inCorrectObj## '
=##( )
objSqlDataReader##* :
[##: ;
$str##; F
]##F G
;##G H
reportListBO$$  
.$$  !
	InCorrect$$! *
=$$+ ,
inCorrectObj$$- 9
is$$: <
DBNull$$= C
?$$D E
$num$$F G
:$$H I
Convert$$J Q
.$$Q R
ToInt32$$R Y
($$Y Z
objSqlDataReader$$Z j
[$$j k
$str$$k v
]$$v w
)$$w x
;$$x y
object%% 
scoreObj%% #
=%%$ %
objSqlDataReader%%& 6
[%%6 7
$str%%7 >
]%%> ?
;%%? @
reportListBO&&  
.&&  !
Score&&! &
=&&' (
scoreObj&&) 1
is&&2 4
DBNull&&5 ;
?&&< =
$num&&> ?
:&&@ A
Convert&&B I
.&&I J
ToInt32&&J Q
(&&Q R
objSqlDataReader&&R b
[&&b c
$str&&c j
]&&j k
)&&k l
;&&l m
object''  
bCSCSectionNumberObj'' /
=''0 1
objSqlDataReader''2 B
[''B C
$str''C V
]''V W
;''W X
reportListBO((  
.((  !
BCSCSectionNumber((! 2
=((3 4 
bCSCSectionNumberObj((5 I
is((J L
DBNull((M S
?((T U
$num((V W
:((X Y
Convert((Z a
.((a b
ToInt32((b i
(((i j
objSqlDataReader((j z
[((z {
$str	(({ 
]
(( 
)
(( 
;
(( ‘

reportList)) 
.)) 
Add)) "
())" #
reportListBO))# /
)))/ 0
;))0 1
}** 
objSqlDataReader,,  
.,,  !
Close,,! &
(,,& '
),,' (
;,,( )
}-- 
return// 

reportList// 
;// 
}00 	
}11 
}22 ο1
vD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ResidentChapterReportDetailsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class +
ResidentChapterReportDetailsDAL 7
{ 
public 
static 
List 
< +
ResidentChapterReportDetailsDTO :
>: ;(
ResidentChapterReportDetails< X
(X Y+
ResidentChapterReportDetailsDTOY x!
reportChapterDetails	y 
)
 
{ 	
List 
< +
ResidentChapterReportDetailsDTO 0
>0 1

reportList2 <
== >
new? B
ListC G
<G H+
ResidentChapterReportDetailsDTOH g
>g h
(h i
)i j
;j k
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA J
,J K 
reportChapterDetailsL `
.` a
UserIda g
)g h
,h i
new0 3
SqlParameter4 @
(@ A
$strA R
,R S 
reportChapterDetailsT h
.h i
SubspecialtyIdi w
)w x
,x y
new0 3
SqlParameter4 @
(@ A
$strA L
,L M 
reportChapterDetailsN b
.b c
ExamStartDatec p
)p q
,q r
new0 3
SqlParameter4 @
(@ A
$strA J
,J K 
reportChapterDetailsL `
.` a
ExamCompletedDatea r
)r s
,s t
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ’
,
’ “
objSqlParameter
” £
)
£ ¤
)
¤ ¥
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ +
ResidentChapterReportDetailsDTO 3
reportListBO4 @
=A B
newC F+
ResidentChapterReportDetailsDTOG f
(f g
)g h
;h i
object 
subspecialtyObj *
=+ ,
objSqlDataReader- =
[= >
$str> L
]L M
;M N
reportListBO    
.    !
Subspecialty  ! -
=  . /
subspecialtyObj  0 ?
is  @ B
DBNull  C I
?  J K
null  L P
:  Q R
Convert  S Z
.  Z [
ToString  [ c
(  c d
objSqlDataReader  d t
[  t u
$str	  u ƒ
]
  ƒ „
)
  „ …
;
  … †
object!! 
chapterNameObj!! )
=!!* +
objSqlDataReader!!, <
[!!< =
$str!!= J
]!!J K
;!!K L
reportListBO""  
.""  !
ChapterName""! ,
=""- .
chapterNameObj""/ =
is""> @
DBNull""A G
?""H I
null""J N
:""O P
Convert""Q X
.""X Y
ToString""Y a
(""a b
objSqlDataReader""b r
[""r s
$str	""s €
]
""€ 
)
"" ‚
;
""‚ ƒ
object## 

correctObj## %
=##& '
objSqlDataReader##( 8
[##8 9
$str##9 B
]##B C
;##C D
reportListBO$$  
.$$  !
Correct$$! (
=$$) *

correctObj$$+ 5
is$$6 8
DBNull$$9 ?
?$$@ A
$num$$B C
:$$D E
Convert$$F M
.$$M N
ToInt32$$N U
($$U V
objSqlDataReader$$V f
[$$f g
$str$$g p
]$$p q
)$$q r
;$$r s
object%% 
inCorrectObj%% '
=%%( )
objSqlDataReader%%* :
[%%: ;
$str%%; F
]%%F G
;%%G H
reportListBO&&  
.&&  !
	InCorrect&&! *
=&&+ ,
inCorrectObj&&- 9
is&&: <
DBNull&&= C
?&&D E
$num&&F G
:&&H I
Convert&&J Q
.&&Q R
ToInt32&&R Y
(&&Y Z
objSqlDataReader&&Z j
[&&j k
$str&&k v
]&&v w
)&&w x
;&&x y
object'' 
scoreObj'' #
=''$ %
objSqlDataReader''& 6
[''6 7
$str''7 J
]''J K
;''K L
reportListBO((  
.((  !
RemainingQuestion((! 2
=((3 4
scoreObj((5 =
is((> @
DBNull((A G
?((H I
$num((J K
:((L M
Convert((N U
.((U V
ToInt32((V ]
(((] ^
objSqlDataReader((^ n
[((n o
$str	((o ‚
]
((‚ ƒ
)
((ƒ „
;
((„ …
object))  
bCSCSectionNumberObj)) /
=))0 1
objSqlDataReader))2 B
[))B C
$str))C V
]))V W
;))W X
reportListBO**  
.**  !
BCSCSectionNumber**! 2
=**3 4 
bCSCSectionNumberObj**5 I
is**J L
DBNull**M S
?**T U
$num**V W
:**X Y
Convert**Z a
.**a b
ToInt32**b i
(**i j
objSqlDataReader**j z
[**z {
$str	**{ 
]
** 
)
** 
;
** ‘

reportList++ 
.++ 
Add++ "
(++" #
reportListBO++# /
)++/ 0
;++0 1
},, 
objSqlDataReader..  
...  !
Close..! &
(..& '
)..' (
;..( )
}// 
return11 

reportList11 
;11 
}22 	
}33 
}44 ’
jD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\SpacedRepetitionDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
SpacedRepetitionDAL $
{ 
public 
static 
ExamDTO !
GetSpacedRepetionExam 3
(3 4
int4 7
userId8 >
,> ?
string@ F
typeofCategoryG U
)U V
{ 	
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new 
SqlParameter  
(  !
$str! *
,* +
Convert, 3
.3 4
ToInt324 ;
(; <
userId< B
)B C
)C D
,D E
new 
SqlParameter  
(  !
$str! 2
,2 3
Convert4 ;
.; <
ToString< D
(D E
typeofCategoryE S
)S T
)T U
,U V
} 
; 
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProviderL a
.a b
GetConnectionStringb u
(u v
DataAccessType	v „
.
„ …
Read
… ‰
)
‰ 
,
 ‹
CommandType
 —
.
— 
StoredProcedure
 §
,
§ ¨
$str
© Ζ
,
Ζ Η
objSqlParameter
Θ Χ
)
Χ Ψ
)
Ψ Ω
{ 
ExamDTO 
examObj 
=  !
new" %
ExamDTO& -
(- .
). /
;/ 0
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
examObj 
. 
ExamId "
=# $
Convert% ,
., -
ToInt32- 4
(4 5
objSqlDataReader5 E
[E F
$strF N
]N O
)O P
;P Q
examObj 
. 
ExamName $
=% &
Convert' .
.. /
ToString/ 7
(7 8
objSqlDataReader8 H
[H I
$strI S
]S T
)T U
;U V
examObj   
.   
ExamCreateDate   *
=  + ,
Convert  - 4
.  4 5

ToDateTime  5 ?
(  ? @
objSqlDataReader  @ P
[  P Q
$str  Q a
]  a b
)  b c
;  c d
examObj!! 
.!! 
	IsDeleted!! %
=!!& '
(!!( )
bool!!) -
)!!- .
(!!. /
objSqlDataReader!!/ ?
[!!? @
$str!!@ K
]!!K L
)!!L M
;!!M N
examObj"" 
."" 
ExamType"" $
=""% &
Convert""' .
."". /
ToInt32""/ 6
(""6 7
objSqlDataReader""7 G
[""G H
$str""H R
]""R S
)""S T
;""T U
examObj## 
.## 
NoofQuestions## )
=##* +
Convert##, 3
.##3 4
ToInt32##4 ;
(##; <
objSqlDataReader##< L
[##L M
$str##M \
]##\ ]
)##] ^
;##^ _
examObj$$ 
.$$ 
ExamTimeType$$ (
=$$) *
($$+ ,
bool$$, 0
)$$0 1
($$1 2
objSqlDataReader$$2 B
[$$B C
$str$$C Q
]$$Q R
)$$R S
;$$S T
examObj%% 
.%% 
ExamMode%% $
=%%% &
(%%' (
bool%%( ,
)%%, -
(%%- .
objSqlDataReader%%. >
[%%> ?
$str%%? I
]%%I J
)%%J K
;%%K L
examObj&& 
.&& 
ExamAnswerToShow&& ,
=&&- .
(&&/ 0
bool&&0 4
)&&4 5
(&&5 6
objSqlDataReader&&6 F
[&&F G
$str&&G Y
]&&Y Z
)&&Z [
;&&[ \
examObj'' 
.'' 
TypeofQuestion'' *
=''+ ,
Convert''- 4
.''4 5
ToString''5 =
(''= >
objSqlDataReader''> N
[''N O
$str''O _
]''_ `
)''` a
;''a b
examObj(( 
.(( 
TypeofCategory(( *
=((+ ,
Convert((- 4
.((4 5
ToString((5 =
(((= >
objSqlDataReader((> N
[((N O
$str((O _
]((_ `
)((` a
;((a b
examObj)) 
.)) 
UserId)) "
=))# $
Convert))% ,
.)), -
ToInt32))- 4
())4 5
objSqlDataReader))5 E
[))E F
$str))F N
]))N O
)))O P
;))P Q
examObj** 
.** 
RoundNumber** '
=**( )
Convert*** 1
.**1 2
ToInt32**2 9
(**9 :
objSqlDataReader**: J
[**J K
$str**K X
]**X Y
)**Y Z
;**Z [
examObj++ 
.++ 
	SessionId++ %
=++& '
Convert++( /
.++/ 0
ToInt32++0 7
(++7 8
objSqlDataReader++8 H
[++H I
$str++I T
]++T U
)++U V
;++V W
},, 
return.. 
examObj.. 
;.. 
}// 
}00 	
public33 
static33 
int33 
GetExamIdBYUserIdSR33 -
(33- .
int33. 1
userId332 8
)338 9
{44 	
int55 
examId55 
=55 
$num55 
;55 
SqlConnection66 

connection66 $
=66% &
new66' *
SqlConnection66+ 8
(668 9!
SqlConnectionProvider669 N
.66N O
GetConnectionString66O b
(66b c
DataAccessType66c q
.66q r
Read66r v
)66v w
)66w x
;66x y
string77 
sqlQueryAllquestion77 &
=77' (
string77) /
.77/ 0
Empty770 5
;775 6
sqlQueryAllquestion88 
=88  !
$str88" P
+88Q R
@userId88S Z
+88[ \
$str88] o
;88o p

connection99 
.99 
Open99 
(99 
)99 
;99 

SqlCommand:: 
cmd:: 
=:: 
new::  

SqlCommand::! +
(::+ ,
sqlQueryAllquestion::, ?
,::? @

connection::A K
)::K L
;::L M
using;; 
(;; 
SqlDataReader;;  
reader;;! '
=;;( )
cmd;;* -
.;;- .
ExecuteReader;;. ;
(;;; <
);;< =
);;= >
{<< 
if== 
(== 
reader== 
.== 
HasRows== "
)==" #
{>> 
while@@ 
(@@ 
reader@@ !
.@@! "
Read@@" &
(@@& '
)@@' (
)@@( )
{AA 
objectBB 
	objExamIdBB (
=BB) *
readerBB+ 1
[BB1 2
$strBB2 6
]BB6 7
;BB7 8
examIdCC 
=CC  
	objExamIdCC! *
isCC+ -
DBNullCC. 4
?CC5 6
$numCC7 8
:CC9 :
readerCC; A
.CCA B
GetInt32CCB J
(CCJ K
readerCCK Q
.CCQ R

GetOrdinalCCR \
(CC\ ]
$strCC] a
)CCa b
)CCb c
;CCc d
}DD 
}EE 
}FF 

connectionGG 
.GG 
CloseGG 
(GG 
)GG 
;GG 
returnHH 
examIdHH 
;HH 
}II 	
publicLL 
staticLL 
ExamStatusCountSRVMLL ) 
GetExamStatusCountSRLL* >
(LL> ?
intLL? B
examIdLLC I
)LLI J
{MM 	
ExamStatusCountSRVMNN 
examStatusCountSRVMNN  3
=NN4 5
newNN6 9
ExamStatusCountSRVMNN: M
(NNM N
)NNN O
;NNO P
SqlParameterOO 
[OO 
]OO 
arrSqlParameterOO *
=OO+ ,
{PP 
newQQ 
SqlParameterQQ %
(QQ% &
$strQQ& /
,QQ/ 0
ConvertQQ1 8
.QQ8 9
ToInt32QQ9 @
(QQ@ A
examIdQQA G
)QQG H
)QQH I
,QQI J
}RR 
;RR 
usingSS 
(SS 
SqlDataReaderSS  
objSqlDataReaderSS! 1
=SS2 3
	SqlHelperSS4 =
.SS= >
ExecuteReaderSS> K
(SSK L!
SqlConnectionProviderTT %
.TT% &
GetConnectionStringTT& 9
(TT9 :
DataAccessTypeTT: H
.TTH I
ReadTTI M
)TTM N
,TTN O
CommandTypeTTP [
.TT[ \
StoredProcedureTT\ k
,TTk l
$str	TTm ’
,
TT’ “
arrSqlParameter
TT” £
)
TT£ ¤
)
TT¤ ¥
{UU 
ifVV 
(VV 
objSqlDataReaderVV $
.VV$ %
HasRowsVV% ,
)VV, -
{WW 
whileXX 
(XX 
objSqlDataReaderXX +
.XX+ ,
ReadXX, 0
(XX0 1
)XX1 2
)XX2 3
{YY 
objectZZ $
totalansweredQuestionobjZZ 7
=ZZ8 9
objSqlDataReaderZZ: J
[ZZJ K
$strZZK c
]ZZc d
;ZZd e
examStatusCountSRVM[[ +
.[[+ ,"
TotalAnsweredQuestions[[, B
=[[C D$
totalansweredQuestionobj[[E ]
is[[^ `
DBNull[[a g
?[[h i
$num[[j k
:[[l m
Convert[[n u
.[[u v
ToInt32[[v }
([[} ~
objSqlDataReader	[[~ 
[
[[ 
$str
[[ §
]
[[§ ¨
)
[[¨ ©
;
[[© ª
object\\ 
topicCountobj\\ ,
=\\- .
objSqlDataReader\\/ ?
[\\? @
$str\\@ L
]\\L M
;\\M N
examStatusCountSRVM]] +
.]]+ ,

TopicCount]], 6
=]]7 8
topicCountobj]]9 F
is]]G I
DBNull]]J P
?]]Q R
$num]]S T
:]]U V
Convert]]W ^
.]]^ _
ToInt32]]_ f
(]]f g
objSqlDataReader]]g w
[]]w x
$str	]]x „
]
]]„ …
)
]]… †
;
]]† ‡
object^^  
answeredCorrectlyObj^^ 3
=^^4 5
objSqlDataReader^^6 F
[^^F G
$str^^G Z
]^^Z [
;^^[ \
examStatusCountSRVM__ +
.__+ ,
AnsweredCorrectly__, =
=__> ? 
answeredCorrectlyObj__@ T
is__U W
DBNull__X ^
?___ `
$num__a b
:__c d
Convert__e l
.__l m
ToInt32__m t
(__t u
objSqlDataReader	__u …
[
__… †
$str
__† ™
]
__™ 
)
__ ›
;
__› 
object`` "
answeredInCorrectlyObj`` 5
=``6 7
objSqlDataReader``8 H
[``H I
$str``I ^
]``^ _
;``_ `
examStatusCountSRVMaa +
.aa+ ,
AnsweredInCorrectlyaa, ?
=aa@ A"
answeredInCorrectlyObjaaB X
isaaY [
DBNullaa\ b
?aac d
$numaae f
:aag h
Convertaai p
.aap q
ToInt32aaq x
(aax y
objSqlDataReader	aay ‰
[
aa‰ 
$str
aa 
]
aa  
)
aa  ΅
;
aa΅ Ά
}bb 
}cc 
}dd 
returnff 
examStatusCountSRVMff &
;ff& '
}gg 	
publicjj 
staticjj 
Listjj 
<jj #
SRPerformanceOverviewVMjj 2
>jj2 3+
GetSectionPerformanceOverviewSRjj4 S
(jjS T
intjjT W
examIdjjX ^
)jj^ _
{kk 	
Listll 
<ll #
SRPerformanceOverviewVMll (
>ll( )'
sRPerformanceOverviewVMListll* E
=llF G
newllH K
ListllL P
<llP Q#
SRPerformanceOverviewVMllQ h
>llh i
(lli j
)llj k
;llk l
SqlParametermm 
[mm 
]mm 
arrSqlParametermm *
=mm+ ,
{nn 
newoo 
SqlParameteroo %
(oo% &
$stroo& /
,oo/ 0
Convertoo1 8
.oo8 9
ToInt32oo9 @
(oo@ A
examIdooA G
)ooG H
)ooH I
,ooI J
}pp 
;pp 
usingqq 
(qq 
SqlDataReaderqq  
objSqlDataReaderqq! 1
=qq2 3
	SqlHelperqq4 =
.qq= >
ExecuteReaderqq> K
(qqK L!
SqlConnectionProviderrr %
.rr% &
GetConnectionStringrr& 9
(rr9 :
DataAccessTyperr: H
.rrH I
ReadrrI M
)rrM N
,rrN O
CommandTyperrP [
.rr[ \
StoredProcedurerr\ k
,rrk l
$str	rrm –
,
rr– —
arrSqlParameter
rr §
)
rr§ ¨
)
rr¨ ©
{ss 
iftt 
(tt 
objSqlDataReadertt $
.tt$ %
HasRowstt% ,
)tt, -
{uu 
whilevv 
(vv 
objSqlDataReadervv +
.vv+ ,
Readvv, 0
(vv0 1
)vv1 2
)vv2 3
{ww #
SRPerformanceOverviewVMxx /#
sRPerformanceOverviewVMxx0 G
=xxH I
newxxJ M#
SRPerformanceOverviewVMxxN e
(xxe f
)xxf g
;xxg h
objectyy 
subspecialityIdobjyy 1
=yy2 3
objSqlDataReaderyy4 D
[yyD E
$stryyE U
]yyU V
;yyV W#
sRPerformanceOverviewVMzz /
.zz/ 0
SubspecialtyIdzz0 >
=zz? @
subspecialityIdobjzzA S
iszzT V
DBNullzzW ]
?zz^ _
$numzz` a
:zzb c
Convertzzd k
.zzk l
ToInt32zzl s
(zzs t
objSqlDataReader	zzt „
[
zz„ …
$str
zz… •
]
zz• –
)
zz– —
;
zz— 
object{{ 
sectionTitleobj{{ .
={{/ 0
objSqlDataReader{{1 A
[{{A B
$str{{B P
]{{P Q
;{{Q R#
sRPerformanceOverviewVM|| /
.||/ 0
SectionTitle||0 <
=||= >
sectionTitleobj||? N
is||O Q
DBNull||R X
?||Y Z
string||[ a
.||a b
Empty||b g
:||h i
Convert||j q
.||q r
ToString||r z
(||z {
objSqlDataReader	||{ ‹
[
||‹ 
$str
|| 
]
|| ›
)
||› 
;
|| 
object}} 
sectionNumberobj}} /
=}}0 1
objSqlDataReader}}2 B
[}}B C
$str}}C V
]}}V W
;}}W X#
sRPerformanceOverviewVM~~ /
.~~/ 0
SectionNumber~~0 =
=~~> ?
sectionNumberobj~~@ P
is~~Q S
DBNull~~T Z
?~~[ \
$num~~] ^
:~~_ `
Convert~~a h
.~~h i
ToInt32~~i p
(~~p q
objSqlDataReader	~~q 
[
~~ ‚
$str
~~‚ •
]
~~• –
)
~~– —
;
~~— 
object 
correctConfidentobj 2
=3 4
objSqlDataReader5 E
[E F
$strF X
]X Y
;Y Z%
sRPerformanceOverviewVM
€€ /
.
€€/ 0
CorrectConfident
€€0 @
=
€€A B!
correctConfidentobj
€€C V
is
€€W Y
DBNull
€€Z `
?
€€a b
$num
€€c d
:
€€e f
Convert
€€g n
.
€€n o
ToInt32
€€o v
(
€€v w
objSqlDataReader€€w ‡
[€€‡ 
$str€€ 
]€€ ›
)€€› 
;€€ 
object
 $
correctNotconfidentObj
 5
=
6 7
objSqlDataReader
8 H
[
H I
$str
I ^
]
^ _
;
_ `%
sRPerformanceOverviewVM
‚‚ /
.
‚‚/ 0!
CorrectNotconfident
‚‚0 C
=
‚‚D E$
correctNotconfidentObj
‚‚F \
is
‚‚] _
DBNull
‚‚` f
?
‚‚g h
$num
‚‚i j
:
‚‚k l
Convert
‚‚m t
.
‚‚t u
ToInt32
‚‚u |
(
‚‚| }
objSqlDataReader‚‚} 
[‚‚ 
$str‚‚ £
]‚‚£ ¤
)‚‚¤ ¥
;‚‚¥ ¦
object
ƒƒ #
incorrectConfidentObj
ƒƒ 4
=
ƒƒ5 6
objSqlDataReader
ƒƒ7 G
[
ƒƒG H
$str
ƒƒH \
]
ƒƒ\ ]
;
ƒƒ] ^%
sRPerformanceOverviewVM
„„ /
.
„„/ 0 
IncorrectConfident
„„0 B
=
„„C D#
incorrectConfidentObj
„„E Z
is
„„[ ]
DBNull
„„^ d
?
„„e f
$num
„„g h
:
„„i j
Convert
„„k r
.
„„r s
ToInt32
„„s z
(
„„z {
objSqlDataReader„„{ ‹
[„„‹ 
$str„„  
]„„  ΅
)„„΅ Ά
;„„Ά £
object
…… &
incorrectNotconfidentobj
…… 7
=
……8 9
objSqlDataReader
……: J
[
……J K
$str
……K b
]
……b c
;
……c d%
sRPerformanceOverviewVM
†† /
.
††/ 0#
IncorrectNotconfident
††0 E
=
††F G&
incorrectNotconfidentobj
††H `
is
††a c
DBNull
††d j
?
††k l
$num
††m n
:
††o p
Convert
††q x
.
††x y
ToInt32††y €
(††€  
objSqlDataReader†† ‘
[††‘ ’
$str††’ ©
]††© ª
)††ª «
;††« ¬
object
‡‡ 
questionCountObj
‡‡ /
=
‡‡0 1
objSqlDataReader
‡‡2 B
[
‡‡B C
$str
‡‡C R
]
‡‡R S
;
‡‡S T%
sRPerformanceOverviewVM
 /
.
/ 0
QuestionCount
0 =
=
> ?
questionCountObj
@ P
is
Q S
DBNull
T Z
?
[ \
$num
] ^
:
_ `
Convert
a h
.
h i
ToInt32
i p
(
p q
objSqlDataReaderq 
[ ‚
$str‚ ‘
]‘ ’
)’ “
;“ ”%
sRPerformanceOverviewVM
‰‰ /
.
‰‰/ 0%
CorrectConfidentPercent
‰‰0 G
=
‰‰H I
(
‰‰J K
(
‰‰K L
Convert
‰‰L S
.
‰‰S T
ToDouble
‰‰T \
(
‰‰\ ]!
correctConfidentobj
‰‰] p
)
‰‰p q
*
‰‰r s
$num
‰‰t w
)
‰‰w x
/
‰‰y z
Convert‰‰{ ‚
.‰‰‚ ƒ
ToDouble‰‰ƒ ‹
(‰‰‹  
questionCountObj‰‰ 
)‰‰ 
)‰‰ 
;‰‰ %
sRPerformanceOverviewVM
 /
.
/ 0%
CorrectConfidentPercent
0 G
=
H I
Math
J N
.
N O
Round
O T
(
T U%
sRPerformanceOverviewVM
U l
.
l m&
CorrectConfidentPercentm „
,„ …
$num† ‡
)‡ 
; ‰%
sRPerformanceOverviewVM
‹‹ /
.
‹‹/ 0(
CorrectNotconfidentPercent
‹‹0 J
=
‹‹K L
(
‹‹M N
(
‹‹N O
Convert
‹‹O V
.
‹‹V W
ToDouble
‹‹W _
(
‹‹_ `$
correctNotconfidentObj
‹‹` v
)
‹‹v w
*
‹‹x y
$num
‹‹z }
)
‹‹} ~
/‹‹ €
Convert‹‹ 
.‹‹ ‰
ToDouble‹‹‰ ‘
(‹‹‘ ’ 
questionCountObj‹‹’ Ά
)‹‹Ά £
)‹‹£ ¤
;‹‹¤ ¥%
sRPerformanceOverviewVM
 /
.
/ 0(
CorrectNotconfidentPercent
0 J
=
K L
Math
M Q
.
Q R
Round
R W
(
W X%
sRPerformanceOverviewVM
X o
.
o p)
CorrectNotconfidentPercentp 
, ‹
$num 
) 
; %
sRPerformanceOverviewVM
 /
.
/ 0'
IncorrectConfidentPercent
0 I
=
J K
(
L M
(
M N
Convert
N U
.
U V
ToDouble
V ^
(
^ _#
incorrectConfidentObj
_ t
)
t u
*
v w
$num
x {
)
{ |
/
} ~
Convert †
.† ‡
ToDouble‡ 
(  
questionCountObj  
)  ΅
)΅ Ά
;Ά £%
sRPerformanceOverviewVM
 /
.
/ 0'
IncorrectConfidentPercent
0 I
=
J K
Math
L P
.
P Q
Round
Q V
(
V W%
sRPerformanceOverviewVM
W n
.
n o(
IncorrectConfidentPercento 
, ‰
$num ‹
)‹ 
; %
sRPerformanceOverviewVM
 /
.
/ 0*
IncorrectNotconfidentPercent
0 L
=
M N
(
O P
(
P Q
Convert
Q X
.
X Y
ToDouble
Y a
(
a b&
incorrectNotconfidentobj
b z
)
z {
*
| }
$num~ 
) ‚
/ƒ „
Convert… 
. 
ToDouble •
(• – 
questionCountObj– ¦
)¦ §
)§ ¨
;¨ ©%
sRPerformanceOverviewVM
 /
.
/ 0*
IncorrectNotconfidentPercent
0 L
=
M N
Math
O S
.
S T
Round
T Y
(
Y Z%
sRPerformanceOverviewVM
Z q
.
q r+
IncorrectNotconfidentPercentr 
, 
$num ‘
)‘ ’
;’ “%
sRPerformanceOverviewVM
‘‘ /
.
‘‘/ 0

UnAnswered
‘‘0 :
=
‘‘; <
(
‘‘= >
Convert
‘‘> E
.
‘‘E F
ToInt32
‘‘F M
(
‘‘M N
questionCountObj
‘‘N ^
)
‘‘^ _
-
‘‘` a
(
‘‘b c
(
‘‘c d
Convert
‘‘d k
.
‘‘k l
ToInt32
‘‘l s
(
‘‘s t"
correctConfidentobj‘‘t ‡
)‘‘‡ 
+‘‘‰ 
Convert‘‘‹ ’
.‘‘’ “
ToInt32‘‘“ 
(‘‘ ›&
correctNotconfidentObj‘‘› ±
)‘‘± ²
+‘‘³ ΄
Convert‘‘µ Ό
.‘‘Ό ½
ToInt32‘‘½ Δ
(‘‘Δ Ε%
incorrectConfidentObj‘‘Ε Ϊ
)‘‘Ϊ Ϋ
+‘‘ά έ
Convert‘‘ή ε
.‘‘ε ζ
ToInt32‘‘ζ ν
(‘‘ν ξ(
incorrectNotconfidentobj‘‘ξ †
)‘‘† ‡
)‘‘‡ 
)‘‘ ‰
)‘‘‰ 
;‘‘ ‹%
sRPerformanceOverviewVM
’’ /
.
’’/ 0
UnAnsweredPercent
’’0 A
=
’’B C
(
’’D E
Convert
’’E L
.
’’L M
ToDouble
’’M U
(
’’U V%
sRPerformanceOverviewVM
’’V m
.
’’m n

UnAnswered
’’n x
*
’’y z
$num
’’{ ~
)
’’~ 
/’’€ 
Convert’’‚ ‰
.’’‰ 
ToDouble’’ ’
(’’’ “ 
questionCountObj’’“ £
)’’£ ¤
)’’¤ ¥
;’’¥ ¦%
sRPerformanceOverviewVM
““ /
.
““/ 0
UnAnsweredPercent
““0 A
=
““B C
Math
““D H
.
““H I
Round
““I N
(
““N O%
sRPerformanceOverviewVM
““O f
.
““f g
UnAnsweredPercent
““g x
,
““x y
$num
““z {
)
““{ |
-
““} ~
$num““ ‚
;““‚ ƒ)
sRPerformanceOverviewVMList
”” 3
.
””3 4
Add
””4 7
(
””7 8%
sRPerformanceOverviewVM
””8 O
)
””O P
;
””P Q
}
•• 
}
–– 
}
—— 
return
™™ )
sRPerformanceOverviewVMList
™™ .
;
™™. /
}
 	
public
 
static
 
List
 
<
 ,
SRPerformanceOverviewChapterVM
 9
>
9 :-
GetChapterPerformanceOverviewSR
; Z
(
Z [
int
[ ^
examId
_ e
,
e f
int
g j
subspecialityId
k z
)
z {
{
 	
List
 
<
 ,
SRPerformanceOverviewChapterVM
 /
>
/ 00
"sRPerformanceOverviewChapterVMList
1 S
=
T U
new
V Y
List
Z ^
<
^ _,
SRPerformanceOverviewChapterVM
_ }
>
} ~
(
~ 
) €
;€ 
SqlParameter
   
[
   
]
   
arrSqlParameter
   *
=
  + ,
{
΅΅ 
new
ΆΆ 
SqlParameter
ΆΆ %
(
ΆΆ% &
$str
ΆΆ& /
,
ΆΆ/ 0
Convert
ΆΆ1 8
.
ΆΆ8 9
ToInt32
ΆΆ9 @
(
ΆΆ@ A
examId
ΆΆA G
)
ΆΆG H
)
ΆΆH I
,
ΆΆI J
new
££ 
SqlParameter
££ %
(
££% &
$str
££& 8
,
££8 9
Convert
££: A
.
££A B
ToInt32
££B I
(
££I J
subspecialityId
££J Y
)
££Y Z
)
££Z [
,
££[ \
}
¤¤ 
;
¤¤ 
using
¥¥ 
(
¥¥ 
SqlDataReader
¥¥  
objSqlDataReader
¥¥! 1
=
¥¥2 3
	SqlHelper
¥¥4 =
.
¥¥= >
ExecuteReader
¥¥> K
(
¥¥K L#
SqlConnectionProvider
¦¦ %
.
¦¦% &!
GetConnectionString
¦¦& 9
(
¦¦9 :
DataAccessType
¦¦: H
.
¦¦H I
Read
¦¦I M
)
¦¦M N
,
¦¦N O
CommandType
¦¦P [
.
¦¦[ \
StoredProcedure
¦¦\ k
,
¦¦k l
$str¦¦m 
,¦¦ 
arrSqlParameter¦¦ ®
)¦¦® ―
)¦¦― °
{
§§ 
if
¨¨ 
(
¨¨ 
objSqlDataReader
¨¨ $
.
¨¨$ %
HasRows
¨¨% ,
)
¨¨, -
{
©© 
while
ªª 
(
ªª 
objSqlDataReader
ªª +
.
ªª+ ,
Read
ªª, 0
(
ªª0 1
)
ªª1 2
)
ªª2 3
{
«« ,
SRPerformanceOverviewChapterVM
¬¬ 6,
sRPerformanceOverviewChapterVM
¬¬7 U
=
¬¬V W
new
¬¬X [,
SRPerformanceOverviewChapterVM
¬¬\ z
(
¬¬z {
)
¬¬{ |
;
¬¬| }
object
­­  
subspecialityIdobj
­­ 1
=
­­2 3
objSqlDataReader
­­4 D
[
­­D E
$str
­­E U
]
­­U V
;
­­V W,
sRPerformanceOverviewChapterVM
®® 6
.
®®6 7
SubspecialtyId
®®7 E
=
®®F G 
subspecialityIdobj
®®H Z
is
®®[ ]
DBNull
®®^ d
?
®®e f
$num
®®g h
:
®®i j
Convert
®®k r
.
®®r s
ToInt32
®®s z
(
®®z {
objSqlDataReader®®{ ‹
[®®‹ 
$str®® 
]®® 
)®® 
;®® 
object
―― 
sectionNumberobj
―― /
=
――0 1
objSqlDataReader
――2 B
[
――B C
$str
――C R
]
――R S
;
――S T,
sRPerformanceOverviewChapterVM
°° 6
.
°°6 7
ChapterNumber
°°7 D
=
°°E F 
subspecialityIdobj
°°G Y
is
°°Z \
DBNull
°°] c
?
°°d e
string
°°f l
.
°°l m
Empty
°°m r
:
°°s t
Convert
°°u |
.
°°| }
ToString°°} …
(°°… † 
objSqlDataReader°°† –
[°°– —
$str°°— ¦
]°°¦ §
)°°§ ¨
;°°¨ ©
object
±± 
sectionTitleobj
±± .
=
±±/ 0
objSqlDataReader
±±1 A
[
±±A B
$str
±±B O
]
±±O P
;
±±P Q,
sRPerformanceOverviewChapterVM
²² 6
.
²²6 7
ChapterName
²²7 B
=
²²C D
sectionTitleobj
²²E T
is
²²U W
DBNull
²²X ^
?
²²_ `
string
²²a g
.
²²g h
Empty
²²h m
:
²²n o
Convert
²²p w
.
²²w x
ToString²²x €
(²²€  
objSqlDataReader²² ‘
[²²‘ ’
$str²²’ 
]²²  
)²²  ΅
;²²΅ Ά
object
³³ !
correctConfidentobj
³³ 2
=
³³3 4
objSqlDataReader
³³5 E
[
³³E F
$str
³³F X
]
³³X Y
;
³³Y Z,
sRPerformanceOverviewChapterVM
΄΄ 6
.
΄΄6 7
CorrectConfident
΄΄7 G
=
΄΄H I!
correctConfidentobj
΄΄J ]
is
΄΄^ `
DBNull
΄΄a g
?
΄΄h i
$num
΄΄j k
:
΄΄l m
Convert
΄΄n u
.
΄΄u v
ToInt32
΄΄v }
(
΄΄} ~
objSqlDataReader΄΄~ 
[΄΄ 
$str΄΄ ΅
]΄΄΅ Ά
)΄΄Ά £
;΄΄£ ¤
object
µµ $
correctNotconfidentObj
µµ 5
=
µµ6 7
objSqlDataReader
µµ8 H
[
µµH I
$str
µµI ^
]
µµ^ _
;
µµ_ `,
sRPerformanceOverviewChapterVM
¶¶ 6
.
¶¶6 7!
CorrectNotconfident
¶¶7 J
=
¶¶K L$
correctNotconfidentObj
¶¶M c
is
¶¶d f
DBNull
¶¶g m
?
¶¶n o
$num
¶¶p q
:
¶¶r s
Convert
¶¶t {
.
¶¶{ |
ToInt32¶¶| ƒ
(¶¶ƒ „ 
objSqlDataReader¶¶„ ”
[¶¶” •
$str¶¶• ª
]¶¶ª «
)¶¶« ¬
;¶¶¬ ­
object
·· #
incorrectConfidentObj
·· 4
=
··5 6
objSqlDataReader
··7 G
[
··G H
$str
··H \
]
··\ ]
;
··] ^,
sRPerformanceOverviewChapterVM
ΈΈ 6
.
ΈΈ6 7 
IncorrectConfident
ΈΈ7 I
=
ΈΈJ K#
incorrectConfidentObj
ΈΈL a
is
ΈΈb d
DBNull
ΈΈe k
?
ΈΈl m
$num
ΈΈn o
:
ΈΈp q
Convert
ΈΈr y
.
ΈΈy z
ToInt32ΈΈz 
(ΈΈ ‚ 
objSqlDataReaderΈΈ‚ ’
[ΈΈ’ “
$strΈΈ“ §
]ΈΈ§ ¨
)ΈΈ¨ ©
;ΈΈ© ª
object
ΉΉ &
incorrectNotconfidentobj
ΉΉ 7
=
ΉΉ8 9
objSqlDataReader
ΉΉ: J
[
ΉΉJ K
$str
ΉΉK b
]
ΉΉb c
;
ΉΉc d,
sRPerformanceOverviewChapterVM
ΊΊ 6
.
ΊΊ6 7#
IncorrectNotconfident
ΊΊ7 L
=
ΊΊM N&
incorrectNotconfidentobj
ΊΊO g
is
ΊΊh j
DBNull
ΊΊk q
?
ΊΊr s
$num
ΊΊt u
:
ΊΊv w
Convert
ΊΊx 
.ΊΊ €
ToInt32ΊΊ€ ‡
(ΊΊ‡  
objSqlDataReaderΊΊ 
[ΊΊ ™
$strΊΊ™ °
]ΊΊ° ±
)ΊΊ± ²
;ΊΊ² ³
object
»» 
questionCountObj
»» /
=
»»0 1
objSqlDataReader
»»2 B
[
»»B C
$str
»»C R
]
»»R S
;
»»S T,
sRPerformanceOverviewChapterVM
ΌΌ 6
.
ΌΌ6 7
QuestionCount
ΌΌ7 D
=
ΌΌE F
questionCountObj
ΌΌG W
is
ΌΌX Z
DBNull
ΌΌ[ a
?
ΌΌb c
$num
ΌΌd e
:
ΌΌf g
Convert
ΌΌh o
.
ΌΌo p
ToInt32
ΌΌp w
(
ΌΌw x
objSqlDataReaderΌΌx 
[ΌΌ ‰
$strΌΌ‰ 
]ΌΌ ™
)ΌΌ™ 
;ΌΌ ›,
sRPerformanceOverviewChapterVM
½½ 6
.
½½6 7%
CorrectConfidentPercent
½½7 N
=
½½O P
(
½½Q R
(
½½R S
Convert
½½S Z
.
½½Z [
ToDouble
½½[ c
(
½½c d!
correctConfidentobj
½½d w
)
½½w x
*
½½y z
$num
½½{ ~
)
½½~ 
/½½€ 
Convert½½‚ ‰
.½½‰ 
ToDouble½½ ’
(½½’ “ 
questionCountObj½½“ £
)½½£ ¤
)½½¤ ¥
;½½¥ ¦,
sRPerformanceOverviewChapterVM
ΎΎ 6
.
ΎΎ6 7%
CorrectConfidentPercent
ΎΎ7 N
=
ΎΎO P
Math
ΎΎQ U
.
ΎΎU V
Round
ΎΎV [
(
ΎΎ[ \,
sRPerformanceOverviewChapterVM
ΎΎ\ z
.
ΎΎz {&
CorrectConfidentPercentΎΎ{ ’
,ΎΎ’ “
$numΎΎ” •
)ΎΎ• –
;ΎΎ– —,
sRPerformanceOverviewChapterVM
ΏΏ 6
.
ΏΏ6 7(
CorrectNotconfidentPercent
ΏΏ7 Q
=
ΏΏR S
(
ΏΏT U
(
ΏΏU V
Convert
ΏΏV ]
.
ΏΏ] ^
ToDouble
ΏΏ^ f
(
ΏΏf g$
correctNotconfidentObj
ΏΏg }
)
ΏΏ} ~
*ΏΏ €
$numΏΏ „
)ΏΏ„ …
/ΏΏ† ‡
ConvertΏΏ 
.ΏΏ 
ToDoubleΏΏ 
(ΏΏ ™ 
questionCountObjΏΏ™ ©
)ΏΏ© ª
)ΏΏª «
;ΏΏ« ¬,
sRPerformanceOverviewChapterVM
ΐΐ 6
.
ΐΐ6 7(
CorrectNotconfidentPercent
ΐΐ7 Q
=
ΐΐR S
Math
ΐΐT X
.
ΐΐX Y
Round
ΐΐY ^
(
ΐΐ^ _,
sRPerformanceOverviewChapterVM
ΐΐ_ }
.
ΐΐ} ~)
CorrectNotconfidentPercentΐΐ~ 
,ΐΐ ™
$numΐΐ ›
)ΐΐ› 
;ΐΐ ,
sRPerformanceOverviewChapterVM
ΑΑ 6
.
ΑΑ6 7'
IncorrectConfidentPercent
ΑΑ7 P
=
ΑΑQ R
(
ΑΑS T
(
ΑΑT U
Convert
ΑΑU \
.
ΑΑ\ ]
ToDouble
ΑΑ] e
(
ΑΑe f#
incorrectConfidentObj
ΑΑf {
)
ΑΑ{ |
*
ΑΑ} ~
$numΑΑ ‚
)ΑΑ‚ ƒ
/ΑΑ„ …
ConvertΑΑ† 
.ΑΑ 
ToDoubleΑΑ –
(ΑΑ– — 
questionCountObjΑΑ— §
)ΑΑ§ ¨
)ΑΑ¨ ©
;ΑΑ© ª,
sRPerformanceOverviewChapterVM
ΒΒ 6
.
ΒΒ6 7'
IncorrectConfidentPercent
ΒΒ7 P
=
ΒΒQ R
Math
ΒΒS W
.
ΒΒW X
Round
ΒΒX ]
(
ΒΒ] ^,
sRPerformanceOverviewChapterVM
ΒΒ^ |
.
ΒΒ| }(
IncorrectConfidentPercentΒΒ} –
,ΒΒ– —
$numΒΒ ™
)ΒΒ™ 
;ΒΒ ›,
sRPerformanceOverviewChapterVM
ΓΓ 6
.
ΓΓ6 7*
IncorrectNotconfidentPercent
ΓΓ7 S
=
ΓΓT U
(
ΓΓV W
(
ΓΓW X
Convert
ΓΓX _
.
ΓΓ_ `
ToDouble
ΓΓ` h
(
ΓΓh i'
incorrectNotconfidentobjΓΓi 
)ΓΓ ‚
*ΓΓƒ „
$numΓΓ… 
)ΓΓ ‰
/ΓΓ ‹
ConvertΓΓ “
.ΓΓ“ ”
ToDoubleΓΓ” 
(ΓΓ  
questionCountObjΓΓ ­
)ΓΓ­ ®
)ΓΓ® ―
;ΓΓ― °,
sRPerformanceOverviewChapterVM
ΔΔ 6
.
ΔΔ6 7*
IncorrectNotconfidentPercent
ΔΔ7 S
=
ΔΔT U
Math
ΔΔV Z
.
ΔΔZ [
Round
ΔΔ[ `
(
ΔΔ` a,
sRPerformanceOverviewChapterVM
ΔΔa 
.ΔΔ €,
IncorrectNotconfidentPercentΔΔ€ 
,ΔΔ 
$numΔΔ 
)ΔΔ  
;ΔΔ  ΅,
sRPerformanceOverviewChapterVM
ΕΕ 6
.
ΕΕ6 7

UnAnswered
ΕΕ7 A
=
ΕΕB C
(
ΕΕD E
Convert
ΕΕE L
.
ΕΕL M
ToInt32
ΕΕM T
(
ΕΕT U
questionCountObj
ΕΕU e
)
ΕΕe f
-
ΕΕg h
(
ΕΕi j
(
ΕΕj k
Convert
ΕΕk r
.
ΕΕr s
ToInt32
ΕΕs z
(
ΕΕz {"
correctConfidentobjΕΕ{ 
)ΕΕ 
+ΕΕ ‘
ConvertΕΕ’ ™
.ΕΕ™ 
ToInt32ΕΕ ΅
(ΕΕ΅ Ά&
correctNotconfidentObjΕΕΆ Έ
)ΕΕΈ Ή
+ΕΕΊ »
ConvertΕΕΌ Γ
.ΕΕΓ Δ
ToInt32ΕΕΔ Λ
(ΕΕΛ Μ%
incorrectConfidentObjΕΕΜ α
)ΕΕα β
+ΕΕγ δ
ConvertΕΕε μ
.ΕΕμ ν
ToInt32ΕΕν τ
(ΕΕτ υ(
incorrectNotconfidentobjΕΕυ 
)ΕΕ 
)ΕΕ 
)ΕΕ 
)ΕΕ ‘
;ΕΕ‘ ’,
sRPerformanceOverviewChapterVM
ΖΖ 6
.
ΖΖ6 7
UnAnsweredPercent
ΖΖ7 H
=
ΖΖI J
(
ΖΖK L
Convert
ΖΖL S
.
ΖΖS T
ToDouble
ΖΖT \
(
ΖΖ\ ],
sRPerformanceOverviewChapterVM
ΖΖ] {
.
ΖΖ{ |

UnAnsweredΖΖ| †
*ΖΖ‡ 
$numΖΖ‰ 
)ΖΖ 
/ΖΖ 
ConvertΖΖ —
.ΖΖ— 
ToDoubleΖΖ  
(ΖΖ  ΅ 
questionCountObjΖΖ΅ ±
)ΖΖ± ²
)ΖΖ² ³
;ΖΖ³ ΄,
sRPerformanceOverviewChapterVM
ΗΗ 6
.
ΗΗ6 7
UnAnsweredPercent
ΗΗ7 H
=
ΗΗI J
Math
ΗΗK O
.
ΗΗO P
Round
ΗΗP U
(
ΗΗU V,
sRPerformanceOverviewChapterVM
ΗΗV t
.
ΗΗt u 
UnAnsweredPercentΗΗu †
,ΗΗ† ‡
$numΗΗ ‰
)ΗΗ‰ 
-ΗΗ‹ 
$numΗΗ 
;ΗΗ ‘0
"sRPerformanceOverviewChapterVMList
ΘΘ :
.
ΘΘ: ;
Add
ΘΘ; >
(
ΘΘ> ?,
sRPerformanceOverviewChapterVM
ΘΘ? ]
)
ΘΘ] ^
;
ΘΘ^ _
}
ΙΙ 
}
ΚΚ 
}
ΛΛ 
return
ΝΝ 0
"sRPerformanceOverviewChapterVMList
ΝΝ 5
;
ΝΝ5 6
}
ΞΞ 	
public
ΡΡ 
static
ΡΡ 
List
ΡΡ 
<
ΡΡ +
SRPerformanceOverviewTopicsVM
ΡΡ 8
>
ΡΡ8 9,
GetTopicsPerformanceOverviewSR
ΡΡ: X
(
ΡΡX Y
int
ΡΡY \
examId
ΡΡ] c
,
ΡΡc d
string
ΡΡe k
chapterNumber
ΡΡl y
,
ΡΡy z
int
ΡΡ{ ~
subspecialityIdΡΡ 
,ΡΡ 
stringΡΡ –
ChapterNameΡΡ— Ά
)ΡΡΆ £
{
ÒÒ 	
List
ΣΣ 
<
ΣΣ +
SRPerformanceOverviewTopicsVM
ΣΣ .
>
ΣΣ. //
!sRPerformanceOverviewTopicsVMList
ΣΣ0 Q
=
ΣΣR S
new
ΣΣT W
List
ΣΣX \
<
ΣΣ\ ]+
SRPerformanceOverviewTopicsVM
ΣΣ] z
>
ΣΣz {
(
ΣΣ{ |
)
ΣΣ| }
;
ΣΣ} ~
SqlParameter
ΤΤ 
[
ΤΤ 
]
ΤΤ 
arrSqlParameter
ΤΤ *
=
ΤΤ+ ,
{
ΥΥ 
new
ΦΦ 
SqlParameter
ΦΦ %
(
ΦΦ% &
$str
ΦΦ& /
,
ΦΦ/ 0
Convert
ΦΦ1 8
.
ΦΦ8 9
ToInt32
ΦΦ9 @
(
ΦΦ@ A
examId
ΦΦA G
)
ΦΦG H
)
ΦΦH I
,
ΦΦI J
new
ΧΧ 
SqlParameter
ΧΧ %
(
ΧΧ% &
$str
ΧΧ& 6
,
ΧΧ6 7
Convert
ΧΧ8 ?
.
ΧΧ? @
ToString
ΧΧ@ H
(
ΧΧH I
chapterNumber
ΧΧI V
)
ΧΧV W
)
ΧΧW X
,
ΧΧX Y
new
ΨΨ 
SqlParameter
ΨΨ %
(
ΨΨ% &
$str
ΨΨ& 8
,
ΨΨ8 9
Convert
ΨΨ: A
.
ΨΨA B
ToInt32
ΨΨB I
(
ΨΨI J
subspecialityId
ΨΨJ Y
)
ΨΨY Z
)
ΨΨZ [
,
ΨΨ[ \
new
ΩΩ 
SqlParameter
ΩΩ %
(
ΩΩ% &
$str
ΩΩ& 4
,
ΩΩ4 5
Convert
ΩΩ5 <
.
ΩΩ< =
ToString
ΩΩ= E
(
ΩΩE F
ChapterName
ΩΩF Q
)
ΩΩQ R
)
ΩΩR S
,
ΩΩS T
}
ΪΪ 
;
ΪΪ 
using
ΫΫ 
(
ΫΫ 
SqlDataReader
ΫΫ  
objSqlDataReader
ΫΫ! 1
=
ΫΫ2 3
	SqlHelper
ΫΫ4 =
.
ΫΫ= >
ExecuteReader
ΫΫ> K
(
ΫΫK L#
SqlConnectionProvider
άά %
.
άά% &!
GetConnectionString
άά& 9
(
άά9 :
DataAccessType
άά: H
.
άάH I
Read
άάI M
)
άάM N
,
άάN O
CommandType
άάP [
.
άά[ \
StoredProcedure
άά\ k
,
άάk l
$strάάm ›
,άά› 
arrSqlParameterάά ¬
)άά¬ ­
)άά­ ®
{
έέ 
if
ήή 
(
ήή 
objSqlDataReader
ήή $
.
ήή$ %
HasRows
ήή% ,
)
ήή, -
{
ίί 
while
ΰΰ 
(
ΰΰ 
objSqlDataReader
ΰΰ +
.
ΰΰ+ ,
Read
ΰΰ, 0
(
ΰΰ0 1
)
ΰΰ1 2
)
ΰΰ2 3
{
αα +
SRPerformanceOverviewTopicsVM
ββ 5+
sRPerformanceOverviewTopicsVM
ββ6 S
=
ββT U
new
ββV Y+
SRPerformanceOverviewTopicsVM
ββZ w
(
ββw x
)
ββx y
;
ββy z
object
γγ  
subspecialityIdobj
γγ 1
=
γγ2 3
objSqlDataReader
γγ4 D
[
γγD E
$str
γγE U
]
γγU V
;
γγV W+
sRPerformanceOverviewTopicsVM
δδ 5
.
δδ5 6
SubspecialtyId
δδ6 D
=
δδE F 
subspecialityIdobj
δδG Y
is
δδZ \
DBNull
δδ] c
?
δδd e
$num
δδf g
:
δδh i
Convert
δδj q
.
δδq r
ToInt32
δδr y
(
δδy z
objSqlDataReaderδδz 
[δδ ‹
$strδδ‹ ›
]δδ› 
)δδ 
;δδ 
object
εε 
topicNameobj
εε +
=
εε, -
objSqlDataReader
εε. >
[
εε> ?
$str
εε? J
]
εεJ K
;
εεK L+
sRPerformanceOverviewTopicsVM
ζζ 5
.
ζζ5 6
	TopicName
ζζ6 ?
=
ζζ@ A
topicNameobj
ζζB N
is
ζζO Q
DBNull
ζζR X
?
ζζY Z
string
ζζ[ a
.
ζζa b
Empty
ζζb g
:
ζζh i
Convert
ζζj q
.
ζζq r
ToString
ζζr z
(
ζζz {
objSqlDataReaderζζ{ ‹
[ζζ‹ 
$strζζ —
]ζζ— 
)ζζ ™
;ζζ™ 
object
ηη 

topicIdobj
ηη )
=
ηη* +
objSqlDataReader
ηη, <
[
ηη< =
$str
ηη= F
]
ηηF G
;
ηηG H+
sRPerformanceOverviewTopicsVM
θθ 5
.
θθ5 6
TopicId
θθ6 =
=
θθ> ?

topicIdobj
θθ@ J
is
θθK M
DBNull
θθN T
?
θθU V
$num
θθW X
:
θθY Z
Convert
θθ[ b
.
θθb c
ToInt32
θθc j
(
θθj k
objSqlDataReader
θθk {
[
θθ{ |
$strθθ| …
]θθ… †
)θθ† ‡
;θθ‡ 
object
ιι 
chapterNumberobj
ιι /
=
ιι0 1
objSqlDataReader
ιι2 B
[
ιιB C
$str
ιιC R
]
ιιR S
;
ιιS T+
sRPerformanceOverviewTopicsVM
κκ 5
.
κκ5 6
ChapterNumber
κκ6 C
=
κκD E
chapterNumberobj
κκF V
is
κκW Y
DBNull
κκZ `
?
κκa b
string
κκc i
.
κκi j
Empty
κκj o
:
κκp q
Convert
κκr y
.
κκy z
ToStringκκz ‚
(κκ‚ ƒ 
objSqlDataReaderκκƒ “
[κκ“ ”
$strκκ” £
]κκ£ ¤
)κκ¤ ¥
;κκ¥ ¦
object
λλ 
chapterNameobj
λλ -
=
λλ. /
objSqlDataReader
λλ0 @
[
λλ@ A
$str
λλA N
]
λλN O
;
λλO P+
sRPerformanceOverviewTopicsVM
μμ 5
.
μμ5 6
ChapterName
μμ6 A
=
μμB C
chapterNameobj
μμD R
is
μμS U
DBNull
μμV \
?
μμ] ^
string
μμ_ e
.
μμe f
Empty
μμf k
:
μμl m
Convert
μμn u
.
μμu v
ToString
μμv ~
(
μμ~ 
objSqlDataReaderμμ 
[μμ 
$strμμ 
]μμ 
)μμ 
;μμ  
object
νν !
correctConfidentobj
νν 2
=
νν3 4
objSqlDataReader
νν5 E
[
ννE F
$str
ννF X
]
ννX Y
;
ννY Z+
sRPerformanceOverviewTopicsVM
ξξ 5
.
ξξ5 6
CorrectConfident
ξξ6 F
=
ξξG H!
correctConfidentobj
ξξI \
is
ξξ] _
DBNull
ξξ` f
?
ξξg h
$num
ξξi j
:
ξξk l
Convert
ξξm t
.
ξξt u
ToInt32
ξξu |
(
ξξ| }
objSqlDataReaderξξ} 
[ξξ 
$strξξ  
]ξξ  ΅
)ξξ΅ Ά
;ξξΆ £
object
οο $
correctNotconfidentObj
οο 5
=
οο6 7
objSqlDataReader
οο8 H
[
οοH I
$str
οοI ^
]
οο^ _
;
οο_ `+
sRPerformanceOverviewTopicsVM
ππ 5
.
ππ5 6!
CorrectNotconfident
ππ6 I
=
ππJ K$
correctNotconfidentObj
ππL b
is
ππc e
DBNull
ππf l
?
ππm n
$num
ππo p
:
ππq r
Convert
ππs z
.
ππz {
ToInt32ππ{ ‚
(ππ‚ ƒ 
objSqlDataReaderππƒ “
[ππ“ ”
$strππ” ©
]ππ© ª
)ππª «
;ππ« ¬
object
ρρ #
incorrectConfidentObj
ρρ 4
=
ρρ5 6
objSqlDataReader
ρρ7 G
[
ρρG H
$str
ρρH \
]
ρρ\ ]
;
ρρ] ^+
sRPerformanceOverviewTopicsVM
ςς 5
.
ςς5 6 
IncorrectConfident
ςς6 H
=
ςςI J#
incorrectConfidentObj
ςςK `
is
ςςa c
DBNull
ςςd j
?
ςςk l
$num
ςςm n
:
ςςo p
Convert
ςςq x
.
ςςx y
ToInt32ςςy €
(ςς€  
objSqlDataReaderςς ‘
[ςς‘ ’
$strςς’ ¦
]ςς¦ §
)ςς§ ¨
;ςς¨ ©
object
σσ &
incorrectNotconfidentobj
σσ 7
=
σσ8 9
objSqlDataReader
σσ: J
[
σσJ K
$str
σσK b
]
σσb c
;
σσc d+
sRPerformanceOverviewTopicsVM
ττ 5
.
ττ5 6#
IncorrectNotconfident
ττ6 K
=
ττL M&
incorrectNotconfidentobj
ττN f
is
ττg i
DBNull
ττj p
?
ττq r
$num
ττs t
:
ττu v
Convert
ττw ~
.
ττ~ 
ToInt32ττ †
(ττ† ‡ 
objSqlDataReaderττ‡ —
[ττ— 
$strττ ―
]ττ― °
)ττ° ±
;ττ± ²
object
υυ 
questionCountObj
υυ /
=
υυ0 1
objSqlDataReader
υυ2 B
[
υυB C
$str
υυC R
]
υυR S
;
υυS T+
sRPerformanceOverviewTopicsVM
φφ 5
.
φφ5 6
QuestionCount
φφ6 C
=
φφD E
questionCountObj
φφF V
is
φφW Y
DBNull
φφZ `
?
φφa b
$num
φφc d
:
φφe f
Convert
φφg n
.
φφn o
ToInt32
φφo v
(
φφv w
objSqlDataReaderφφw ‡
[φφ‡ 
$strφφ —
]φφ— 
)φφ ™
;φφ™ +
sRPerformanceOverviewTopicsVM
χχ 5
.
χχ5 6%
CorrectConfidentPercent
χχ6 M
=
χχN O
(
χχP Q
(
χχQ R
Convert
χχR Y
.
χχY Z
ToDouble
χχZ b
(
χχb c!
correctConfidentobj
χχc v
)
χχv w
*
χχx y
$num
χχz }
)
χχ} ~
/χχ €
Convertχχ 
.χχ ‰
ToDoubleχχ‰ ‘
(χχ‘ ’ 
questionCountObjχχ’ Ά
)χχΆ £
)χχ£ ¤
;χχ¤ ¥+
sRPerformanceOverviewTopicsVM
ψψ 5
.
ψψ5 6%
CorrectConfidentPercent
ψψ6 M
=
ψψN O
Math
ψψP T
.
ψψT U
Round
ψψU Z
(
ψψZ [+
sRPerformanceOverviewTopicsVM
ψψ[ x
.
ψψx y&
CorrectConfidentPercentψψy 
,ψψ ‘
$numψψ’ “
)ψψ“ ”
;ψψ” •+
sRPerformanceOverviewTopicsVM
ωω 5
.
ωω5 6(
CorrectNotconfidentPercent
ωω6 P
=
ωωQ R
(
ωωS T
(
ωωT U
Convert
ωωU \
.
ωω\ ]
ToDouble
ωω] e
(
ωωe f$
correctNotconfidentObj
ωωf |
)
ωω| }
*
ωω~ 
$numωω€ ƒ
)ωωƒ „
/ωω… †
Convertωω‡ 
.ωω 
ToDoubleωω —
(ωω—  
questionCountObjωω ¨
)ωω¨ ©
)ωω© ª
;ωωª «+
sRPerformanceOverviewTopicsVM
ϊϊ 5
.
ϊϊ5 6(
CorrectNotconfidentPercent
ϊϊ6 P
=
ϊϊQ R
Math
ϊϊS W
.
ϊϊW X
Round
ϊϊX ]
(
ϊϊ] ^+
sRPerformanceOverviewTopicsVM
ϊϊ^ {
.
ϊϊ{ |)
CorrectNotconfidentPercentϊϊ| –
,ϊϊ– —
$numϊϊ ™
)ϊϊ™ 
;ϊϊ ›+
sRPerformanceOverviewTopicsVM
ϋϋ 5
.
ϋϋ5 6'
IncorrectConfidentPercent
ϋϋ6 O
=
ϋϋP Q
(
ϋϋR S
(
ϋϋS T
Convert
ϋϋT [
.
ϋϋ[ \
ToDouble
ϋϋ\ d
(
ϋϋd e#
incorrectConfidentObj
ϋϋe z
)
ϋϋz {
*
ϋϋ| }
$numϋϋ~ 
)ϋϋ ‚
/ϋϋƒ „
Convertϋϋ… 
.ϋϋ 
ToDoubleϋϋ •
(ϋϋ• – 
questionCountObjϋϋ– ¦
)ϋϋ¦ §
)ϋϋ§ ¨
;ϋϋ¨ ©+
sRPerformanceOverviewTopicsVM
όό 5
.
όό5 6'
IncorrectConfidentPercent
όό6 O
=
όόP Q
Math
όόR V
.
όόV W
Round
όόW \
(
όό\ ]+
sRPerformanceOverviewTopicsVM
όό] z
.
όόz {(
IncorrectConfidentPercentόό{ ”
,όό” •
$numόό– —
)όό— 
;όό ™+
sRPerformanceOverviewTopicsVM
ύύ 5
.
ύύ5 6*
IncorrectNotconfidentPercent
ύύ6 R
=
ύύS T
(
ύύU V
(
ύύV W
Convert
ύύW ^
.
ύύ^ _
ToDouble
ύύ_ g
(
ύύg h'
incorrectNotconfidentobjύύh €
)ύύ€ 
*ύύ‚ ƒ
$numύύ„ ‡
)ύύ‡ 
/ύύ‰ 
Convertύύ‹ ’
.ύύ’ “
ToDoubleύύ“ ›
(ύύ›  
questionCountObjύύ ¬
)ύύ¬ ­
)ύύ­ ®
;ύύ® ―+
sRPerformanceOverviewTopicsVM
ώώ 5
.
ώώ5 6*
IncorrectNotconfidentPercent
ώώ6 R
=
ώώS T
Math
ώώU Y
.
ώώY Z
Round
ώώZ _
(
ώώ_ `+
sRPerformanceOverviewTopicsVM
ώώ` }
.
ώώ} ~+
IncorrectNotconfidentPercentώώ~ 
,ώώ ›
$numώώ 
)ώώ 
;ώώ +
sRPerformanceOverviewTopicsVM
ÿÿ 5
.
ÿÿ5 6

UnAnswered
ÿÿ6 @
=
ÿÿA B
(
ÿÿC D
Convert
ÿÿD K
.
ÿÿK L
ToInt32
ÿÿL S
(
ÿÿS T
questionCountObj
ÿÿT d
)
ÿÿd e
-
ÿÿf g
(
ÿÿh i
(
ÿÿi j
Convert
ÿÿj q
.
ÿÿq r
ToInt32
ÿÿr y
(
ÿÿy z"
correctConfidentobjÿÿz 
)ÿÿ 
+ÿÿ 
Convertÿÿ‘ 
.ÿÿ ™
ToInt32ÿÿ™  
(ÿÿ  ΅&
correctNotconfidentObjÿÿ΅ ·
)ÿÿ· Έ
+ÿÿΉ Ί
Convertÿÿ» Β
.ÿÿΒ Γ
ToInt32ÿÿΓ Κ
(ÿÿΚ Λ%
incorrectConfidentObjÿÿΛ ΰ
)ÿÿΰ α
+ÿÿβ γ
Convertÿÿδ λ
.ÿÿλ μ
ToInt32ÿÿμ σ
(ÿÿσ τ(
incorrectNotconfidentobjÿÿτ 
)ÿÿ 
)ÿÿ 
)ÿÿ 
)ÿÿ 
;ÿÿ ‘+
sRPerformanceOverviewTopicsVM
€€ 5
.
€€5 6
UnAnsweredPercent
€€6 G
=
€€H I
(
€€J K
Convert
€€K R
.
€€R S
ToDouble
€€S [
(
€€[ \+
sRPerformanceOverviewTopicsVM
€€\ y
.
€€y z

UnAnswered€€z „
*€€… †
$num€€‡ 
)€€ ‹
/€€ 
Convert€€ •
.€€• –
ToDouble€€– 
(€€  
questionCountObj€€ ―
)€€― °
)€€° ±
;€€± ²+
sRPerformanceOverviewTopicsVM
 5
.
5 6
UnAnsweredPercent
6 G
=
H I
Math
J N
.
N O
Round
O T
(
T U+
sRPerformanceOverviewTopicsVM
U r
.
r s 
UnAnsweredPercents „
,„ …
$num† ‡
)‡ 
-‰ 
$num‹ 
; /
!sRPerformanceOverviewTopicsVMList
‚‚ 9
.
‚‚9 :
Add
‚‚: =
(
‚‚= >+
sRPerformanceOverviewTopicsVM
‚‚> [
)
‚‚[ \
;
‚‚\ ]
}
ƒƒ 
}
„„ 
}
…… 
return
‡‡ /
!sRPerformanceOverviewTopicsVMList
‡‡ 4
;
‡‡4 5
}
 	
public
‹‹ 
static
‹‹ 
List
‹‹ 
<
‹‹ #
SRRecommendedTopicsVM
‹‹ 0
>
‹‹0 1$
GetRecommendedTopicsSR
‹‹2 H
(
‹‹H I
int
‹‹I L
examId
‹‹M S
,
‹‹S T
int
‹‹U X
UserId
‹‹Y _
)
‹‹_ `
{
 	
List
 
<
 #
SRRecommendedTopicsVM
 &
>
& ''
sRRecommendedTopicsVMList
( A
=
B C
new
D G
List
H L
<
L M#
SRRecommendedTopicsVM
M b
>
b c
(
c d
)
d e
;
e f
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
 
new
 
SqlParameter
 $
(
$ %
$str
% .
,
. /
Convert
0 7
.
7 8
ToInt32
8 ?
(
? @
examId
@ F
)
F G
)
G H
,
H I
new
‘‘ 
SqlParameter
‘‘ $
(
‘‘$ %
$str
‘‘% .
,
‘‘. /
Convert
‘‘0 7
.
‘‘7 8
ToInt32
‘‘8 ?
(
‘‘? @
UserId
‘‘@ F
)
‘‘F G
)
‘‘G H
,
‘‘H I
}
’’ 
;
’’ 
using
““ 
(
““ 
SqlDataReader
““  
objSqlDataReader
““! 1
=
““2 3
	SqlHelper
““4 =
.
““= >
ExecuteReader
““> K
(
““K L#
SqlConnectionProvider
”” %
.
””% &!
GetConnectionString
””& 9
(
””9 :
DataAccessType
””: H
.
””H I
Read
””I M
)
””M N
,
””N O
CommandType
””P [
.
””[ \
StoredProcedure
””\ k
,
””k l
$str””m ”
,””” •
arrSqlParameter””– ¥
)””¥ ¦
)””¦ §
{
•• 
if
–– 
(
–– 
objSqlDataReader
–– $
.
––$ %
HasRows
––% ,
)
––, -
{
—— 
while
 
(
 
objSqlDataReader
 +
.
+ ,
Read
, 0
(
0 1
)
1 2
)
2 3
{
™™ #
SRRecommendedTopicsVM
 -#
sRRecommendedTopicsVM
. C
=
D E
new
F I#
SRRecommendedTopicsVM
J _
(
_ `
)
` a
;
a b
object
›› 
sectionNameobj
›› -
=
››. /
objSqlDataReader
››0 @
[
››@ A
$str
››A N
]
››N O
;
››O P#
sRRecommendedTopicsVM
 -
.
- .
SectionName
. 9
=
: ;
sectionNameobj
< J
is
K M
DBNull
N T
?
U V
string
W ]
.
] ^
Empty
^ c
:
d e
Convert
f m
.
m n
ToString
n v
(
v w
objSqlDataReaderw ‡
[‡ 
$str •
]• –
)– —
;— 
object
 
chapterNameobj
 -
=
. /
objSqlDataReader
0 @
[
@ A
$str
A N
]
N O
;
O P#
sRRecommendedTopicsVM
 -
.
- .
ChapterName
. 9
=
: ;
chapterNameobj
< J
is
K M
DBNull
N T
?
U V
string
W ]
.
] ^
Empty
^ c
:
d e
Convert
f m
.
m n
ToString
n v
(
v w
objSqlDataReaderw ‡
[‡ 
$str •
]• –
)– —
;— 
object
 
topicNameobj
 +
=
, -
objSqlDataReader
. >
[
> ?
$str
? J
]
J K
;
K L#
sRRecommendedTopicsVM
   -
.
  - .
	TopicName
  . 7
=
  8 9
topicNameobj
  : F
is
  G I
DBNull
  J P
?
  Q R
string
  S Y
.
  Y Z
Empty
  Z _
:
  ` a
Convert
  b i
.
  i j
ToString
  j r
(
  r s
objSqlDataReader  s ƒ
[  ƒ „
$str  „ 
]   
)   ‘
;  ‘ ’
object
΅΅ 

excerptobj
΅΅ )
=
΅΅* +
objSqlDataReader
΅΅, <
[
΅΅< =
$str
΅΅= F
]
΅΅F G
;
΅΅G H#
sRRecommendedTopicsVM
ΆΆ -
.
ΆΆ- .
Excerpt
ΆΆ. 5
=
ΆΆ6 7

excerptobj
ΆΆ8 B
is
ΆΆC E
DBNull
ΆΆF L
?
ΆΆM N
string
ΆΆO U
.
ΆΆU V
Empty
ΆΆV [
:
ΆΆ\ ]
Convert
ΆΆ^ e
.
ΆΆe f
ToString
ΆΆf n
(
ΆΆn o
objSqlDataReader
ΆΆo 
[ΆΆ €
$strΆΆ€ ‰
]ΆΆ‰ 
)ΆΆ ‹
;ΆΆ‹ 
object
££ 
sectionNumberobj
££ /
=
££0 1
objSqlDataReader
££2 B
[
££B C
$str
££C R
]
££R S
;
££S T#
sRRecommendedTopicsVM
¤¤ -
.
¤¤- .
SectionNumber
¤¤. ;
=
¤¤< =
sectionNumberobj
¤¤> N
is
¤¤O Q
DBNull
¤¤R X
?
¤¤Y Z
$num
¤¤[ \
:
¤¤] ^
Convert
¤¤_ f
.
¤¤f g
ToInt32
¤¤g n
(
¤¤n o
objSqlDataReader
¤¤o 
[¤¤ €
$str¤¤€ 
]¤¤ 
)¤¤ ‘
;¤¤‘ ’
object
¥¥ 
ExamIdbj
¥¥ '
=
¥¥( )
objSqlDataReader
¥¥* :
[
¥¥: ;
$str
¥¥; C
]
¥¥C D
;
¥¥D E#
sRRecommendedTopicsVM
¦¦ -
.
¦¦- .
ExamId
¦¦. 4
=
¦¦4 5
ExamIdbj
¦¦6 >
is
¦¦? A
DBNull
¦¦B H
?
¦¦I J
$num
¦¦J K
:
¦¦K L
Convert
¦¦M T
.
¦¦T U
ToInt32
¦¦U \
(
¦¦\ ]
objSqlDataReader
¦¦] m
[
¦¦m n
$str
¦¦n v
]
¦¦v w
)
¦¦w x
;
¦¦x y'
sRRecommendedTopicsVMList
§§ 1
.
§§1 2
Add
§§2 5
(
§§5 6#
sRRecommendedTopicsVM
§§6 K
)
§§K L
;
§§L M
}
¨¨ 
}
©© 
}
ªª 
return
¬¬ '
sRRecommendedTopicsVMList
¬¬ ,
;
¬¬, -
}
­­ 	
public
°° 
static
°° 
List
°° 
<
°° )
SRRecommendedTopicsExportVM
°° 6
>
°°6 7*
GetRecommendedTopicsExportSR
°°8 T
(
°°T U
int
°°U X
ExamId
°°Y _
)
°°_ `
{
±± 	
List
²² 
<
²² )
SRRecommendedTopicsExportVM
²² ,
>
²², -
	topicList
²². 7
=
²²8 9
new
²²: =
List
²²> B
<
²²B C)
SRRecommendedTopicsExportVM
²²C ^
>
²²^ _
(
²²_ `
)
²²` a
;
²²a b
DataSet
³³ 
ds
³³ 
=
³³ 
new
³³ 
DataSet
³³ $
(
³³$ %
)
³³% &
;
³³& '
using
΄΄ 
(
΄΄ 
SqlConnection
΄΄  
conn
΄΄! %
=
΄΄& '
new
΄΄( +
SqlConnection
΄΄, 9
(
΄΄9 :"
ConfigurationManager
΄΄: N
.
΄΄N O
ConnectionStrings
΄΄O `
[
΄΄` a
$str
΄΄a r
]
΄΄r s
.
΄΄s t
ConnectionString΄΄t „
)΄΄„ …
)΄΄… †
{
µµ 

SqlCommand
¶¶ 
sqlComm
¶¶ "
=
¶¶# $
new
¶¶% (

SqlCommand
¶¶) 3
(
¶¶3 4
$str
¶¶4 [
,
¶¶[ \
conn
¶¶] a
)
¶¶a b
;
¶¶b c
sqlComm
·· 
.
·· 
CommandType
·· #
=
··$ %
CommandType
··& 1
.
··1 2
StoredProcedure
··2 A
;
··A B
sqlComm
ΈΈ 
.
ΈΈ 
CommandTimeout
ΈΈ &
=
ΈΈ' (
$num
ΈΈ) +
;
ΈΈ+ ,
SqlDataAdapter
ΉΉ 
da
ΉΉ !
=
ΉΉ" #
new
ΉΉ$ '
SqlDataAdapter
ΉΉ( 6
(
ΉΉ6 7
)
ΉΉ7 8
;
ΉΉ8 9
da
ΊΊ 
.
ΊΊ 
SelectCommand
ΊΊ  
=
ΊΊ! "
sqlComm
ΊΊ# *
;
ΊΊ* +
da
»» 
.
»» 
Fill
»» 
(
»» 
ds
»» 
)
»» 
;
»» 
conn
ΌΌ 
.
ΌΌ 
Dispose
ΌΌ 
(
ΌΌ 
)
ΌΌ 
;
ΌΌ 
}
½½ 
for
ΏΏ 
(
ΏΏ 
int
ΏΏ 
i
ΏΏ 
=
ΏΏ 
$num
ΏΏ 
;
ΏΏ 
i
ΏΏ 
<
ΏΏ 
ds
ΏΏ  "
.
ΏΏ" #
Tables
ΏΏ# )
[
ΏΏ) *
$num
ΏΏ* +
]
ΏΏ+ ,
.
ΏΏ, -
Rows
ΏΏ- 1
.
ΏΏ1 2
Count
ΏΏ2 7
;
ΏΏ7 8
i
ΏΏ9 :
++
ΏΏ: <
)
ΏΏ< =
{
ΐΐ )
SRRecommendedTopicsExportVM
ΑΑ +
topicListBO
ΑΑ, 7
=
ΑΑ8 9
new
ΑΑ: =)
SRRecommendedTopicsExportVM
ΑΑ> Y
(
ΑΑY Z
)
ΑΑZ [
;
ΑΑ[ \
topicListBO
ΒΒ 
.
ΒΒ 
SectionName
ΒΒ '
=
ΒΒ( )
Convert
ΒΒ* 1
.
ΒΒ1 2
ToString
ΒΒ2 :
(
ΒΒ: ;
ds
ΒΒ; =
.
ΒΒ= >
Tables
ΒΒ> D
[
ΒΒD E
$num
ΒΒE F
]
ΒΒF G
.
ΒΒG H
Rows
ΒΒH L
[
ΒΒL M
i
ΒΒM N
]
ΒΒN O
[
ΒΒO P
$str
ΒΒP ]
]
ΒΒ] ^
)
ΒΒ^ _
;
ΒΒ_ `
topicListBO
ΓΓ 
.
ΓΓ 
ChapterName
ΓΓ '
=
ΓΓ( )
Convert
ΓΓ* 1
.
ΓΓ1 2
ToString
ΓΓ2 :
(
ΓΓ: ;
ds
ΓΓ; =
.
ΓΓ= >
Tables
ΓΓ> D
[
ΓΓD E
$num
ΓΓE F
]
ΓΓF G
.
ΓΓG H
Rows
ΓΓH L
[
ΓΓL M
i
ΓΓM N
]
ΓΓN O
[
ΓΓO P
$str
ΓΓP ]
]
ΓΓ] ^
)
ΓΓ^ _
;
ΓΓ_ `
topicListBO
ΔΔ 
.
ΔΔ 
	TopicName
ΔΔ %
=
ΔΔ& '
Convert
ΔΔ( /
.
ΔΔ/ 0
ToString
ΔΔ0 8
(
ΔΔ8 9
ds
ΔΔ9 ;
.
ΔΔ; <
Tables
ΔΔ< B
[
ΔΔB C
$num
ΔΔC D
]
ΔΔD E
.
ΔΔE F
Rows
ΔΔF J
[
ΔΔJ K
i
ΔΔK L
]
ΔΔL M
[
ΔΔM N
$str
ΔΔN Y
]
ΔΔY Z
)
ΔΔZ [
;
ΔΔ[ \
	topicList
ΕΕ 
.
ΕΕ 
Add
ΕΕ 
(
ΕΕ 
topicListBO
ΕΕ )
)
ΕΕ) *
;
ΕΕ* +
}
ΖΖ 
return
ΘΘ 
	topicList
ΘΘ 
;
ΘΘ 
}
ΙΙ 	
public
ΛΛ 
static
ΛΛ 
int
ΛΛ $
DeleteRecommendedTopic
ΛΛ 0
(
ΛΛ0 1*
SRRecommendedTopicsDeletedVM
ΛΛ1 M!
delRecommendedTopic
ΛΛN a
)
ΛΛa b
{
ΜΜ 	
SqlParameter
ΝΝ 
[
ΝΝ 
]
ΝΝ 
arrSqlParameter
ΝΝ *
=
ΝΝ+ ,
{
ΞΞ 
new
ΟΟ 
SqlParameter
ΟΟ $
(
ΟΟ$ %
$str
ΟΟ% 3
,
ΟΟ3 4!
delRecommendedTopic
ΟΟ5 H
.
ΟΟH I
SectionName
ΟΟI T
)
ΟΟT U
,
ΟΟU V
new
ΠΠ 
SqlParameter
ΠΠ $
(
ΠΠ$ %
$str
ΠΠ% 3
,
ΠΠ3 4!
delRecommendedTopic
ΠΠ5 H
.
ΠΠH I
ChapterName
ΠΠI T
)
ΠΠT U
,
ΠΠU V
new
ΡΡ 
SqlParameter
ΡΡ $
(
ΡΡ$ %
$str
ΡΡ% 1
,
ΡΡ1 2!
delRecommendedTopic
ΡΡ3 F
.
ΡΡF G
	TopicName
ΡΡG P
)
ΡΡP Q
,
ΡΡQ R
new
ÒÒ 
SqlParameter
ÒÒ $
(
ÒÒ$ %
$str
ÒÒ% .
,
ÒÒ. /!
delRecommendedTopic
ÒÒ0 C
.
ÒÒC D
UserId
ÒÒD J
)
ÒÒJ K
,
ÒÒK L
new
ΣΣ 
SqlParameter
ΣΣ $
(
ΣΣ$ %
$str
ΣΣ% .
,
ΣΣ. /!
delRecommendedTopic
ΣΣ0 C
.
ΣΣC D
ExamId
ΣΣD J
)
ΣΣJ K
,
ΣΣK L
new
ΤΤ 
SqlParameter
ΤΤ $
(
ΤΤ$ %
$str
ΤΤ% *
,
ΤΤ* +
	SqlDbType
ΤΤ, 5
.
ΤΤ5 6
Int
ΤΤ6 9
)
ΤΤ9 :
}
ΥΥ 
;
ΥΥ 
arrSqlParameter
ΦΦ 
[
ΦΦ 
arrSqlParameter
ΦΦ +
.
ΦΦ+ ,
Length
ΦΦ, 2
-
ΦΦ3 4
$num
ΦΦ5 6
]
ΦΦ6 7
.
ΦΦ7 8
	Direction
ΦΦ8 A
=
ΦΦB C 
ParameterDirection
ΦΦD V
.
ΦΦV W
Output
ΦΦW ]
;
ΦΦ] ^
	SqlHelper
ΧΧ 
.
ΧΧ 
ExecuteNonQuery
ΧΧ %
(
ΧΧ% &#
SqlConnectionProvider
ΧΧ& ;
.
ΧΧ; <!
GetConnectionString
ΧΧ< O
(
ΧΧO P
DataAccessType
ΧΧP ^
.
ΧΧ^ _
Write
ΧΧ_ d
)
ΧΧd e
,
ΧΧe f
CommandType
ΧΧg r
.
ΧΧr s
StoredProcedureΧΧs ‚
,ΧΧ‚ ƒ
$strΧΧ„ 
,ΧΧ 
arrSqlParameterΧΧ ®
)ΧΧ® ―
;ΧΧ― °
return
ΨΨ 
int
ΨΨ 
.
ΨΨ 
Parse
ΨΨ 
(
ΨΨ 
arrSqlParameter
ΨΨ ,
[
ΨΨ, -
arrSqlParameter
ΨΨ- <
.
ΨΨ< =
Length
ΨΨ= C
-
ΨΨD E
$num
ΨΨF G
]
ΨΨG H
.
ΨΨH I
Value
ΨΨI N
.
ΨΨN O
ToString
ΨΨO W
(
ΨΨW X
)
ΨΨX Y
)
ΨΨY Z
;
ΨΨZ [
}
ΩΩ 	
}
ΪΪ 
}ΫΫ ©/
dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\SpecialityDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
SpecialityDAL %
{ 
public 
static 
List 
< !
SubSpecialityDetailVM 0
>0 1
GetSpecialityList2 C
(C D
intD G
?G H
userIdI O
)O P
{ 	
SqlParameter 
[ 
] 
arrSqlParameter *
=+ ,
{ 
new 
SqlParameter $
($ %
$str% .
,. /
Convert0 7
.7 8
ToInt328 ?
(? @
userId@ F
)F G
)G H
,H I
} 
; 
List 
< !
SubSpecialityDetailVM &
>& '
lstSpeciality( 5
=6 7
new8 ;
List< @
<@ A!
SubSpecialityDetailVMA V
>V W
(W X
)X Y
;Y Z
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ‘
,
‘ ’
arrSqlParameter
“ Ά
)
Ά £
)
£ ¤
{ 
if 
( 
objSqlDataReader $
.$ %
HasRows% ,
), -
{ 
while 
( 
objSqlDataReader +
.+ ,
Read, 0
(0 1
)1 2
)2 3
{ !
SubSpecialityDetailVM -
objSpecialityBO. =
=> ?
new@ C!
SubSpecialityDetailVMD Y
(Y Z
)Z [
;[ \
object 
subspecialtyIdCount 2
=3 4
objSqlDataReader5 E
[E F
$strF V
]V W
;W X
objSpecialityBO '
.' (
SpecialityId( 4
=5 6
subspecialtyIdCount7 J
isK M
DBNullN T
?U V
$numW X
:Y Z
Convert[ b
.b c
ToInt32c j
(j k
objSqlDataReaderk {
[{ |
$str	| 
]
 
)
 
;
 
object   
subspecialtyCount   0
=  1 2
objSqlDataReader  3 C
[  C D
$str  D R
]  R S
;  S T
objSpecialityBO!! '
.!!' (
SpecialityName!!( 6
=!!7 8
subspecialtyCount!!9 J
is!!K M
DBNull!!N T
?!!U V
string!!W ]
.!!] ^
Empty!!^ c
:!!d e
Convert!!f m
.!!m n
ToString!!n v
(!!v w
objSqlDataReader	!!w ‡
[
!!‡ 
$str
!! –
]
!!– —
)
!!— 
;
!! ™
object"" '
examSkipQuestionCountsCount"" :
=""; <
objSqlDataReader""= M
[""M N
$str""N f
]""f g
;""g h
objSpecialityBO## '
.##' (!
ExamSkipQuestionCount##( =
=##> ?'
examSkipQuestionCountsCount##@ [
is##\ ^
DBNull##_ e
?##f g
$num##h i
:##j k
Convert##l s
.##s t
ToInt32##t {
(##{ |
objSqlDataReader	##| 
[
## 
$str
## ¥
]
##¥ ¦
)
##¦ §
;
##§ ¨
object$$ &
incorrectAsnwerCountsCount$$ 9
=$$: ;
objSqlDataReader$$< L
[$$L M
$str$$M d
]$$d e
;$$e f
objSpecialityBO%% '
.%%' ( 
IncorrectAsnwerCount%%( <
=%%= >&
incorrectAsnwerCountsCount%%? Y
is%%Z \
DBNull%%] c
?%%d e
$num%%f g
:%%h i
Convert%%j q
.%%q r
ToInt32%%r y
(%%y z
objSqlDataReader	%%z 
[
%% ‹
$str
%%‹ Ά
]
%%Ά £
)
%%£ ¤
;
%%¤ ¥
object&& #
markQuestionCountsCount&& 6
=&&7 8
objSqlDataReader&&9 I
[&&I J
$str&&J ^
]&&^ _
;&&_ `
objSpecialityBO'' '
.''' (
MarkQuestionCount''( 9
='': ;#
markQuestionCountsCount''< S
is''T V
DBNull''W ]
?''^ _
$num''` a
:''b c
Convert''d k
.''k l
ToInt32''l s
(''s t
objSqlDataReader	''t „
[
''„ …
$str
''… ™
]
''™ 
)
'' ›
;
''› 
object(( 
totalCountsCount(( /
=((0 1
objSqlDataReader((2 B
[((B C
$str((C O
]((O P
;((P Q
objSpecialityBO)) '
.))' (

TotalCount))( 2
=))3 4
totalCountsCount))5 E
is))F H
DBNull))I O
?))P Q
$num))R S
:))T U
Convert))V ]
.))] ^
ToInt32))^ e
())e f
objSqlDataReader))f v
[))v w
$str	))w ƒ
]
))ƒ „
)
))„ …
;
))… †
lstSpeciality** %
.**% &
Add**& )
(**) *
objSpecialityBO*** 9
)**9 :
;**: ;
}++ 
objSqlDataReader-- $
.--$ %
Close--% *
(--* +
)--+ ,
;--, -
}.. 
}// 
return11 
lstSpeciality11  
;11  !
}22 	
}33 
}44 Ρ
^D:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\UserDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
UserDAL 
{ 
public 
static 
List 
< 
UserDTO "
>" #
GetByUserID$ /
(/ 0
int0 3
userId4 :
): ;
{ 	
List 
< 
UserDTO 
> 
lstUser !
=" #
new$ '
List( ,
<, -
UserDTO- 4
>4 5
(5 6
)6 7
;7 8
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA J
,J K
userIdL R
)R S
,S T
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$strm 
,	 €
objSqlParameter
 
)
 ‘
)
‘ ’
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
UserDTO 
	objUserBO %
=& '
new( +
UserDTO, 3
(3 4
)4 5
;5 6
	objUserBO 
. 
UserId $
=% &
Convert' .
.. /
ToInt32/ 6
(6 7
objSqlDataReader7 G
[G H
$strH P
]P Q
)Q R
;R S
	objUserBO 
. 
	FirstName '
=( )
Convert* 1
.1 2
ToString2 :
(: ;
objSqlDataReader; K
[K L
$strL W
]W X
)X Y
;Y Z
	objUserBO 
. 
LastName &
=' (
Convert) 0
.0 1
ToString1 9
(9 :
objSqlDataReader: J
[J K
$strK U
]U V
)V W
;W X
	objUserBO 
. 
	UserEmail '
=( )
Convert* 1
.1 2
ToString2 :
(: ;
objSqlDataReader; K
[K L
$strL S
]S T
)T U
;U V
	objUserBO   
.   
RegTime   %
=  & '
(  ( )
DateTime  ) 1
)  1 2
objSqlDataReader  2 B
[  B C
$str  C L
]  L M
;  M N
	objUserBO!! 
.!! 
Role!! "
=!!# $
Convert!!% ,
.!!, -
ToString!!- 5
(!!5 6
objSqlDataReader!!6 F
[!!F G
$str!!G M
]!!M N
)!!N O
;!!O P
	objUserBO"" 
."" 
isLoggedFirst"" +
="", -
("". /
bool""/ 3
)""3 4
objSqlDataReader""4 D
[""D E
$str""E T
]""T U
;""U V
object## 
renewalMessageObj## ,
=##- .
objSqlDataReader##/ ?
[##? @
$str##@ P
]##P Q
;##Q R
	objUserBO$$ 
.$$ 
RenewalMessage$$ ,
=$$- .
renewalMessageObj$$/ @
is$$A C
DBNull$$D J
?$$K L
null$$M Q
:$$R S
Convert$$T [
.$$[ \
ToString$$\ d
($$d e
objSqlDataReader$$e u
[$$u v
$str	$$v †
]
$$† ‡
)
$$‡ 
;
$$ ‰
object%% 
renewalLinkObj%% )
=%%* +
objSqlDataReader%%, <
[%%< =
$str%%= J
]%%J K
;%%K L
lstUser&& 
.&& 
Add&& 
(&&  
	objUserBO&&  )
)&&) *
;&&* +
}'' 
}(( 
return** 
lstUser** 
;** 
}++ 	
public-- 
static-- 
List-- 
<-- 
UserDataDTO-- &
>--& '
GetByUserData--( 5
(--5 6
int--6 9
userId--: @
)--@ A
{.. 	
List// 
<// 
UserDataDTO// 
>// 
lstUser// %
=//& '
new//( +
List//, 0
<//0 1
UserDataDTO//1 <
>//< =
(//= >
)//> ?
;//? @
SqlParameter00 
[00 
]00 
objSqlParameter00 *
=00+ ,
{11 
new220 3
SqlParameter224 @
(22@ A
$str22A J
,22J K
userId22L R
)22R S
,22S T
}33- .
;33. /
using55 
(55 
SqlDataReader55  
objSqlDataReader55! 1
=552 3
	SqlHelper554 =
.55= >
ExecuteReader55> K
(55K L!
SqlConnectionProvider66 %
.66% &
GetConnectionString66& 9
(669 :
DataAccessType66: H
.66H I
Read66I M
)66M N
,66N O
CommandType66P [
.66[ \
StoredProcedure66\ k
,66k l
$str66m 
,	66 €
objSqlParameter
66 
)
66 ‘
)
66‘ ’
{77 
while88 
(88 
objSqlDataReader88 '
.88' (
Read88( ,
(88, -
)88- .
)88. /
{99 
UserDataDTO:: 
	objUserBO::  )
=::* +
new::, /
UserDataDTO::0 ;
(::; <
)::< =
;::= >
	objUserBO;; 
.;; 
UserId;; $
=;;% &
Convert;;' .
.;;. /
ToInt32;;/ 6
(;;6 7
objSqlDataReader;;7 G
[;;G H
$str;;H P
];;P Q
);;Q R
;;;R S
	objUserBO<< 
.<< 
	FirstName<< '
=<<( )
Convert<<* 1
.<<1 2
ToString<<2 :
(<<: ;
objSqlDataReader<<; K
[<<K L
$str<<L W
]<<W X
)<<X Y
;<<Y Z
	objUserBO== 
.== 
LastName== &
===' (
Convert==) 0
.==0 1
ToString==1 9
(==9 :
objSqlDataReader==: J
[==J K
$str==K U
]==U V
)==V W
;==W X
	objUserBO>> 
.>> 
Email>> #
=>>$ %
Convert>>& -
.>>- .
ToString>>. 6
(>>6 7
objSqlDataReader>>7 G
[>>G H
$str>>H O
]>>O P
)>>P Q
;>>Q R
	objUserBO?? 
.?? 
RegTime?? %
=??& '
(??( )
DateTime??) 1
)??1 2
objSqlDataReader??2 B
[??B C
$str??C L
]??L M
;??M N
	objUserBO@@ 
.@@ 
Role@@ "
=@@# $
Convert@@% ,
.@@, -
ToString@@- 5
(@@5 6
objSqlDataReader@@6 F
[@@F G
$str@@G M
]@@M N
)@@N O
;@@O P
	objUserBOAA 
.AA 
isLoggedFirstAA +
=AA, -
(AA. /
boolAA/ 3
)AA3 4
objSqlDataReaderAA4 D
[AAD E
$strAAE T
]AAT U
;AAU V
objectCC 
renewalMessageObjCC ,
=CC- .
objSqlDataReaderCC/ ?
[CC? @
$strCC@ P
]CCP Q
;CCQ R
	objUserBODD 
.DD 
RenewalMessageDD ,
=DD- .
renewalMessageObjDD/ @
isDDA C
DBNullDDD J
?DDK L
nullDDM Q
:DDR S
ConvertDDT [
.DD[ \
ToStringDD\ d
(DDd e
objSqlDataReaderDDe u
[DDu v
$str	DDv †
]
DD† ‡
)
DD‡ 
;
DD ‰
objectFF 
renewalLinkObjFF )
=FF* +
objSqlDataReaderFF, <
[FF< =
$strFF= J
]FFJ K
;FFK L
	objUserBOGG 
.GG 
RenewalLinkGG )
=GG* +
renewalMessageObjGG, =
isGG> @
DBNullGGA G
?GGH I
nullGGJ N
:GGO P
ConvertGGQ X
.GGX Y
ToStringGGY a
(GGa b
objSqlDataReaderGGb r
[GGr s
$str	GGs €
]
GG€ 
)
GG ‚
;
GG‚ ƒ
lstUserHH 
.HH 
AddHH 
(HH  
	objUserBOHH  )
)HH) *
;HH* +
}II 
}JJ 
returnLL 
lstUserLL 
;LL 
}MM 	
publicOO 
staticOO 
ListOO 
<OO 
UserDTOOO "
>OO" #
GetUsersOO$ ,
(OO, -
)OO- .
{PP 	
ListQQ 
<QQ 
UserDTOQQ 
>QQ 
lstUserQQ !
=QQ" #
newQQ$ '
ListQQ( ,
<QQ, -
UserDTOQQ- 4
>QQ4 5
(QQ5 6
)QQ6 7
;QQ7 8
usingRR 
(RR 
SqlDataReaderRR  
objSqlDataReaderRR! 1
=RR2 3
	SqlHelperRR4 =
.RR= >
ExecuteReaderRR> K
(RRK L!
SqlConnectionProviderSS %
.SS% &
GetConnectionStringSS& 9
(SS9 :
DataAccessTypeSS: H
.SSH I
ReadSSI M
)SSM N
,SSN O
CommandTypeSSP [
.SS[ \
StoredProcedureSS\ k
,SSk l
$strSSm {
)SS{ |
)SS| }
{TT 
whileUU 
(UU 
objSqlDataReaderUU '
.UU' (
ReadUU( ,
(UU, -
)UU- .
)UU. /
{VV 
UserDTOWW 
	objUserBOWW %
=WW& '
newWW( +
UserDTOWW, 3
(WW3 4
)WW4 5
;WW5 6
	objUserBOXX 
.XX 
UserIdXX $
=XX% &
ConvertXX' .
.XX. /
ToInt32XX/ 6
(XX6 7
objSqlDataReaderXX7 G
[XXG H
$strXXH P
]XXP Q
)XXQ R
;XXR S
	objUserBOYY 
.YY 
	FirstNameYY '
=YY( )
ConvertYY* 1
.YY1 2
ToStringYY2 :
(YY: ;
objSqlDataReaderYY; K
[YYK L
$strYYL W
]YYW X
)YYX Y
;YYY Z
	objUserBOZZ 
.ZZ 
LastNameZZ &
=ZZ' (
ConvertZZ) 0
.ZZ0 1
ToStringZZ1 9
(ZZ9 :
objSqlDataReaderZZ: J
[ZZJ K
$strZZK U
]ZZU V
)ZZV W
;ZZW X
	objUserBO[[ 
.[[ $
ProgramDirectorProgramID[[ 6
=[[7 8
Convert[[9 @
.[[@ A
ToInt32[[A H
([[H I
objSqlDataReader[[I Y
[[[Y Z
$str[[Z t
][[t u
)[[u v
;[[v w
	objUserBO\\ 
.\\ 
IsActive\\ &
=\\' (
(\\) *
bool\\* .
)\\. /
objSqlDataReader\\/ ?
[\\? @
$str\\@ J
]\\J K
;\\K L
	objUserBO]] 
.]] 
RegTime]] %
=]]& '
(]]( )
DateTime]]) 1
)]]1 2
objSqlDataReader]]2 B
[]]B C
$str]]C L
]]]L M
;]]M N
	objUserBO^^ 
.^^ 
Role^^ "
=^^# $
Convert^^% ,
.^^, -
ToString^^- 5
(^^5 6
objSqlDataReader^^6 F
[^^F G
$str^^G M
]^^M N
)^^N O
;^^O P
	objUserBO__ 
.__ 
isLoggedFirst__ +
=__, -
(__. /
bool__/ 3
)__3 4
objSqlDataReader__4 D
[__D E
$str__E T
]__T U
;__U V
lstUser`` 
.`` 
Add`` 
(``  
	objUserBO``  )
)``) *
;``* +
}aa 
}bb 
returndd 
lstUserdd 
;dd 
}ee 	
publicgg 
staticgg 
Listgg 
<gg 
UserDTOgg "
>gg" #
ValidateUsergg$ 0
(gg0 1
stringgg1 7
userNamegg8 @
,gg@ A
stringggB H
passwordggI Q
)ggQ R
{hh 	
Listii 
<ii 
UserDTOii 
>ii 
lstUserii !
=ii" #
newii$ '
Listii( ,
<ii, -
UserDTOii- 4
>ii4 5
(ii5 6
)ii6 7
;ii7 8
SqlParameterjj 
[jj 
]jj 
objSqlParameterjj *
=jj+ ,
{kk 
newll0 3
SqlParameterll4 @
(ll@ A
$strllA L
,llL M
userNamellN V
)llV W
,llW X
newmm0 3
SqlParametermm4 @
(mm@ A
$strmmA L
,mmL M
passwordmmN V
)mmV W
,mmW X
}nn- .
;nn. /
usingpp 
(pp 
SqlDataReaderpp  
objSqlDataReaderpp! 1
=pp2 3
	SqlHelperpp4 =
.pp= >
ExecuteReaderpp> K
(ppK L!
SqlConnectionProviderqq %
.qq% &
GetConnectionStringqq& 9
(qq9 :
DataAccessTypeqq: H
.qqH I
ReadqqI M
)qqM N
,qqN O
CommandTypeqqP [
.qq[ \
StoredProcedureqq\ k
,qqk l
$strqqm 
,	qq €
objSqlParameter
qq 
)
qq ‘
)
qq‘ ’
{rr 
whiless 
(ss 
objSqlDataReaderss '
.ss' (
Readss( ,
(ss, -
)ss- .
)ss. /
{tt 
UserDTOuu 
objCandidateBOuu *
=uu+ ,
newuu- 0
UserDTOuu1 8
(uu8 9
)uu9 :
;uu: ;
objCandidateBOvv "
.vv" #
UserIdvv# )
=vv* +
Convertvv, 3
.vv3 4
ToInt32vv4 ;
(vv; <
objSqlDataReadervv< L
[vvL M
$strvvM U
]vvU V
)vvV W
;vvW X
objCandidateBOww "
.ww" #
	FirstNameww# ,
=ww- .
Convertww/ 6
.ww6 7
ToStringww7 ?
(ww? @
objSqlDataReaderww@ P
[wwP Q
$strwwQ \
]ww\ ]
)ww] ^
;ww^ _
objCandidateBOxx "
.xx" #
LastNamexx# +
=xx, -
Convertxx. 5
.xx5 6
ToStringxx6 >
(xx> ?
objSqlDataReaderxx? O
[xxO P
$strxxP Z
]xxZ [
)xx[ \
;xx\ ]
objCandidateBOyy "
.yy" #
	UserEmailyy# ,
=yy- .
Convertyy/ 6
.yy6 7
ToStringyy7 ?
(yy? @
objSqlDataReaderyy@ P
[yyP Q
$stryyQ X
]yyX Y
)yyY Z
;yyZ [
objCandidateBOzz "
.zz" #$
ProgramDirectorProgramIDzz# ;
=zz< =
Convertzz> E
.zzE F
ToInt32zzF M
(zzM N
objSqlDataReaderzzN ^
[zz^ _
$strzz_ y
]zzy z
)zzz {
;zz{ |
objCandidateBO{{ "
.{{" #
RegTime{{# *
={{+ ,
({{- .
DateTime{{. 6
){{6 7
objSqlDataReader{{7 G
[{{G H
$str{{H Q
]{{Q R
;{{R S
objCandidateBO|| "
.||" #
Role||# '
=||( )
Convert||* 1
.||1 2
ToString||2 :
(||: ;
objSqlDataReader||; K
[||K L
$str||L R
]||R S
)||S T
;||T U
objCandidateBO}} "
.}}" #
isLoggedFirst}}# 0
=}}1 2
(}}3 4
bool}}4 8
)}}8 9
objSqlDataReader}}9 I
[}}I J
$str}}J Y
]}}Y Z
;}}Z [
lstUser~~ 
.~~ 
Add~~ 
(~~  
objCandidateBO~~  .
)~~. /
;~~/ 0
} 
}
€€ 
return
‚‚ 
lstUser
‚‚ 
;
‚‚ 
}
ƒƒ 	
public
†† 
static
†† 
string
†† 
GetUserByRole
†† *
(
††* +
string
††+ 1
userName
††2 :
)
††: ;
{
‡‡ 	
string
 
role
 
=
 
string
  
.
  !
Empty
! &
;
& '
List
‰‰ 
<
‰‰ 
UserDTO
‰‰ 
>
‰‰ 
lstUser
‰‰ !
=
‰‰" #
new
‰‰$ '
List
‰‰( ,
<
‰‰, -
UserDTO
‰‰- 4
>
‰‰4 5
(
‰‰5 6
)
‰‰6 7
;
‰‰7 8
SqlParameter
 
[
 
]
 
objSqlParameter
 *
=
+ ,
{
‹‹ 
new
0 3
SqlParameter
4 @
(
@ A
$str
A L
,
L M
userName
N V
)
V W
,
W X
}
- .
;
. /
using
 
(
 
SqlDataReader
  
objSqlDataReader
! 1
=
2 3
	SqlHelper
4 =
.
= >
ExecuteReader
> K
(
K L#
SqlConnectionProvider
 %
.
% &!
GetConnectionString
& 9
(
9 :
DataAccessType
: H
.
H I
Read
I M
)
M N
,
N O
CommandType
P [
.
[ \
StoredProcedure
\ k
,
k l
$strm „
,„ …
objSqlParameter† •
)• –
)– —
{
‘‘ 
while
’’ 
(
’’ 
objSqlDataReader
’’ '
.
’’' (
Read
’’( ,
(
’’, -
)
’’- .
)
’’. /
{
““ 
role
”” 
=
”” 
Convert
”” "
.
””" #
ToString
””# +
(
””+ ,
objSqlDataReader
””, <
[
””< =
$str
””= C
]
””C D
)
””D E
;
””E F
}
•• 
}
–– 
return
™™ 
role
™™ 
;
™™ 
}
 	
public
 
static
 
int
 

CreateUser
 $
(
$ %
UserDTO
% ,
objUser
- 4
)
4 5
{
 	
SqlParameter
 
[
 
]
 
arrSqlParameter
 *
=
+ ,
{
 
new
  . 1
SqlParameter
  2 >
(
  > ?
$str
  ? J
,
  J K
objUser
  L S
.
  S T
	FirstName
  T ]
)
  ] ^
,
  ^ _
new
΅΅. 1
SqlParameter
΅΅2 >
(
΅΅> ?
$str
΅΅? J
,
΅΅J K
objUser
΅΅L S
.
΅΅S T
LastName
΅΅T \
)
΅΅\ ]
,
΅΅] ^
new
ΆΆ. 1
SqlParameter
ΆΆ2 >
(
ΆΆ> ?
$str
ΆΆ? G
,
ΆΆG H
objUser
ΆΆI P
.
ΆΆP Q
	UserEmail
ΆΆQ Z
)
ΆΆZ [
,
ΆΆ[ \
new
££. 1
SqlParameter
££2 >
(
££> ?
$str
££? J
,
££J K
$str
££L W
)
££W X
,
££X Y
new
¤¤. 1
SqlParameter
¤¤2 >
(
¤¤> ?
$str
¤¤? W
,
¤¤W X
$num
¤¤Y Z
)
¤¤Z [
,
¤¤[ \
new
¥¥. 1
SqlParameter
¥¥2 >
(
¥¥> ?
$str
¥¥? J
,
¥¥J K
$num
¥¥L M
)
¥¥M N
,
¥¥N O
new
¦¦. 1
SqlParameter
¦¦2 >
(
¦¦> ?
$str
¦¦? I
,
¦¦I J
DateTime
¦¦K S
.
¦¦S T
Now
¦¦T W
)
¦¦W X
,
¦¦X Y
new
§§. 1
SqlParameter
§§2 >
(
§§> ?
$str
§§? F
,
§§F G
$char
§§H K
)
§§K L
,
§§L M
new
¨¨. 1
SqlParameter
¨¨2 >
(
¨¨> ?
$str
¨¨? O
,
¨¨O P
$num
¨¨Q R
)
¨¨R S
,
¨¨S T
}
©© 
;
©© 
return
«« 
	SqlHelper
«« 
.
«« 
ExecuteNonQuery
«« ,
(
««, -#
SqlConnectionProvider
««- B
.
««B C!
GetConnectionString
««C V
(
««V W
DataAccessType
««W e
.
««e f
Write
««f k
)
««k l
,
««l m
CommandType
««n y
.
««y z
StoredProcedure««z ‰
,««‰ 
$str««‹ ›
,««› 
arrSqlParameter«« ¬
)««¬ ­
;««­ ®
}
¬¬ 	
public
®® 
static
®® 
int
®® 
UpdateUsers
®® %
(
®®% &
UserDTO
®®& -
objUser
®®. 5
)
®®5 6
{
―― 	
SqlParameter
°° 
[
°° 
]
°° 
arrSqlParameter
°° *
=
°°+ ,
{
±± 
new
²². 1
SqlParameter
²²2 >
(
²²> ?
$str
²²? O
,
²²O P
objUser
²²Q X
.
²²X Y
isLoggedFirst
²²Y f
)
²²f g
,
²²g h
new
³³. 1
SqlParameter
³³2 >
(
³³> ?
$str
³³? H
,
³³H I
objUser
³³J Q
.
³³Q R
UserId
³³R X
)
³³X Y
,
³³Y Z
}
΄΄ 
;
΄΄ 
return
¶¶ 
	SqlHelper
¶¶ 
.
¶¶ 
ExecuteNonQuery
¶¶ ,
(
¶¶, -#
SqlConnectionProvider
¶¶- B
.
¶¶B C!
GetConnectionString
¶¶C V
(
¶¶V W
DataAccessType
¶¶W e
.
¶¶e f
Write
¶¶f k
)
¶¶k l
,
¶¶l m
CommandType
¶¶n y
.
¶¶y z
StoredProcedure¶¶z ‰
,¶¶‰ 
$str¶¶‹ ›
,¶¶› 
arrSqlParameter¶¶ ¬
)¶¶¬ ­
;¶¶­ ®
}
·· 	
public
ΉΉ 
static
ΉΉ 
List
ΉΉ 
<
ΉΉ 
UserDataDTO
ΉΉ &
>
ΉΉ& '
GetOrAddUser
ΉΉ( 4
(
ΉΉ4 5

UserJsonVM
ΉΉ5 ?
userData
ΉΉ@ H
)
ΉΉH I
{
ΊΊ 	
List
»» 
<
»» 
UserDataDTO
»» 
>
»» 
lstUser
»» %
=
»»& '
new
»»( +
List
»», 0
<
»»0 1
UserDataDTO
»»1 <
>
»»< =
(
»»= >
)
»»> ?
;
»»? @
SqlParameter
ΌΌ 
[
ΌΌ 
]
ΌΌ 
arrSqlParameter
ΌΌ *
=
ΌΌ+ ,
{
½½ 
new
ΎΎ 
SqlParameter
ΎΎ %
(
ΎΎ% &
$str
ΎΎ& 9
,
ΎΎ9 :
userData
ΎΎ; C
.
ΎΎC D
MasterCustomerId
ΎΎD T
)
ΎΎT U
,
ΎΎU V
new
ΏΏ 
SqlParameter
ΏΏ %
(
ΏΏ% &
$str
ΏΏ& 2
,
ΏΏ2 3
userData
ΏΏ4 <
.
ΏΏ< =
	FirstName
ΏΏ= F
)
ΏΏF G
,
ΏΏG H
new
ΐΐ 
SqlParameter
ΐΐ %
(
ΐΐ% &
$str
ΐΐ& 1
,
ΐΐ1 2
userData
ΐΐ3 ;
.
ΐΐ; <
LastName
ΐΐ< D
)
ΐΐD E
,
ΐΐE F
new
ΑΑ 
SqlParameter
ΑΑ %
(
ΑΑ% &
$str
ΑΑ& 7
,
ΑΑ7 8
userData
ΑΑ9 A
.
ΑΑA B
ResidencyStart
ΑΑB P
)
ΑΑP Q
,
ΑΑQ R
new
ΒΒ 
SqlParameter
ΒΒ %
(
ΒΒ% &
$str
ΒΒ& 5
,
ΒΒ5 6
userData
ΒΒ7 ?
.
ΒΒ? @
ResidencyEnd
ΒΒ@ L
)
ΒΒL M
,
ΒΒM N
new
ΓΓ 
SqlParameter
ΓΓ %
(
ΓΓ% &
$str
ΓΓ& =
,
ΓΓ= >
userData
ΓΓ? G
.
ΓΓG H"
ResidencyProgramName
ΓΓH \
)
ΓΓ\ ]
,
ΓΓ] ^
new
ΔΔ 
SqlParameter
ΔΔ %
(
ΔΔ% &
$str
ΔΔ& ;
,
ΔΔ; <
userData
ΔΔ= E
.
ΔΔE F 
ResidencyProgramId
ΔΔF X
)
ΔΔX Y
,
ΔΔY Z
new
ΕΕ 
SqlParameter
ΕΕ %
(
ΕΕ% &
$str
ΕΕ& C
,
ΕΕC D
userData
ΕΕE M
.
ΕΕM N(
ProgramDirectorProgramName
ΕΕN h
)
ΕΕh i
,
ΕΕi j
new
ΖΖ 
SqlParameter
ΖΖ %
(
ΖΖ% &
$str
ΖΖ& A
,
ΖΖA B
userData
ΖΖC K
.
ΖΖK L&
ProgramDirectorProgramId
ΖΖL d
)
ΖΖd e
,
ΖΖe f
new
ΗΗ 
SqlParameter
ΗΗ %
(
ΗΗ% &
$str
ΗΗ& .
,
ΗΗ. /
userData
ΗΗ0 8
.
ΗΗ8 9
PrimaryEmail
ΗΗ9 E
)
ΗΗE F
,
ΗΗF G
new
ΘΘ 
SqlParameter
ΘΘ %
(
ΘΘ% &
$str
ΘΘ& 7
,
ΘΘ7 8
userData
ΘΘ9 A
.
ΘΘA B
RenewalMessage
ΘΘB P
)
ΘΘP Q
,
ΘΘQ R
new
ΙΙ 
SqlParameter
ΙΙ %
(
ΙΙ% &
$str
ΙΙ& 4
,
ΙΙ4 5
userData
ΙΙ6 >
.
ΙΙ> ?
RenewalLink
ΙΙ? J
)
ΙΙJ K
,
ΙΙK L
}
ΚΚ 
;
ΚΚ 
using
ΛΛ 
(
ΛΛ 
SqlDataReader
ΛΛ  
objSqlDataReader
ΛΛ! 1
=
ΛΛ2 3
	SqlHelper
ΛΛ4 =
.
ΛΛ= >
ExecuteReader
ΛΛ> K
(
ΛΛK L#
SqlConnectionProvider
ΜΜ %
.
ΜΜ% &!
GetConnectionString
ΜΜ& 9
(
ΜΜ9 :
DataAccessType
ΜΜ: H
.
ΜΜH I
Read
ΜΜI M
)
ΜΜM N
,
ΜΜN O
CommandType
ΜΜP [
.
ΜΜ[ \
StoredProcedure
ΜΜ\ k
,
ΜΜk l
$str
ΜΜm {
,
ΜΜ{ |
arrSqlParameterΜΜ} 
)ΜΜ 
)ΜΜ 
{
ΝΝ 
while
ΞΞ 
(
ΞΞ 
objSqlDataReader
ΞΞ '
.
ΞΞ' (
Read
ΞΞ( ,
(
ΞΞ, -
)
ΞΞ- .
)
ΞΞ. /
{
ΟΟ 
UserDataDTO
ΠΠ 
	objUserBO
ΠΠ  )
=
ΠΠ* +
new
ΠΠ, /
UserDataDTO
ΠΠ0 ;
(
ΠΠ; <
)
ΠΠ< =
;
ΠΠ= >
	objUserBO
ΡΡ 
.
ΡΡ 
UserId
ΡΡ $
=
ΡΡ% &
Convert
ΡΡ' .
.
ΡΡ. /
ToInt32
ΡΡ/ 6
(
ΡΡ6 7
objSqlDataReader
ΡΡ7 G
[
ΡΡG H
$str
ΡΡH P
]
ΡΡP Q
)
ΡΡQ R
;
ΡΡR S
	objUserBO
ÒÒ 
.
ÒÒ 
MasterCustomerId
ÒÒ .
=
ÒÒ/ 0
Convert
ÒÒ1 8
.
ÒÒ8 9
ToString
ÒÒ9 A
(
ÒÒA B
objSqlDataReader
ÒÒB R
[
ÒÒR S
$str
ÒÒS e
]
ÒÒe f
)
ÒÒf g
;
ÒÒg h
	objUserBO
ΣΣ 
.
ΣΣ 
	FirstName
ΣΣ '
=
ΣΣ( )
Convert
ΣΣ* 1
.
ΣΣ1 2
ToString
ΣΣ2 :
(
ΣΣ: ;
objSqlDataReader
ΣΣ; K
[
ΣΣK L
$str
ΣΣL W
]
ΣΣW X
)
ΣΣX Y
;
ΣΣY Z
	objUserBO
ΤΤ 
.
ΤΤ 
LastName
ΤΤ &
=
ΤΤ' (
Convert
ΤΤ) 0
.
ΤΤ0 1
ToString
ΤΤ1 9
(
ΤΤ9 :
objSqlDataReader
ΤΤ: J
[
ΤΤJ K
$str
ΤΤK U
]
ΤΤU V
)
ΤΤV W
;
ΤΤW X
object
ΦΦ 
residencyStartObj
ΦΦ ,
=
ΦΦ- .
objSqlDataReader
ΦΦ/ ?
[
ΦΦ? @
$str
ΦΦ@ P
]
ΦΦP Q
;
ΦΦQ R
if
ΧΧ 
(
ΧΧ 
residencyStartObj
ΧΧ )
is
ΧΧ* ,
DBNull
ΧΧ- 3
)
ΧΧ3 4
{
ΨΨ 
	objUserBO
ΩΩ !
.
ΩΩ! "
ResidencyStart
ΩΩ" 0
=
ΩΩ1 2
null
ΩΩ3 7
;
ΩΩ7 8
}
ΪΪ 
else
ΫΫ 
{
άά 
	objUserBO
έέ !
.
έέ! "
ResidencyStart
έέ" 0
=
έέ1 2
(
έέ3 4
DateTime
έέ4 <
)
έέ< =
(
έέ= >
objSqlDataReader
έέ> N
[
έέN O
$str
έέO _
]
έέ_ `
)
έέ` a
;
έέa b
}
ήή 
object
ΰΰ 
residencyEndObj
ΰΰ *
=
ΰΰ+ ,
objSqlDataReader
ΰΰ- =
[
ΰΰ= >
$str
ΰΰ> L
]
ΰΰL M
;
ΰΰM N
if
αα 
(
αα 
residencyEndObj
αα '
is
αα( *
DBNull
αα+ 1
)
αα1 2
{
ββ 
	objUserBO
γγ !
.
γγ! "
ResidencyEnd
γγ" .
=
γγ/ 0
null
γγ1 5
;
γγ5 6
}
δδ 
else
εε 
{
ζζ 
	objUserBO
ηη !
.
ηη! "
ResidencyEnd
ηη" .
=
ηη/ 0
(
ηη1 2
DateTime
ηη2 :
)
ηη: ;
objSqlDataReader
ηη; K
[
ηηK L
$str
ηηL Z
]
ηηZ [
;
ηη[ \
}
θθ 
object
κκ %
residencyProgramNameObj
κκ 2
=
κκ3 4
objSqlDataReader
κκ5 E
[
κκE F
$str
κκF \
]
κκ\ ]
;
κκ] ^
	objUserBO
λλ 
.
λλ "
ResidencyProgramName
λλ 2
=
λλ3 4%
residencyProgramNameObj
λλ5 L
is
λλM O
DBNull
λλP V
?
λλW X
null
λλY ]
:
λλ^ _
Convert
λλ` g
.
λλg h
ToString
λλh p
(
λλp q
objSqlDataReaderλλq 
[λλ ‚
$strλλ‚ 
]λλ ™
)λλ™ 
;λλ ›
object
μμ #
residencyProgramIDObj
μμ 0
=
μμ1 2
objSqlDataReader
μμ3 C
[
μμC D
$str
μμD X
]
μμX Y
;
μμY Z
	objUserBO
νν 
.
νν  
ResidencyProgramId
νν 0
=
νν1 2#
residencyProgramIDObj
νν3 H
is
ννI K
DBNull
ννL R
?
ννS T
null
ννU Y
:
ννZ [
Convert
νν\ c
.
ννc d
ToString
ννd l
(
ννl m
objSqlDataReader
ννm }
[
νν} ~
$strνν~ ’
]νν’ “
)νν“ ”
;νν” •
object
ξξ +
programDirectorProgramNameObj
ξξ 8
=
ξξ9 :
objSqlDataReader
ξξ; K
[
ξξK L
$str
ξξL h
]
ξξh i
;
ξξi j
	objUserBO
οο 
.
οο (
ProgramDirectorProgramName
οο 8
=
οο9 :+
programDirectorProgramNameObj
οο; X
is
οοY [
DBNull
οο\ b
?
οοc d
null
οοe i
:
οοj k
Convert
οοl s
.
οοs t
ToString
οοt |
(
οο| }
objSqlDataReaderοο} 
[οο 
$strοο ª
]οοª «
)οο« ¬
;οο¬ ­
object
ππ )
programDirectorProgramIDObj
ππ 6
=
ππ7 8
objSqlDataReader
ππ9 I
[
ππI J
$str
ππJ d
]
ππd e
;
ππe f
	objUserBO
ρρ 
.
ρρ &
ProgramDirectorProgramId
ρρ 6
=
ρρ7 8)
programDirectorProgramIDObj
ρρ9 T
is
ρρU W
DBNull
ρρX ^
?
ρρ_ `
null
ρρa e
:
ρρf g
Convert
ρρh o
.
ρρo p
ToString
ρρp x
(
ρρx y
objSqlDataReaderρρy ‰
[ρρ‰ 
$strρρ ¤
]ρρ¤ ¥
)ρρ¥ ¦
;ρρ¦ §
object
ςς 
emailObj
ςς #
=
ςς$ %
objSqlDataReader
ςς& 6
[
ςς6 7
$str
ςς7 >
]
ςς> ?
;
ςς? @
	objUserBO
σσ 
.
σσ 
Email
σσ #
=
σσ$ %
emailObj
σσ& .
is
σσ/ 1
DBNull
σσ2 8
?
σσ9 :
null
σσ; ?
:
σσ@ A
Convert
σσB I
.
σσI J
ToString
σσJ R
(
σσR S
objSqlDataReader
σσS c
[
σσc d
$str
σσd k
]
σσk l
)
σσl m
;
σσm n
	objUserBO
ττ 
.
ττ 
IsActive
ττ &
=
ττ' (
(
ττ) *
bool
ττ* .
)
ττ. /
objSqlDataReader
ττ/ ?
[
ττ? @
$str
ττ@ J
]
ττJ K
;
ττK L
	objUserBO
υυ 
.
υυ 
RegTime
υυ %
=
υυ& '
(
υυ( )
DateTime
υυ) 1
)
υυ1 2
objSqlDataReader
υυ2 B
[
υυB C
$str
υυC L
]
υυL M
;
υυM N
	objUserBO
φφ 
.
φφ 
Role
φφ "
=
φφ# $
Convert
φφ% ,
.
φφ, -
ToString
φφ- 5
(
φφ5 6
objSqlDataReader
φφ6 F
[
φφF G
$str
φφG M
]
φφM N
)
φφN O
;
φφO P
	objUserBO
χχ 
.
χχ 
isLoggedFirst
χχ +
=
χχ, -
(
χχ. /
bool
χχ/ 3
)
χχ3 4
objSqlDataReader
χχ4 D
[
χχD E
$str
χχE T
]
χχT U
;
χχU V
object
ψψ 
renewalMessageObj
ψψ ,
=
ψψ- .
objSqlDataReader
ψψ/ ?
[
ψψ? @
$str
ψψ@ P
]
ψψP Q
;
ψψQ R
	objUserBO
ωω 
.
ωω 
RenewalMessage
ωω ,
=
ωω- .
renewalMessageObj
ωω/ @
is
ωωA C
DBNull
ωωD J
?
ωωK L
null
ωωM Q
:
ωωR S
Convert
ωωT [
.
ωω[ \
ToString
ωω\ d
(
ωωd e
objSqlDataReader
ωωe u
[
ωωu v
$strωωv †
]ωω† ‡
)ωω‡ 
;ωω ‰
object
ϊϊ 
renewalLinkObj
ϊϊ )
=
ϊϊ* +
objSqlDataReader
ϊϊ, <
[
ϊϊ< =
$str
ϊϊ= J
]
ϊϊJ K
;
ϊϊK L
	objUserBO
ϋϋ 
.
ϋϋ 
RenewalLink
ϋϋ )
=
ϋϋ* +
renewalLinkObj
ϋϋ, :
is
ϋϋ; =
DBNull
ϋϋ> D
?
ϋϋE F
null
ϋϋG K
:
ϋϋL M
Convert
ϋϋN U
.
ϋϋU V
ToString
ϋϋV ^
(
ϋϋ^ _
objSqlDataReader
ϋϋ_ o
[
ϋϋo p
$str
ϋϋp }
]
ϋϋ} ~
)
ϋϋ~ 
;ϋϋ €
lstUser
όό 
.
όό 
Add
όό 
(
όό  
	objUserBO
όό  )
)
όό) *
;
όό* +
}
ύύ 
}
ώώ 
return
€€ 
lstUser
€€ 
;
€€ 
}
 	
}
‚‚ 
}ƒƒ ‡p
bD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\UserViewDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
UserViewDAL 
{ 
public 
static 
QuestionDetails %*
GetQuestionDetailsByQuestionid& D
(D E
intE H
?H I

questionIdJ T
)T U
{ 	
QuestionDetails 
questionDetail *
=+ ,
new- 0
QuestionDetails1 @
(@ A
)A B
;B C
SqlParameter 
[ 
] 
arrSqlParameter *
=+ ,
{ 
new 
SqlParameter $
($ %
$str% 2
,2 3
Convert4 ;
.; <
ToInt32< C
(C D

questionIdD N
)N O
)O P
,P Q
} 
; 
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m ‘
,
‘ ’
arrSqlParameter
“ Ά
)
Ά £
)
£ ¤
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
questionDetail "
." #

questionId# -
=. /
Convert0 7
.7 8
ToInt328 ?
(? @
objSqlDataReader@ P
[P Q
$strQ ]
]] ^
)^ _
;_ `
object 
prevQuestionIdObj ,
=- .
objSqlDataReader/ ?
[? @
$str@ P
]P Q
;Q R
questionDetail "
." #

previousId# -
=. /
prevQuestionIdObj0 A
isB D
DBNullE K
?L M
-N O
$numO P
:Q R
ConvertS Z
.Z [
ToInt32[ b
(b c
objSqlDataReaderc s
[s t
$str	t „
]
„ …
)
… †
;
† ‡
object 
nextQuestionIdObj ,
=- .
objSqlDataReader/ ?
[? @
$str@ P
]P Q
;Q R
questionDetail "
." #
nextId# )
=* +
nextQuestionIdObj, =
is> @
DBNullA G
?H I
-J K
$numK L
:M N
ConvertO V
.V W
ToInt32W ^
(^ _
objSqlDataReader_ o
[o p
$str	p €
]
€ 
)
 ‚
;
‚ ƒ
object 
serialNumberObj *
=+ ,
objSqlDataReader- =
[= >
$str> L
]L M
;M N
questionDetail   "
.  " #
serialNumber  # /
=  0 1
serialNumberObj  2 A
is  B D
DBNull  E K
?  L M
$num  N O
:  P Q
Convert  R Y
.  Y Z
ToInt32  Z a
(  a b
objSqlDataReader  b r
[  r s
$str	  s 
]
   ‚
)
  ‚ ƒ
;
  ƒ „
object!! 
stemObj!! "
=!!# $
objSqlDataReader!!% 5
[!!5 6
$str!!6 <
]!!< =
;!!= >
questionDetail"" "
.""" #
questionText""# /
=""0 1
stemObj""2 9
is"": <
DBNull""= C
?""D E
null""F J
:""K L
Convert""M T
.""T U
ToString""U ]
(""] ^
objSqlDataReader""^ n
[""n o
$str""o u
]""u v
)""v w
;""w x
object## 
friendlyidobj## (
=##) *
objSqlDataReader##+ ;
[##; <
$str##< H
]##H I
;##I J
questionDetail$$ "
.$$" #

FriendlyId$$# -
=$$. /
friendlyidobj$$0 =
is$$> @
DBNull$$A G
?$$H I
$num$$J K
:$$L M
Convert$$N U
.$$U V
ToInt32$$V ]
($$] ^
objSqlDataReader$$^ n
[$$n o
$str$$o {
]$${ |
)$$| }
;$$} ~
object%% !
notRandomizeAnswerobj%% 0
=%%1 2
objSqlDataReader%%3 C
[%%C D
$str%%D Y
]%%Y Z
;%%Z [
questionDetail&& "
.&&" #
NotRandomizeAnswer&&# 5
=&&6 7!
notRandomizeAnswerobj&&8 M
is&&N P
DBNull&&Q W
?&&X Y
false&&Z _
:&&` a
Convert&&b i
.&&i j
	ToBoolean&&j s
(&&s t
objSqlDataReader	&&t „
[
&&„ …
$str
&&… 
]
&& ›
)
&&› 
;
&& 
}'' 
objSqlDataReader))  
.))  !
Close))! &
())& '
)))' (
;))( )
List++ 
<++ 
QuestionImage++ "
>++" #
questionImageList++$ 5
=++6 7
new++8 ;
List++< @
<++@ A
QuestionImage++A N
>++N O
(++O P
)++P Q
;++Q R
questionImageList,, !
=,," #
AssessmentDAL,,$ 1
.,,1 2 
GetQuestionImageList,,2 F
(,,F G

questionId,,G Q
),,Q R
;,,R S
questionDetail-- 
.-- 
questionImage-- ,
=--- .
questionImageList--/ @
;--@ A
return.. 
questionDetail.. %
;..% &
}// 
}00 	
public22 
static22 
int22 %
GetQuestionIdByFriendlyid22 3
(223 4
int224 7
?227 8

friendlyid229 C
,22C D
SqlConnection22E R
gConnection22S ^
=22_ `
null22a e
)22e f
{33 	
int44 

questionid44 
=44 
$num44 
;44 
SqlConnection55 

connection55 $
=55% &
gConnection55' 2
;552 3
if77 
(77 
gConnection77 
==77 
null77 #
)77# $
{88 

connection99 
=99 
new99  
SqlConnection99! .
(99. /!
SqlConnectionProvider99/ D
.99D E
GetConnectionString99E X
(99X Y
DataAccessType99Y g
.99g h
Read99h l
)99l m
)99m n
;99n o

connection:: 
.:: 
Open:: 
(::  
)::  !
;::! "
};; 
try== 
{>> 
using?? 
(?? 

SqlCommand?? !
cmd??" %
=??& '
new??( +

SqlCommand??, 6
(??6 7
$str??7 R
,??R S

connection??T ^
)??^ _
)??_ `
{@@ 
cmdAA 
.AA 
CommandTypeAA #
=AA$ %
CommandTypeAA& 1
.AA1 2
StoredProcedureAA2 A
;AAA B
cmdBB 
.BB 

ParametersBB "
.BB" #
AddWithValueBB# /
(BB/ 0
$strBB0 =
,BB= >

friendlyidBB? I
??BBJ L
(BBM N
objectBBN T
)BBT U
DBNullBBU [
.BB[ \
ValueBB\ a
)BBa b
;BBb c
usingDD 
(DD 
SqlDataReaderDD (
readerDD) /
=DD0 1
cmdDD2 5
.DD5 6
ExecuteReaderDD6 C
(DDC D
)DDD E
)DDE F
{EE 
ifFF 
(FF 
readerFF "
.FF" #
HasRowsFF# *
&&FF+ -
readerFF. 4
.FF4 5
ReadFF5 9
(FF9 :
)FF: ;
)FF; <
{GG 

questionidHH &
=HH' (
readerHH) /
.HH/ 0
GetInt32HH0 8
(HH8 9
readerHH9 ?
.HH? @

GetOrdinalHH@ J
(HHJ K
$strHHK W
)HHW X
)HHX Y
;HHY Z
}II 
}JJ 
}KK 
}LL 
catchMM 
(MM 
	ExceptionMM 
	exceptionMM &
)MM& '
{NN 
ConsoleOO 
.OO 
WriteOO 
(OO 
	exceptionOO '
.OO' (
MessageOO( /
)OO/ 0
;OO0 1
}PP 
finallyQQ 
{RR 
ifSS 
(SS 
gConnectionSS 
==SS  "
nullSS# '
)SS' (
{TT 

connectionUU 
.UU 
CloseUU $
(UU$ %
)UU% &
;UU& '
}VV 
}WW 
returnYY 

questionidYY 
;YY 
}ZZ 	
public\\ 
static\\ 
List\\ 
<\\ 
Choice\\ !
>\\! "%
GetChoiceListBYQuestionId\\# <
(\\< =
int\\= @
?\\@ A

questionId\\B L
,\\L M
bool\\N R
?\\R S
NotRandomizeAnswer\\T f
,\\f g
SqlConnection\\h u
gConnection	\\v 
=
\\‚ ƒ
null
\\„ 
)
\\ ‰
{]] 	
List^^ 
<^^ 
Choice^^ 
>^^ 

choiceList^^ #
=^^$ %
new^^& )
List^^* .
<^^. /
Choice^^/ 5
>^^5 6
(^^6 7
)^^7 8
;^^8 9
SqlConnection__ 

connection__ $
=__% &
gConnection__' 2
;__2 3
if`` 
(`` 
gConnection`` 
==`` 
null`` #
)``# $
{aa 

connectionbb 
=bb 
newbb  
SqlConnectionbb! .
(bb. /!
SqlConnectionProviderbb/ D
.bbD E
GetConnectionStringbbE X
(bbX Y
DataAccessTypebbY g
.bbg h
Readbbh l
)bbl m
)bbm n
;bbn o
}dd 
stringee 
sqlQueryChoiceee !
=ee" #
stringee$ *
.ee* +
Emptyee+ 0
;ee0 1
ifgg 
(gg 
NotRandomizeAnswergg "
==gg# %
truegg& *
)gg* +
{hh 
sqlQueryChoiceii 
=ii  
$strii! t
+iiu v
@questionId	iiw ‚
+
iiƒ „
$str
ii… £
;
ii£ ¤
}jj 
elsekk 
{ll 
sqlQueryChoicemm 
=mm  
$strmm! t
+mmu v
@questionId	mmw ‚
+
mmƒ „
$str
mm… 
;
mm ™
}nn 
ifpp 
(pp 
gConnectionpp 
==pp 
nullpp #
)pp# $
{qq 

connectionrr 
.rr 
Openrr 
(rr  
)rr  !
;rr! "
}ss 

SqlCommandtt 
cmdtt 
=tt 
newtt  

SqlCommandtt! +
(tt+ ,
sqlQueryChoicett, :
,tt: ;

connectiontt< F
)ttF G
;ttG H
intuu 

sequenceNouu 
=uu 
$numuu 
;uu  
usingvv 
(vv 
SqlDataReadervv  
readervv! '
=vv( )
cmdvv* -
.vv- .
ExecuteReadervv. ;
(vv; <
)vv< =
)vv= >
{ww 
ifxx 
(xx 
readerxx 
.xx 
HasRowsxx "
)xx" #
{yy 
while{{ 
({{ 
reader{{ !
.{{! "
Read{{" &
({{& '
){{' (
){{( )
{|| 
Choice}} 
choice}} %
=}}& '
new}}( +
Choice}}, 2
(}}2 3
)}}3 4
;}}4 5
choice~~ 
.~~ 
choiceId~~ '
=~~( )
reader~~* 0
.~~0 1
GetInt32~~1 9
(~~9 :
reader~~: @
.~~@ A

GetOrdinal~~A K
(~~K L
$str~~L P
)~~P Q
)~~Q R
;~~R S
object 
textObj &
=' (
reader) /
[/ 0
$str0 6
]6 7
;7 8
choice
€€ 
.
€€ 

choiceText
€€ )
=
€€* +
textObj
€€, 3
is
€€4 6
DBNull
€€7 =
?
€€> ?
null
€€@ D
:
€€E F
reader
€€G M
.
€€M N
	GetString
€€N W
(
€€W X
reader
€€X ^
.
€€^ _

GetOrdinal
€€_ i
(
€€i j
$str
€€j p
)
€€p q
)
€€q r
;
€€r s

sequenceNo
 "
++
" $
;
$ %
choice
‚‚ 
.
‚‚ 
choiceSequence
‚‚ -
=
‚‚. /
(
‚‚0 1
char
‚‚1 5
)
‚‚5 6

sequenceNo
‚‚6 @
;
‚‚@ A
choice
ƒƒ 
.
ƒƒ 
ChoiceImage
ƒƒ *
=
ƒƒ+ ,
AssessmentDAL
ƒƒ- :
.
ƒƒ: ; 
GetChoiceImageList
ƒƒ; M
(
ƒƒM N
choice
ƒƒN T
.
ƒƒT U
choiceId
ƒƒU ]
)
ƒƒ] ^
;
ƒƒ^ _

choiceList
„„ "
.
„„" #
Add
„„# &
(
„„& '
choice
„„' -
)
„„- .
;
„„. /
}
…… 
reader
‡‡ 
.
‡‡ 
Close
‡‡  
(
‡‡  !
)
‡‡! "
;
‡‡" #
}
 
}
‰‰ 
if
 
(
 
gConnection
 
==
 
null
 #
)
# $
{
‹‹ 

connection
 
.
 
Close
  
(
  !
)
! "
;
" #
}
 
return
 

choiceList
 
;
 
}
 	
}
 
}‘‘ €C
lD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\UtilizationReportsDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class !
UtilizationReportsDAL &
{ 
public 
static 
List 
<  
UtilizationReportsVM /
>/ 0
UtilizationReports1 C
(C D 
UtilizationReportsVMD X
utilizationReportsY k
)k l
{ 	
string 
ordering 
= 
string $
.$ %
Empty% *
;* +
if 
( 
utilizationReports "
." #
OrderBy# *
!=+ -
null. 2
)2 3
{ 
ordering 
= 
$str '
+( )
utilizationReports* <
.< =
OrderBy= D
+E F
$strG J
+K L
utilizationReportsM _
._ `
Seq` c
;c d
} 
List 
<  
UtilizationReportsVM %
>% &

reportList' 1
=2 3
new4 7
List8 <
<< = 
UtilizationReportsVM= Q
>Q R
(R S
)S T
;T U
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new) ,
SqlParameter- 9
(9 :
$str: F
,F G
utilizationReportsH Z
.Z [
ExamStartDate[ h
)h i
,i j
new) ,
SqlParameter- 9
(9 :
$str: D
,D E
utilizationReportsF X
.X Y
ExamCompletedDateY j
)j k
,k l
new) ,
SqlParameter- 9
(9 :
$str: F
,F G
utilizationReportsH Z
.Z [
Year[ _
)_ `
,` a
new) ,
SqlParameter- 9
(9 :
$str: B
,B C
orderingD L
)L M
,M N
}% &
;& '
using   
(   
SqlDataReader    
objSqlDataReader  ! 1
=  2 3
	SqlHelper  4 =
.  = >
ExecuteReader  > K
(  K L!
SqlConnectionProvider!! %
.!!% &
GetConnectionString!!& 9
(!!9 :
DataAccessType!!: H
.!!H I
Read!!I M
)!!M N
,!!N O
CommandType!!P [
.!![ \
StoredProcedure!!\ k
,!!k l
$str	!!m 
,
!! ‰
objSqlParameter
!! ™
)
!!™ 
)
!! ›
{"" 
while## 
(## 
objSqlDataReader## '
.##' (
Read##( ,
(##, -
)##- .
)##. /
{$$  
UtilizationReportsVM%% (
reportListBO%%) 5
=%%6 7
new%%8 ; 
UtilizationReportsVM%%< P
(%%P Q
)%%Q R
;%%R S
reportListBO&&  
.&&  !
UserName&&! )
=&&* +
Convert&&, 3
.&&3 4
ToString&&4 <
(&&< =
objSqlDataReader&&= M
[&&M N
$str&&N X
]&&X Y
)&&Y Z
;&&Z [
object(( 
customerIdObj(( (
=(() *
objSqlDataReader((+ ;
[((; <
$str((< H
]((H I
;((I J
reportListBO))  
.))  !

CustomerId))! +
=)), -
customerIdObj)). ;
is))< >
DBNull))? E
?))F G
string))H N
.))N O
Empty))O T
:))U V
Convert))W ^
.))^ _
ToString))_ g
())g h
objSqlDataReader))h x
[))x y
$str	))y …
]
))… †
)
))† ‡
;
))‡ 
reportListBO**  
.**  !
QuestionAnswered**! 1
=**2 3
Convert**4 ;
.**; <
ToInt32**< C
(**C D
objSqlDataReader**D T
[**T U
$str**U g
]**g h
)**h i
;**i j
reportListBO++  
.++  !
QuestionsCustom++! 0
=++1 2
Convert++3 :
.++: ;
ToInt32++; B
(++B C
objSqlDataReader++C S
[++S T
$str++T e
]++e f
)++f g
;++g h
reportListBO,,  
.,,  !
QuestionsSimulated,,! 3
=,,4 5
Convert,,6 =
.,,= >
ToInt32,,> E
(,,E F
objSqlDataReader,,F V
[,,V W
$str,,W k
],,k l
),,l m
;,,m n
reportListBO--  
.--  !
QuestionsQuick--! /
=--0 1
Convert--2 9
.--9 :
ToInt32--: A
(--A B
objSqlDataReader--B R
[--R S
$str--S c
]--c d
)--d e
;--e f
reportListBO..  
...  !
QuestionsChallenged..! 4
=..5 6
Convert..7 >
...> ?
ToInt32..? F
(..F G
objSqlDataReader..G W
[..W X
$str..X m
]..m n
)..n o
;..o p
reportListBO//  
.//  !%
QuestionsSpacedRepetition//! :
=//; <
Convert//= D
.//D E
ToInt32//E L
(//L M
objSqlDataReader//M ]
[//] ^
$str//^ y
]//y z
)//z {
;//{ |
reportListBO00  
.00  !
QuestionsSharedExam00! 4
=005 6
Convert007 >
.00> ?
ToInt3200? F
(00F G
objSqlDataReader00G W
[00W X
$str00X m
]00m n
)00n o
;00o p

reportList11 
.11 
Add11 "
(11" #
reportListBO11# /
)11/ 0
;110 1
}22 
objSqlDataReader44  
.44  !
Close44! &
(44& '
)44' (
;44( )
}55 
return77 

reportList77 
;77 
}88 	
public:: 
static::  
UtilizationReportsVM:: *
	AtAGlance::+ 4
(::4 5 
UtilizationReportsVM::5 I
utilizationReports::J \
)::\ ]
{;; 	 
UtilizationReportsVM<<  
	atAGlance<<! *
=<<+ ,
new<<- 0 
UtilizationReportsVM<<1 E
(<<E F
)<<F G
;<<G H
SqlParameter== 
[== 
]== 
objSqlParameter== *
===+ ,
{>> 
new??1 4
SqlParameter??5 A
(??A B
$str??B N
,??N O
utilizationReports??P b
.??b c
ExamStartDate??c p
)??p q
,??q r
new@@1 4
SqlParameter@@5 A
(@@A B
$str@@B L
,@@L M
utilizationReports@@N `
.@@` a
ExamCompletedDate@@a r
)@@r s
,@@s t
newAA1 4
SqlParameterAA5 A
(AAA B
$strAAB N
,AAN O
utilizationReportsAAP b
.AAb c
YearAAc g
)AAg h
,AAh i
}BB- .
;BB. /
usingDD 
(DD 
SqlDataReaderDD  
objSqlDataReaderDD! 1
=DD2 3
	SqlHelperDD4 =
.DD= >
ExecuteReaderDD> K
(DDK L!
SqlConnectionProviderEE %
.EE% &
GetConnectionStringEE& 9
(EE9 :
DataAccessTypeEE: H
.EEH I
ReadEEI M
)EEM N
,EEN O
CommandTypeEEP [
.EE[ \
StoredProcedureEE\ k
,EEk l
$strEEm 
,	EE €
objSqlParameter
EE 
)
EE ‘
)
EE‘ ’
{FF 
whileGG 
(GG 
objSqlDataReaderGG '
.GG' (
ReadGG( ,
(GG, -
)GG- .
)GG. /
{HH 
	atAGlanceII 
.II 
TotalUserCountII ,
=II- .
ConvertII/ 6
.II6 7
ToInt32II7 >
(II> ?
objSqlDataReaderII? O
[IIO P
$strIIP W
]IIW X
)IIX Y
;IIY Z
}JJ 
objSqlDataReaderLL  
.LL  !
CloseLL! &
(LL& '
)LL' (
;LL( )
}MM 
returnOO 
	atAGlanceOO 
;OO 
}PP 	
}QQ 
}RR `
hD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.DAL.BCSCSelfAssessment\ViewAssessmentDAL.cs
	namespace 	
AAO
 
. 
DAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
ViewAssessmentDAL "
{ 
public 
static 
List 
< 
int 
> !
ViewAssessmentDetails  5
(5 6
int6 9
?9 :
examId; A
)A B
{ 	
List 
< 
int 
> 
questionList "
=# $
new% (
List) -
<- .
int. 1
>1 2
(2 3
)3 4
;4 5
SqlParameter 
[ 
] 
objSqlParameter *
=+ ,
{ 
new0 3
SqlParameter4 @
(@ A
$strA J
,J K
examIdL R
)R S
,S T
}- .
;. /
using 
( 
SqlDataReader  
objSqlDataReader! 1
=2 3
	SqlHelper4 =
.= >
ExecuteReader> K
(K L!
SqlConnectionProvider %
.% &
GetConnectionString& 9
(9 :
DataAccessType: H
.H I
ReadI M
)M N
,N O
CommandTypeP [
.[ \
StoredProcedure\ k
,k l
$str	m €
,
€ 
objSqlParameter
‚ ‘
)
‘ ’
)
’ “
{ 
while 
( 
objSqlDataReader '
.' (
Read( ,
(, -
)- .
). /
{ 
int 
objExamListBO %
=& '
$num( )
;) *
objExamListBO !
=" #
Convert$ +
.+ ,
ToInt32, 3
(3 4
objSqlDataReader4 D
[D E
$strE Q
]Q R
)R S
;S T
questionList  
.  !
Add! $
($ %
objExamListBO% 2
)2 3
;3 4
}   
objSqlDataReader""  
.""  !
Close""! &
(""& '
)""' (
;""( )
}## 
return%% 
questionList%% 
;%%  
}&& 	
public(( 
static(( 
List(( 
<(( !
QuestionIdWithCountVM(( 0
>((0 1
FilterByQuestions((2 C
(((C D
int((D G
?((G H
examId((I O
,((O P
string((Q W
filter((X ^
,((^ _
int((` c
noOfRecords((d o
,((o p
int((q t
pageNo((u {
,(({ |
int	((} €
userId
(( ‡
)
((‡ 
{)) 	
List** 
<** !
QuestionIdWithCountVM** &
>**& '
questionList**( 4
=**5 6
new**7 :
List**; ?
<**? @!
QuestionIdWithCountVM**@ U
>**U V
(**V W
)**W X
;**X Y
SqlParameter,, 
[,, 
],, 
objSqlParameter,, *
=,,+ ,
{-- 
new..0 3
SqlParameter..4 @
(..@ A
$str..A J
,..J K
examId..L R
)..R S
,..S T
new//0 3
SqlParameter//4 @
(//@ A
$str//A J
,//J K
filter//L R
)//R S
,//S T
new000 3
SqlParameter004 @
(00@ A
$str00A L
,00L M
noOfRecords00N Y
)00Y Z
,00Z [
new110 3
SqlParameter114 @
(11@ A
$str11A M
,11M N
pageNo11O U
)11U V
,11V W
new220 3
SqlParameter224 @
(22@ A
$str22A J
,22J K
userId22L R
)22R S
,22S T
}33- .
;33. /
using44 
(44 
SqlDataReader44  
objSqlDataReader44! 1
=442 3
	SqlHelper444 =
.44= >
ExecuteReader44> K
(44K L!
SqlConnectionProvider44L a
.44a b
GetConnectionString44b u
(44u v
DataAccessType	44v „
.
44„ …
Read
44… ‰
)
44‰ 
,
44 ‹
CommandType
44 —
.
44— 
StoredProcedure
44 §
,
44§ ¨
$str
44© Ζ
,
44Ζ Η
objSqlParameter
44Θ Χ
)
44Χ Ψ
)
44Ψ Ω
{55 
while66 
(66 
objSqlDataReader66 '
.66' (
Read66( ,
(66, -
)66- .
)66. /
{77 !
QuestionIdWithCountVM88 )
objExamListBO88* 7
=888 9
new88: =!
QuestionIdWithCountVM88> S
(88S T
)88T U
;88U V
objExamListBO99 !
.99! "

QuestionId99" ,
=99- .
Convert99/ 6
.996 7
ToInt32997 >
(99> ?
objSqlDataReader99? O
[99O P
$str99P \
]99\ ]
)99] ^
;99^ _
objExamListBO:: !
.::! "
QuestionIdCount::" 1
=::2 3
Convert::4 ;
.::; <
ToInt32::< C
(::C D
objSqlDataReader::D T
[::T U
$str::U b
]::b c
)::c d
;::d e
objExamListBO;; !
.;;! "

QuestionNo;;" ,
=;;- .
Convert;;/ 6
.;;6 7
ToInt32;;7 >
(;;> ?
objSqlDataReader;;? O
[;;O P
$str;;P [
];;[ \
);;\ ]
;;;] ^
questionList<<  
.<<  !
Add<<! $
(<<$ %
objExamListBO<<% 2
)<<2 3
;<<3 4
}== 
objSqlDataReader??  
.??  !
Close??! &
(??& '
)??' (
;??( )
}@@ 
returnBB 
questionListBB 
;BB  
}CC 	
publicEE 
staticEE 
ListEE 
<EE 
intEE 
>EE 
ViewDetailsEE  +
(EE+ ,
intEE, /
?EE/ 0
examIdEE1 7
)EE7 8
{FF 	
ListGG 
<GG 
intGG 
>GG 
questionListGG "
=GG# $
newGG% (
ListGG) -
<GG- .
intGG. 1
>GG1 2
(GG2 3
)GG3 4
;GG4 5
SqlParameterII 
[II 
]II 
objSqlParameterII *
=II+ ,
{JJ 
newKK0 3
SqlParameterKK4 @
(KK@ A
$strKKA J
,KKJ K
examIdKKL R
)KKR S
,KKS T
}LL- .
;LL. /
usingNN 
(NN 
SqlDataReaderNN  
objSqlDataReaderNN! 1
=NN2 3
	SqlHelperNN4 =
.NN= >
ExecuteReaderNN> K
(NNK L!
SqlConnectionProviderOO %
.OO% &
GetConnectionStringOO& 9
(OO9 :
DataAccessTypeOO: H
.OOH I
ReadOOI M
)OOM N
,OON O
CommandTypeOOP [
.OO[ \
StoredProcedureOO\ k
,OOk l
$str	OOm €
,
OO€ 
objSqlParameter
OO‚ ‘
)
OO‘ ’
)
OO’ “
{PP 
whileQQ 
(QQ 
objSqlDataReaderQQ '
.QQ' (
ReadQQ( ,
(QQ, -
)QQ- .
)QQ. /
{RR 
intSS 
objExamListBOSS %
=SS& '
$numSS( )
;SS) *
objExamListBOVV !
=VV" #
ConvertVV$ +
.VV+ ,
ToInt32VV, 3
(VV3 4
objSqlDataReaderVV4 D
[VVD E
$strVVE Q
]VVQ R
)VVR S
;VVS T
questionListWW  
.WW  !
AddWW! $
(WW$ %
objExamListBOWW% 2
)WW2 3
;WW3 4
}XX 
objSqlDataReaderZZ  
.ZZ  !
CloseZZ! &
(ZZ& '
)ZZ' (
;ZZ( )
}[[ 
return]] 
questionList]] 
;]]  
}^^ 	
public`` 
static`` 
List`` 
<``  
QuestionIdWithExamId`` /
>``/ 0
SearchByQuestions``1 B
(``B C
string``C I
userId``J P
,``P Q
string``R X

searchterm``Y c
,``c d
string``e k
filter``l r
,``r s
int``t w
noOfRecords	``x ƒ
,
``ƒ „
int
``… 
pageNo
``‰ 
)
`` 
{aa 	
Listbb 
<bb  
QuestionIdWithExamIdbb %
>bb% &
questionListbb' 3
=bb4 5
newbb6 9
Listbb: >
<bb> ? 
QuestionIdWithExamIdbb? S
>bbS T
(bbT U
)bbU V
;bbV W
SqlParameterdd 
[dd 
]dd 
objSqlParameterdd *
=dd+ ,
{ee 
newee 
SqlParameteree 
(ee 
$stree ,
,ee, -

searchtermee. 8
)ee8 9
,ee9 :
newff 
SqlParameterff  ,
(ff, -
$strff- 6
,ff6 7
userIdff8 >
)ff? @
,ff@ A
newgg 
SqlParametergg  ,
(gg, -
$strgg- 6
,gg6 7
filtergg8 >
)gg? @
,gg@ A
newhh 
SqlParameterhh  ,
(hh, -
$strhh- 8
,hh8 9
noOfRecordshh: E
)hhE F
,hhF G
newii 
SqlParameterii  ,
(ii, -
$strii- 9
,ii9 :
pageNoii; A
)iiA B
,iiB C
}jj 
;jj 
usingkk 
(kk 
SqlDataReaderkk  
objSqlDataReaderkk! 1
=kk2 3
	SqlHelperkk4 =
.kk= >
ExecuteReaderkk> K
(kkK L!
SqlConnectionProviderkkL a
.kka b
GetConnectionStringkkb u
(kku v
DataAccessType	kkv „
.
kk„ …
Read
kk… ‰
)
kk‰ 
,
kk ‹
CommandType
kk —
.
kk— 
StoredProcedure
kk §
,
kk§ ¨
$str
kk© Θ
,
kkΘ Ι
objSqlParameter
kkΚ Ω
)
kkΩ Ϊ
)
kkΪ Ϋ
{ll 
whilemm 
(mm 
objSqlDataReadermm '
.mm' (
Readmm( ,
(mm, -
)mm- .
)mm. /
{nn  
QuestionIdWithExamIdoo (
objExamListBOoo) 6
=oo7 8
newoo9 < 
QuestionIdWithExamIdoo= Q
(ooQ R
)ooR S
;ooS T
objExamListBOpp !
.pp! "

QuestionIdpp" ,
=pp- .
Convertpp/ 6
.pp6 7
ToInt32pp7 >
(pp> ?
objSqlDataReaderpp? O
[ppO P
$strppP \
]pp\ ]
)pp] ^
;pp^ _
objExamListBOqq !
.qq! "
ExamIdqq" (
=qq) *
filterqq+ 1
!=qq2 4
$strqq5 :
?qq; <
Convertqq= D
.qqD E
ToInt32qqE L
(qqL M
objSqlDataReaderqqM ]
[qq] ^
$strqq^ f
]qqf g
)qqg h
:qqi j
$numqqk l
;qql m
objExamListBOrr !
.rr! "
QuestionIdCountrr" 1
=rr2 3
Convertrr4 ;
.rr; <
ToInt32rr< C
(rrC D
objSqlDataReaderrrD T
[rrT U
$strrrU b
]rrb c
)rrc d
;rrd e
objExamListBOss !
.ss! "

QuestionNoss" ,
=ss- .
Convertss/ 6
.ss6 7
ToInt32ss7 >
(ss> ?
objSqlDataReaderss? O
[ssO P
$strssP [
]ss[ \
)ss\ ]
;ss] ^
questionListtt  
.tt  !
Addtt! $
(tt$ %
objExamListBOtt% 2
)tt2 3
;tt3 4
}uu 
objSqlDataReaderww  
.ww  !
Closeww! &
(ww& '
)ww' (
;ww( )
}xx 
returnzz 
questionListzz 
;zz  
}{{ 	
}|| 
}}} 