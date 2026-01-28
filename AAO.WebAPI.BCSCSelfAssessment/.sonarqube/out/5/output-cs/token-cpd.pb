โ

rD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\AdminChapterReportDetailsBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

class '
AdminChapterReportDetailsBL ,
{ 
public		 
static		 
List		 
<		 +
ResidentChapterReportDetailsDTO		 :
>		: ;%
AdminChapterReportDetails		< U
(		U V+
ResidentChapterReportDetailsDTO		V u!
reportChapterDetails			v 
)
		 
{

 	
return (
AdminChapterReportDetailsDAL /
./ 0%
AdminChapterReportDetails0 I
(I J 
reportChapterDetailsJ ^
)^ _
;_ `
} 	
public 
static 
List 
< +
ResidentChapterReportDetailsDTO :
>: ;
AdminChartDetail< L
(L M+
ResidentChapterReportDetailsDTOM l!
reportChapterDetails	m 
)
 
{ 	
return (
AdminChapterReportDetailsDAL /
./ 0%
AdminChapterReportDetails0 I
(I J 
reportChapterDetailsJ ^
)^ _
;_ `
} 	
} 
} าย
vD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\AdminIncorrectQuestionDetailsBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public		 

class		 +
AdminIncorrectQuestionDetailsBL		 0
{

 
public 
static 
List 
< 
QuestionDetails *
>* +)
AdminIncorrectQuestionDetails, I
(I J
AdminReportVMJ W"
incorrectReportDetailsX n
)n o
{ 	
List 
< 
QuestionDetails  
>  !%
reportQuestionDetailsList" ;
=< =
new> A
ListB F
<F G
QuestionDetailsG V
>V W
(W X
)X Y
;Y Z
List 
< '
IncorrectQuestionDetailsDTO ,
>, -
questionList. :
=; <
new= @
ListA E
<E F'
IncorrectQuestionDetailsDTOF a
>a b
(b c
)c d
;d e
questionList 
= ,
 AdminIncorrectQuestionDetailsDAL ;
.; <)
AdminIncorrectQuestionDetails< Y
(Y Z"
incorrectReportDetailsZ p
.p q
Yearq u
,u v#
incorrectReportDetails	w 
.
 
UserId
 ”
,
” •$
incorrectReportDetails
– ฌ
.
ฌ ญ
SubspecialtyId
ญ ป
,
ป ผ$
incorrectReportDetails
ฝ ำ
.
ำ ิ
ExamStartDate
ิ แ
,
แ โ$
incorrectReportDetails
ใ ๙
.
๙ ๚
ExamCompletedDate
๚ 
,
 $
incorrectReportDetails
 ฃ
.
ฃ ค
NoOfRecords
ค ฏ
,
ฏ ฐ$
incorrectReportDetails
ฑ ว
.
ว ศ
PageNo
ศ ฮ
)
ฮ ฯ
;
ฯ ะ
foreach 
( '
IncorrectQuestionDetailsDTO 0
item1 5
in6 8
questionList9 E
)E F
{ 
QuestionDetails !
reportQuestionDetails  5
=6 7
new8 ;
QuestionDetails< K
(K L
)L M
;M N
if 
( 
item 
. 
ExamType !
==" $
$num% &
)& '
{ !
reportQuestionDetails )
=* +
GetAdminQuestion_SR, ?
(? @
item@ D
.D E
ExamIdE K
,K L
itemM Q
.Q R

QuestionIdR \
,\ ]
item^ b
.b c
UserIdc i
)i j
;j k
} 
else 
{ !
reportQuestionDetails )
=* +
GetAdminQuestion, <
(< =
item= A
.A B
ExamIdB H
,H I
itemJ N
.N O

QuestionIdO Y
,Y Z
item[ _
._ `
UserId` f
)f g
;g h
} !
reportQuestionDetails %
.% &
QuestionCount& 3
=4 5
item6 :
.: ;
QuestionIdCount; J
;J K!
reportQuestionDetails %
.% &
serialNumber& 2
=3 4
item5 9
.9 :
	Rownumber: C
;C D!
reportQuestionDetails %
.% &
SubSpeciality& 3
=4 5
item6 :
.: ;
Subspecialty; G
;G H!
reportQuestionDetails   %
.  % &
Section  & -
=  . /
item  0 4
.  4 5
Section  5 <
;  < =%
reportQuestionDetailsList!! )
.!!) *
Add!!* -
(!!- .!
reportQuestionDetails!!. C
)!!C D
;!!D E
}"" 
return$$ %
reportQuestionDetailsList$$ ,
;$$, -
}%% 	
public'' 
static'' 
QuestionDetails'' %
GetAdminQuestion''& 6
(''6 7
int''7 :
?'': ;
examId''< B
,''B C
int''D G
?''G H

questionId''I S
,''S T
int''U X
?''X Y
userId''Z `
)''` a
{(( 	
try)) 
{** 
ExamDTO,, 
examObj,, 
=,,  !
new,," %
ExamDTO,,& -
(,,- .
),,. /
;,,/ 0
List-- 
<-- 
Choice-- 
>-- 

choiceList-- '
=--( )
new--* -
List--. 2
<--2 3
Choice--3 9
>--9 :
(--: ;
)--; <
;--< =
QuestionDetails.. 
questionDetails..  /
=..0 1
new..2 5
QuestionDetails..6 E
(..E F
)..F G
;..G H
if// 
(// 
Convert// 
.// 
ToInt32// #
(//# $

questionId//$ .
)//. /
==//0 2
$num//3 4
)//4 5
{00 

questionId11 
=11  ,
 AdminIncorrectQuestionDetailsDAL11! A
.11A B!
GetAdminFirstQuestion11B W
(11W X
Convert11X _
.11_ `
ToInt3211` g
(11g h
examId11h n
)11n o
)11o p
;11p q
}22 
questionDetails55 
=55  !,
 AdminIncorrectQuestionDetailsDAL55" B
.55B C#
GetAdminQuestionDetails55C Z
(55Z [
Convert55[ b
.55b c
ToInt3255c j
(55j k
examId55k q
)55q r
,55r s
Convert55t {
.55{ |
ToInt32	55| 
(
55 

questionId
55 
)
55 
)
55 
;
55 ‘
questionDetails88 
.88  
rightChoiceId88  -
=88. /
AssessmentDAL880 =
.88= >&
GetRightChoiceByQuestionId88> X
(88X Y
Convert88Y `
.88` a
ToInt3288a h
(88h i

questionId88i s
)88s t
)88t u
;88u v
examObj;; 
=;; 
GetAdminExamBYId;; *
(;;* +
examId;;+ 1
);;1 2
;;;2 3
questionDetails== 
.==  

examStatus==  *
===+ ,
examObj==- 4
.==4 5

ExamStatus==5 ?
;==? @
questionDetails>> 
.>>  
examAttemptId>>  -
=>>. /
examObj>>0 7
.>>7 8
ExamAttemptId>>8 E
;>>E F
questionDetails?? 
.??  
examTimeType??  ,
=??- .
examObj??/ 6
.??6 7
ExamTimeType??7 C
;??C D
questionDetails@@ 
.@@  
examMode@@  (
=@@) *
examObj@@+ 2
.@@2 3
ExamMode@@3 ;
;@@; <
questionDetailsAA 
.AA  
examAnswerToShowAA  0
=AA1 2
examObjAA3 :
.AA: ;
ExamAnswerToShowAA; K
;AAK L
questionDetailsBB 
.BB  
noOfQuestionBB  ,
=BB- .
examObjBB/ 6
.BB6 7
NoofQuestionsBB7 D
;BBD E
questionDetailsCC 
.CC  
ExamNameCC  (
=CC) *
examObjCC+ 2
.CC2 3
ExamNameCC3 ;
;CC; <
questionDetailsDD 
.DD  
ExamTypeDD  (
=DD) *
examObjDD+ 2
.DD2 3
ExamTypeDD3 ;
;DD; <
questionDetailsGG 
.GG  
questionDiscussionGG  2
=GG3 4
AssessmentDALGG5 B
.GGB C!
GetQuestionDiscussionGGC X
(GGX Y
ConvertGGY `
.GG` a
ToInt32GGa h
(GGh i

questionIdGGi s
)GGs t
)GGt u
;GGu v
questionDetailsJJ 
.JJ  

referencesJJ  *
=JJ+ ,,
 AdminIncorrectQuestionDetailsDALJJ- M
.JJM N
GetAdminReferencesJJN `
(JJ` a
ConvertJJa h
.JJh i
ToInt32JJi p
(JJp q

questionIdJJq {
)JJ{ |
)JJ| }
;JJ} ~
questionDetailsMM 
.MM  
RelatedContentsMM  /
=MM0 1,
 AdminIncorrectQuestionDetailsDALMM2 R
.MMR S"
GetAdminRelatedContentMMS i
(MMi j
ConvertMMj q
.MMq r
ToInt32MMr y
(MMy z

questionId	MMz 
)
MM …
)
MM… 
;
MM 
questionDetailsPP 
.PP  
notesPP  %
=PP& ',
 AdminIncorrectQuestionDetailsDALPP( H
.PPH I
GetAdminNotesPPI V
(PPV W
ConvertPPW ^
.PP^ _
ToInt32PP_ f
(PPf g

questionIdPPg q
)PPq r
,PPr s
ConvertPPt {
.PP{ |
ToInt32	PP| 
(
PP 
userId
PP 
)
PP 
)
PP 
;
PP 
questionDetailsSS 
.SS   
examAttemptAnswerDTOSS  4
=SS5 6
AssessmentDALSS7 D
.SSD E 
GetExamAttemptAnswerSSE Y
(SSY Z
ConvertSSZ a
.SSa b
ToInt32SSb i
(SSi j

questionIdSSj t
)SSt u
,SSu v
ConvertSSw ~
.SS~ 
ToInt32	SS 
(
SS 
examObj
SS 
.
SS 
ExamAttemptId
SS 
)
SS 
)
SS 
;
SS 
questionDetailsVV 
.VV  
examAttemptTextVV  /
=VV0 1,
 AdminIncorrectQuestionDetailsDALVV2 R
.VVR S)
GetAdminExamAttemptAnswerTextVVS p
(VVp q
ConvertVVq x
.VVx y
ToInt32	VVy €
(
VV€ 
examId
VV 
)
VV 
,
VV 
Convert
VV ‘
.
VV‘ ’
ToInt32
VV’ 
(
VV 

questionId
VV ค
)
VVค ฅ
)
VVฅ ฆ
;
VVฆ ง
questionDetailsYY 
.YY  
	markCheckYY  )
=YY* +,
 AdminIncorrectQuestionDetailsDALYY, L
.YYL M
GetAdminMarkStatusYYM _
(YY_ `
ConvertYY` g
.YYg h
ToInt32YYh o
(YYo p
examIdYYp v
)YYv w
,YYw x
Convert	YYy €
.
YY€ 
ToInt32
YY 
(
YY 

questionId
YY “
)
YY“ ”
)
YY” •
;
YY• –
questionDetailsZZ 
.ZZ  
examIdZZ  &
=ZZ' (
ConvertZZ) 0
.ZZ0 1
ToInt32ZZ1 8
(ZZ8 9
examIdZZ9 ?
)ZZ? @
;ZZ@ A
questionDetails[[ 
.[[  "
CurrentExamAttemptTime[[  6
=[[7 8
DateTime[[9 A
.[[A B
Now[[B E
;[[E F

choiceList^^ 
=^^ 
AssessmentDAL^^ *
.^^* +!
GetChoiceBYQuestionId^^+ @
(^^@ A
Convert^^A H
.^^H I
ToInt32^^I P
(^^P Q

questionId^^Q [
)^^[ \
,^^\ ]
examId^^^ d
,^^d e
questionDetails^^f u
.^^u v!
examAttemptAnswerDTO	^^v 
.
^^ 
ChoiceId
^^ “
,
^^“ ”
questionDetails
^^• ค
.
^^ค ฅ
examAttemptId
^^ฅ ฒ
,
^^ฒ ณ
questionDetails
^^ด ร
.
^^ร ฤ 
NotRandomizeAnswer
^^ฤ ึ
)
^^ึ ื
;
^^ื ุ
questionDetails__ 
.__  

choiceList__  *
=__+ ,

choiceList__- 7
;__7 8
questionDetailsbb 
.bb  
PeerDetailsbb  +
=bb, -,
 AdminIncorrectQuestionDetailsDALbb. N
.bbN O
GetAdminPeerDetailsbbO b
(bbb c
Convertbbc j
.bbj k
ToInt32bbk r
(bbr s

questionIdbbs }
)bb} ~
,bb~ 
Convert
bb€ 
.
bb 
ToInt32
bb 
(
bb 
userId
bb –
)
bb– —
)
bb— 
;
bb 
questionDetailsee 
.ee  
QuestionCountee  -
=ee. /,
 AdminIncorrectQuestionDetailsDALee0 P
.eeP Q!
GetAdminQuestionCounteeQ f
(eef g
Converteeg n
.een o
ToInt32eeo v
(eev w
examIdeew }
)ee} ~
)ee~ 
;	ee €
questionDetailshh 
.hh  
BCSCExcerpthh  +
=hh, -
AssessmentDALhh. ;
.hh; <
GetBCSCExcerptTexthh< N
(hhN O
ConverthhO V
.hhV W
ToInt32hhW ^
(hh^ _

questionIdhh_ i
)hhi j
)hhj k
;hhk l
questionDetailsjj 
.jj  
ExcerptHeadingsjj  /
=jj0 1
AssessmentBLjj2 >
.jj> ?
GetExcerptHeadingsjj? Q
(jjQ R
questionDetailsjjR a
.jja b
BCSCExcerptjjb m
)jjm n
;jjn o
questionDetailsll 
.ll  
	TopicNamell  )
=ll* +
AssessmentDALll, 9
.ll9 :
GetTopicByQuestionll: L
(llL M
ConvertllM T
.llT U
ToInt32llU \
(ll\ ]

questionIdll] g
)llg h
)llh i
;lli j
returnmm 
questionDetailsmm &
;mm& '
}nn 
catchoo 
(oo 
	Exceptionoo 
eoo 
)oo 
{pp 
Consoleqq 
.qq 
Writeqq 
(qq 
eqq 
.qq  
Messageqq  '
)qq' (
;qq( )
returnrr 
nullrr 
;rr 
}ss 
}tt 	
publicvv 
staticvv 
QuestionDetailsvv %
GetAdminQuestion_SRvv& 9
(vv9 :
intvv: =
?vv= >
examIdvv? E
,vvE F
intvvG J
?vvJ K

questionIdvvL V
,vvV W
intvvX [
?vv[ \
userIdvv] c
)vvc d
{ww 	
tryxx 
{yy 
ExamDTOzz 
examObjzz 
=zz  !
newzz" %
ExamDTOzz& -
(zz- .
)zz. /
;zz/ 0
List{{ 
<{{ 
Choice{{ 
>{{ 

choiceList{{ '
={{( )
new{{* -
List{{. 2
<{{2 3
Choice{{3 9
>{{9 :
({{: ;
){{; <
;{{< =
QuestionDetails|| 
questionDetails||  /
=||0 1
new||2 5
QuestionDetails||6 E
(||E F
)||F G
;||G H
if}} 
(}} 
Convert}} 
.}} 
ToInt32}} #
(}}# $

questionId}}$ .
)}}. /
==}}0 2
$num}}3 4
)}}4 5
{~~ 

questionId 
=  ,
 AdminIncorrectQuestionDetailsDAL! A
.A B!
GetAdminFirstQuestionB W
(W X
ConvertX _
._ `
ToInt32` g
(g h
examIdh n
)n o
)o p
;p q
}
€€ 
questionDetails
 
=
  !.
 AdminIncorrectQuestionDetailsDAL
" B
.
B C(
GetAdminQuestionDetails_SR
C ]
(
] ^
Convert
^ e
.
e f
ToInt32
f m
(
m n
examId
n t
)
t u
,
u v
Convert
w ~
.
~ 
ToInt32 
( 

questionId ‘
)‘ ’
)’ “
;“ ”
questionDetails
 
.
  
rightChoiceId
  -
=
. /
AssessmentDAL
0 =
.
= >(
GetRightChoiceByQuestionId
> X
(
X Y
Convert
Y `
.
` a
ToInt32
a h
(
h i

questionId
i s
)
s t
)
t u
;
u v
examObj
 
=
 
GetAdminExamBYId
 *
(
* +
examId
+ 1
)
1 2
;
2 3
questionDetails
 
.
  

examStatus
  *
=
+ ,
examObj
- 4
.
4 5

ExamStatus
5 ?
;
? @
questionDetails
 
.
  
examAttemptId
  -
=
. /
examObj
0 7
.
7 8
ExamAttemptId
8 E
;
E F
questionDetails
 
.
  
examTimeType
  ,
=
- .
examObj
/ 6
.
6 7
ExamTimeType
7 C
;
C D
questionDetails
‘‘ 
.
‘‘  
examMode
‘‘  (
=
‘‘) *
examObj
‘‘+ 2
.
‘‘2 3
ExamMode
‘‘3 ;
;
‘‘; <
questionDetails
’’ 
.
’’  
examAnswerToShow
’’  0
=
’’1 2
examObj
’’3 :
.
’’: ;
ExamAnswerToShow
’’; K
;
’’K L
questionDetails
““ 
.
““  
noOfQuestion
““  ,
=
““- .
examObj
““/ 6
.
““6 7
NoofQuestions
““7 D
;
““D E
questionDetails
”” 
.
””  
ExamName
””  (
=
””) *
examObj
””+ 2
.
””2 3
ExamName
””3 ;
;
””; <
questionDetails
•• 
.
••  
ExamType
••  (
=
••) *
examObj
••+ 2
.
••2 3
ExamType
••3 ;
;
••; <
questionDetails
 
.
   
questionDiscussion
  2
=
3 4
AssessmentDAL
5 B
.
B C#
GetQuestionDiscussion
C X
(
X Y
Convert
Y `
.
` a
ToInt32
a h
(
h i

questionId
i s
)
s t
)
t u
;
u v
questionDetails
 
.
  

references
  *
=
+ ,.
 AdminIncorrectQuestionDetailsDAL
- M
.
M N 
GetAdminReferences
N `
(
` a
Convert
a h
.
h i
ToInt32
i p
(
p q

questionId
q {
)
{ |
)
| }
;
} ~
questionDetails
 
.
  
RelatedContents
  /
=
0 1.
 AdminIncorrectQuestionDetailsDAL
2 R
.
R S$
GetAdminRelatedContent
S i
(
i j
Convert
j q
.
q r
ToInt32
r y
(
y z

questionIdz 
) …
)… 
; 
questionDetails
กก 
.
กก  
notes
กก  %
=
กก& '.
 AdminIncorrectQuestionDetailsDAL
กก( H
.
กกH I
GetAdminNotes
กกI V
(
กกV W
Convert
กกW ^
.
กก^ _
ToInt32
กก_ f
(
กกf g

questionId
กกg q
)
กกq r
,
กกr s
Convert
กกt {
.
กก{ |
ToInt32กก| 
(กก 
userIdกก 
)กก 
)กก 
;กก 
questionDetails
คค 
.
คค  "
examAttemptAnswerDTO
คค  4
=
คค5 6
AssessmentDAL
คค7 D
.
คคD E"
GetExamAttemptAnswer
คคE Y
(
คคY Z
Convert
คคZ a
.
คคa b
ToInt32
คคb i
(
คคi j

questionId
คคj t
)
คคt u
,
คคu v
Convert
คคw ~
.
คค~ 
ToInt32คค 
(คค 
examObjคค 
.คค 
ExamAttemptIdคค 
)คค 
)คค 
;คค 
questionDetails
งง 
.
งง  
examAttemptText
งง  /
=
งง0 1.
 AdminIncorrectQuestionDetailsDAL
งง2 R
.
งงR S+
GetAdminExamAttemptAnswerText
งงS p
(
งงp q
Convert
งงq x
.
งงx y
ToInt32งงy €
(งง€ 
examIdงง 
)งง 
,งง 
Convertงง ‘
.งง‘ ’
ToInt32งง’ 
(งง 

questionIdงง ค
)งงค ฅ
)งงฅ ฆ
;งงฆ ง
questionDetails
ชช 
.
ชช  
	markCheck
ชช  )
=
ชช* +.
 AdminIncorrectQuestionDetailsDAL
ชช, L
.
ชชL M 
GetAdminMarkStatus
ชชM _
(
ชช_ `
Convert
ชช` g
.
ชชg h
ToInt32
ชชh o
(
ชชo p
examId
ชชp v
)
ชชv w
,
ชชw x
Convertชชy €
.ชช€ 
ToInt32ชช 
(ชช 

questionIdชช “
)ชช“ ”
)ชช” •
;ชช• –
questionDetails
ซซ 
.
ซซ  
examId
ซซ  &
=
ซซ' (
Convert
ซซ) 0
.
ซซ0 1
ToInt32
ซซ1 8
(
ซซ8 9
examId
ซซ9 ?
)
ซซ? @
;
ซซ@ A
questionDetails
ฌฌ 
.
ฌฌ  $
CurrentExamAttemptTime
ฌฌ  6
=
ฌฌ7 8
DateTime
ฌฌ9 A
.
ฌฌA B
Now
ฌฌB E
;
ฌฌE F

choiceList
ฏฏ 
=
ฏฏ 
AssessmentDAL
ฏฏ *
.
ฏฏ* +#
GetChoiceBYQuestionId
ฏฏ+ @
(
ฏฏ@ A
Convert
ฏฏA H
.
ฏฏH I
ToInt32
ฏฏI P
(
ฏฏP Q

questionId
ฏฏQ [
)
ฏฏ[ \
,
ฏฏ\ ]
examId
ฏฏ^ d
,
ฏฏd e
questionDetails
ฏฏf u
.
ฏฏu v#
examAttemptAnswerDTOฏฏv 
.ฏฏ 
ChoiceIdฏฏ “
,ฏฏ“ ”
questionDetailsฏฏ• ค
.ฏฏค ฅ
examAttemptIdฏฏฅ ฒ
,ฏฏฒ ณ
questionDetailsฏฏด ร
.ฏฏร ฤ"
NotRandomizeAnswerฏฏฤ ึ
)ฏฏึ ื
;ฏฏื ุ
questionDetails
ฐฐ 
.
ฐฐ  

choiceList
ฐฐ  *
=
ฐฐ+ ,

choiceList
ฐฐ- 7
;
ฐฐ7 8
questionDetails
ณณ 
.
ณณ  
PeerDetails
ณณ  +
=
ณณ, -.
 AdminIncorrectQuestionDetailsDAL
ณณ. N
.
ณณN O!
GetAdminPeerDetails
ณณO b
(
ณณb c
Convert
ณณc j
.
ณณj k
ToInt32
ณณk r
(
ณณr s

questionId
ณณs }
)
ณณ} ~
,
ณณ~ 
Convertณณ€ 
.ณณ 
ToInt32ณณ 
(ณณ 
userIdณณ –
)ณณ– —
)ณณ— 
;ณณ 
questionDetails
ถถ 
.
ถถ  
QuestionCount
ถถ  -
=
ถถ. /.
 AdminIncorrectQuestionDetailsDAL
ถถ0 P
.
ถถP Q#
GetAdminQuestionCount
ถถQ f
(
ถถf g
Convert
ถถg n
.
ถถn o
ToInt32
ถถo v
(
ถถv w
examId
ถถw }
)
ถถ} ~
)
ถถ~ 
;ถถ €
questionDetails
นน 
.
นน  
BCSCExcerpt
นน  +
=
นน, -
AssessmentDAL
นน. ;
.
นน; < 
GetBCSCExcerptText
นน< N
(
นนN O
Convert
นนO V
.
นนV W
ToInt32
นนW ^
(
นน^ _

questionId
นน_ i
)
นนi j
)
นนj k
;
นนk l
questionDetails
ปป 
.
ปป  
ExcerptHeadings
ปป  /
=
ปป0 1
AssessmentBL
ปป2 >
.
ปป> ? 
GetExcerptHeadings
ปป? Q
(
ปปQ R
questionDetails
ปปR a
.
ปปa b
BCSCExcerpt
ปปb m
)
ปปm n
;
ปปn o
questionDetails
ฝฝ 
.
ฝฝ  
	TopicName
ฝฝ  )
=
ฝฝ* +
AssessmentDAL
ฝฝ, 9
.
ฝฝ9 : 
GetTopicByQuestion
ฝฝ: L
(
ฝฝL M
Convert
ฝฝM T
.
ฝฝT U
ToInt32
ฝฝU \
(
ฝฝ\ ]

questionId
ฝฝ] g
)
ฝฝg h
)
ฝฝh i
;
ฝฝi j
return
พพ 
questionDetails
พพ &
;
พพ& '
}
ฟฟ 
catch
ภภ 
(
ภภ 
	Exception
ภภ 
e
ภภ 
)
ภภ 
{
มม 
Console
ยย 
.
ยย 
Write
ยย 
(
ยย 
e
ยย 
.
ยย  
Message
ยย  '
)
ยย' (
;
ยย( )
return
รร 
null
รร 
;
รร 
}
ฤฤ 
}
ลล 	
public
วว 
static
วว 
ExamDTO
วว 
GetAdminExamBYId
วว .
(
วว. /
int
วว/ 2
?
วว2 3
examId
วว4 :
)
วว: ;
{
ศศ 	
return
ษษ .
 AdminIncorrectQuestionDetailsDAL
ษษ 3
.
ษษ3 4
GetAdminExamBYId
ษษ4 D
(
ษษD E
examId
ษษE K
)
ษษK L
;
ษษL M
}
สส 	
}
หห 
}ฬฬ ฮ
qD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\AdminQuestionPerformanceBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

class &
AdminQuestionPerformanceBL +
{		 
public

 
static

 
List

 
<

 &
AdminQuestionPerformanceVM

 5
>

5 6+
AdminQuestionPerformanceDetails

7 V
(

V W&
AdminQuestionPerformanceVM

W q

queDetails

r |
)

| }
{ 	
return '
AdminQuestionPerformanceDAL .
.. /+
AdminQuestionPerformanceDetails/ N
(N O

queDetailsO Y
)Y Z
;Z [
} 	
public 
static 
int 
GetAllQuestionCount -
(- .&
AdminQuestionPerformanceVM. H

queDetailsI S
)S T
{ 	
return '
AdminQuestionPerformanceDAL .
.. /
GetAllQuestionCount/ B
(B C

queDetailsC M
)M N
;N O
} 	
public 
static 
List 
< &
AdminQuestionPerformanceVM 5
>5 6 
GetAllQuestionExport7 K
(K L&
AdminQuestionPerformanceVML f

queDetailsg q
)q r
{ 	
return '
AdminQuestionPerformanceDAL .
.. / 
GetAllQuestionExport/ C
(C D

queDetailsD N
)N O
;O P
} 	
public 
static 
async 
Task  
<  !
List! %
<% &#
AdminExamQuestionReport& =
>= >
>> ?(
GetAllAnsweredQuestionExport@ \
(\ ]&
AdminQuestionPerformanceVM] w

queDetails	x 
)
 
{ 	
return 
await '
AdminQuestionPerformanceDAL 4
.4 5(
GetAllAnsweredQuestionExport5 Q
(Q R

queDetailsR \
)\ ]
;] ^
} 	
public 
static 
List 
< #
AdminExamQuestionReport 2
>2 3)
GetAllAnsweredQuestionExport14 Q
(Q R&
AdminQuestionPerformanceVMR l

queDetailsm w
)w x
{ 	
return   '
AdminQuestionPerformanceDAL   .
.  . /)
GetAllAnsweredQuestionExport1  / L
(  L M

queDetails  M W
)  W X
;  X Y
}!! 	
public"" 
static"" 
int"" 
GetTableCountExport"" -
(""- .&
AdminQuestionPerformanceVM"". H

queDetails""I S
)""S T
{## 	
return$$ '
AdminQuestionPerformanceDAL$$ .
.$$. /
GetTableCountExport$$/ B
($$B C

queDetails$$C M
)$$M N
;$$N O
}%% 	
}(( 
})) ๗
dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\AdminReportBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
AdminReportBL %
{ 
public		 
static		 
List		 
<		 
AdminReportVM		 (
>		( )
AdminReportDetails		* <
(		< =
AdminReportVM		= J
adminreportDetails		K ]
)		] ^
{

 	
return 
AdminReportDAL !
.! "
AdminReportDetails" 4
(4 5
adminreportDetails5 G
)G H
;H I
} 	
public 
static 
List 
< 
AdminReportVM (
>( )

GetPYGYear* 4
(4 5
AdminReportVM5 B

pgyDetailsC M
)M N
{ 	
return 
AdminReportDAL !
.! "

GetPYGYear" ,
(, -

pgyDetails- 7
)7 8
;8 9
} 	
public 
static 
List 
< 
AdminReportVM (
>( )$
AdminReportDetailsExport* B
(B C
AdminReportVMC P
adminreportDetailsQ c
)c d
{ 	
return 
AdminReportDAL !
.! "$
AdminReportDetailsExport" :
(: ;
adminreportDetails; M
)M N
;N O
} 	
} 
} ขฃ
cD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\AssessmentBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
AssessmentBL $
{ 
private 
static 
string 
_sAttrLogPath +
=, - 
ConfigurationManager. B
.B C
AppSettingsC N
.N O
GetO R
(R S
$strS `
)` a
;a b
private 
static 
Serilog 
. 
Core #
.# $
Logger$ *
log+ .
=. /
new0 3
LoggerConfiguration4 G
(G H
)H I
.I J
WriteToJ Q
.Q R
RollingFileR ]
(] ^
_sAttrLogPath^ k
,k l
sharedm s
:s t
trueu y
,y z#
retainedFileCountLimit	{ ‘
:
‘ ’
$num
“ ”
)
” •
.
• –
CreateLogger
– ข
(
ข ฃ
)
ฃ ค
;
ค ฅ
public 
static 
QuestionDetails %
GetExamQuestion& 5
(5 6
int6 9
?9 :
examId; A
,A B
intC F
?F G

questionIdH R
,R S
intT W
?W X
userIdY _
)_ `
{ 	
SqlConnection 

connection $
=% &
new' *
SqlConnection+ 8
(8 9!
SqlConnectionProvider9 N
.N O
GetConnectionStringO b
(b c
DataAccessTypec q
.q r
Readr v
)v w
)w x
;x y

connection 
. 
Open 
( 
) 
; 
try 
{ 
log 
. 
Information 
(  
$str  X
,X Y
$strZ k
,k l
examIdm s
,s t

questionIdu 
,	 €
userId
 
)
 
;
 
ExamDTO   
examObj   
=    !
AssessmentBL  " .
.  . /
GetExamBYId  / :
(  : ;
examId  ; A
)  A B
;  B C
List!! 
<!! 
Choice!! 
>!! 

choiceList!! '
=!!( )
new!!* -
List!!. 2
<!!2 3
Choice!!3 9
>!!9 :
(!!: ;
)!!; <
;!!< =
QuestionDetails"" 
questionDetails""  /
=""0 1
new""2 5
QuestionDetails""6 E
(""E F
)""F G
;""G H
if## 
(## 
Convert## 
.## 
ToInt32## #
(### $

questionId##$ .
)##. /
==##0 2
$num##3 4
)##4 5
{$$ 
log%% 
.%% 
Information%% #
(%%# $
$str%%$ \
,%%\ ]
$str%%^ p
,%%p q
examId%%r x
,%%x y

questionId	%%z 
,
%% …
userId
%% 
)
%% 
;
%% 

questionId&& 
=&&  
AssessmentDAL&&! .
.&&. /
GetFirstQuestion&&/ ?
(&&? @
examObj&&@ G
)&&G H
;&&H I
log'' 
.'' 
Information'' #
(''# $
$str''$ Z
,''Z [
$str''\ n
,''n o
examId''p v
,''v w

questionId	''x 
,
'' 
userId
'' 
)
'' 
;
'' 
}(( 
log++ 
.++ 
Information++ 
(++  
$str++  X
,++X Y
$str++Z n
,++n o
examId++p v
,++v w

questionId	++x 
,
++ 
userId
++ 
)
++ 
;
++ 
questionDetails,, 
=,,  !
AssessmentDAL,," /
.,,/ 0
GetQuestionDetails,,0 B
(,,B C
Convert,,C J
.,,J K
ToInt32,,K R
(,,R S
examId,,S Y
),,Y Z
,,,Z [
Convert,,\ c
.,,c d
ToInt32,,d k
(,,k l

questionId,,l v
),,v w
),,w x
;,,x y
log-- 
.-- 
Information-- 
(--  
$str--  V
,--V W
$str--X l
,--l m
examId--n t
,--t u

questionId	--v €
,
--€ 
userId
-- 
)
-- 
;
-- 
questionDetails33 
.33  
rightChoiceId33  -
=33. /
AssessmentDAL330 =
.33= >&
GetRightChoiceByQuestionId33> X
(33X Y
Convert33Y `
.33` a
ToInt3233a h
(33h i

questionId33i s
)33s t
,33t u

connection	33v €
)
33€ 
;
33 
questionDetails66 
.66  

examStatus66  *
=66+ ,
examObj66- 4
.664 5

ExamStatus665 ?
;66? @
questionDetails77 
.77  
examAttemptId77  -
=77. /
examObj770 7
.777 8
ExamAttemptId778 E
;77E F
questionDetails88 
.88  
examTimeType88  ,
=88- .
examObj88/ 6
.886 7
ExamTimeType887 C
;88C D
questionDetails99 
.99  
examMode99  (
=99) *
examObj99+ 2
.992 3
ExamMode993 ;
;99; <
questionDetails:: 
.::  
examAnswerToShow::  0
=::1 2
examObj::3 :
.::: ;
ExamAnswerToShow::; K
;::K L
questionDetails;; 
.;;  
noOfQuestion;;  ,
=;;- .
examObj;;/ 6
.;;6 7
NoofQuestions;;7 D
;;;D E
questionDetails<< 
.<<  
ExamName<<  (
=<<) *
examObj<<+ 2
.<<2 3
ExamName<<3 ;
;<<; <
questionDetails== 
.==  
ExamType==  (
===) *
examObj==+ 2
.==2 3
ExamType==3 ;
;==; <
questionDetails>> 
.>>  
userId>>  &
=>>' (
examObj>>) 0
.>>0 1
UserId>>1 7
;>>7 8
log@@ 
.@@ 
Information@@ 
(@@  
$str@@  X
,@@X Y
$str@@Z q
,@@q r
examId@@s y
,@@y z

questionId	@@{ …
,
@@… 
userId
@@ 
)
@@ 
;
@@ 
questionDetailsAA 
.AA  
questionDiscussionAA  2
=AA3 4
AssessmentDALAA5 B
.AAB C!
GetQuestionDiscussionAAC X
(AAX Y
ConvertAAY `
.AA` a
ToInt32AAa h
(AAh i

questionIdAAi s
)AAs t
,AAt u

connection	AAv €
)
AA€ 
;
AA 
logBB 
.BB 
InformationBB 
(BB  
$strBB  V
,BBV W
$strBBX o
,BBo p
examIdBBq w
,BBw x

questionId	BBy 
,
BB 
userId
BB… 
)
BB 
;
BB 
questionDetailsEE 
.EE  

referencesEE  *
=EE+ ,
AssessmentDALEE- :
.EE: ;
GetReferencesEE; H
(EEH I
ConvertEEI P
.EEP Q
ToInt32EEQ X
(EEX Y

questionIdEEY c
)EEc d
,EEd e

connectionEEf p
)EEp q
;EEq r
questionDetailsHH 
.HH  
notesHH  %
=HH& '
AssessmentDALHH( 5
.HH5 6
GetNotesHH6 >
(HH> ?
ConvertHH? F
.HHF G
ToInt32HHG N
(HHN O

questionIdHHO Y
)HHY Z
,HHZ [
ConvertHH\ c
.HHc d
ToInt32HHd k
(HHk l
userIdHHl r
)HHr s
,HHs t
ConvertHHu |
.HH| }
ToInt32	HH} 
(
HH …
examId
HH… 
)
HH 
,
HH 

connection
HH 
)
HH 
;
HH 
questionDetailsKK 
.KK  
RelatedContentsKK  /
=KK0 1
AssessmentDALKK2 ?
.KK? @
GetRelatedContentKK@ Q
(KKQ R
ConvertKKR Y
.KKY Z
ToInt32KKZ a
(KKa b

questionIdKKb l
)KKl m
,KKm n

connectionKKo y
)KKy z
;KKz {
questionDetailsNN 
.NN   
examAttemptAnswerDTONN  4
=NN5 6
AssessmentDALNN7 D
.NND E 
GetExamAttemptAnswerNNE Y
(NNY Z
ConvertNNZ a
.NNa b
ToInt32NNb i
(NNi j

questionIdNNj t
)NNt u
,NNu v
ConvertNNw ~
.NN~ 
ToInt32	NN 
(
NN 
examObj
NN 
.
NN 
ExamAttemptId
NN 
)
NN 
,
NN 

connection
NN ฉ
)
NNฉ ช
;
NNช ซ
questionDetailsQQ 
.QQ  
examAttemptTextQQ  /
=QQ0 1
AssessmentDALQQ2 ?
.QQ? @$
GetExamAttemptAnswerTextQQ@ X
(QQX Y
ConvertQQY `
.QQ` a
ToInt32QQa h
(QQh i
examIdQQi o
)QQo p
,QQp q
ConvertQQr y
.QQy z
ToInt32	QQz 
(
QQ 

questionId
QQ 
)
QQ 
)
QQ 
;
QQ 
questionDetailsTT 
.TT  
	markCheckTT  )
=TT* +
AssessmentDALTT, 9
.TT9 :
GetMarkStatusTT: G
(TTG H
ConvertTTH O
.TTO P
ToInt32TTP W
(TTW X
examIdTTX ^
)TT^ _
,TT_ `
ConvertTTa h
.TTh i
ToInt32TTi p
(TTp q

questionIdTTq {
)TT{ |
,TT| }
Convert	TT~ …
.
TT… 
ToInt32
TT 
(
TT 
userId
TT ”
)
TT” •
)
TT• –
;
TT– —
questionDetailsUU 
.UU  
examIdUU  &
=UU' (
ConvertUU) 0
.UU0 1
ToInt32UU1 8
(UU8 9
examIdUU9 ?
)UU? @
;UU@ A
questionDetailsVV 
.VV  "
CurrentExamAttemptTimeVV  6
=VV7 8
DateTimeVV9 A
.VVA B
NowVVB E
;VVE F

choiceListYY 
=YY 
AssessmentDALYY *
.YY* +!
GetChoiceBYQuestionIdYY+ @
(YY@ A
ConvertYYA H
.YYH I
ToInt32YYI P
(YYP Q

questionIdYYQ [
)YY[ \
,YY\ ]
examIdYY^ d
,YYd e
questionDetailsYYf u
.YYu v!
examAttemptAnswerDTO	YYv 
.
YY 
ChoiceId
YY “
,
YY“ ”
questionDetails
YY• ค
.
YYค ฅ
examAttemptId
YYฅ ฒ
,
YYฒ ณ
questionDetails
YYด ร
.
YYร ฤ 
NotRandomizeAnswer
YYฤ ึ
,
YYึ ื

connection
YYุ โ
)
YYโ ใ
;
YYใ ไ
questionDetailsZZ 
.ZZ  

choiceListZZ  *
=ZZ+ ,

choiceListZZ- 7
;ZZ7 8
log^^ 
.^^ 
Information^^ 
(^^  
$str^^  X
,^^X Y
$str^^Z j
,^^j k
examId^^l r
,^^r s

questionId^^t ~
,^^~ 
userId
^^€ 
)
^^ 
;
^^ 
var__ 
peerdata__ 
=__ 
AssessmentDAL__ ,
.__, -
GetPeerDetails__- ;
(__; <
Convert__< C
.__C D
ToInt32__D K
(__K L

questionId__L V
)__V W
,__W X
Convert__Y `
.__` a
ToInt32__a h
(__h i
userId__i o
)__o p
,__p q
questionDetails	__r 
.
__ 
examAttemptId
__ 
)
__ 
;
__ ‘
log`` 
.`` 
Information`` 
(``  
$str``  V
,``V W
$str``X h
,``h i
examId``j p
,``p q

questionId``r |
,``| }
userId	``~ 
)
`` …
;
``… 
questionDetailsaa 
.aa  
PeerDetailsaa  +
=aa, -
peerdataaa. 6
.aa6 7
Whereaa7 <
(aa< =
saa= >
=>aa? A
saaB C
.aaC D
ChoiceIdaaD L
!=aaM O
$numaaP Q
)aaQ R
.aaR S
OrderByaaS Z
(aaZ [
saa[ \
=>aa] _
saa` a
.aaa b
ChoiceOptionaab n
)aan o
.aao p
ToListaap v
(aav w
)aaw x
;aax y
logdd 
.dd 
Informationdd 
(dd  
$strdd  X
,ddX Y
$strddZ l
,ddl m
examIdddn t
,ddt u

questionId	ddv €
,
dd€ 
userId
dd 
)
dd 
;
dd 
questionDetailsee 
.ee  
QuestionCountee  -
=ee. /
AssessmentDALee0 =
.ee= >
GetQuestionCountee> N
(eeN O
ConverteeO V
.eeV W
ToInt32eeW ^
(ee^ _
examIdee_ e
)eee f
)eef g
;eeg h
logff 
.ff 
Informationff 
(ff  
$strff  V
,ffV W
$strffX j
,ffj k
examIdffl r
,ffr s

questionIdfft ~
,ff~ 
userId
ff€ 
)
ff 
;
ff 
logpp 
.pp 
Informationpp 
(pp  
$strpp  X
,ppX Y
$strppZ n
,ppn o
examIdppp v
,ppv w

questionId	ppx 
,
pp 
userId
pp 
)
pp 
;
pp 
questionDetailsqq 
.qq  
	TopicNameqq  )
=qq* +
AssessmentDALqq, 9
.qq9 :
GetTopicByQuestionqq: L
(qqL M
ConvertqqM T
.qqT U
ToInt32qqU \
(qq\ ]

questionIdqq] g
)qqg h
)qqh i
;qqi j
logrr 
.rr 
Informationrr 
(rr  
$strrr  V
,rrV W
$strrrX l
,rrl m
examIdrrn t
,rrt u

questionId	rrv €
,
rr€ 
userId
rr 
)
rr 
;
rr 

connectionss 
.ss 
Closess  
(ss  !
)ss! "
;ss" #
logtt 
.tt 
Informationtt 
(tt  
$strtt  V
,ttV W
$strttX i
,tti j
examIdttk q
,ttq r

questionIdtts }
,tt} ~
userId	tt …
)
tt… 
;
tt 
returnuu 
questionDetailsuu &
;uu& '
}vv 
catchww 
(ww 
	Exceptionww 
eww 
)ww 
{xx 
logyy 
.yy 
Erroryy 
(yy 
eyy 
.yy 
Messageyy #
+yy$ %
$stryy& ?
+yy@ A
$stryyB L
+yyM N
examIdyyO U
+yyV W
$stryyX b
+yyc d
userIdyye k
)yyk l
;yyl m
Consolezz 
.zz 
Writezz 
(zz 
ezz 
.zz  
Messagezz  '
)zz' (
;zz( )
return{{ 
null{{ 
;{{ 
}|| 
}}} 	
public
€€ 
static
€€ 
QuestionDetails
€€ %"
GetExamQuestionForSR
€€& :
(
€€: ;
int
€€; >
?
€€> ?
examId
€€@ F
,
€€F G
int
€€H K
?
€€K L

questionId
€€M W
,
€€W X
int
€€Y \
?
€€\ ]
userId
€€^ d
)
€€d e
{
 	
SqlConnection
 

connection
 $
=
% &
new
' *
SqlConnection
+ 8
(
8 9#
SqlConnectionProvider
9 N
.
N O!
GetConnectionString
O b
(
b c
DataAccessType
c q
.
q r
Read
r v
)
v w
)
w x
;
x y

connection
 
.
 
Open
 
(
 
)
 
;
 
try
…… 
{
 
log
 
.
 
Information
 
(
  
$str
  X
,
X Y
$str
Z k
,
k l
examId
m s
,
s t

questionId
u 
, €
userId 
) 
; 
ExamDTO
 
examObj
 
=
  !
AssessmentBL
" .
.
. /
GetExamBYId
/ :
(
: ;
examId
; A
)
A B
;
B C
List
 
<
 
Choice
 
>
 

choiceList
 '
=
( )
new
* -
List
. 2
<
2 3
Choice
3 9
>
9 :
(
: ;
)
; <
;
< =
QuestionDetails
 
questionDetails
  /
=
0 1
new
2 5
QuestionDetails
6 E
(
E F
)
F G
;
G H
if
 
(
 
Convert
 
.
 
ToInt32
 #
(
# $

questionId
$ .
)
. /
==
0 2
$num
3 4
)
4 5
{
 
log
 
.
 
Information
 #
(
# $
$str
$ \
,
\ ]
$str
^ p
,
p q
examId
r x
,
x y

questionIdz 
, …
userId 
) 
; 

questionId
 
=
  
AssessmentDAL
! .
.
. /
GetFirstQuestion
/ ?
(
? @
examObj
@ G
)
G H
;
H I
log
 
.
 
Information
 #
(
# $
$str
$ Z
,
Z [
$str
\ n
,
n o
examId
p v
,
v w

questionIdx 
, 
userId 
) 
; 
}
 
log
““ 
.
““ 
Information
““ 
(
““  
$str
““  X
,
““X Y
$str
““Z n
,
““n o
examId
““p v
,
““v w

questionId““x 
,““ 
userId““ 
)““ 
;““ 
questionDetails
”” 
=
””  !
AssessmentDAL
””" /
.
””/ 0#
GetQuestionDetails_SR
””0 E
(
””E F
Convert
””F M
.
””M N
ToInt32
””N U
(
””U V
examId
””V \
)
””\ ]
,
””] ^
Convert
””_ f
.
””f g
ToInt32
””g n
(
””n o

questionId
””o y
)
””y z
)
””z {
;
””{ |
log
•• 
.
•• 
Information
•• 
(
••  
$str
••  V
,
••V W
$str
••X l
,
••l m
examId
••n t
,
••t u

questionId••v €
,••€ 
userId•• 
)•• 
;•• 
questionDetails
 
.
  
rightChoiceId
  -
=
. /
AssessmentDAL
0 =
.
= >(
GetRightChoiceByQuestionId
> X
(
X Y
Convert
Y `
.
` a
ToInt32
a h
(
h i

questionId
i s
)
s t
,
t u

connectionv €
)€ 
; 
questionDetails
 
.
  

examStatus
  *
=
+ ,
examObj
- 4
.
4 5

ExamStatus
5 ?
;
? @
questionDetails
 
.
  
examAttemptId
  -
=
. /
examObj
0 7
.
7 8
ExamAttemptId
8 E
;
E F
questionDetails
 
.
  
examTimeType
  ,
=
- .
examObj
/ 6
.
6 7
ExamTimeType
7 C
;
C D
questionDetails
 
.
  
examMode
  (
=
) *
examObj
+ 2
.
2 3
ExamMode
3 ;
;
; <
questionDetails
 
.
  
examAnswerToShow
  0
=
1 2
examObj
3 :
.
: ;
ExamAnswerToShow
; K
;
K L
questionDetails
   
.
    
noOfQuestion
    ,
=
  - .
examObj
  / 6
.
  6 7
NoofQuestions
  7 D
;
  D E
questionDetails
กก 
.
กก  
ExamName
กก  (
=
กก) *
examObj
กก+ 2
.
กก2 3
ExamName
กก3 ;
;
กก; <
questionDetails
ขข 
.
ขข  
ExamType
ขข  (
=
ขข) *
examObj
ขข+ 2
.
ขข2 3
ExamType
ขข3 ;
;
ขข; <
questionDetails
ฃฃ 
.
ฃฃ  
userId
ฃฃ  &
=
ฃฃ' (
examObj
ฃฃ) 0
.
ฃฃ0 1
UserId
ฃฃ1 7
;
ฃฃ7 8
log
ฅฅ 
.
ฅฅ 
Information
ฅฅ 
(
ฅฅ  
$str
ฅฅ  X
,
ฅฅX Y
$str
ฅฅZ q
,
ฅฅq r
examId
ฅฅs y
,
ฅฅy z

questionIdฅฅ{ …
,ฅฅ… 
userIdฅฅ 
)ฅฅ 
;ฅฅ 
questionDetails
ฆฆ 
.
ฆฆ   
questionDiscussion
ฆฆ  2
=
ฆฆ3 4
AssessmentDAL
ฆฆ5 B
.
ฆฆB C#
GetQuestionDiscussion
ฆฆC X
(
ฆฆX Y
Convert
ฆฆY `
.
ฆฆ` a
ToInt32
ฆฆa h
(
ฆฆh i

questionId
ฆฆi s
)
ฆฆs t
,
ฆฆt u

connectionฆฆv €
)ฆฆ€ 
;ฆฆ 
log
งง 
.
งง 
Information
งง 
(
งง  
$str
งง  V
,
งงV W
$str
งงX o
,
งงo p
examId
งงq w
,
งงw x

questionIdงงy 
,งง 
userIdงง… 
)งง 
;งง 
questionDetails
ชช 
.
ชช  

references
ชช  *
=
ชช+ ,
AssessmentDAL
ชช- :
.
ชช: ;
GetReferences
ชช; H
(
ชชH I
Convert
ชชI P
.
ชชP Q
ToInt32
ชชQ X
(
ชชX Y

questionId
ชชY c
)
ชชc d
,
ชชd e

connection
ชชf p
)
ชชp q
;
ชชq r
questionDetails
ญญ 
.
ญญ  
RelatedContents
ญญ  /
=
ญญ0 1
AssessmentDAL
ญญ2 ?
.
ญญ? @
GetRelatedContent
ญญ@ Q
(
ญญQ R
Convert
ญญR Y
.
ญญY Z
ToInt32
ญญZ a
(
ญญa b

questionId
ญญb l
)
ญญl m
,
ญญm n

connection
ญญo y
)
ญญy z
;
ญญz {
questionDetails
ฐฐ 
.
ฐฐ  
notes
ฐฐ  %
=
ฐฐ& '
AssessmentDAL
ฐฐ( 5
.
ฐฐ5 6
GetNotes
ฐฐ6 >
(
ฐฐ> ?
Convert
ฐฐ? F
.
ฐฐF G
ToInt32
ฐฐG N
(
ฐฐN O

questionId
ฐฐO Y
)
ฐฐY Z
,
ฐฐZ [
Convert
ฐฐ\ c
.
ฐฐc d
ToInt32
ฐฐd k
(
ฐฐk l
userId
ฐฐl r
)
ฐฐr s
,
ฐฐs t
Convert
ฐฐu |
.
ฐฐ| }
ToInt32ฐฐ} 
(ฐฐ …
examIdฐฐ… 
)ฐฐ 
,ฐฐ 

connectionฐฐ 
)ฐฐ 
;ฐฐ 
questionDetails
ณณ 
.
ณณ  "
examAttemptAnswerDTO
ณณ  4
=
ณณ5 6
AssessmentDAL
ณณ7 D
.
ณณD E"
GetExamAttemptAnswer
ณณE Y
(
ณณY Z
Convert
ณณZ a
.
ณณa b
ToInt32
ณณb i
(
ณณi j

questionId
ณณj t
)
ณณt u
,
ณณu v
Convert
ณณw ~
.
ณณ~ 
ToInt32ณณ 
(ณณ 
examObjณณ 
.ณณ 
ExamAttemptIdณณ 
)ณณ 
,ณณ 

connectionณณ ฉ
)ณณฉ ช
;ณณช ซ
questionDetails
ถถ 
.
ถถ  
examAttemptText
ถถ  /
=
ถถ0 1
AssessmentDAL
ถถ2 ?
.
ถถ? @&
GetExamAttemptAnswerText
ถถ@ X
(
ถถX Y
Convert
ถถY `
.
ถถ` a
ToInt32
ถถa h
(
ถถh i
examId
ถถi o
)
ถถo p
,
ถถp q
Convert
ถถr y
.
ถถy z
ToInt32ถถz 
(ถถ 

questionIdถถ 
)ถถ 
)ถถ 
;ถถ 
questionDetails
นน 
.
นน  
	markCheck
นน  )
=
นน* +
AssessmentDAL
นน, 9
.
นน9 :
GetMarkStatus
นน: G
(
นนG H
Convert
นนH O
.
นนO P
ToInt32
นนP W
(
นนW X
examId
นนX ^
)
นน^ _
,
นน_ `
Convert
นนa h
.
นนh i
ToInt32
นนi p
(
นนp q

questionId
นนq {
)
นน{ |
,
นน| }
Convertนน~ …
.นน… 
ToInt32นน 
(นน 
userIdนน ”
)นน” •
)นน• –
;นน– —
questionDetails
บบ 
.
บบ  
examId
บบ  &
=
บบ' (
Convert
บบ) 0
.
บบ0 1
ToInt32
บบ1 8
(
บบ8 9
examId
บบ9 ?
)
บบ? @
;
บบ@ A
questionDetails
ปป 
.
ปป  $
CurrentExamAttemptTime
ปป  6
=
ปป7 8
DateTime
ปป9 A
.
ปปA B
Now
ปปB E
;
ปปE F

choiceList
พพ 
=
พพ 
AssessmentDAL
พพ *
.
พพ* +#
GetChoiceBYQuestionId
พพ+ @
(
พพ@ A
Convert
พพA H
.
พพH I
ToInt32
พพI P
(
พพP Q

questionId
พพQ [
)
พพ[ \
,
พพ\ ]
examId
พพ^ d
,
พพd e
questionDetails
พพf u
.
พพu v#
examAttemptAnswerDTOพพv 
.พพ 
ChoiceIdพพ “
,พพ“ ”
questionDetailsพพ• ค
.พพค ฅ
examAttemptIdพพฅ ฒ
,พพฒ ณ
questionDetailsพพด ร
.พพร ฤ"
NotRandomizeAnswerพพฤ ึ
,พพึ ื

connectionพพุ โ
)พพโ ใ
;พพใ ไ
questionDetails
ฟฟ 
.
ฟฟ  

choiceList
ฟฟ  *
=
ฟฟ+ ,

choiceList
ฟฟ- 7
;
ฟฟ7 8
log
รร 
.
รร 
Information
รร 
(
รร  
$str
รร  X
,
รรX Y
$str
รรZ j
,
รรj k
examId
รรl r
,
รรr s

questionId
รรt ~
,
รร~ 
userIdรร€ 
)รร 
;รร 
var
ฤฤ 
peerdata
ฤฤ 
=
ฤฤ 
AssessmentDAL
ฤฤ ,
.
ฤฤ, -
GetPeerDetails
ฤฤ- ;
(
ฤฤ; <
Convert
ฤฤ< C
.
ฤฤC D
ToInt32
ฤฤD K
(
ฤฤK L

questionId
ฤฤL V
)
ฤฤV W
,
ฤฤW X
Convert
ฤฤY `
.
ฤฤ` a
ToInt32
ฤฤa h
(
ฤฤh i
userId
ฤฤi o
)
ฤฤo p
,
ฤฤp q
questionDetailsฤฤr 
.ฤฤ 
examAttemptIdฤฤ 
)ฤฤ 
;ฤฤ ‘
log
ลล 
.
ลล 
Information
ลล 
(
ลล  
$str
ลล  V
,
ลลV W
$str
ลลX h
,
ลลh i
examId
ลลj p
,
ลลp q

questionId
ลลr |
,
ลล| }
userIdลล~ 
)ลล …
;ลล… 
questionDetails
ฦฦ 
.
ฦฦ  
PeerDetails
ฦฦ  +
=
ฦฦ, -
peerdata
ฦฦ. 6
.
ฦฦ6 7
Where
ฦฦ7 <
(
ฦฦ< =
s
ฦฦ= >
=>
ฦฦ? A
s
ฦฦB C
.
ฦฦC D
ChoiceId
ฦฦD L
!=
ฦฦM O
$num
ฦฦP Q
)
ฦฦQ R
.
ฦฦR S
OrderBy
ฦฦS Z
(
ฦฦZ [
s
ฦฦ[ \
=>
ฦฦ] _
s
ฦฦ` a
.
ฦฦa b
ChoiceOption
ฦฦb n
)
ฦฦn o
.
ฦฦo p
ToList
ฦฦp v
(
ฦฦv w
)
ฦฦw x
;
ฦฦx y
log
ษษ 
.
ษษ 
Information
ษษ 
(
ษษ  
$str
ษษ  X
,
ษษX Y
$str
ษษZ l
,
ษษl m
examId
ษษn t
,
ษษt u

questionIdษษv €
,ษษ€ 
userIdษษ 
)ษษ 
;ษษ 
questionDetails
สส 
.
สส  
QuestionCount
สส  -
=
สส. /
AssessmentDAL
สส0 =
.
สส= >
GetQuestionCount
สส> N
(
สสN O
Convert
สสO V
.
สสV W
ToInt32
สสW ^
(
สส^ _
examId
สส_ e
)
สสe f
)
สสf g
;
สสg h
log
หห 
.
หห 
Information
หห 
(
หห  
$str
หห  V
,
หหV W
$str
หหX j
,
หหj k
examId
หหl r
,
หหr s

questionId
หหt ~
,
หห~ 
userIdหห€ 
)หห 
;หห 
log
ีี 
.
ีี 
Information
ีี 
(
ีี  
$str
ีี  X
,
ีีX Y
$str
ีีZ n
,
ีีn o
examId
ีีp v
,
ีีv w

questionIdีีx 
,ีี 
userIdีี 
)ีี 
;ีี 
questionDetails
ึึ 
.
ึึ  
	TopicName
ึึ  )
=
ึึ* +
AssessmentDAL
ึึ, 9
.
ึึ9 : 
GetTopicByQuestion
ึึ: L
(
ึึL M
Convert
ึึM T
.
ึึT U
ToInt32
ึึU \
(
ึึ\ ]

questionId
ึึ] g
)
ึึg h
)
ึึh i
;
ึึi j
log
ืื 
.
ืื 
Information
ืื 
(
ืื  
$str
ืื  V
,
ืืV W
$str
ืืX l
,
ืืl m
examId
ืืn t
,
ืืt u

questionIdืืv €
,ืื€ 
userIdืื 
)ืื 
;ืื 

connection
ุุ 
.
ุุ 
Close
ุุ  
(
ุุ  !
)
ุุ! "
;
ุุ" #
log
ูู 
.
ูู 
Information
ูู 
(
ูู  
$str
ูู  V
,
ููV W
$str
ููX i
,
ููi j
examId
ููk q
,
ููq r

questionId
ููs }
,
ูู} ~
userIdูู …
)ูู… 
;ูู 
return
ฺฺ 
questionDetails
ฺฺ &
;
ฺฺ& '
}
ÛÛ 
catch
ÜÜ 
(
ÜÜ 
	Exception
ÜÜ 
e
ÜÜ 
)
ÜÜ 
{
ÝÝ 
log
ÞÞ 
.
ÞÞ 
Error
ÞÞ 
(
ÞÞ 
e
ÞÞ 
.
ÞÞ 
Message
ÞÞ #
+
ÞÞ$ %
$str
ÞÞ& ?
+
ÞÞ@ A
$str
ÞÞB L
+
ÞÞM N
examId
ÞÞO U
+
ÞÞV W
$str
ÞÞX b
+
ÞÞc d
userId
ÞÞe k
)
ÞÞk l
;
ÞÞl m
Console
฿฿ 
.
฿฿ 
Write
฿฿ 
(
฿฿ 
e
฿฿ 
.
฿฿  
Message
฿฿  '
)
฿฿' (
;
฿฿( )
return
เเ 
null
เเ 
;
เเ 
}
แแ 
}
โโ 	
public
ไไ 
static
ไไ 
string
ไไ 
	StripHTML
ไไ &
(
ไไ& '
string
ไไ' -
input
ไไ. 3
)
ไไ3 4
{
ๅๅ 	
if
ๆๆ 
(
ๆๆ 
input
ๆๆ 
!=
ๆๆ 
null
ๆๆ 
)
ๆๆ 
{
็็ 
return
่่ 
Regex
่่ 
.
่่ 
Replace
่่ $
(
่่$ %
input
่่% *
,
่่* +
$str
่่, 3
,
่่3 4
string
่่5 ;
.
่่; <
Empty
่่< A
)
่่A B
;
่่B C
}
้้ 
else
๊๊ 
{
๋๋ 
return
์์ 
null
์์ 
;
์์ 
}
ํํ 
}
๎๎ 	
public
ÿÿ 
static
ÿÿ 
int
ÿÿ &
UpdateSkipAnswerQuestion
ÿÿ 2
(
ÿÿ2 3 
UpdateSkipAnswered
ÿÿ3 E
updateAnswer
ÿÿF R
)
ÿÿR S
{
€€ 	
log
 
.
 
Information
 
(
 
$str
 T
,
T U
$str
V p
,
p q
updateAnswer
r ~
.
~ 
examId …
,… 
updateAnswer “
.“ ”
userId” 
, 
updateAnswer จ
.จ ฉ

questionIdฉ ณ
)ณ ด
;ด ต
ExamDTO
 
examObj
 
=
 
ExamDAL
 %
.
% &
GetExamBYId
& 1
(
1 2
updateAnswer
2 >
.
> ?
examId
? E
)
E F
;
F G
if
 
(
 
updateAnswer
 
.
 
selectedChoiceId
 -
==
. 0
$num
1 2
)
2 3
{
 !
ExamSkipQuestionDTO
…… #
skipQuestion
……$ 0
=
……1 2
new
……3 6!
ExamSkipQuestionDTO
……7 J
{
 
ExamId
 
=
 
updateAnswer
 )
.
) *
examId
* 0
,
0 1

QuestionId
 
=
  
updateAnswer
! -
.
- .
currentQuestionId
. ?
,
? @
ExamAttemptId
 !
=
" #
Convert
$ +
.
+ ,
ToInt32
, 3
(
3 4
updateAnswer
4 @
.
@ A
examAttemptId
A N
)
N O
,
O P
UserId
 
=
 
updateAnswer
 )
.
) *
userId
* 0
,
0 1
ExamCreatedDate
 #
=
$ %
examObj
& -
.
- .
ExamCreateDate
. <
,
< =!
ExamLastAttemptDate
 '
=
( )
DateTime
* 2
.
2 3
Now
3 6
,
6 7
}
 
;
 
log
 
.
 
Information
 
(
  
$str
  U
,
U V
$str
W q
,
q r
updateAnswer
s 
. €
examId€ 
, 
updateAnswer ”
.” •
userId• 
, 
updateAnswer ฉ
.ฉ ช

questionIdช ด
)ด ต
;ต ถ
return
 
AssessmentDAL
 $
.
$ % 
UpdateSkipQuestion
% 7
(
7 8
skipQuestion
8 D
)
D E
;
E F
}
 
else
‘‘ 
{
’’ "
IncorrectQuestionDTO
““ $
incorrectQuestion
““% 6
=
““7 8
new
““9 <"
IncorrectQuestionDTO
““= Q
{
”” 

QuestionId
•• 
=
••  
updateAnswer
••! -
.
••- .
currentQuestionId
••. ?
,
••? @
UserId
–– 
=
–– 
updateAnswer
–– )
.
––) *
userId
––* 0
,
––0 1
ExamAttemptId
—— !
=
——" #
Convert
——$ +
.
——+ ,
ToInt32
——, 3
(
——3 4
updateAnswer
——4 @
.
——@ A
examAttemptId
——A N
)
——N O
,
——O P
IsRight
 
=
 
Convert
 %
.
% &
	ToBoolean
& /
(
/ 0
updateAnswer
0 <
.
< =
isRight
= D
)
D E
,
E F
}
 
;
 
if
 
(
 
examObj
 
.
 
ExamType
 $
!=
% '
Convert
( /
.
/ 0
ToInt32
0 7
(
7 8
ExamManagerEnum
8 G
.
G H
ExamType
H P
.
P Q
SpacedRepetition
Q a
)
a b
)
b c
{
 
log
 
.
 
Information
 #
(
# $
$str
$ ]
,
] ^
$str
_ {
,
{ |
updateAnswer} 
. 
examId 
, ‘
updateAnswer’ 
. 
userId ฅ
,ฅ ฆ
updateAnswerง ณ
.ณ ด

questionIdด พ
)พ ฟ
;ฟ ภ
AssessmentDAL
 !
.
! "(
UpdateOrAddIncorrectAnswer
" <
(
< =
incorrectQuestion
= N
)
N O
;
O P
log
 
.
 
Information
 #
(
# $
$str
$ Z
,
Z [
$str
\ x
,
x y
updateAnswerz 
. 
examId 
, 
updateAnswer 
. 
userId ข
,ข ฃ
updateAnswerค ฐ
.ฐ ฑ

questionIdฑ ป
)ป ผ
;ผ ฝ
}
 "
ExamAttemptAnswerDTO
   $
attemptAnswer
  % 2
=
  3 4
new
  5 8"
ExamAttemptAnswerDTO
  9 M
{
กก 
ChoiceId
ขข 
=
ขข 
updateAnswer
ขข +
.
ขข+ ,
selectedChoiceId
ขข, <
,
ขข< =
IsRight
ฃฃ 
=
ฃฃ 
Convert
ฃฃ %
.
ฃฃ% &
	ToBoolean
ฃฃ& /
(
ฃฃ/ 0
updateAnswer
ฃฃ0 <
.
ฃฃ< =
isRight
ฃฃ= D
)
ฃฃD E
,
ฃฃE F
ExamAttemptDate
คค #
=
คค$ %
DateTime
คค& .
.
คค. /
Now
คค/ 2
,
คค2 3
UserId
ฅฅ 
=
ฅฅ 
updateAnswer
ฅฅ )
.
ฅฅ) *
userId
ฅฅ* 0
,
ฅฅ0 1

QuestionId
ฆฆ 
=
ฆฆ  
updateAnswer
ฆฆ! -
.
ฆฆ- .
currentQuestionId
ฆฆ. ?
,
ฆฆ? @
ExamAttemptId
งง !
=
งง" #
Convert
งง$ +
.
งง+ ,
ToInt32
งง, 3
(
งง3 4
updateAnswer
งง4 @
.
งง@ A
examAttemptId
งงA N
)
งงN O
,
งงO P
IsYourAnswer
จจ  
=
จจ! "
updateAnswer
จจ# /
.
จจ/ 0
isYourAnswer
จจ0 <
,
จจ< =
UserExamState
ฉฉ !
=
ฉฉ" #
updateAnswer
ฉฉ$ 0
.
ฉฉ0 1
UserExamState
ฉฉ1 >
,
ฉฉ> ?
}
ชช 
;
ชช 
if
ซซ 
(
ซซ 
examObj
ซซ 
.
ซซ 
ExamType
ซซ $
==
ซซ% '
Convert
ซซ( /
.
ซซ/ 0
ToInt32
ซซ0 7
(
ซซ7 8
ExamManagerEnum
ซซ8 G
.
ซซG H
ExamType
ซซH P
.
ซซP Q
SpacedRepetition
ซซQ a
)
ซซa b
)
ซซb c
{
ฌฌ 
if
ญญ 
(
ญญ 
Convert
ญญ 
.
ญญ 
	ToBoolean
ญญ (
(
ญญ( )
updateAnswer
ญญ) 5
.
ญญ5 6
isRight
ญญ6 =
)
ญญ= >
==
ญญ> @
false
ญญA F
)
ญญF G
{
ฎฎ #
SRRecommendedDeleteVM
ฏฏ -
updatedeltopic
ฏฏ. <
=
ฏฏ= >
new
ฏฏ? B#
SRRecommendedDeleteVM
ฏฏC X
{
ฐฐ 
ExamId
ฑฑ "
=
ฑฑ" #
updateAnswer
ฑฑ$ 0
.
ฑฑ0 1
examId
ฑฑ1 7
,
ฑฑ7 8
UserId
ฒฒ "
=
ฒฒ" #
updateAnswer
ฒฒ$ 0
.
ฒฒ0 1
userId
ฒฒ1 7
,
ฒฒ7 8

QuestionId
ณณ &
=
ณณ& '
updateAnswer
ณณ( 4
.
ณณ4 5

questionId
ณณ5 ?
,
ณณ? @
IsRight
ดด #
=
ดด# $
Convert
ดด% ,
.
ดด, -
	ToBoolean
ดด- 6
(
ดด6 7
updateAnswer
ดด7 C
.
ดดC D
isRight
ดดD K
)
ดดK L
}
ตต 
;
ตต 
AssessmentDAL
ถถ %
.
ถถ% &
UpdateDeleteTopic
ถถ& 7
(
ถถ7 8
updatedeltopic
ถถ8 F
)
ถถF G
;
ถถG H
}
ทท 
log
ธธ 
.
ธธ 
Information
ธธ #
(
ธธ# $
$str
ธธ$ M
,
ธธM N
$str
ธธO n
,
ธธn o
updateAnswer
ธธp |
.
ธธ| }
examIdธธ} 
,ธธ 
updateAnswerธธ… ‘
.ธธ‘ ’
userIdธธ’ 
)ธธ 
;ธธ +
UpdateSpacedRepetitionDetails
นน 1
(
นน1 2
examObj
นน2 9
,
นน9 :
updateAnswer
นน; G
,
นนG H
ref
นนI L
attemptAnswer
นนM Z
)
นนZ [
;
นน[ \
log
บบ 
.
บบ 
Information
บบ #
(
บบ# $
$str
บบ$ K
,
บบK L
$str
บบM l
,
บบl m
updateAnswer
บบn z
.
บบz {
examIdบบ{ 
,บบ 
updateAnswerบบ 
.บบ 
userIdบบ –
)บบ– —
;บบ— 
}
ปป 
log
ผผ 
.
ผผ 
Information
ผผ 
(
ผผ  
$str
ผผ  V
,
ผผV W
$str
ผผX r
,
ผผr s
updateAnswerผผt €
.ผผ€ 
examIdผผ 
,ผผ 
updateAnswerผผ •
.ผผ• –
userIdผผ– 
,ผผ 
updateAnswerผผ ช
.ผผช ซ

questionIdผผซ ต
)ผผต ถ
;ผผถ ท
if
ฝฝ 
(
ฝฝ 
attemptAnswer
ฝฝ !
.
ฝฝ! "
Quality
ฝฝ" )
!=
ฝฝ* ,
$num
ฝฝ- .
&&
ฝฝ/ 1
!
ฝฝ2 3
string
ฝฝ3 9
.
ฝฝ9 :
IsNullOrEmpty
ฝฝ: G
(
ฝฝG H
attemptAnswer
ฝฝH U
.
ฝฝU V
UserExamState
ฝฝV c
)
ฝฝc d
)
ฝฝd e
{
พพ 
return
ฟฟ 
AssessmentDAL
ฟฟ (
.
ฟฟ( ),
UpdateAttemptAnswer_SR_05Mar24
ฟฟ) G
(
ฟฟG H
attemptAnswer
ฟฟH U
)
ฟฟU V
;
ฟฟV W
}
ภภ 
return
ยย 
AssessmentDAL
ยย $
.
ยย$ %!
UpdateAttemptAnswer
ยย% 8
(
ยย8 9
attemptAnswer
ยย9 F
)
ยยF G
;
ยยG H
}
รร 
}
ฤฤ 	
public
ฦฦ 
static
ฦฦ 
void
ฦฦ  
AddNotesAnswerText
ฦฦ -
(
ฦฦ- . 
UpdateSkipAnswered
ฦฦ. @
notesAnswer
ฦฦA L
)
ฦฦL M
{
วว 	
log
ศศ 
.
ศศ 
Information
ศศ 
(
ศศ 
$str
ศศ T
,
ศศT U
$str
ศศV j
,
ศศj k
notesAnswer
ศศl w
.
ศศw x
examId
ศศx ~
,
ศศ~ 
notesAnswerศศ€ 
.ศศ 
userIdศศ ’
,ศศ’ “
notesAnswerศศ” 
.ศศ  

questionIdศศ  ช
)ศศช ซ
;ศศซ ฌ
if
ษษ 
(
ษษ 
notesAnswer
ษษ 
.
ษษ 
textType
ษษ $
==
ษษ% '
$char
ษษ( +
&&
ษษ, .
notesAnswer
ษษ/ :
.
ษษ: ;
examAttemptText
ษษ; J
!=
ษษK M
string
ษษN T
.
ษษT U
Empty
ษษU Z
)
ษษZ [
{
สส 
log
หห 
.
หห 
Information
หห 
(
หห  
$str
หห  V
,
หหV W
$str
หหX l
,
หหl m
notesAnswer
หหn y
.
หหy z
examIdหหz €
,หห€ 
notesAnswerหห 
.หห 
userIdหห ”
,หห” •
notesAnswerหห– ก
.หหก ข

questionIdหหข ฌ
)หหฌ ญ
;หหญ ฎ
AssessmentDAL
ฬฬ 
.
ฬฬ  
AddExamAttemptText
ฬฬ 0
(
ฬฬ0 1
notesAnswer
ฬฬ1 <
)
ฬฬ< =
;
ฬฬ= >
}
ออ 
else
ฮฮ 
if
ฮฮ 
(
ฮฮ 
notesAnswer
ฮฮ  
.
ฮฮ  !
textType
ฮฮ! )
==
ฮฮ* ,
$char
ฮฮ- 0
&&
ฮฮ1 3
notesAnswer
ฮฮ4 ?
.
ฮฮ? @
examAttemptText
ฮฮ@ O
!=
ฮฮP R
string
ฮฮS Y
.
ฮฮY Z
Empty
ฮฮZ _
)
ฮฮ_ `
{
ฯฯ 
log
ะะ 
.
ะะ 
Information
ะะ 
(
ะะ  
$str
ะะ  V
,
ะะV W
$str
ะะX l
,
ะะl m
notesAnswer
ะะn y
.
ะะy z
examIdะะz €
,ะะ€ 
notesAnswerะะ 
.ะะ 
userIdะะ ”
,ะะ” •
notesAnswerะะ– ก
.ะะก ข

questionIdะะข ฌ
)ะะฌ ญ
;ะะญ ฎ
AssessmentDAL
ัั 
.
ัั "
AddExamQuestionNotes
ัั 2
(
ัั2 3
notesAnswer
ัั3 >
)
ัั> ?
;
ัั? @
}
าา 
}
ำำ 	
public
ีี 
static
ีี 
bool
ีี 
MarkQuestionCheck
ีี ,
(
ีี, - 
UpdateSkipAnswered
ีี- ?

updateMark
ีี@ J
)
ีีJ K
{
ึึ 	
return
ืื 
AssessmentDAL
ืื  
.
ืื  !'
AddOrDeleteMarkedQuestion
ืื! :
(
ืื: ;

updateMark
ืื; E
)
ืืE F
;
ืืF G
}
ุุ 	
public
ฺฺ 
static
ฺฺ 
ExamDTO
ฺฺ 
GetExamBYId
ฺฺ )
(
ฺฺ) *
int
ฺฺ* -
?
ฺฺ- .
examId
ฺฺ/ 5
)
ฺฺ5 6
{
ÛÛ 	
return
ÜÜ 
AssessmentDAL
ÜÜ  
.
ÜÜ  !
GetExamBYId
ÜÜ! ,
(
ÜÜ, -
examId
ÜÜ- 3
)
ÜÜ3 4
;
ÜÜ4 5
}
ÝÝ 	
public
฿฿ 
static
฿฿ 
int
฿฿  
SetTimeForQuestion
฿฿ ,
(
฿฿, -
int
฿฿- 0
?
฿฿0 1
	attemptId
฿฿2 ;
)
฿฿; <
{
เเ 	
return
แแ 
AssessmentDAL
แแ  
.
แแ  ! 
SetTimeForQuestion
แแ! 3
(
แแ3 4
	attemptId
แแ4 =
)
แแ= >
;
แแ> ?
}
โโ 	
public
ไไ 
static
ไไ 
void
ไไ  
UpdateConsumedTime
ไไ -
(
ไไ- . 
UpdateSkipAnswered
ไไ. @

updateTime
ไไA K
)
ไไK L
{
ๅๅ 	
AssessmentDAL
ๆๆ 
.
ๆๆ  
UpdateConsumedTime
ๆๆ ,
(
ๆๆ, -
Convert
ๆๆ- 4
.
ๆๆ4 5
ToInt32
ๆๆ5 <
(
ๆๆ< =

updateTime
ๆๆ= G
.
ๆๆG H
examAttemptId
ๆๆH U
)
ๆๆU V
,
ๆๆV W

updateTime
ๆๆX b
.
ๆๆb c$
consumedTimeDifference
ๆๆc y
)
ๆๆy z
;
ๆๆz {
}
็็ 	
public
้้ 
static
้้ 
int
้้ 

SubmitExam
้้ $
(
้้$ % 
UpdateSkipAnswered
้้% 7

submitExam
้้8 B
)
้้B C
{
๊๊ 	
return
๋๋ 
AssessmentDAL
๋๋  
.
๋๋  !

SubmitExam
๋๋! +
(
๋๋+ ,

submitExam
๋๋, 6
)
๋๋6 7
;
๋๋7 8
}
์์ 	
public
๎๎ 
static
๎๎ 
List
๎๎ 
<
๎๎ 
ViewProgressVM
๎๎ )
>
๎๎) *
ViewProgress
๎๎+ 7
(
๎๎7 8 
UpdateSkipAnswered
๎๎8 J
viewProgress
๎๎K W
)
๎๎W X
{
๏๏ 	
return
๐๐ 
AssessmentDAL
๐๐  
.
๐๐  !
ViewProgress
๐๐! -
(
๐๐- .
viewProgress
๐๐. :
)
๐๐: ;
;
๐๐; <
}
๑๑ 	
public
๓๓ 
static
๓๓ 
void
๓๓ 
SaveIsYourAnswer
๓๓ +
(
๓๓+ , 
UpdateSkipAnswered
๓๓, >
isYourAnswer
๓๓? K
)
๓๓K L
{
๔๔ 	
AssessmentDAL
๕๕ 
.
๕๕ 
SaveIsYourAnswer
๕๕ *
(
๕๕* +
isYourAnswer
๕๕+ 7
)
๕๕7 8
;
๕๕8 9
}
๖๖ 	
public
๘๘ 
static
๘๘ 
int
๘๘ 
GetRightChoiceId
๘๘ *
(
๘๘* +
RightQuestionIdVM
๘๘+ <
rightQuestionId
๘๘= L
)
๘๘L M
{
๙๙ 	
return
๚๚ 
AssessmentDAL
๚๚  
.
๚๚  !(
GetRightChoiceByQuestionId
๚๚! ;
(
๚๚; <
Convert
๚๚< C
.
๚๚C D
ToInt32
๚๚D K
(
๚๚K L
rightQuestionId
๚๚L [
.
๚๚[ \
RightQuestionId
๚๚\ k
)
๚๚k l
)
๚๚l m
;
๚๚m n
}
๛๛ 	
public
ýý 
static
ýý 
void
ýý 

UpdateTime
ýý %
(
ýý% & 
UpdateSkipAnswered
ýý& 8

updateTime
ýý9 C
)
ýýC D
{
þþ 	
AssessmentDAL
ÿÿ 
.
ÿÿ 

UpdateTime
ÿÿ $
(
ÿÿ$ %
Convert
ÿÿ% ,
.
ÿÿ, -
ToInt32
ÿÿ- 4
(
ÿÿ4 5

updateTime
ÿÿ5 ?
.
ÿÿ? @
examAttemptId
ÿÿ@ M
)
ÿÿM N
,
ÿÿN O

updateTime
ÿÿP Z
.
ÿÿZ [$
consumedTimeDifference
ÿÿ[ q
)
ÿÿq r
;
ÿÿr s
}
€€ 	
public
 
static
 
List
 
<
 
string
 !
>
! "
GetNotes
# +
(
+ , 
UpdateSkipAnswered
, >
getNotes
? G
)
G H
{
 	
return
 
AssessmentDAL
  
.
  !
GetNotes
! )
(
) *
Convert
* 1
.
1 2
ToInt32
2 9
(
9 :
getNotes
: B
.
B C
currentQuestionId
C T
)
T U
,
U V
Convert
W ^
.
^ _
ToInt32
_ f
(
f g
getNotes
g o
.
o p
userId
p v
)
v w
,
w x
Converty €
.€ 
ToInt32 
( 
getNotes ‘
.‘ ’
examId’ 
) 
) 
; 
}
…… 	
public
 
static
 
QuestionDetails
 %

GetExcerpt
& 0
(
0 1
int
1 4
examId
5 ;
,
; <
int
= @
?
@ A

questionId
B L
,
L M
int
N Q
userId
R X
)
X Y
{
 	
QuestionDetails
 
questionDetails1
 ,
=
- .
new
/ 2
QuestionDetails
3 B
(
B C
)
C D
;
D E
questionDetails1
 
.
 
BCSCExcerpt
 (
=
) *
AssessmentDAL
+ 8
.
8 9 
GetBCSCExcerptText
9 K
(
K L
Convert
L S
.
S T
ToInt32
T [
(
[ \

questionId
\ f
)
f g
)
g h
;
h i
questionDetails1
 
.
 
ExcerptHeadings
 ,
=
- . 
GetExcerptHeadings
/ A
(
A B
questionDetails1
B R
.
R S
BCSCExcerpt
S ^
)
^ _
;
_ `
return
 
questionDetails1
 #
;
# $
}
‘‘ 	
public
““ 
static
““ 
List
““ 
<
““ 
ExcerptHeading
““ )
>
““) * 
GetExcerptHeadings
““+ =
(
““= >
List
““> B
<
““B C
string
““C I
>
““I J
bCSCExcerpts
““K W
)
““W X
{
”” 	
List
•• 
<
•• 
ExcerptHeading
•• 
>
••  
excerptHeadings
••! 0
=
••1 2
new
••3 6
List
••7 ;
<
••; <
ExcerptHeading
••< J
>
••J K
(
••K L
)
••L M
;
••M N
int
–– 
id
–– 
=
–– 
$num
–– 
;
–– 
log
—— 
.
—— 
Information
—— 
(
—— 
$str
—— 6
,
——6 7
$str
——8 L
,
——L M
id
——N P
)
——P Q
;
——Q R
foreach
 
(
 
string
 
bCSCExcerpt
 '
in
( *
bCSCExcerpts
+ 7
)
7 8
{
 
ExcerptHeading
 
excerptHeading
 -
=
. /
new
0 3
ExcerptHeading
4 B
(
B C
)
C D
;
D E
if
 
(
 
bCSCExcerpt
 
!=
  "
string
# )
.
) *
Empty
* /
)
/ 0
{
 
string
 
pattern
 "
=
# $
string
% +
.
+ ,
Empty
, 1
;
1 2
string
 
pattern1
 #
=
$ %
string
& ,
.
, -
Empty
- 2
;
2 3
string
 
pattern2
 #
=
$ %
string
& ,
.
, -
Empty
- 2
;
2 3
string
   
str
   
=
    
bCSCExcerpt
  ! ,
.
  , -
	Substring
  - 6
(
  6 7
$num
  7 8
,
  8 9
$num
  : ;
)
  ; <
;
  < =
string
กก 
topicexcerpt
กก '
=
กก( )
string
กก* 0
.
กก0 1
Empty
กก1 6
;
กก6 7
if
ขข 
(
ขข 
str
ขข 
==
ขข 
$str
ขข $
&&
ขข% '
!
ขข( )
string
ขข) /
.
ขข/ 0
IsNullOrEmpty
ขข0 =
(
ขข= >
bCSCExcerpt
ขข> I
)
ขขI J
)
ขขJ K
{
ฃฃ 
pattern
คค 
=
คค  !
$str
คค" E
;
คคE F
pattern1
ฅฅ  
=
ฅฅ! "
$str
ฅฅ# E
;
ฅฅE F
pattern2
ฆฆ  
=
ฆฆ! "
$str
ฆฆ# 1
;
ฆฆ1 2
MatchCollection
จจ '
matche
จจ( .
=
จจ/ 0
Regex
จจ1 6
.
จจ6 7
Matches
จจ7 >
(
จจ> ?
bCSCExcerpt
จจ? J
,
จจJ K
pattern
จจL S
)
จจS T
;
จจT U
HtmlDocument
ฉฉ $
htmlDocument
ฉฉ% 1
=
ฉฉ2 3
new
ฉฉ4 7
HtmlDocument
ฉฉ8 D
(
ฉฉD E
)
ฉฉE F
;
ฉฉF G
htmlDocument
ชช $
.
ชช$ %
LoadHtml
ชช% -
(
ชช- .
bCSCExcerpt
ชช. 9
)
ชช9 :
;
ชช: ;
List
ซซ 
<
ซซ 
HtmlNode
ซซ %
>
ซซ% &
chaptertitle
ซซ' 3
=
ซซ4 5
htmlDocument
ซซ6 B
.
ซซB C
DocumentNode
ซซC O
.
ซซO P
Descendants
ซซP [
(
ซซ[ \
)
ซซ\ ]
.
ซซ] ^
Where
ซซ^ c
(
ซซc d
x
ซซd e
=>
ซซf h
(
ซซi j
x
ซซj k
.
ซซk l
Name
ซซl p
==
ซซq s
$str
ซซt x
&&
ซซy {
x
ซซ| }
.
ซซ} ~

Attributesซซ~ 
[ซซ 
$strซซ 
]ซซ ‘
!=ซซ’ ”
nullซซ• 
&&ซซ 
xซซ 
.ซซ 

Attributesซซ ฉ
[ซซฉ ช
$strซซช ฑ
]ซซฑ ฒ
.ซซฒ ณ
Valueซซณ ธ
.ซซธ น
Containsซซน ม
(ซซม ย
$strซซย ฺ
)ซซฺ Û
)ซซÛ Ü
)ซซÜ Ý
.ซซÝ Þ
ToListซซÞ ไ
(ซซไ ๅ
)ซซๅ ๆ
;ซซๆ ็
topicexcerpt
ฌฌ $
=
ฌฌ% &
$str
ฌฌ' N
+
ฌฌO P
chaptertitle
ฌฌQ ]
[
ฌฌ] ^
$num
ฌฌ^ _
]
ฌฌ_ `
.
ฌฌ` a
	InnerHtml
ฌฌa j
+
ฌฌk l
$str
ฌฌm t
;
ฌฌt u
MatchCollection
ฏฏ '
matches
ฏฏ( /
=
ฏฏ0 1
Regex
ฏฏ2 7
.
ฏฏ7 8
Matches
ฏฏ8 ?
(
ฏฏ? @
bCSCExcerpt
ฏฏ@ K
,
ฏฏK L
pattern2
ฏฏM U
)
ฏฏU V
;
ฏฏV W
excerptHeading
ฐฐ &
.
ฐฐ& '
	HeadingId
ฐฐ' 0
=
ฐฐ1 2
id
ฐฐ3 5
;
ฐฐ5 6
excerptHeading
ฑฑ &
.
ฑฑ& '
HeadingText
ฑฑ' 2
=
ฑฑ3 4
matches
ฑฑ5 <
[
ฑฑ< =
$num
ฑฑ= >
]
ฑฑ> ?
.
ฑฑ? @
Value
ฑฑ@ E
+
ฑฑF G
topicexcerpt
ฑฑH T
;
ฑฑT U
excerptHeading
ณณ &
.
ณณ& '
Excerpts
ณณ' /
=
ณณ0 1
Regex
ณณ2 7
.
ณณ7 8
Replace
ณณ8 ?
(
ณณ? @
bCSCExcerpt
ณณ@ K
,
ณณK L
pattern2
ณณM U
,
ณณU V
string
ณณW ]
.
ณณ] ^
Empty
ณณ^ c
)
ณณc d
;
ณณd e
excerptHeading
ดด &
.
ดด& '
Excerpts
ดด' /
=
ดด0 1
excerptHeading
ดด2 @
.
ดด@ A
Excerpts
ดดA I
.
ดดI J
Replace
ดดJ Q
(
ดดQ R
topicexcerpt
ดดR ^
,
ดด^ _
string
ดด` f
.
ดดf g
Empty
ดดg l
)
ดดl m
;
ดดm n
topicexcerpt
ตต $
=
ตต% &
string
ตต' -
.
ตต- .
Empty
ตต. 3
;
ตต3 4
excerptHeadings
ถถ '
.
ถถ' (
Add
ถถ( +
(
ถถ+ ,
excerptHeading
ถถ, :
)
ถถ: ;
;
ถถ; <
}
ทท 
else
ธธ 
{
นน 
pattern
บบ 
=
บบ  !
$str
บบ" J
;
บบJ K
MatchCollection
ปป '
matches
ปป( /
=
ปป0 1
Regex
ปป2 7
.
ปป7 8
Matches
ปป8 ?
(
ปป? @
bCSCExcerpt
ปป@ K
,
ปปK L
pattern
ปปM T
)
ปปT U
;
ปปU V
excerptHeading
ผผ &
.
ผผ& '
	HeadingId
ผผ' 0
=
ผผ1 2
id
ผผ3 5
;
ผผ5 6
excerptHeading
ฝฝ &
.
ฝฝ& '
HeadingText
ฝฝ' 2
=
ฝฝ3 4
matches
ฝฝ5 <
[
ฝฝ< =
$num
ฝฝ= >
]
ฝฝ> ?
.
ฝฝ? @
Value
ฝฝ@ E
;
ฝฝE F
excerptHeading
พพ &
.
พพ& '
Excerpts
พพ' /
=
พพ0 1
Regex
พพ2 7
.
พพ7 8
Replace
พพ8 ?
(
พพ? @
bCSCExcerpt
พพ@ K
,
พพK L
pattern
พพM T
,
พพT U
string
พพV \
.
พพ\ ]
Empty
พพ] b
)
พพb c
;
พพc d
excerptHeadings
ฟฟ '
.
ฟฟ' (
Add
ฟฟ( +
(
ฟฟ+ ,
excerptHeading
ฟฟ, :
)
ฟฟ: ;
;
ฟฟ; <
}
ภภ 
id
ยย 
++
ยย 
;
ยย 
}
รร 
}
ฤฤ 
log
ลล 
.
ลล 
Information
ลล 
(
ลล 
$str
ลล 4
,
ลล4 5
$str
ลล6 J
,
ลลJ K
id
ลลL N
)
ลลN O
;
ลลO P
return
ฦฦ 
excerptHeadings
ฦฦ "
;
ฦฦ" #
}
วว 	
public
ษษ 
static
ษษ 
QuestionDetails
ษษ %$
GetExamQuestion_Search
ษษ& <
(
ษษ< =
int
ษษ= @
?
ษษ@ A
examId
ษษB H
,
ษษH I
int
ษษJ M
?
ษษM N

questionId
ษษO Y
,
ษษY Z
int
ษษ[ ^
?
ษษ^ _
userId
ษษ` f
)
ษษf g
{
สส 	
try
หห 
{
ฬฬ 
ExamDTO
ฮฮ 
examObj
ฮฮ 
=
ฮฮ  !
AssessmentBL
ฮฮ" .
.
ฮฮ. /
GetExamBYId
ฮฮ/ :
(
ฮฮ: ;
examId
ฮฮ; A
)
ฮฮA B
;
ฮฮB C
List
ฯฯ 
<
ฯฯ 
Choice
ฯฯ 
>
ฯฯ 

choiceList
ฯฯ '
=
ฯฯ( )
new
ฯฯ* -
List
ฯฯ. 2
<
ฯฯ2 3
Choice
ฯฯ3 9
>
ฯฯ9 :
(
ฯฯ: ;
)
ฯฯ; <
;
ฯฯ< =
QuestionDetails
ะะ 
questionDetails
ะะ  /
=
ะะ0 1
new
ะะ2 5
QuestionDetails
ะะ6 E
(
ะะE F
)
ะะF G
;
ะะG H
log
ัั 
.
ัั 
Information
ัั 
(
ัั  
$str
ัั  X
,
ััX Y
$str
ััZ r
,
ััr s
examId
ััt z
,
ััz {
userIdัั| 
,ัั 

questionIdัั 
)ัั 
;ัั 
if
าา 
(
าา 
Convert
าา 
.
าา 
ToInt32
าา #
(
าา# $

questionId
าา$ .
)
าา. /
==
าา0 2
$num
าา3 4
)
าา4 5
{
ำำ 

questionId
ิิ 
=
ิิ  
AssessmentDAL
ิิ! .
.
ิิ. /
GetFirstQuestion
ิิ/ ?
(
ิิ? @
examObj
ิิ@ G
)
ิิG H
;
ิิH I
}
ีี 
if
ุุ 
(
ุุ 
examId
ุุ 
==
ุุ 
$num
ุุ 
&&
ุุ  "
examId
ุุ# )
!=
ุุ* ,
null
ุุ- 1
)
ุุ1 2
{
ูู 
questionDetails
ฺฺ #
=
ฺฺ$ %
AssessmentDAL
ฺฺ& 3
.
ฺฺ3 4'
GetQuestionDetails_Search
ฺฺ4 M
(
ฺฺM N
Convert
ฺฺN U
.
ฺฺU V
ToInt32
ฺฺV ]
(
ฺฺ] ^

questionId
ฺฺ^ h
)
ฺฺh i
)
ฺฺi j
;
ฺฺj k
}
ÛÛ 
else
ÜÜ 
{
ÝÝ 
questionDetails
ÞÞ #
=
ÞÞ$ %
AssessmentDAL
ÞÞ& 3
.
ÞÞ3 4 
GetQuestionDetails
ÞÞ4 F
(
ÞÞF G
Convert
ÞÞG N
.
ÞÞN O
ToInt32
ÞÞO V
(
ÞÞV W
examId
ÞÞW ]
)
ÞÞ] ^
,
ÞÞ^ _
Convert
ÞÞ` g
.
ÞÞg h
ToInt32
ÞÞh o
(
ÞÞo p

questionId
ÞÞp z
)
ÞÞz {
)
ÞÞ{ |
;
ÞÞ| }
}
฿฿ 
questionDetails
ๆๆ 
.
ๆๆ  
rightChoiceId
ๆๆ  -
=
ๆๆ. /
AssessmentDAL
ๆๆ0 =
.
ๆๆ= >(
GetRightChoiceByQuestionId
ๆๆ> X
(
ๆๆX Y
Convert
ๆๆY `
.
ๆๆ` a
ToInt32
ๆๆa h
(
ๆๆh i

questionId
ๆๆi s
)
ๆๆs t
)
ๆๆt u
;
ๆๆu v
questionDetails
้้ 
.
้้  

examStatus
้้  *
=
้้+ ,
examObj
้้- 4
.
้้4 5

ExamStatus
้้5 ?
;
้้? @
questionDetails
๊๊ 
.
๊๊  
examAttemptId
๊๊  -
=
๊๊. /
examObj
๊๊0 7
.
๊๊7 8
ExamAttemptId
๊๊8 E
;
๊๊E F
questionDetails
๋๋ 
.
๋๋  
examTimeType
๋๋  ,
=
๋๋- .
examObj
๋๋/ 6
.
๋๋6 7
ExamTimeType
๋๋7 C
;
๋๋C D
questionDetails
์์ 
.
์์  
examMode
์์  (
=
์์) *
examObj
์์+ 2
.
์์2 3
ExamMode
์์3 ;
;
์์; <
questionDetails
ํํ 
.
ํํ  
examAnswerToShow
ํํ  0
=
ํํ1 2
examObj
ํํ3 :
.
ํํ: ;
ExamAnswerToShow
ํํ; K
;
ํํK L
questionDetails
๎๎ 
.
๎๎  
noOfQuestion
๎๎  ,
=
๎๎- .
examObj
๎๎/ 6
.
๎๎6 7
NoofQuestions
๎๎7 D
;
๎๎D E
questionDetails
๏๏ 
.
๏๏  
ExamName
๏๏  (
=
๏๏) *
examObj
๏๏+ 2
.
๏๏2 3
ExamName
๏๏3 ;
;
๏๏; <
questionDetails
๐๐ 
.
๐๐  
ExamType
๐๐  (
=
๐๐) *
examObj
๐๐+ 2
.
๐๐2 3
ExamType
๐๐3 ;
;
๐๐; <
questionDetails
๑๑ 
.
๑๑  
userId
๑๑  &
=
๑๑' (
examObj
๑๑) 0
.
๑๑0 1
UserId
๑๑1 7
;
๑๑7 8
questionDetails
๔๔ 
.
๔๔   
questionDiscussion
๔๔  2
=
๔๔3 4
AssessmentDAL
๔๔5 B
.
๔๔B C#
GetQuestionDiscussion
๔๔C X
(
๔๔X Y
Convert
๔๔Y `
.
๔๔` a
ToInt32
๔๔a h
(
๔๔h i

questionId
๔๔i s
)
๔๔s t
)
๔๔t u
;
๔๔u v
questionDetails
๗๗ 
.
๗๗  

references
๗๗  *
=
๗๗+ ,
AssessmentDAL
๗๗- :
.
๗๗: ;
GetReferences
๗๗; H
(
๗๗H I
Convert
๗๗I P
.
๗๗P Q
ToInt32
๗๗Q X
(
๗๗X Y

questionId
๗๗Y c
)
๗๗c d
)
๗๗d e
;
๗๗e f
questionDetails
๚๚ 
.
๚๚  
RelatedContents
๚๚  /
=
๚๚0 1
AssessmentDAL
๚๚2 ?
.
๚๚? @
GetRelatedContent
๚๚@ Q
(
๚๚Q R
Convert
๚๚R Y
.
๚๚Y Z
ToInt32
๚๚Z a
(
๚๚a b

questionId
๚๚b l
)
๚๚l m
)
๚๚m n
;
๚๚n o
questionDetails
üü 
.
üü  
notes
üü  %
=
üü& '
AssessmentDAL
üü( 5
.
üü5 6
GetNotes
üü6 >
(
üü> ?
Convert
üü? F
.
üüF G
ToInt32
üüG N
(
üüN O

questionId
üüO Y
)
üüY Z
,
üüZ [
Convert
üü\ c
.
üüc d
ToInt32
üüd k
(
üük l
userId
üül r
)
üür s
,
üüs t
Convert
üüu |
.
üü| }
ToInt32üü} 
(üü …
examIdüü… 
)üü 
)üü 
;üü 
if
þþ 
(
þþ 
examId
þþ 
==
þþ 
$num
þþ 
&&
þþ  "
examId
þþ# )
!=
þþ* ,
null
þþ- 1
)
þþ1 2
{
ÿÿ 
questionDetails
 #
.
# $"
examAttemptAnswerDTO
$ 8
=
9 :
AssessmentDAL
; H
.
H I)
GetExamAttemptAnswer_Search
I d
(
d e
Convert
e l
.
l m
ToInt32
m t
(
t u

questionId
u 
) €
,€ 
Convert 
. 
ToInt32 ‘
(‘ ’
userId’ 
) 
) 
; 
}
 
else
 
{
 
questionDetails
…… #
.
……# $"
examAttemptAnswerDTO
……$ 8
=
……9 :
AssessmentDAL
……; H
.
……H I"
GetExamAttemptAnswer
……I ]
(
……] ^
Convert
……^ e
.
……e f
ToInt32
……f m
(
……m n

questionId
……n x
)
……x y
,
……y z
Convert……{ 
.…… 
ToInt32…… 
(…… 
examObj…… ’
.……’ “
ExamAttemptId……“  
)……  ก
)……ก ข
;……ข ฃ
}
 
questionDetails
 
.
  
examAttemptText
  /
=
0 1
AssessmentDAL
2 ?
.
? @&
GetExamAttemptAnswerText
@ X
(
X Y
Convert
Y `
.
` a
ToInt32
a h
(
h i
examId
i o
)
o p
,
p q
Convert
r y
.
y z
ToInt32z 
( 

questionId 
) 
) 
; 
questionDetails
 
.
  
	markCheck
  )
=
* +
AssessmentDAL
, 9
.
9 :
GetMarkStatus
: G
(
G H
Convert
H O
.
O P
ToInt32
P W
(
W X
examId
X ^
)
^ _
,
_ `
Convert
a h
.
h i
ToInt32
i p
(
p q

questionId
q {
)
{ |
,
| }
Convert~ …
.… 
ToInt32 
( 
userId ”
)” •
)• –
;– —
questionDetails
 
.
  
examId
  &
=
' (
Convert
) 0
.
0 1
ToInt32
1 8
(
8 9
examId
9 ?
)
? @
;
@ A
questionDetails
 
.
  $
CurrentExamAttemptTime
  6
=
7 8
DateTime
9 A
.
A B
Now
B E
;
E F
if
 
(
 
examId
 
==
 
$num
 
&&
  "
examId
# )
!=
* ,
null
- 1
)
1 2
{
‘‘ 

choiceList
’’ 
=
’’  
AssessmentDAL
’’! .
.
’’. /#
GetChoiceBYQuestionId
’’/ D
(
’’D E
Convert
’’E L
.
’’L M
ToInt32
’’M T
(
’’T U

questionId
’’U _
)
’’_ `
,
’’` a
examId
’’b h
,
’’h i
questionDetails
’’j y
.
’’y z#
examAttemptAnswerDTO’’z 
.’’ 
ChoiceId’’ —
,’’— 
questionDetails’’ จ
.’’จ ฉ$
examAttemptAnswerDTO’’ฉ ฝ
.’’ฝ พ
ExamAttemptId’’พ ห
,’’ห ฬ
questionDetails’’อ Ü
.’’Ü Ý"
NotRandomizeAnswer’’Ý ๏
)’’๏ ๐
;’’๐ ๑
questionDetails
““ #
.
““# $

choiceList
““$ .
=
““/ 0

choiceList
““1 ;
;
““; <
}
”” 
else
•• 
{
–– 

choiceList
—— 
=
——  
AssessmentDAL
——! .
.
——. /#
GetChoiceBYQuestionId
——/ D
(
——D E
Convert
——E L
.
——L M
ToInt32
——M T
(
——T U

questionId
——U _
)
——_ `
,
——` a
examId
——b h
,
——h i
questionDetails
——j y
.
——y z#
examAttemptAnswerDTO——z 
.—— 
ChoiceId—— —
,——— 
questionDetails—— จ
.——จ ฉ
examAttemptId——ฉ ถ
,——ถ ท
questionDetails——ธ ว
.——ว ศ"
NotRandomizeAnswer——ศ ฺ
)——ฺ Û
;——Û Ü
questionDetails
 #
.
# $

choiceList
$ .
=
/ 0

choiceList
1 ;
;
; <
}
 
if
 
(
 
examId
 
==
 
$num
 
&&
  "
examId
# )
!=
* ,
null
- 1
)
1 2
{
 
var
 
peerdata
  
=
! "
AssessmentDAL
# 0
.
0 1
GetPeerDetails
1 ?
(
? @
Convert
@ G
.
G H
ToInt32
H O
(
O P

questionId
P Z
)
Z [
,
[ \
Convert
] d
.
d e
ToInt32
e l
(
l m
userId
m s
)
s t
,
t u
questionDetailsv …
.… $
examAttemptAnswerDTO 
. 
ExamAttemptId จ
)จ ฉ
;ฉ ช
questionDetails
   #
.
  # $
PeerDetails
  $ /
=
  0 1
peerdata
  2 :
.
  : ;
Where
  ; @
(
  @ A
s
  A B
=>
  C E
s
  F G
.
  G H
ChoiceId
  H P
!=
  Q S
$num
  T U
)
  U V
.
  V W
OrderBy
  W ^
(
  ^ _
s
  _ `
=>
  a c
s
  d e
.
  e f
ChoiceOption
  f r
)
  r s
.
  s t
ToList
  t z
(
  z {
)
  { |
;
  | }
}
คค 
else
ฅฅ 
{
ฆฆ 
var
งง 
peerdata
งง  
=
งง! "
AssessmentDAL
งง# 0
.
งง0 1
GetPeerDetails
งง1 ?
(
งง? @
Convert
งง@ G
.
งงG H
ToInt32
งงH O
(
งงO P

questionId
งงP Z
)
งงZ [
,
งง[ \
Convert
งง] d
.
งงd e
ToInt32
งงe l
(
งงl m
userId
งงm s
)
งงs t
,
งงt u
questionDetailsงงv …
.งง… 
examAttemptIdงง “
)งง“ ”
;งง” •
questionDetails
จจ #
.
จจ# $
PeerDetails
จจ$ /
=
จจ0 1
peerdata
จจ2 :
.
จจ: ;
Where
จจ; @
(
จจ@ A
s
จจA B
=>
จจC E
s
จจF G
.
จจG H
ChoiceId
จจH P
!=
จจQ S
$num
จจT U
)
จจU V
.
จจV W
OrderBy
จจW ^
(
จจ^ _
s
จจ_ `
=>
จจa c
s
จจd e
.
จจe f
ChoiceOption
จจf r
)
จจr s
.
จจs t
ToList
จจt z
(
จจz {
)
จจ{ |
;
จจ| }
questionDetails
ซซ #
.
ซซ# $
QuestionCount
ซซ$ 1
=
ซซ2 3
AssessmentDAL
ซซ4 A
.
ซซA B
GetQuestionCount
ซซB R
(
ซซR S
Convert
ซซS Z
.
ซซZ [
ToInt32
ซซ[ b
(
ซซb c
examId
ซซc i
)
ซซi j
)
ซซj k
;
ซซk l
}
ฌฌ 
questionDetails
ฎฎ 
.
ฎฎ  
BCSCExcerpt
ฎฎ  +
=
ฎฎ, -
AssessmentDAL
ฎฎ. ;
.
ฎฎ; < 
GetBCSCExcerptText
ฎฎ< N
(
ฎฎN O
Convert
ฎฎO V
.
ฎฎV W
ToInt32
ฎฎW ^
(
ฎฎ^ _

questionId
ฎฎ_ i
)
ฎฎi j
)
ฎฎj k
;
ฎฎk l
questionDetails
ฐฐ 
.
ฐฐ  
ExcerptHeadings
ฐฐ  /
=
ฐฐ0 1 
GetExcerptHeadings
ฐฐ2 D
(
ฐฐD E
questionDetails
ฐฐE T
.
ฐฐT U
BCSCExcerpt
ฐฐU `
)
ฐฐ` a
;
ฐฐa b
questionDetails
ณณ 
.
ณณ  
	TopicName
ณณ  )
=
ณณ* +
AssessmentDAL
ณณ, 9
.
ณณ9 : 
GetTopicByQuestion
ณณ: L
(
ณณL M
Convert
ณณM T
.
ณณT U
ToInt32
ณณU \
(
ณณ\ ]

questionId
ณณ] g
)
ณณg h
)
ณณh i
;
ณณi j
log
ดด 
.
ดด 
Information
ดด 
(
ดด  
$str
ดด  G
,
ดดG H
$str
ดดI a
,
ดดa b
questionDetails
ดดc r
.
ดดr s
examId
ดดs y
,
ดดy z
questionDetailsดด{ 
.ดด 
userIdดด ‘
)ดด‘ ’
;ดด’ “
return
ตต 
questionDetails
ตต &
;
ตต& '
}
ถถ 
catch
ทท 
(
ทท 
	Exception
ทท 
e
ทท 
)
ทท 
{
ธธ 
Console
นน 
.
นน 
Write
นน 
(
นน 
e
นน 
.
นน  
Message
นน  '
)
นน' (
;
นน( )
return
บบ 
null
บบ 
;
บบ 
}
ปป 
}
ผผ 	
public
พพ 
static
พพ 
QuestionDetails
พพ %/
!GetExamQuestion_Search_SharedExam
พพ& G
(
พพG H
int
พพH K
?
พพK L
examId
พพM S
,
พพS T
int
พพU X
?
พพX Y

questionId
พพZ d
,
พพd e
int
พพf i
?
พพi j
userId
พพk q
)
พพq r
{
ฟฟ 	
try
ภภ 
{
มม 
ExamDTO
รร 
examObj
รร 
=
รร  !
AssessmentBL
รร" .
.
รร. /
GetExamBYId
รร/ :
(
รร: ;
examId
รร; A
)
รรA B
;
รรB C
List
ฤฤ 
<
ฤฤ 
Choice
ฤฤ 
>
ฤฤ 

choiceList
ฤฤ '
=
ฤฤ( )
new
ฤฤ* -
List
ฤฤ. 2
<
ฤฤ2 3
Choice
ฤฤ3 9
>
ฤฤ9 :
(
ฤฤ: ;
)
ฤฤ; <
;
ฤฤ< =
QuestionDetails
ลล 
questionDetails
ลล  /
=
ลล0 1
new
ลล2 5
QuestionDetails
ลล6 E
(
ลลE F
)
ลลF G
;
ลลG H
log
ฦฦ 
.
ฦฦ 
Information
ฦฦ 
(
ฦฦ  
$str
ฦฦ  X
,
ฦฦX Y
$str
ฦฦZ r
,
ฦฦr s
examId
ฦฦt z
,
ฦฦz {
userIdฦฦ| 
,ฦฦ 

questionIdฦฦ 
)ฦฦ 
;ฦฦ 
if
วว 
(
วว 
Convert
วว 
.
วว 
ToInt32
วว #
(
วว# $

questionId
วว$ .
)
วว. /
==
วว0 2
$num
วว3 4
)
วว4 5
{
ศศ 

questionId
ษษ 
=
ษษ  
AssessmentDAL
ษษ! .
.
ษษ. /
GetFirstQuestion
ษษ/ ?
(
ษษ? @
examObj
ษษ@ G
)
ษษG H
;
ษษH I
}
สส 
if
ออ 
(
ออ 
examId
ออ 
==
ออ 
$num
ออ 
&&
ออ  "
examId
ออ# )
!=
ออ* ,
null
ออ- 1
)
ออ1 2
{
ฮฮ 
questionDetails
ฯฯ #
=
ฯฯ$ %
AssessmentDAL
ฯฯ& 3
.
ฯฯ3 4'
GetQuestionDetails_Search
ฯฯ4 M
(
ฯฯM N
Convert
ฯฯN U
.
ฯฯU V
ToInt32
ฯฯV ]
(
ฯฯ] ^

questionId
ฯฯ^ h
)
ฯฯh i
)
ฯฯi j
;
ฯฯj k
}
ะะ 
else
ัั 
{
าา 
questionDetails
ำำ #
=
ำำ$ %
AssessmentDAL
ำำ& 3
.
ำำ3 4 
GetQuestionDetails
ำำ4 F
(
ำำF G
Convert
ำำG N
.
ำำN O
ToInt32
ำำO V
(
ำำV W
examId
ำำW ]
)
ำำ] ^
,
ำำ^ _
Convert
ำำ` g
.
ำำg h
ToInt32
ำำh o
(
ำำo p

questionId
ำำp z
)
ำำz {
)
ำำ{ |
;
ำำ| }
}
ิิ 
questionDetails
ÛÛ 
.
ÛÛ  
rightChoiceId
ÛÛ  -
=
ÛÛ. /
AssessmentDAL
ÛÛ0 =
.
ÛÛ= >(
GetRightChoiceByQuestionId
ÛÛ> X
(
ÛÛX Y
Convert
ÛÛY `
.
ÛÛ` a
ToInt32
ÛÛa h
(
ÛÛh i

questionId
ÛÛi s
)
ÛÛs t
)
ÛÛt u
;
ÛÛu v
questionDetails
ÞÞ 
.
ÞÞ  

examStatus
ÞÞ  *
=
ÞÞ+ ,
examObj
ÞÞ- 4
.
ÞÞ4 5

ExamStatus
ÞÞ5 ?
;
ÞÞ? @
questionDetails
฿฿ 
.
฿฿  
examAttemptId
฿฿  -
=
฿฿. /
examObj
฿฿0 7
.
฿฿7 8
ExamAttemptId
฿฿8 E
;
฿฿E F
questionDetails
เเ 
.
เเ  
examTimeType
เเ  ,
=
เเ- .
examObj
เเ/ 6
.
เเ6 7
ExamTimeType
เเ7 C
;
เเC D
questionDetails
แแ 
.
แแ  
examMode
แแ  (
=
แแ) *
examObj
แแ+ 2
.
แแ2 3
ExamMode
แแ3 ;
;
แแ; <
questionDetails
โโ 
.
โโ  
examAnswerToShow
โโ  0
=
โโ1 2
examObj
โโ3 :
.
โโ: ;
ExamAnswerToShow
โโ; K
;
โโK L
questionDetails
ใใ 
.
ใใ  
noOfQuestion
ใใ  ,
=
ใใ- .
examObj
ใใ/ 6
.
ใใ6 7
NoofQuestions
ใใ7 D
;
ใใD E
questionDetails
ไไ 
.
ไไ  
ExamName
ไไ  (
=
ไไ) *
examObj
ไไ+ 2
.
ไไ2 3
ExamName
ไไ3 ;
;
ไไ; <
questionDetails
ๅๅ 
.
ๅๅ  
ExamType
ๅๅ  (
=
ๅๅ) *
examObj
ๅๅ+ 2
.
ๅๅ2 3
ExamType
ๅๅ3 ;
;
ๅๅ; <
questionDetails
ๆๆ 
.
ๆๆ  
userId
ๆๆ  &
=
ๆๆ' (
examObj
ๆๆ) 0
.
ๆๆ0 1
UserId
ๆๆ1 7
;
ๆๆ7 8
questionDetails
้้ 
.
้้   
questionDiscussion
้้  2
=
้้3 4
AssessmentDAL
้้5 B
.
้้B C#
GetQuestionDiscussion
้้C X
(
้้X Y
Convert
้้Y `
.
้้` a
ToInt32
้้a h
(
้้h i

questionId
้้i s
)
้้s t
)
้้t u
;
้้u v
questionDetails
์์ 
.
์์  

references
์์  *
=
์์+ ,
AssessmentDAL
์์- :
.
์์: ;
GetReferences
์์; H
(
์์H I
Convert
์์I P
.
์์P Q
ToInt32
์์Q X
(
์์X Y

questionId
์์Y c
)
์์c d
)
์์d e
;
์์e f
questionDetails
๏๏ 
.
๏๏  
RelatedContents
๏๏  /
=
๏๏0 1
AssessmentDAL
๏๏2 ?
.
๏๏? @
GetRelatedContent
๏๏@ Q
(
๏๏Q R
Convert
๏๏R Y
.
๏๏Y Z
ToInt32
๏๏Z a
(
๏๏a b

questionId
๏๏b l
)
๏๏l m
)
๏๏m n
;
๏๏n o
questionDetails
๑๑ 
.
๑๑  
notes
๑๑  %
=
๑๑& '
AssessmentDAL
๑๑( 5
.
๑๑5 6
GetNotes
๑๑6 >
(
๑๑> ?
Convert
๑๑? F
.
๑๑F G
ToInt32
๑๑G N
(
๑๑N O

questionId
๑๑O Y
)
๑๑Y Z
,
๑๑Z [
Convert
๑๑\ c
.
๑๑c d
ToInt32
๑๑d k
(
๑๑k l
userId
๑๑l r
)
๑๑r s
,
๑๑s t
Convert
๑๑u |
.
๑๑| }
ToInt32๑๑} 
(๑๑ …
examId๑๑… 
)๑๑ 
)๑๑ 
;๑๑ 
if
๓๓ 
(
๓๓ 
examId
๓๓ 
==
๓๓ 
$num
๓๓ 
&&
๓๓  "
examId
๓๓# )
!=
๓๓* ,
null
๓๓- 1
)
๓๓1 2
{
๔๔ 
questionDetails
๖๖ #
.
๖๖# $"
examAttemptAnswerDTO
๖๖$ 8
=
๖๖9 :
AssessmentDAL
๖๖; H
.
๖๖H I)
GetExamAttemptAnswer_Search
๖๖I d
(
๖๖d e
Convert
๖๖e l
.
๖๖l m
ToInt32
๖๖m t
(
๖๖t u

questionId
๖๖u 
)๖๖ €
,๖๖€ 
Convert๖๖ 
.๖๖ 
ToInt32๖๖ ‘
(๖๖‘ ’
userId๖๖’ 
)๖๖ 
)๖๖ 
;๖๖ 
}
๗๗ 
else
๘๘ 
{
๙๙ 
questionDetails
๚๚ #
.
๚๚# $"
examAttemptAnswerDTO
๚๚$ 8
=
๚๚9 :
AssessmentDAL
๚๚; H
.
๚๚H I"
GetExamAttemptAnswer
๚๚I ]
(
๚๚] ^
Convert
๚๚^ e
.
๚๚e f
ToInt32
๚๚f m
(
๚๚m n

questionId
๚๚n x
)
๚๚x y
,
๚๚y z
Convert๚๚{ 
.๚๚ 
ToInt32๚๚ 
(๚๚ 
examObj๚๚ ’
.๚๚’ “
ExamAttemptId๚๚“  
)๚๚  ก
)๚๚ก ข
;๚๚ข ฃ
}
๛๛ 
questionDetails
ýý 
.
ýý  
examAttemptText
ýý  /
=
ýý0 1
AssessmentDAL
ýý2 ?
.
ýý? @&
GetExamAttemptAnswerText
ýý@ X
(
ýýX Y
Convert
ýýY `
.
ýý` a
ToInt32
ýýa h
(
ýýh i
examId
ýýi o
)
ýýo p
,
ýýp q
Convert
ýýr y
.
ýýy z
ToInt32ýýz 
(ýý 

questionIdýý 
)ýý 
)ýý 
;ýý 
questionDetails
€€ 
.
€€  
	markCheck
€€  )
=
€€* +
AssessmentDAL
€€, 9
.
€€9 :
GetMarkStatus
€€: G
(
€€G H
Convert
€€H O
.
€€O P
ToInt32
€€P W
(
€€W X
examId
€€X ^
)
€€^ _
,
€€_ `
Convert
€€a h
.
€€h i
ToInt32
€€i p
(
€€p q

questionId
€€q {
)
€€{ |
,
€€| }
Convert€€~ …
.€€… 
ToInt32€€ 
(€€ 
userId€€ ”
)€€” •
)€€• –
;€€– —
questionDetails
 
.
  
examId
  &
=
' (
Convert
) 0
.
0 1
ToInt32
1 8
(
8 9
examId
9 ?
)
? @
;
@ A
questionDetails
 
.
  $
CurrentExamAttemptTime
  6
=
7 8
DateTime
9 A
.
A B
Now
B E
;
E F
if
…… 
(
…… 
examId
…… 
==
…… 
$num
…… 
&&
……  "
examId
……# )
!=
……* ,
null
……- 1
)
……1 2
{
 

choiceList
 
=
  
AssessmentDAL
! .
.
. /#
GetChoiceBYQuestionId
/ D
(
D E
Convert
E L
.
L M
ToInt32
M T
(
T U

questionId
U _
)
_ `
,
` a
examId
b h
,
h i
questionDetails
j y
.
y z#
examAttemptAnswerDTOz 
. 
ChoiceId —
,— 
questionDetails จ
.จ ฉ$
examAttemptAnswerDTOฉ ฝ
.ฝ พ
ExamAttemptIdพ ห
,ห ฬ
questionDetailsอ Ü
.Ü Ý"
NotRandomizeAnswerÝ ๏
)๏ ๐
;๐ ๑
questionDetails
 #
.
# $

choiceList
$ .
=
/ 0

choiceList
1 ;
;
; <
}
 
else
 
{
 

choiceList
 
=
  
AssessmentDAL
! .
.
. /#
GetChoiceBYQuestionId
/ D
(
D E
Convert
E L
.
L M
ToInt32
M T
(
T U

questionId
U _
)
_ `
,
` a
examId
b h
,
h i
questionDetails
j y
.
y z#
examAttemptAnswerDTOz 
. 
ChoiceId —
,— 
questionDetails จ
.จ ฉ
examAttemptIdฉ ถ
,ถ ท
questionDetailsธ ว
.ว ศ"
NotRandomizeAnswerศ ฺ
)ฺ Û
;Û Ü
questionDetails
 #
.
# $

choiceList
$ .
=
/ 0

choiceList
1 ;
;
; <
}
 
if
’’ 
(
’’ 
examId
’’ 
==
’’ 
$num
’’ 
&&
’’  "
examId
’’# )
!=
’’* ,
null
’’- 1
)
’’1 2
{
““ 
var
”” 
peerdata
””  
=
””! "
AssessmentDAL
””# 0
.
””0 1
GetPeerDetails
””1 ?
(
””? @
Convert
””@ G
.
””G H
ToInt32
””H O
(
””O P

questionId
””P Z
)
””Z [
,
””[ \
Convert
””] d
.
””d e
ToInt32
””e l
(
””l m
userId
””m s
)
””s t
,
””t u
questionDetails””v …
.””… $
examAttemptAnswerDTO”” 
.”” 
ExamAttemptId”” จ
)””จ ฉ
;””ฉ ช
questionDetails
•• #
.
••# $
PeerDetails
••$ /
=
••0 1
peerdata
••2 :
.
••: ;
Where
••; @
(
••@ A
s
••A B
=>
••C E
s
••F G
.
••G H
ChoiceId
••H P
!=
••Q S
$num
••T U
)
••U V
.
••V W
OrderBy
••W ^
(
••^ _
s
••_ `
=>
••a c
s
••d e
.
••e f
ChoiceOption
••f r
)
••r s
.
••s t
ToList
••t z
(
••z {
)
••{ |
;
••| }
}
 
else
 
{
 
var
 
peerdata
  
=
! "
AssessmentDAL
# 0
.
0 1
GetPeerDetails
1 ?
(
? @
Convert
@ G
.
G H
ToInt32
H O
(
O P

questionId
P Z
)
Z [
,
[ \
Convert
] d
.
d e
ToInt32
e l
(
l m
userId
m s
)
s t
,
t u
questionDetailsv …
.… 
examAttemptId “
)“ ”
;” •
questionDetails
 #
.
# $
PeerDetails
$ /
=
0 1
peerdata
2 :
.
: ;
Where
; @
(
@ A
s
A B
=>
C E
s
F G
.
G H
ChoiceId
H P
!=
Q S
$num
T U
)
U V
.
V W
OrderBy
W ^
(
^ _
s
_ `
=>
a c
s
d e
.
e f
ChoiceOption
f r
)
r s
.
s t
ToList
t z
(
z {
)
{ |
;
| }
questionDetails
   #
.
  # $
QuestionCount
  $ 1
=
  2 3
AssessmentDAL
  4 A
.
  A B
GetQuestionCount
  B R
(
  R S
Convert
  S Z
.
  Z [
ToInt32
  [ b
(
  b c
examId
  c i
)
  i j
)
  j k
;
  k l
}
กก 
questionDetails
ฉฉ 
.
ฉฉ  
	TopicName
ฉฉ  )
=
ฉฉ* +
AssessmentDAL
ฉฉ, 9
.
ฉฉ9 : 
GetTopicByQuestion
ฉฉ: L
(
ฉฉL M
Convert
ฉฉM T
.
ฉฉT U
ToInt32
ฉฉU \
(
ฉฉ\ ]

questionId
ฉฉ] g
)
ฉฉg h
)
ฉฉh i
;
ฉฉi j
log
ชช 
.
ชช 
Information
ชช 
(
ชช  
$str
ชช  G
,
ชชG H
$str
ชชI a
,
ชชa b
questionDetails
ชชc r
.
ชชr s
examId
ชชs y
,
ชชy z
questionDetailsชช{ 
.ชช 
userIdชช ‘
)ชช‘ ’
;ชช’ “
return
ซซ 
questionDetails
ซซ &
;
ซซ& '
}
ฌฌ 
catch
ญญ 
(
ญญ 
	Exception
ญญ 
e
ญญ 
)
ญญ 
{
ฎฎ 
Console
ฏฏ 
.
ฏฏ 
Write
ฏฏ 
(
ฏฏ 
e
ฏฏ 
.
ฏฏ  
Message
ฏฏ  '
)
ฏฏ' (
;
ฏฏ( )
return
ฐฐ 
null
ฐฐ 
;
ฐฐ 
}
ฑฑ 
}
ฒฒ 	
public
นน 
static
นน 
void
นน +
UpdateSpacedRepetitionDetails
นน 8
(
นน8 9
ExamDTO
นน9 @
examObj
นนA H
,
นนH I 
UpdateSkipAnswered
นนJ \ 
updateSkipAnswered
นน] o
,
นนo p
ref
นนq t#
ExamAttemptAnswerDTOนนu $
examAttemptAnswerDTOนน 
)นน 
{
บบ 	
if
ปป 
(
ปป "
examAttemptAnswerDTO
ปป $
.
ปป$ %
IsRight
ปป% ,
==
ปป- /
true
ปป0 4
&&
ปป5 7 
updateSkipAnswered
ปป8 J
.
ปปJ K

ButtonType
ปปK U
==
ปปV X
$num
ปปY Z
)
ปปZ [
{
ผผ "
examAttemptAnswerDTO
ฝฝ $
.
ฝฝ$ %
Quality
ฝฝ% ,
=
ฝฝ- .
$num
ฝฝ/ 0
;
ฝฝ0 1
}
พพ 
else
ฟฟ 
if
ฟฟ 
(
ฟฟ "
examAttemptAnswerDTO
ฟฟ )
.
ฟฟ) *
IsRight
ฟฟ* 1
==
ฟฟ2 4
true
ฟฟ5 9
&&
ฟฟ: < 
updateSkipAnswered
ฟฟ= O
.
ฟฟO P

ButtonType
ฟฟP Z
==
ฟฟ[ ]
$num
ฟฟ^ _
)
ฟฟ_ `
{
ภภ "
examAttemptAnswerDTO
มม $
.
มม$ %
Quality
มม% ,
=
มม- .
$num
มม/ 0
;
มม0 1
}
ยย 
else
รร 
if
รร 
(
รร "
examAttemptAnswerDTO
รร )
.
รร) *
IsRight
รร* 1
==
รร2 4
false
รร5 :
&&
รร; = 
updateSkipAnswered
รร> P
.
รรP Q

ButtonType
รรQ [
==
รร\ ^
$num
รร_ `
)
รร` a
{
ฤฤ "
examAttemptAnswerDTO
ลล $
.
ลล$ %
Quality
ลล% ,
=
ลล- .
$num
ลล/ 0
;
ลล0 1
}
ฦฦ 
else
วว 
if
วว 
(
วว "
examAttemptAnswerDTO
วว )
.
วว) *
IsRight
วว* 1
==
วว2 4
false
วว5 :
&&
วว; = 
updateSkipAnswered
วว> P
.
ววP Q

ButtonType
ววQ [
==
วว\ ^
$num
วว_ `
)
วว` a
{
ศศ "
examAttemptAnswerDTO
ษษ $
.
ษษ$ %
Quality
ษษ% ,
=
ษษ- .
$num
ษษ/ 0
;
ษษ0 1
}
สส 
else
หห 
{
ฬฬ "
examAttemptAnswerDTO
ออ $
.
ออ$ %
Quality
ออ% ,
=
ออ- .
$num
ออ/ 0
;
ออ0 1
}
ฮฮ 
log
ฯฯ 
.
ฯฯ 
Information
ฯฯ 
(
ฯฯ 
$str
ฯฯ Q
,
ฯฯQ R
$str
ฯฯS r
,
ฯฯr s!
updateSkipAnsweredฯฯt 
.ฯฯ 
examIdฯฯ 
,ฯฯ "
updateSkipAnsweredฯฯ ก
.ฯฯก ข
userIdฯฯข จ
,ฯฯจ ฉ$
examAttemptAnswerDTOฯฯช พ
.ฯฯพ ฟ
Qualityฯฯฟ ฦ
)ฯฯฦ ว
;ฯฯว ศ"
examAttemptAnswerDTO
ัั  
.
ัั  !
	SessionId
ัั! *
=
ัั+ ,
examObj
ัั- 4
.
ัั4 5
	SessionId
ัั5 >
;
ัั> ?
int
ิิ $
attemptedQuestionCount
ิิ &
=
ิิ' (
AssessmentDAL
ิิ) 6
.
ิิ6 7'
GetAttemptedQuestionCount
ิิ7 P
(
ิิP Q"
examAttemptAnswerDTO
ิิQ e
.
ิิe f
UserId
ิิf l
,
ิิl m
examObj
ิิn u
.
ิิu v
	SessionId
ิิv 
,ิิ €$
examAttemptAnswerDTOิิ •
.ิิ• –
ExamAttemptIdิิ– ฃ
)ิิฃ ค
;ิิค ฅ
if
ึึ 
(
ึึ $
attemptedQuestionCount
ึึ &
==
ึึ' )
$num
ึึ* ,
)
ึึ, -
{
ืื "
examAttemptAnswerDTO
ุุ $
.
ุุ$ %
RoundNumber
ุุ% 0
=
ุุ1 2
examObj
ุุ3 :
.
ุุ: ;
RoundNumber
ุุ; F
+
ุุG H
$num
ุุI J
;
ุุJ K
ExamDAL
ูู 
.
ูู 

UpdateExam
ูู "
(
ูู" #
examObj
ูู# *
.
ูู* +
ExamId
ูู+ 1
,
ูู1 2
examObj
ูู3 :
.
ูู: ;
UserId
ูู; A
,
ููA B"
examAttemptAnswerDTO
ููC W
.
ููW X
RoundNumber
ููX c
,
ููc d
$str
ููe r
)
ููr s
;
ููs t
}
ฺฺ 
if
ÜÜ 
(
ÜÜ $
attemptedQuestionCount
ÜÜ &
==
ÜÜ' )
$num
ÜÜ* ,
)
ÜÜ, -
{
ÝÝ "
examAttemptAnswerDTO
ÞÞ $
.
ÞÞ$ %
RoundNumber
ÞÞ% 0
=
ÞÞ1 2
examObj
ÞÞ3 :
.
ÞÞ: ;
RoundNumber
ÞÞ; F
+
ÞÞG H
$num
ÞÞI J
;
ÞÞJ K
ExamDAL
฿฿ 
.
฿฿ 

UpdateExam
฿฿ "
(
฿฿" #
examObj
฿฿# *
.
฿฿* +
ExamId
฿฿+ 1
,
฿฿1 2
examObj
฿฿3 :
.
฿฿: ;
UserId
฿฿; A
,
฿฿A B"
examAttemptAnswerDTO
฿฿C W
.
฿฿W X
RoundNumber
฿฿X c
,
฿฿c d
$str
฿฿e r
)
฿฿r s
;
฿฿s t
}
เเ 
else
แแ 
if
แแ 
(
แแ $
attemptedQuestionCount
แแ +
==
แแ, .
$num
แแ/ 1
)
แแ1 2
{
โโ "
examAttemptAnswerDTO
ใใ $
.
ใใ$ %
RoundNumber
ใใ% 0
=
ใใ1 2
examObj
ใใ3 :
.
ใใ: ;
RoundNumber
ใใ; F
+
ใใG H
$num
ใใI J
;
ใใJ K
ExamDAL
ไไ 
.
ไไ 

UpdateExam
ไไ "
(
ไไ" #
examObj
ไไ# *
.
ไไ* +
ExamId
ไไ+ 1
,
ไไ1 2
examObj
ไไ3 :
.
ไไ: ;
UserId
ไไ; A
,
ไไA B"
examAttemptAnswerDTO
ไไC W
.
ไไW X
RoundNumber
ไไX c
,
ไไc d
$str
ไไe r
)
ไไr s
;
ไไs t
}
ๅๅ 
else
ๆๆ 
{
็็ "
examAttemptAnswerDTO
่่ $
.
่่$ %
RoundNumber
่่% 0
=
่่1 2
examObj
่่3 :
.
่่: ;
RoundNumber
่่; F
;
่่F G
}
้้ 
if
๋๋ 
(
๋๋ 
examObj
๋๋ 
.
๋๋ 
RoundNumber
๋๋ #
==
๋๋$ &
$num
๋๋' (
)
๋๋( )
{
์์ 
ResponseStatusVM
ํํ  
rstatus
ํํ! (
=
ํํ) *
new
ํํ+ .
ResponseStatusVM
ํํ/ ?
(
ํํ? @
)
ํํ@ A
;
ํํA B"
examAttemptAnswerDTO
๎๎ $
.
๎๎$ %
EasinessFactor
๎๎% 3
=
๎๎4 5
$num
๎๎6 9
;
๎๎9 :"
examAttemptAnswerDTO
๑๑ $
.
๑๑$ %
NewEasinessFactor
๑๑% 6
=
๑๑7 8"
examAttemptAnswerDTO
๑๑9 M
.
๑๑M N
EasinessFactor
๑๑N \
+
๑๑] ^
(
๑๑_ `
$num
๑๑` c
-
๑๑d e
(
๑๑f g
(
๑๑g h
$num
๑๑h i
-
๑๑j k#
examAttemptAnswerDTO๑๑l €
.๑๑€ 
Quality๑๑ 
)๑๑ 
*๑๑ 
(๑๑ 
$num๑๑ ‘
+๑๑’ “
(๑๑” •
(๑๑• –
$num๑๑– —
-๑๑ $
examAttemptAnswerDTO๑๑ ฎ
.๑๑ฎ ฏ
Quality๑๑ฏ ถ
)๑๑ถ ท
*๑๑ธ น
$num๑๑บ พ
)๑๑พ ฟ
)๑๑ฟ ภ
)๑๑ภ ม
)๑๑ม ย
+๑๑ร ฤ$
examAttemptAnswerDTO๑๑ล ู
.๑๑ู ฺ
Quality๑๑ฺ แ
;๑๑แ โ"
examAttemptAnswerDTO
๒๒ $
.
๒๒$ %
	Iteration
๒๒% .
=
๒๒/ 0
(
๒๒1 2
(
๒๒2 3
$num
๒๒3 4
)
๒๒4 5
*
๒๒6 7
Convert
๒๒8 ?
.
๒๒? @
ToInt32
๒๒@ G
(
๒๒G H"
examAttemptAnswerDTO
๒๒H \
.
๒๒\ ]
NewEasinessFactor
๒๒] n
)
๒๒n o
)
๒๒o p
;
๒๒p q
}
๓๓ 
else
๔๔ 
if
๔๔ 
(
๔๔ 
examObj
๔๔ 
.
๔๔ 
RoundNumber
๔๔ (
>
๔๔) *
$num
๔๔+ ,
)
๔๔, -
{
๕๕ 
int
๖๖ 
easiness
๖๖ 
=
๖๖ 
AssessmentDAL
๖๖ ,
.
๖๖, -"
GetNewEasynessFactor
๖๖- A
(
๖๖A B"
examAttemptAnswerDTO
๖๖B V
.
๖๖V W
UserId
๖๖W ]
,
๖๖] ^"
examAttemptAnswerDTO
๖๖_ s
.
๖๖s t

QuestionId
๖๖t ~
,
๖๖~ $
examAttemptAnswerDTO๖๖€ ”
.๖๖” •
ExamAttemptId๖๖• ข
)๖๖ข ฃ
;๖๖ฃ ค
if
๗๗ 
(
๗๗ 
easiness
๗๗ 
==
๗๗ 
$num
๗๗  !
)
๗๗! "
{
๘๘ "
examAttemptAnswerDTO
๙๙ (
.
๙๙( )
EasinessFactor
๙๙) 7
=
๙๙8 9
$num
๙๙: =
;
๙๙= >
}
๚๚ 
else
๛๛ 
{
üü "
examAttemptAnswerDTO
ýý (
.
ýý( )
EasinessFactor
ýý) 7
=
ýý8 9
easiness
ýý: B
;
ýýB C
}
þþ "
examAttemptAnswerDTO
€€ $
.
€€$ %
NewEasinessFactor
€€% 6
=
€€7 8"
examAttemptAnswerDTO
€€9 M
.
€€M N
EasinessFactor
€€N \
+
€€] ^
(
€€_ `
$num
€€` c
-
€€d e
(
€€f g
(
€€g h
$num
€€h i
-
€€j k#
examAttemptAnswerDTO€€l €
.€€€ 
Quality€€ 
)€€ 
*€€ 
(€€ 
$num€€ ‘
+€€’ “
(€€” •
(€€• –
$num€€– —
-€€ $
examAttemptAnswerDTO€€ ฎ
.€€ฎ ฏ
Quality€€ฏ ถ
)€€ถ ท
*€€ธ น
$num€€บ พ
)€€พ ฟ
)€€ฟ ภ
)€€ภ ม
)€€ม ย
+€€ร ฤ$
examAttemptAnswerDTO€€ล ู
.€€ู ฺ
Quality€€ฺ แ
;€€แ โ"
examAttemptAnswerDTO
 $
.
$ %
	Iteration
% .
=
/ 0
(
1 2
(
2 3
examObj
3 :
.
: ;
RoundNumber
; F
-
G H
$num
I J
)
J K
*
L M
Convert
N U
.
U V
ToInt32
V ]
(
] ^"
examAttemptAnswerDTO
^ r
.
r s 
NewEasinessFactors 
) …
)… 
; 
}
…… 
log
 
.
 
Information
 
(
 
$str
 _
,
_ `
$stra €
,€ "
updateSkipAnswered ”
.” •
examId• 
, "
updateSkipAnswered ฏ
.ฏ ฐ
userIdฐ ถ
,ถ ท$
examAttemptAnswerDTOธ ฬ
.ฬ อ
Qualityอ ิ
,ิ ี$
examAttemptAnswerDTOึ ๊
.๊ ๋
RoundNumber๋ ๖
)๖ ๗
;๗ ๘
}
 	
}
 
} €G
dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\BCSCMapperBAL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
BCSCMapperBAL 
{		 
public

 
static

 
List

 
<

 
QuestionContentDTO

 -
>

- .
GetQuestions

/ ;
(

; <
int

< ?
	pageIndex

@ I
,

I J
int

K N
noOfRecords

O Z
)

Z [
{ 	
return 
BCSCMapperDAL  
.  !
GetQuestions! -
(- .
	pageIndex. 7
,7 8
noOfRecords9 D
)D E
;E F
} 	
public 
static 
List 
< 
QuestionContentDTO -
>- .
GetQuestionContent/ A
(A B
intB E
?E F

questionIdG Q
)Q R
{ 	
return 
BCSCMapperDAL  
.  !
GetQuestionContent! 3
(3 4

questionId4 >
)> ?
;? @
} 	
public 
static 
bool 
GetButtonStatus *
(* +
int+ .
?. /

questionId0 :
,: ;
int< ?
?? @
subSpecialityIdA P
,P Q
intR U
?U V
topicIdW ^
)^ _
{ 	
return 
BCSCMapperDAL  
.  !
GetButtonStatus! 0
(0 1

questionId1 ;
,; <
subSpecialityId= L
,L M
topicIdN U
)U V
;V W
} 	
public 
static 
List 
< 

ChapterDTO %
>% &

GetChapter' 1
(1 2
int2 5
?5 6
subspecialtyId7 E
)E F
{ 	
return 
BCSCMapperDAL  
.  !

GetChapter! +
(+ ,
subspecialtyId, :
): ;
;; <
} 	
public 
static 
int 
InsertContent '
(' (
TopicContentDTO( 7
addTopicContent8 G
)G H
{ 	
return   
BCSCMapperDAL    
.    !
InsertContent  ! .
(  . /
addTopicContent  / >
)  > ?
;  ? @
}!! 	
public## 
static## 
List## 
<## 
TopicContentDTO## *
>##* +
GetUpdateContent##, <
(##< =
int##= @
?##@ A

questionId##B L
,##L M
int##N Q
?##Q R
subSpecialityId##S b
,##b c
int##d g
?##g h
topicId##i p
)##p q
{$$ 	
return%% 
BCSCMapperDAL%%  
.%%  !
GetUpdateContent%%! 1
(%%1 2

questionId%%2 <
,%%< =
subSpecialityId%%> M
,%%M N
topicId%%O V
)%%V W
;%%W X
}&& 	
public(( 
static(( 
List(( 
<(( 
QuestionContentDTO(( -
>((- .
GetQuestionById((/ >
(((> ?
int((? B
?((B C

questionId((D N
)((N O
{)) 	
return** 
BCSCMapperDAL**  
.**  !
GetQuestionById**! 0
(**0 1

questionId**1 ;
)**; <
;**< =
}++ 	
public-- 
static-- 
List-- 
<-- 
QuestionContentDTO-- -
>--- .
GetQuestionByTitle--/ A
(--A B
string--B H
questionText--I U
,--U V
int--W Z
	pageIndex--[ d
,--d e
int--f i
noOfRecords--j u
,--u v
string--w }
radioButtonState	--~ 
)
-- 
{.. 	
return// 
BCSCMapperDAL//  
.//  !
GetQuestionByTitle//! 3
(//3 4
questionText//4 @
,//@ A
	pageIndex//B K
,//K L
noOfRecords//M X
,//X Y
radioButtonState//Z j
)//j k
;//k l
}00 	
public22 
static22 
List22 
<22 

ProgramDTO22 %
>22% &

GetProgram22' 1
(221 2
)222 3
{33 	
return44 
BCSCMapperDAL44 
.44  

GetProgram44  *
(44* +
)44+ ,
;44, -
}55 	
public77 
static77 
List77 
<77 

ProgramDTO77 %
>77% &
GetSubProgram77' 4
(774 5
int775 8
?778 9
	programId77: C
)77C D
{88 	
return99 
BCSCMapperDAL99  
.99  !
GetSubProgram99! .
(99. /
	programId99/ 8
)998 9
;999 :
}:: 	
public<< 
static<< 
List<< 
<<< 

ProgramDTO<< %
><<% &
GetSubSpeciality<<' 7
(<<7 8
int<<8 ;
?<<; <
subprogramId<<= I
)<<I J
{== 	
return>> 
BCSCMapperDAL>>  
.>>  !
GetSubSpeciality>>! 1
(>>1 2
subprogramId>>2 >
)>>> ?
;>>? @
}?? 	
publicAA 
staticAA 
ListAA 
<AA 

ProgramDTOAA %
>AA% &
GetTopicBySubSpecAA' 8
(AA8 9
intAA9 <
?AA< =
subSpecialtyIdAA> L
)AAL M
{BB 	
returnCC 
BCSCMapperDALCC  
.CC  !
GetTopicBySubSpecCC! 2
(CC2 3
subSpecialtyIdCC3 A
)CCA B
;CCB C
}DD 	
publicFF 
staticFF 
ListFF 
<FF 
QuestionContentDTOFF -
>FF- .
GetQuesByTopicFF/ =
(FF= >
intFF> A
?FFA B
topicIdFFC J
,FFJ K
intFFL O
?FFO P
subSpecialtyIdFFQ _
,FF_ `
intFFa d
?FFd e
	programIdFFf o
,FFo p
intFFq t
?FFt u
subProgramId	FFv 
,
FF 
int
FF 
	pageIndex
FF ‘
,
FF‘ ’
int
FF“ –
noOfRecords
FF— ข
)
FFข ฃ
{GG 	
returnHH 
BCSCMapperDALHH  
.HH  !
GetQuesByTopicHH! /
(HH/ 0
topicIdHH0 7
,HH7 8
subSpecialtyIdHH9 G
,HHG H
	programIdHHI R
,HHR S
subProgramIdHHT `
,HH` a
	pageIndexHHb k
,HHk l
noOfRecordsHHm x
)HHx y
;HHy z
}II 	
publicKK 
staticKK 
ListKK 
<KK 
QuestionDataKK '
>KK' (
GetBCSCQuestDetailsKK) <
(KK< =
intKK= @
?KK@ A

questionIdKKB L
,KKL M
intKKN Q
?KKQ R
subSpecialtyIdKKS a
)KKa b
{LL 	
ListMM 
<MM 
QuestionDataMM 
>MM 
questionDataMM +
=MM, -
newMM. 1
ListMM2 6
<MM6 7
QuestionDataMM7 C
>MMC D
(MMD E
)MME F
;MMF G
returnNN 
BCSCMapperDALNN  
.NN  !
GetBCSCQuestDetailsNN! 4
(NN4 5

questionIdNN5 ?
,NN? @
subSpecialtyIdNNA O
)NNO P
;NNP Q
}OO 	
publicQQ 
staticQQ 
ListQQ 
<QQ 
SubSpecialityDTOQQ +
>QQ+ , 
GetBCSCSectionNumberQQ- A
(QQA B
intQQB E
?QQE F
subSpecialtyIdQQG U
)QQU V
{RR 	
returnSS 
BCSCMapperDALSS  
.SS  ! 
GetBCSCSectionNumberSS! 5
(SS5 6
subSpecialtyIdSS6 D
)SSD E
;SSE F
}TT 	
publicVV 
staticVV 
ListVV 
<VV 

ProgramDTOVV %
>VV% &&
GetSubSpecFromSpecialityIdVV' A
(VVA B
intVVB E
?VVE F
subSpecialtyIdVVG U
)VVU V
{WW 	
returnXX 
BCSCMapperDALXX  
.XX  !&
GetSubSpecFromSpecialityIdXX! ;
(XX; <
subSpecialtyIdXX< J
)XXJ K
;XXK L
}YY 	
public[[ 
static[[ 
List[[ 
<[[ 

ProgramDTO[[ %
>[[% &
GetTopicByTopicId[[' 8
([[8 9
int[[9 <
?[[< =
topicId[[> E
)[[E F
{\\ 	
return]] 
BCSCMapperDAL]]  
.]]  !
GetTopicByTopicId]]! 2
(]]2 3
topicId]]3 :
)]]: ;
;]]; <
}^^ 	
}__ 
}`` ๒
bD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\CMECreditBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
CMECreditBL #
{ 
public		 
static		 
List		 
<		 
CMECreditVM		 &
>		& '
GetCreditDetails		( 8
(		8 9
UserIdVM		9 A
user		B F
)		F G
{

 	
return 
CMECreditDAL 
.  
GetCreditDetails  0
(0 1
user1 5
)5 6
;6 7
} 	
} 
} ะ
]D:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\ExamBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ExamBL 
{ 
private 
static 
string 
_sAttrLogPath +
=, - 
ConfigurationManager. B
.B C
AppSettingsC N
.N O
GetO R
(R S
$strS `
)` a
;a b
private 
static 
Serilog 
. 
Core #
.# $
Logger$ *
log+ .
=/ 0
new1 4
LoggerConfiguration5 H
(H I
)I J
.J K
WriteToK R
.R S
RollingFileS ^
(^ _
_sAttrLogPath_ l
,l m
sharedn t
:t u
truev z
,z {#
retainedFileCountLimit	| ’
:
’ “
$num
” •
)
• –
.
– —
CreateLogger
— ฃ
(
ฃ ค
)
ค ฅ
;
ฅ ฆ
public 
static 
List 
< 
ExamHistoryVM (
>( )
ExamMyProgressView* <
(< =
int= @
?@ A
userIdB H
)H I
{ 	
return 
ExamDAL 
. 
GetExamListView *
(* +
userId+ 1
)1 2
;2 3
} 	
public 
static 
ResponseStatusVM &

CreateExam' 1
(1 2
ExamDTO2 9
objCreateExam: G
)G H
{ 	
ResponseStatusVM 
status #
=$ %
new& )
ResponseStatusVM* :
(: ;
); <
;< =
if   
(   
objCreateExam   
.   
ExamName   &
==  ' )
null  * .
)  . /
{!! 
if"" 
("" 
Convert"" 
."" 
ToInt32"" #
(""# $
ExamManagerEnum""$ 3
.""3 4
ExamType""4 <
.""< =

CustomMode""= G
)""G H
==""I K
objCreateExam""L Y
.""Y Z
ExamType""Z b
)""b c
{## 
objCreateExam$$ !
.$$! "
ExamName$$" *
=$$+ ,
$str$$- :
+$$; <
DateTime$$= E
.$$E F
Now$$F I
.$$I J
ToString$$J R
($$R S
$str$$S _
)$$_ `
+$$a b
$str$$c f
+$$g h
($$i j
objCreateExam$$j w
.$$w x
UserId$$x ~
.$$~ 
ToString	$$ 
(
$$ 
)
$$ 
)
$$ 
;
$$ 
}%% 
else&& 
if&& 
(&& 
Convert&&  
.&&  !
ToInt32&&! (
(&&( )
ExamManagerEnum&&) 8
.&&8 9
ExamType&&9 A
.&&A B
SimulatedMode&&B O
)&&O P
==&&Q S
objCreateExam&&T a
.&&a b
ExamType&&b j
)&&j k
{'' 
objCreateExam(( !
.((! "
ExamName((" *
=((+ ,
$str((- =
+((> ?
DateTime((@ H
.((H I
Now((I L
.((L M
ToString((M U
(((U V
$str((V b
)((b c
+((d e
$str((f i
+((j k
(((l m
objCreateExam((m z
.((z {
UserId	(({ 
.
(( 
ToString
(( 
(
(( 
)
(( 
)
(( 
;
(( 
})) 
else** 
if** 
(** 
Convert**  
.**  !
ToInt32**! (
(**( )
ExamManagerEnum**) 8
.**8 9
ExamType**9 A
.**A B
	QuickMode**B K
)**K L
==**M O
objCreateExam**P ]
.**] ^
ExamType**^ f
)**f g
{++ 
objCreateExam,, !
.,,! "
ExamName,," *
=,,+ ,
$str,,- 9
+,,: ;
DateTime,,< D
.,,D E
Now,,E H
.,,H I
ToString,,I Q
(,,Q R
$str,,R ^
),,^ _
+,,` a
$str,,b e
+,,f g
(,,h i
objCreateExam,,i v
.,,v w
UserId,,w }
.,,} ~
ToString	,,~ 
(
,, 
)
,, 
)
,, 
;
,, 
}-- 
else.. 
if.. 
(.. 
Convert..  
...  !
ToInt32..! (
(..( )
ExamManagerEnum..) 8
...8 9
ExamType..9 A
...A B
SpacedRepetition..B R
)..R S
==..T V
objCreateExam..W d
...d e
ExamType..e m
)..m n
{// 
objCreateExam00 !
.00! "
ExamName00" *
=00+ ,
$str00- @
+00A B
DateTime00C K
.00K L
Now00L O
.00O P
ToString00P X
(00X Y
$str00Y e
)00e f
+00g h
$str00i l
+00m n
(00o p
objCreateExam00p }
.00} ~
UserId	00~ 
.
00 …
ToString
00… 
(
00 
)
00 
)
00 
;
00 ‘
}11 
else22 
if22 
(22 
Convert22  
.22  !
ToInt3222! (
(22( )
ExamManagerEnum22) 8
.228 9
ExamType229 A
.22A B

SharedMode22B L
)22L M
==22N P
objCreateExam22Q ^
.22^ _
ExamType22_ g
)22g h
{33 
objCreateExam44 !
.44! "
ExamName44" *
=44+ ,
$str44- :
+44; <
DateTime44= E
.44E F
Now44F I
.44I J
ToString44J R
(44R S
$str44S _
)44_ `
+44a b
$str44c f
+44g h
(44i j
objCreateExam44j w
.44w x
UserId44x ~
.44~ 
ToString	44 
(
44 
)
44 
)
44 
;
44 
}55 
log77 
.77 
Information77 
(77  
$str77  K
,77K L
$str77M Y
,77Y Z
objCreateExam77[ h
.77h i
UserId77i o
,77o p
objCreateExam77q ~
.77~ 
ExamName	77 
)
77 
;
77 
}88 
if:: 
(:: 
Convert:: 
.:: 
ToInt32:: 
(::  
ExamManagerEnum::  /
.::/ 0
ExamType::0 8
.::8 9

CustomMode::9 C
)::C D
==::E G
objCreateExam::H U
.::U V
ExamType::V ^
||::_ a
Convert::b i
.::i j
ToInt32::j q
(::q r
ExamManagerEnum	::r 
.
:: 
ExamType
:: 
.
:: 
SpacedRepetition
:: 
)
:: 
==
:: 
objCreateExam
::  ญ
.
::ญ ฎ
ExamType
::ฎ ถ
)
::ถ ท
{;; 
objCreateExam<< 
.<< 
TypeofQuestion<< ,
=<<- .
(<</ 0
string<<0 6
.<<6 7
Join<<7 ;
(<<; <
$str<<< ?
,<<? @
objCreateExam<<A N
.<<N O
TypeofQuestionList<<O a
.<<a b
Select<<b h
(<<h i
x<<i j
=><<k m
x<<n o
.<<o p
ToString<<p x
(<<x y
)<<y z
)<<z {
)<<{ |
)<<| }
;<<} ~
objCreateExam== 
.== 
TypeofCategory== ,
===- .
(==/ 0
string==0 6
.==6 7
Join==7 ;
(==; <
$str==< ?
,==? @
objCreateExam==A N
.==N O
TypeofCategoryList==O a
.==a b
Select==b h
(==h i
x==i j
=>==k m
x==n o
.==o p
ToString==p x
(==x y
)==y z
)==z {
)=={ |
)==| }
;==} ~
status>> 
=>> (
CreateExamAndAddExamQuestion>> 5
(>>5 6
objCreateExam>>6 C
)>>C D
;>>D E
}?? 
else@@ 
if@@ 
(@@ 
Convert@@ 
.@@ 
ToInt32@@ $
(@@$ %
ExamManagerEnum@@% 4
.@@4 5
ExamType@@5 =
.@@= >
SimulatedMode@@> K
)@@K L
==@@M O
objCreateExam@@P ]
.@@] ^
ExamType@@^ f
)@@f g
{AA 
objCreateExamBB 
.BB 
NoofQuestionsBB +
=BB, -
ConvertBB. 5
.BB5 6
ToInt32BB6 =
(BB= > 
ConfigurationManagerBB> R
.BBR S
AppSettingsBBS ^
[BB^ _
$strBB_ w
]BBw x
)BBx y
;BBy z
objCreateExamCC 
.CC 
ExamTimeTypeCC *
=CC+ ,
trueCC- 1
;CC1 2
statusDD 
=DD (
CreateExamAndAddExamQuestionDD 5
(DD5 6
objCreateExamDD6 C
)DDC D
;DDD E
}EE 
elseFF 
ifFF 
(FF 
ConvertFF 
.FF 
ToInt32FF $
(FF$ %
ExamManagerEnumFF% 4
.FF4 5
ExamTypeFF5 =
.FF= >
	QuickModeFF> G
)FFG H
==FFI K
objCreateExamFFL Y
.FFY Z
ExamTypeFFZ b
)FFb c
{GG 
objCreateExamJJ 
.JJ 
TypeofQuestionJJ ,
=JJ- .
(JJ/ 0
stringJJ0 6
.JJ6 7
JoinJJ7 ;
(JJ; <
$strJJ< ?
,JJ? @
objCreateExamJJA N
.JJN O
TypeofQuestionListJJO a
.JJa b
SelectJJb h
(JJh i
xJJi j
=>JJk m
xJJn o
.JJo p
ToStringJJp x
(JJx y
)JJy z
)JJz {
)JJ{ |
)JJ| }
;JJ} ~
statusKK 
=KK (
CreateExamAndAddExamQuestionKK 5
(KK5 6
objCreateExamKK6 C
)KKC D
;KKD E
}LL 
elseMM 
ifMM 
(MM 
ConvertMM 
.MM 
ToInt32MM $
(MM$ %
ExamManagerEnumMM% 4
.MM4 5
ExamTypeMM5 =
.MM= >

SharedModeMM> H
)MMH I
==MMJ L
objCreateExamMMM Z
.MMZ [
ExamTypeMM[ c
)MMc d
{NN 
objCreateExamOO 
.OO 
TypeofQuestionOO ,
=OO- .
(OO/ 0
stringOO0 6
.OO6 7
JoinOO7 ;
(OO; <
$strOO< ?
,OO? @
objCreateExamOOA N
.OON O
TypeofQuestionListOOO a
.OOa b
SelectOOb h
(OOh i
xOOi j
=>OOk m
xOOn o
.OOo p
ToStringOOp x
(OOx y
)OOy z
)OOz {
)OO{ |
)OO| }
;OO} ~
objCreateExamPP 
.PP 
TypeofCategoryPP ,
=PP- .
(PP/ 0
stringPP0 6
.PP6 7
JoinPP7 ;
(PP; <
$strPP< ?
,PP? @
objCreateExamPPA N
.PPN O
TypeofCategoryListPPO a
.PPa b
SelectPPb h
(PPh i
xPPi j
=>PPk m
xPPn o
.PPo p
ToStringPPp x
(PPx y
)PPy z
)PPz {
)PP{ |
)PP| }
;PP} ~
statusQQ 
=QQ (
CreateExamAndAddExamQuestionQQ 5
(QQ5 6
objCreateExamQQ6 C
)QQC D
;QQD E
}RR 
logTT 
.TT 
InformationTT 
(TT 
$strTT T
,TTT U
$strTTV b
,TTb c
objCreateExamTTd q
.TTq r
UserIdTTr x
,TTx y
objCreateExam	TTz 
.
TT 
ExamName
TT 
,
TT ‘
objCreateExam
TT’ 
.
TT  
ExamType
TT  จ
)
TTจ ฉ
;
TTฉ ช
returnUU 
statusUU 
;UU 
}VV 	
publicXX 
staticXX 
ExamDTOXX 
GetExamBYIdXX )
(XX) *
intXX* -
?XX- .
examIdXX/ 5
)XX5 6
{YY 	
returnZZ 
ExamDALZZ 
.ZZ 
GetExamBYIdZZ &
(ZZ& '
examIdZZ' -
)ZZ- .
;ZZ. /
}[[ 	
publicll 
staticll 
Listll 
<ll  
QuestionTypeCountDTOll /
>ll/ 0 
GetQuestionTypeCountll1 E
(llE F
intllF I
?llI J
userIdllK Q
)llQ R
{mm 	
returnnn 
ExamDALnn 
.nn  
GetQuestionTypeCountnn /
(nn/ 0
userIdnn0 6
)nn6 7
;nn7 8
}oo 	
publicqq 
staticqq 
Listqq 
<qq 
intqq 
>qq 
GetQuestionListqq  /
(qq/ 0
ExamDTOqq0 7
examqq8 <
)qq< =
{rr 	
Listss 
<ss 
intss 
>ss 
examQuestionListss &
=ss' (
newss) ,
Listss- 1
<ss1 2
intss2 5
>ss5 6
(ss6 7
)ss7 8
;ss8 9
Listtt 
<tt "
SelectedQuestionTypeIdtt '
>tt' (&
selectedQuestionTypeIdListtt) C
=ttD E
newttF I
ListttJ N
<ttN O"
SelectedQuestionTypeIdttO e
>tte f
(ttf g
)ttg h
;tth i
Listuu 
<uu 
SpecialityIduu 
>uu 
specialityIdListuu /
=uu0 1
newuu2 5
Listuu6 :
<uu: ;
SpecialityIduu; G
>uuG H
(uuH I
)uuI J
;uuJ K
intvv 
totalinputquestionvv "
;vv" #
logww 
.ww 
Informationww 
(ww 
$strww \
,ww\ ]
$strww^ o
,wwo p
examwwq u
.wwu v
ExamIdwwv |
,ww| }
exam	ww~ 
.
ww 
UserId
ww 
,
ww 
exam
ww 
.
ww 
NoofQuestions
ww 
)
ww 
;
ww 
ifyy 
(yy 
examyy 
.yy 
ExamTypeyy 
==yy  
Convertyy! (
.yy( )
ToInt32yy) 0
(yy0 1
ExamManagerEnumyy1 @
.yy@ A
ExamTypeyyA I
.yyI J
	QuickModeyyJ S
)yyS T
||yyU W
examyyX \
.yy\ ]
ExamTypeyy] e
==yyf h
Convertyyi p
.yyp q
ToInt32yyq x
(yyx y
ExamManagerEnum	yyy 
.
yy 
ExamType
yy ‘
.
yy‘ ’

CustomMode
yy’ 
)
yy 
||
yy  
exam
yyก ฅ
.
yyฅ ฆ
ExamType
yyฆ ฎ
==
yyฏ ฑ
Convert
yyฒ น
.
yyน บ
ToInt32
yyบ ม
(
yyม ย
ExamManagerEnum
yyย ั
.
yyั า
ExamType
yyา ฺ
.
yyฺ Û
SpacedRepetition
yyÛ ๋
)
yy๋ ์
||
yyํ ๏
exam
yy๐ ๔
.
yy๔ ๕
ExamType
yy๕ ý
==
yyþ €
Convert
yy 
.
yy 
ToInt32
yy 
(
yy ‘
ExamManagerEnum
yy‘  
.
yy  ก
ExamType
yyก ฉ
.
yyฉ ช

SharedMode
yyช ด
)
yyด ต
)
yyต ถ
{zz 
if{{ 
({{ 
exam{{ 
.{{ 
ExamType{{ !
=={{" $
Convert{{% ,
.{{, -
ToInt32{{- 4
({{4 5
ExamManagerEnum{{5 D
.{{D E
ExamType{{E M
.{{M N

SharedMode{{N X
){{X Y
){{Y Z
{|| 
if}} 
(}} 
exam}} 
.}} 
SelectedQuestions}} .
==}}/ 1
null}}2 6
)}}6 7
{~~ 
exam 
. 
SelectedQuestions .
=/ 0
$str1 3
;3 4
}
€€ 
int
 $
countSelectedQuestions
 .
=
/ 0
exam
1 5
.
5 6
SelectedQuestions
6 G
.
G H
Split
H M
(
M N
$char
N Q
)
Q R
.
R S
Length
S Y
;
Y Z 
totalinputquestion
 &
=
' (
exam
) -
.
- .
NoofQuestions
. ;
-
< =$
countSelectedQuestions
> T
;
T U
}
 
else
…… 
{
  
totalinputquestion
 &
=
' (
exam
) -
.
- .
NoofQuestions
. ;
;
; <
}
 
var
 
globaladjustment
 $
=
% &
(
' (
IEnumerable
( 3
<
3 4
decimal
4 ;
>
; <
)
< =
null
= A
;
A B
if
 
(
 
exam
 
.
 
ExamType
 !
==
" $
Convert
% ,
.
, -
ToInt32
- 4
(
4 5
ExamManagerEnum
5 D
.
D E
ExamType
E M
.
M N
	QuickMode
N W
)
W X
)
X Y
{
 
List
 
<
 #
SubSpecialityDetailVM
 .
>
. /

speciality
0 :
=
; <
new
= @
List
A E
<
E F#
SubSpecialityDetailVM
F [
>
[ \
(
\ ]
)
] ^
;
^ _

speciality
 
=
  
SpecialityDAL
! .
.
. /
GetSpecialityList
/ @
(
@ A
exam
A E
.
E F
UserId
F L
)
L M
;
M N
foreach
““ 
(
““ 
var
““  
specialityId
““! -
in
““. 0

speciality
““1 ;
)
““; <
{
”” 
SpecialityId
•• $
specilityId
••% 0
=
••1 2
new
••3 6
SpecialityId
••7 C
(
••C D
)
••D E
;
••E F
specilityId
–– #
.
––# $
specialityId
––$ 0
=
––1 2
Convert
––3 :
.
––: ;
ToInt32
––; B
(
––B C
specialityId
––C O
.
––O P
SpecialityId
––P \
)
––\ ]
;
––] ^
specialityIdList
—— (
.
——( )
Add
——) ,
(
——, -
specilityId
——- 8
)
——8 9
;
——9 :
}
 
globaladjustment
 $
=
% &!
SplitQuestionNumber
' :
(
: ; 
totalinputquestion
; M
,
M N

speciality
O Y
.
Y Z
Count
Z _
)
_ `
;
` a
log
 
.
 
Information
 #
(
# $
$str
$ _
,
_ `
$str
a r
,
r s
exam
t x
.
x y
ExamId
y 
, €
exam …
.… 
UserId 
, 
exam ’
.’ “
NoofQuestions“  
)  ก
;ก ข
}
 
else
 
if
 
(
 
exam
 
.
 
ExamType
 &
==
' )
Convert
* 1
.
1 2
ToInt32
2 9
(
9 :
ExamManagerEnum
: I
.
I J
ExamType
J R
.
R S

CustomMode
S ]
)
] ^
||
_ a
exam
b f
.
f g
ExamType
g o
==
p r
Convert
s z
.
z {
ToInt32{ 
( 
ExamManagerEnum ’
.’ “
ExamType“ 
.  
SpacedRepetition ฌ
)ฌ ญ
||ฎ ฐ
examฑ ต
.ต ถ
ExamTypeถ พ
==ฟ ม
Convertย ษ
.ษ ส
ToInt32ส ั
(ั า
ExamManagerEnumา แ
.แ โ
ExamTypeโ ๊
.๊ ๋

SharedMode๋ ๕
)๕ ๖
)๖ ๗
{
 
foreach
 
(
 
var
  
id
! #
in
$ &
exam
' +
.
+ , 
TypeofCategoryList
, >
)
> ?
{
   
SpecialityId
กก $
specilityId
กก% 0
=
กก1 2
new
กก3 6
SpecialityId
กก7 C
(
กกC D
)
กกD E
;
กกE F
specilityId
ขข #
.
ขข# $
specialityId
ขข$ 0
=
ขข1 2
Convert
ขข3 :
.
ขข: ;
ToInt32
ขข; B
(
ขขB C
id
ขขC E
)
ขขE F
;
ขขF G
specialityIdList
ฃฃ (
.
ฃฃ( )
Add
ฃฃ) ,
(
ฃฃ, -
specilityId
ฃฃ- 8
)
ฃฃ8 9
;
ฃฃ9 :
}
คค 
globaladjustment
ฆฆ $
=
ฆฆ% &!
SplitQuestionNumber
ฆฆ' :
(
ฆฆ: ; 
totalinputquestion
ฆฆ; M
,
ฆฆM N
specialityIdList
ฆฆO _
.
ฆฆ_ `
Count
ฆฆ` e
)
ฆฆe f
;
ฆฆf g
}
งง 
foreach
ชช 
(
ชช 
var
ชช 
id
ชช 
in
ชช  "
exam
ชช# '
.
ชช' ( 
TypeofQuestionList
ชช( :
)
ชช: ;
{
ซซ $
SelectedQuestionTypeId
ฌฌ *
questionType
ฌฌ+ 7
=
ฌฌ8 9
new
ฌฌ: =$
SelectedQuestionTypeId
ฌฌ> T
(
ฌฌT U
)
ฌฌU V
;
ฌฌV W
questionType
ญญ  
.
ญญ  !
questionTypeId
ญญ! /
=
ญญ0 1
Convert
ญญ2 9
.
ญญ9 :
ToInt32
ญญ: A
(
ญญA B
id
ญญB D
)
ญญD E
;
ญญE F(
selectedQuestionTypeIdList
ฎฎ .
.
ฎฎ. /
Add
ฎฎ/ 2
(
ฎฎ2 3
questionType
ฎฎ3 ?
)
ฎฎ? @
;
ฎฎ@ A
}
ฏฏ 
var
ฑฑ "
globaladjustmentList
ฑฑ (
=
ฑฑ) *
globaladjustment
ฑฑ+ ;
.
ฑฑ; <
ToList
ฑฑ< B
(
ฑฑB C
)
ฑฑC D
;
ฑฑD E
int
ฒฒ !
globaladjustmentSeq
ฒฒ '
=
ฒฒ( )
$num
ฒฒ* +
;
ฒฒ+ ,
foreach
ณณ 
(
ณณ 
var
ณณ 
item
ณณ !
in
ณณ" $
specialityIdList
ณณ% 5
)
ณณ5 6
{
ดด 
List
ตต 
<
ตต 
int
ตต 
>
ตต 
questionList
ตต *
=
ตต+ ,
new
ตต- 0
List
ตต1 5
<
ตต5 6
int
ตต6 9
>
ตต9 :
(
ตต: ;
)
ตต; <
;
ตต< =
double
ถถ 
topCount
ถถ #
=
ถถ$ %
Math
ถถ& *
.
ถถ* +
Ceiling
ถถ+ 2
(
ถถ2 3
Convert
ถถ3 :
.
ถถ: ;
ToDouble
ถถ; C
(
ถถC D"
globaladjustmentList
ถถD X
[
ถถX Y!
globaladjustmentSeq
ถถY l
]
ถถl m
)
ถถm n
)
ถถn o
;
ถถo p 
SpecialityQuestion
ทท &$
listSpecialityQuestion
ทท' =
=
ทท> ?
new
ทท@ C 
SpecialityQuestion
ททD V
(
ททV W
)
ททW X
;
ททX Y
questionList
ธธ  
=
ธธ! "
ExamDAL
ธธ# *
.
ธธ* +#
GetExamQuestionIdList
ธธ+ @
(
ธธ@ A
item
ธธA E
.
ธธE F
specialityId
ธธF R
,
ธธR S
exam
ธธT X
.
ธธX Y
UserId
ธธY _
,
ธธ_ `(
selectedQuestionTypeIdList
ธธa {
,
ธธ{ |
Convertธธ} 
.ธธ …
ToInt32ธธ… 
(ธธ 
topCountธธ •
)ธธ• –
)ธธ– —
;ธธ— 
examQuestionList
ปป $
.
ปป$ %
AddRange
ปป% -
(
ปป- .
questionList
ปป. :
)
ปป: ;
;
ปป; <!
globaladjustmentSeq
ผผ '
++
ผผ' )
;
ผผ) *
}
ฝฝ 
}
พพ 
else
มม 
if
มม 
(
มม 
exam
มม 
.
มม 
ExamType
มม "
==
มม# %
Convert
มม& -
.
มม- .
ToInt32
มม. 5
(
มม5 6
ExamManagerEnum
มม6 E
.
มมE F
ExamType
มมF N
.
มมN O
SimulatedMode
มมO \
)
มม\ ]
)
มม] ^
{
ยย  
totalinputquestion
รร "
=
รร# $
Convert
รร% ,
.
รร, -
ToInt32
รร- 4
(
รร4 5"
ConfigurationManager
รร5 I
.
รรI J
AppSettings
รรJ U
[
รรU V
$str
รรV n
]
รรn o
)
รรo p
;
รรp q
examQuestionList
ฤฤ  
=
ฤฤ! "
ExamDAL
ฤฤ# *
.
ฤฤ* +*
GetSimulatedExamQuestionList
ฤฤ+ G
(
ฤฤG H 
totalinputquestion
ฤฤH Z
)
ฤฤZ [
;
ฤฤ[ \
}
ลล 
else
ศศ 
if
ศศ 
(
ศศ 
exam
ศศ 
.
ศศ 
ExamType
ศศ "
==
ศศ# %
Convert
ศศ& -
.
ศศ- .
ToInt32
ศศ. 5
(
ศศ5 6
ExamManagerEnum
ศศ6 E
.
ศศE F
ExamType
ศศF N
.
ศศN O

CustomMode
ศศO Y
)
ศศY Z
||
ศศ[ ]
exam
ศศ^ b
.
ศศb c
ExamType
ศศc k
==
ศศl n
Convert
ศศo v
.
ศศv w
ToInt32
ศศw ~
(
ศศ~ 
ExamManagerEnumศศ 
.ศศ 
ExamTypeศศ —
.ศศ—  
SpacedRepetitionศศ จ
)ศศจ ฉ
||ศศช ฌ
examศศญ ฑ
.ศศฑ ฒ
ExamTypeศศฒ บ
==ศศป ฝ
Convertศศพ ล
.ศศล ฦ
ToInt32ศศฦ อ
(ศศอ ฮ
ExamManagerEnumศศฮ Ý
.ศศÝ Þ
ExamTypeศศÞ ๆ
.ศศๆ ็

SharedModeศศ็ ๑
)ศศ๑ ๒
)ศศ๒ ๓
{
ษษ  
totalinputquestion
สส "
=
สส# $
exam
สส% )
.
สส) *
NoofQuestions
สส* 7
;
สส7 8
foreach
ออ 
(
ออ 
var
ออ 
id
ออ 
in
ออ  "
exam
ออ# '
.
ออ' ( 
TypeofCategoryList
ออ( :
)
ออ: ;
{
ฮฮ 
SpecialityId
ฯฯ  
specilityId
ฯฯ! ,
=
ฯฯ- .
new
ฯฯ/ 2
SpecialityId
ฯฯ3 ?
(
ฯฯ? @
)
ฯฯ@ A
;
ฯฯA B
specilityId
ะะ 
.
ะะ  
specialityId
ะะ  ,
=
ะะ- .
Convert
ะะ/ 6
.
ะะ6 7
ToInt32
ะะ7 >
(
ะะ> ?
id
ะะ? A
)
ะะA B
;
ะะB C
specialityIdList
ัั $
.
ัั$ %
Add
ัั% (
(
ัั( )
specilityId
ัั) 4
)
ัั4 5
;
ัั5 6
}
าา 
foreach
ีี 
(
ีี 
var
ีี 
id
ีี 
in
ีี  "
exam
ีี# '
.
ีี' ( 
TypeofQuestionList
ีี( :
)
ีี: ;
{
ึึ $
SelectedQuestionTypeId
ืื *
questionType
ืื+ 7
=
ืื8 9
new
ืื: =$
SelectedQuestionTypeId
ืื> T
(
ืืT U
)
ืืU V
;
ืืV W
questionType
ุุ  
.
ุุ  !
questionTypeId
ุุ! /
=
ุุ0 1
Convert
ุุ2 9
.
ุุ9 :
ToInt32
ุุ: A
(
ุุA B
id
ุุB D
)
ุุD E
;
ุุE F(
selectedQuestionTypeIdList
ูู .
.
ูู. /
Add
ูู/ 2
(
ูู2 3
questionType
ูู3 ?
)
ูู? @
;
ูู@ A
}
ฺฺ 
}
ÛÛ 
examQuestionList
ÞÞ 
=
ÞÞ 
examQuestionList
ÞÞ /
.
ÞÞ/ 0
Distinct
ÞÞ0 8
(
ÞÞ8 9
)
ÞÞ9 :
.
ÞÞ: ;
ToList
ÞÞ; A
(
ÞÞA B
)
ÞÞB C
;
ÞÞC D
log
฿฿ 
.
฿฿ 
Information
฿฿ 
(
฿฿ 
$str
฿฿ t
,
฿฿t u
$str฿฿v 
,฿฿ 
exam฿฿ 
.฿฿ 
ExamId฿฿ ”
,฿฿” •
exam฿฿– 
.฿฿ 
UserId฿฿ ก
,฿฿ก ข
exam฿฿ฃ ง
.฿฿ง จ
ExamName฿฿จ ฐ
,฿฿ฐ ฑ
exam฿฿ฒ ถ
.฿฿ถ ท
NoofQuestions฿฿ท ฤ
,฿฿ฤ ล
exam฿฿ฦ ส
.฿฿ส ห
ExamType฿฿ห ำ
)฿฿ำ ิ
;฿฿ิ ี
return
เเ 
examQuestionList
เเ #
;
เเ# $
}
โโ 	
public
ไไ 
static
ไไ 
IEnumerable
ไไ !
<
ไไ! "
decimal
ไไ" )
>
ไไ) *!
SplitQuestionNumber
ไไ+ >
(
ไไ> ?
decimal
ไไ? F
value
ไไG L
,
ไไL M
int
ไไN Q
count
ไไR W
)
ไไW X
{
ๅๅ 	
if
ๆๆ 
(
ๆๆ 
count
ๆๆ 
<=
ๆๆ 
$num
ๆๆ 
)
ๆๆ 
{
็็ 
throw
่่ 
new
่่ 
ArgumentException
่่ +
(
่่+ ,
$str
่่, N
,
่่N O
$str
่่P W
)
่่W X
;
่่X Y
}
้้ 
log
๊๊ 
.
๊๊ 
Information
๊๊ 
(
๊๊ 
$str
๊๊ D
,
๊๊D E
$str
๊๊F [
,
๊๊[ \
value
๊๊] b
,
๊๊b c
count
๊๊d i
)
๊๊i j
;
๊๊j k
var
๋๋ 
result
๋๋ 
=
๋๋ 
new
๋๋ 
decimal
๋๋ $
[
๋๋$ %
count
๋๋% *
]
๋๋* +
;
๋๋+ ,
decimal
์์ 
runningTotal
์์  
=
์์! "
$num
์์# %
;
์์% &
for
ํํ 
(
ํํ 
int
ํํ 
i
ํํ 
=
ํํ 
$num
ํํ 
;
ํํ 
i
ํํ 
<
ํํ 
count
ํํ  %
;
ํํ% &
i
ํํ' (
++
ํํ( *
)
ํํ* +
{
๎๎ 
var
๏๏ 
	remainder
๏๏ 
=
๏๏ 
value
๏๏  %
-
๏๏& '
runningTotal
๏๏( 4
;
๏๏4 5
var
๐๐ 
share
๐๐ 
=
๐๐ 
	remainder
๐๐ %
>
๐๐& '
$num
๐๐( *
?
๐๐+ ,
Math
๐๐- 1
.
๐๐1 2
Max
๐๐2 5
(
๐๐5 6
Math
๐๐6 :
.
๐๐: ;
Round
๐๐; @
(
๐๐@ A
	remainder
๐๐A J
/
๐๐K L
(
๐๐M N
(
๐๐N O
decimal
๐๐O V
)
๐๐V W
(
๐๐W X
count
๐๐X ]
-
๐๐^ _
i
๐๐` a
)
๐๐a b
)
๐๐b c
,
๐๐c d
$num
๐๐e f
)
๐๐f g
,
๐๐g h
$num
๐๐i m
)
๐๐m n
:
๐๐o p
$num
๐๐q s
;
๐๐s t
result
๑๑ 
[
๑๑ 
i
๑๑ 
]
๑๑ 
=
๑๑ 
share
๑๑ !
;
๑๑! "
runningTotal
๒๒ 
+=
๒๒ 
share
๒๒  %
;
๒๒% &
}
๓๓ 
if
๕๕ 
(
๕๕ 
runningTotal
๕๕ 
<
๕๕ 
value
๕๕ $
)
๕๕$ %
{
๖๖ 
result
๗๗ 
[
๗๗ 
count
๗๗ 
-
๗๗ 
$num
๗๗  
]
๗๗  !
+=
๗๗" $
value
๗๗% *
-
๗๗+ ,
runningTotal
๗๗- 9
;
๗๗9 :
}
๘๘ 
log
๙๙ 
.
๙๙ 
Information
๙๙ 
(
๙๙ 
$str
๙๙ A
,
๙๙A B
$str
๙๙C X
,
๙๙X Y
value
๙๙Z _
,
๙๙_ `
count
๙๙a f
)
๙๙f g
;
๙๙g h
return
๚๚ 
result
๚๚ 
;
๚๚ 
}
๛๛ 	
public
þþ 
static
þþ 
List
þþ 
<
þþ 
ExamQuestionDTO
þþ *
>
þþ* +
FillQuestionList
þþ, <
(
þþ< =
ExamDTO
þþ= D
examObj
þþE L
,
þþL M
List
þþN R
<
þþR S
int
þþS V
>
þþV W"
selectedQuestionList
þþX l
,
þþl m
int
þþn q
noOfQuestion
þþr ~
)
þþ~ 
{
ÿÿ 	
List
€€ 
<
€€ 
ExamQuestionDTO
€€  
>
€€  !
questionList
€€" .
=
€€/ 0
new
€€1 4
List
€€5 9
<
€€9 :
ExamQuestionDTO
€€: I
>
€€I J
(
€€J K
)
€€K L
;
€€L M
List
 
<
 
ExamQuestionDTO
  
>
  !!
questionShuffleList
" 5
=
6 7
new
8 ;
List
< @
<
@ A
ExamQuestionDTO
A P
>
P Q
(
Q R
)
R S
;
S T
List
 
<
 
ExamQuestionDTO
  
>
  !$
questionShuffleListAll
" 8
=
9 :
new
; >
List
? C
<
C D
ExamQuestionDTO
D S
>
S T
(
T U
)
U V
;
V W
log
 
.
 
Information
 
(
 
$str
 ]
,
] ^
$str
_ q
,
q r
examObj
s z
.
z {
ExamId{ 
, 
examObj 
. 
UserId ‘
,‘ ’
examObj“ 
. 
NoofQuestions จ
)จ ฉ
;ฉ ช
foreach
 
(
 
int
 

questionId
 #
in
$ &"
selectedQuestionList
' ;
)
; <
{
…… 
ExamQuestionDTO
 !
questionDTOListitem
  3
=
4 5
new
6 9
ExamQuestionDTO
: I
(
I J
)
J K
;
K L!
questionDTOListitem
 #
.
# $
ExamId
$ *
=
+ ,
Convert
- 4
.
4 5
ToInt32
5 <
(
< =
examObj
= D
.
D E
ExamId
E K
)
K L
;
L M!
questionDTOListitem
 #
.
# $

QuestionId
$ .
=
/ 0
Convert
1 8
.
8 9
ToInt32
9 @
(
@ A

questionId
A K
)
K L
;
L M
questionList
 
.
 
Add
  
(
  !!
questionDTOListitem
! 4
)
4 5
;
5 6
}
 
try
 
{
 
if
 
(
 
examObj
 
.
 
ExamType
 $
==
% '
Convert
( /
.
/ 0
ToInt32
0 7
(
7 8
ExamManagerEnum
8 G
.
G H
ExamType
H P
.
P Q
SpacedRepetition
Q a
)
a b
)
b c
{
 
string
 )
selectedQuestionList_string
 6
=
7 8
string
9 ?
.
? @
Join
@ D
(
D E
$str
E H
,
H I"
selectedQuestionList
J ^
)
^ _
;
_ `
List
‘‘ 
<
‘‘ 
ExamQuestionDTO
‘‘ (
>
‘‘( )&
attemptedQuestionDetails
‘‘* B
=
‘‘C D,
GetAttemptedQuestionDetails_SR
‘‘E c
(
‘‘c d
examObj
‘‘d k
,
‘‘k l*
selectedQuestionList_string‘‘m 
)‘‘ 
;‘‘ !
questionShuffleList
’’ '
.
’’' (
AddRange
’’( 0
(
’’0 1&
attemptedQuestionDetails
’’1 I
)
’’I J
;
’’J K
}
““ 
if
•• 
(
•• 
questionList
••  
.
••  !
Count
••! &
>
••' (
$num
••) *
)
••* +
{
–– 
if
 
(
 
examObj
 
.
  
ExamType
  (
==
) +
Convert
, 3
.
3 4
ToInt32
4 ;
(
; <
ExamManagerEnum
< K
.
K L
ExamType
L T
.
T U
SpacedRepetition
U e
)
e f
&&
g i
questionList
j v
.
v w
Count
w |
>
} ~
$num €
)€ 
{
 
questionList
 $
=
% &
ShuffleList
' 2
(
2 3
questionList
3 ?
)
? @
;
@ A
int
 
count
 !
=
" #
$num
$ %
;
% &
foreach
 
(
  !
ExamQuestionDTO
! 0
questionObj
1 <
in
= ?
questionList
@ L
)
L M
{
 
if
 
(
  
count
  %
<
& '!
questionShuffleList
( ;
.
; <
Count
< A
)
A B
{
 $
questionShuffleListAll
    6
.
  6 7
Add
  7 :
(
  : ;!
questionShuffleList
  ; N
[
  N O
count
  O T
]
  T U
)
  U V
;
  V W
count
กก  %
++
กก% '
;
กก' (
}
ขข $
questionShuffleListAll
ฃฃ 2
.
ฃฃ2 3
Add
ฃฃ3 6
(
ฃฃ6 7
questionObj
ฃฃ7 B
)
ฃฃB C
;
ฃฃC D
}
คค !
questionShuffleList
ฅฅ +
.
ฅฅ+ ,
Clear
ฅฅ, 1
(
ฅฅ1 2
)
ฅฅ2 3
;
ฅฅ3 4!
questionShuffleList
ฆฆ +
=
ฆฆ, -$
questionShuffleListAll
ฆฆ. D
;
ฆฆD E
}
งง 
else
จจ 
{
ฉฉ !
questionShuffleList
ชช +
.
ชช+ ,
AddRange
ชช, 4
(
ชช4 5
ShuffleList
ชช5 @
(
ชช@ A
questionList
ชชA M
)
ชชM N
)
ชชN O
;
ชชO P
}
ซซ 
questionList
ฌฌ  
.
ฌฌ  !
Clear
ฌฌ! &
(
ฌฌ& '
)
ฌฌ' (
;
ฌฌ( )
if
ญญ 
(
ญญ 
noOfQuestion
ญญ $
==
ญญ% '
-
ญญ( )
$num
ญญ) *
)
ญญ* +
{
ฎฎ 
questionList
ฏฏ $
=
ฏฏ% &!
questionShuffleList
ฏฏ' :
;
ฏฏ: ;
}
ฐฐ 
else
ฑฑ 
{
ฒฒ 
int
ณณ 
questionCount
ณณ )
=
ณณ* +
$num
ณณ, -
;
ณณ- .
foreach
ดด 
(
ดด  !
ExamQuestionDTO
ดด! 0
question
ดด1 9
in
ดด: <!
questionShuffleList
ดด= P
)
ดดP Q
{
ตต 
if
ถถ 
(
ถถ  
questionCount
ถถ  -
<
ถถ. /
noOfQuestion
ถถ0 <
)
ถถ< =
{
ทท 
questionList
ธธ  ,
.
ธธ, -
Add
ธธ- 0
(
ธธ0 1
question
ธธ1 9
)
ธธ9 :
;
ธธ: ;
questionCount
นน  -
++
นน- /
;
นน/ 0
continue
บบ  (
;
บบ( )
}
ปป 
if
ฝฝ 
(
ฝฝ  
questionCount
ฝฝ  -
>=
ฝฝ. 0
noOfQuestion
ฝฝ1 =
)
ฝฝ= >
{
พพ 
break
ฟฟ  %
;
ฟฟ% &
}
ภภ 
questionCount
ยย )
++
ยย) +
;
ยย+ ,
}
รร 
}
ฤฤ 
}
ลล 
}
ฦฦ 
catch
วว 
(
วว 
	Exception
วว 
e
วว 
)
วว 
{
ศศ 
log
ษษ 
.
ษษ 
Error
ษษ 
(
ษษ 
e
ษษ 
.
ษษ 
Message
ษษ #
+
ษษ$ %
$str
ษษ& 0
+
ษษ1 2
examObj
ษษ3 :
.
ษษ: ;
ExamId
ษษ; A
.
ษษA B
ToString
ษษB J
(
ษษJ K
)
ษษK L
+
ษษM N
$str
ษษO Y
+
ษษZ [
examObj
ษษ\ c
.
ษษc d
UserId
ษษd j
.
ษษj k
ToString
ษษk s
(
ษษs t
)
ษษt u
)
ษษu v
;
ษษv w
Console
สส 
.
สส 
	WriteLine
สส !
(
สส! "
e
สส" #
.
สส# $
Message
สส$ +
)
สส+ ,
;
สส, -
}
หห 
log
ฬฬ 
.
ฬฬ 
Information
ฬฬ 
(
ฬฬ 
$str
ฬฬ [
,
ฬฬ[ \
$str
ฬฬ] o
,
ฬฬo p
examObj
ฬฬq x
.
ฬฬx y
ExamId
ฬฬy 
,ฬฬ €
examObjฬฬ 
.ฬฬ 
UserIdฬฬ 
,ฬฬ 
examObjฬฬ‘ 
.ฬฬ 
NoofQuestionsฬฬ ฆ
)ฬฬฆ ง
;ฬฬง จ
return
ออ 
questionList
ออ 
;
ออ  
}
ฮฮ 	
public
ัั 
static
ัั 
List
ัั 
<
ัั 
ExamQuestionDTO
ัั *
>
ัั* +(
FillQuestionListSharedExam
ัั, F
(
ััF G
ExamDTO
ััG N
examObj
ััO V
,
ััV W
List
ััX \
<
ัั\ ]
int
ัั] `
>
ัั` a"
selectedQuestionList
ััb v
,
ััv w
int
ััx {
noOfQuestionัั| 
,ัั 
stringัั !
selectedQuestionsัั‘ ข
)ััข ฃ
{
าา 	
List
ำำ 
<
ำำ 
ExamQuestionDTO
ำำ  
>
ำำ  !
questionList
ำำ" .
=
ำำ/ 0
new
ำำ1 4
List
ำำ5 9
<
ำำ9 :
ExamQuestionDTO
ำำ: I
>
ำำI J
(
ำำJ K
)
ำำK L
;
ำำL M
List
ิิ 
<
ิิ 
ExamQuestionDTO
ิิ  
>
ิิ  !!
questionShuffleList
ิิ" 5
=
ิิ6 7
new
ิิ8 ;
List
ิิ< @
<
ิิ@ A
ExamQuestionDTO
ิิA P
>
ิิP Q
(
ิิQ R
)
ิิR S
;
ิิS T
List
ีี 
<
ีี 
ExamQuestionDTO
ีี  
>
ีี  !$
questionShuffleListAll
ีี" 8
=
ีี9 :
new
ีี; >
List
ีี? C
<
ีีC D
ExamQuestionDTO
ีีD S
>
ีีS T
(
ีีT U
)
ีีU V
;
ีีV W
List
ึึ 
<
ึึ 
ExamQuestionDTO
ึึ  
>
ึึ  !
priorityQuestions
ึึ" 3
=
ึึ4 5
new
ึึ6 9
List
ึึ: >
<
ึึ> ?
ExamQuestionDTO
ึึ? N
>
ึึN O
(
ึึO P
)
ึึP Q
;
ึึQ R
log
ุุ 
.
ุุ 
Information
ุุ 
(
ุุ 
$str
ุุ ]
,
ุุ] ^
$str
ุุ_ q
,
ุุq r
examObj
ุุs z
.
ุุz {
ExamIdุุ{ 
,ุุ 
examObjุุ 
.ุุ 
UserIdุุ ‘
,ุุ‘ ’
examObjุุ“ 
.ุุ 
NoofQuestionsุุ จ
)ุุจ ฉ
;ุุฉ ช
List
ÛÛ 
<
ÛÛ 
int
ÛÛ 
>
ÛÛ !
priorityQuestionIds
ÛÛ )
=
ÛÛ* +
new
ÛÛ, /
List
ÛÛ0 4
<
ÛÛ4 5
int
ÛÛ5 8
>
ÛÛ8 9
(
ÛÛ9 :
)
ÛÛ: ;
;
ÛÛ; <
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
string
ÜÜ 
.
ÜÜ 
IsNullOrEmpty
ÜÜ %
(
ÜÜ% &
selectedQuestions
ÜÜ& 7
)
ÜÜ7 8
)
ÜÜ8 9
{
ÝÝ 
try
ÞÞ 
{
฿฿ !
priorityQuestionIds
เเ '
=
เเ( )
selectedQuestions
เเ* ;
.
เเ; <
Split
เเ< A
(
เเA B
$char
เเB E
)
เเE F
.
แแ 
Where
แแ 
(
แแ 
x
แแ  
=>
แแ! #
!
แแ$ %
string
แแ% +
.
แแ+ , 
IsNullOrWhiteSpace
แแ, >
(
แแ> ?
x
แแ? @
)
แแ@ A
)
แแA B
.
โโ 
Select
โโ 
(
โโ  
x
โโ  !
=>
โโ" $
Convert
โโ% ,
.
โโ, -
ToInt32
โโ- 4
(
โโ4 5
x
โโ5 6
.
โโ6 7
Trim
โโ7 ;
(
โโ; <
)
โโ< =
)
โโ= >
)
โโ> ?
.
ใใ 
ToList
ใใ 
(
ใใ  
)
ใใ  !
;
ใใ! "
}
ไไ 
catch
ๅๅ 
(
ๅๅ 
	Exception
ๅๅ  
ex
ๅๅ! #
)
ๅๅ# $
{
ๆๆ 
log
็็ 
.
็็ 
Warning
็็ 
(
็็  
$str
็็  F
,
็็F G
ex
็็H J
.
็็J K
Message
็็K R
)
็็R S
;
็็S T
}
่่ 
}
้้ 
foreach
์์ 
(
์์ 
int
์์ 

questionId
์์ #
in
์์$ &!
priorityQuestionIds
์์' :
)
์์: ;
{
ํํ 
ExamQuestionDTO
๎๎ "
priorityQuestionItem
๎๎  4
=
๎๎5 6
new
๎๎7 :
ExamQuestionDTO
๎๎; J
(
๎๎J K
)
๎๎K L
;
๎๎L M"
priorityQuestionItem
๏๏ $
.
๏๏$ %
ExamId
๏๏% +
=
๏๏, -
Convert
๏๏. 5
.
๏๏5 6
ToInt32
๏๏6 =
(
๏๏= >
examObj
๏๏> E
.
๏๏E F
ExamId
๏๏F L
)
๏๏L M
;
๏๏M N"
priorityQuestionItem
๐๐ $
.
๐๐$ %

QuestionId
๐๐% /
=
๐๐0 1
Convert
๐๐2 9
.
๐๐9 :
ToInt32
๐๐: A
(
๐๐A B

questionId
๐๐B L
)
๐๐L M
;
๐๐M N
priorityQuestions
๑๑ !
.
๑๑! "
Add
๑๑" %
(
๑๑% &"
priorityQuestionItem
๑๑& :
)
๑๑: ;
;
๑๑; <
}
๒๒ 
foreach
๕๕ 
(
๕๕ 
int
๕๕ 

questionId
๕๕ #
in
๕๕$ &"
selectedQuestionList
๕๕' ;
.
๕๕; <
Where
๕๕< A
(
๕๕A B
x
๕๕B C
=>
๕๕D F
!
๕๕G H!
priorityQuestionIds
๕๕H [
.
๕๕[ \
Contains
๕๕\ d
(
๕๕d e
x
๕๕e f
)
๕๕f g
)
๕๕g h
)
๕๕h i
{
๖๖ 
ExamQuestionDTO
๗๗ !
questionDTOListitem
๗๗  3
=
๗๗4 5
new
๗๗6 9
ExamQuestionDTO
๗๗: I
(
๗๗I J
)
๗๗J K
;
๗๗K L!
questionDTOListitem
๘๘ #
.
๘๘# $
ExamId
๘๘$ *
=
๘๘+ ,
Convert
๘๘- 4
.
๘๘4 5
ToInt32
๘๘5 <
(
๘๘< =
examObj
๘๘= D
.
๘๘D E
ExamId
๘๘E K
)
๘๘K L
;
๘๘L M!
questionDTOListitem
๙๙ #
.
๙๙# $

QuestionId
๙๙$ .
=
๙๙/ 0
Convert
๙๙1 8
.
๙๙8 9
ToInt32
๙๙9 @
(
๙๙@ A

questionId
๙๙A K
)
๙๙K L
;
๙๙L M
questionList
๚๚ 
.
๚๚ 
Add
๚๚  
(
๚๚  !!
questionDTOListitem
๚๚! 4
)
๚๚4 5
;
๚๚5 6
}
๛๛ 
try
ýý 
{
þþ 
if
ÿÿ 
(
ÿÿ 
examObj
ÿÿ 
.
ÿÿ 
ExamType
ÿÿ $
==
ÿÿ% '
Convert
ÿÿ( /
.
ÿÿ/ 0
ToInt32
ÿÿ0 7
(
ÿÿ7 8
ExamManagerEnum
ÿÿ8 G
.
ÿÿG H
ExamType
ÿÿH P
.
ÿÿP Q
SpacedRepetition
ÿÿQ a
)
ÿÿa b
)
ÿÿb c
{
€€ 
string
 )
selectedQuestionList_string
 6
=
7 8
string
9 ?
.
? @
Join
@ D
(
D E
$str
E H
,
H I"
selectedQuestionList
J ^
)
^ _
;
_ `
List
 
<
 
ExamQuestionDTO
 (
>
( )&
attemptedQuestionDetails
* B
=
C D,
GetAttemptedQuestionDetails_SR
E c
(
c d
examObj
d k
,
k l*
selectedQuestionList_stringm 
) 
; !
questionShuffleList
 '
.
' (
AddRange
( 0
(
0 1&
attemptedQuestionDetails
1 I
)
I J
;
J K
}
 
if
 
(
 
questionList
  
.
  !
Count
! &
>
' (
$num
) *
)
* +
{
 
if
 
(
 
examObj
 
.
  
ExamType
  (
==
) +
Convert
, 3
.
3 4
ToInt32
4 ;
(
; <
ExamManagerEnum
< K
.
K L
ExamType
L T
.
T U
SpacedRepetition
U e
)
e f
&&
g i
questionList
j v
.
v w
Count
w |
>
} ~
$num €
)€ 
{
 
questionList
 $
=
% &
ShuffleList
' 2
(
2 3
questionList
3 ?
)
? @
;
@ A
int
 
count
 !
=
" #
$num
$ %
;
% &
foreach
 
(
  !
ExamQuestionDTO
! 0
questionObj
1 <
in
= ?
questionList
@ L
)
L M
{
 
if
 
(
  
count
  %
<
& '!
questionShuffleList
( ;
.
; <
Count
< A
)
A B
{
 $
questionShuffleListAll
  6
.
6 7
Add
7 :
(
: ;!
questionShuffleList
; N
[
N O
count
O T
]
T U
)
U V
;
V W
count
‘‘  %
++
‘‘% '
;
‘‘' (
}
’’ $
questionShuffleListAll
““ 2
.
““2 3
Add
““3 6
(
““6 7
questionObj
““7 B
)
““B C
;
““C D
}
”” !
questionShuffleList
•• +
.
••+ ,
Clear
••, 1
(
••1 2
)
••2 3
;
••3 4!
questionShuffleList
–– +
=
––, -$
questionShuffleListAll
––. D
;
––D E
}
—— 
else
 
{
 !
questionShuffleList
 +
.
+ ,
AddRange
, 4
(
4 5
ShuffleList
5 @
(
@ A
questionList
A M
)
M N
)
N O
;
O P
}
 
questionList
  
.
  !
Clear
! &
(
& '
)
' (
;
( )
questionList
    
.
    !
AddRange
  ! )
(
  ) *
priorityQuestions
  * ;
)
  ; <
;
  < =
if
ขข 
(
ขข 
noOfQuestion
ขข $
==
ขข% '
-
ขข( )
$num
ขข) *
)
ขข* +
{
ฃฃ 
questionList
ฅฅ $
.
ฅฅ$ %
AddRange
ฅฅ% -
(
ฅฅ- .!
questionShuffleList
ฅฅ. A
)
ฅฅA B
;
ฅฅB C
}
ฆฆ 
else
งง 
{
จจ 
int
ชช &
remainingQuestionsNeeded
ชช 4
=
ชช5 6
Math
ชช7 ;
.
ชช; <
Max
ชช< ?
(
ชช? @
$num
ชช@ A
,
ชชA B
noOfQuestion
ชชC O
-
ชชP Q
priorityQuestions
ชชR c
.
ชชc d
Count
ชชd i
)
ชชi j
;
ชชj k
int
ซซ 
questionCount
ซซ )
=
ซซ* +
$num
ซซ, -
;
ซซ- .
foreach
ญญ 
(
ญญ  !
ExamQuestionDTO
ญญ! 0
question
ญญ1 9
in
ญญ: <!
questionShuffleList
ญญ= P
)
ญญP Q
{
ฎฎ 
if
ฏฏ 
(
ฏฏ  
questionCount
ฏฏ  -
<
ฏฏ. /&
remainingQuestionsNeeded
ฏฏ0 H
)
ฏฏH I
{
ฐฐ 
questionList
ฑฑ  ,
.
ฑฑ, -
Add
ฑฑ- 0
(
ฑฑ0 1
question
ฑฑ1 9
)
ฑฑ9 :
;
ฑฑ: ;
questionCount
ฒฒ  -
++
ฒฒ- /
;
ฒฒ/ 0
}
ณณ 
else
ดด  
{
ตต 
break
ถถ  %
;
ถถ% &
}
ทท 
}
ธธ 
}
นน 
}
บบ 
else
ปป 
{
ผผ 
questionList
พพ  
.
พพ  !
AddRange
พพ! )
(
พพ) *
priorityQuestions
พพ* ;
)
พพ; <
;
พพ< =
}
ฟฟ 
}
ภภ 
catch
มม 
(
มม 
	Exception
มม 
e
มม 
)
มม 
{
ยย 
log
รร 
.
รร 
Error
รร 
(
รร 
e
รร 
.
รร 
Message
รร #
+
รร$ %
$str
รร& 0
+
รร1 2
examObj
รร3 :
.
รร: ;
ExamId
รร; A
.
รรA B
ToString
รรB J
(
รรJ K
)
รรK L
+
รรM N
$str
รรO Y
+
รรZ [
examObj
รร\ c
.
รรc d
UserId
รรd j
.
รรj k
ToString
รรk s
(
รรs t
)
รรt u
)
รรu v
;
รรv w
Console
ฤฤ 
.
ฤฤ 
	WriteLine
ฤฤ !
(
ฤฤ! "
e
ฤฤ" #
.
ฤฤ# $
Message
ฤฤ$ +
)
ฤฤ+ ,
;
ฤฤ, -
}
ลล 
log
วว 
.
วว 
Information
วว 
(
วว 
$str
วว r
,
ววr s
$str
ศศ "
,
ศศ" #
examObj
ศศ$ +
.
ศศ+ ,
ExamId
ศศ, 2
,
ศศ2 3
examObj
ศศ4 ;
.
ศศ; <
UserId
ศศ< B
,
ศศB C
examObj
ศศD K
.
ศศK L
NoofQuestions
ศศL Y
,
ศศY Z
questionList
ศศ[ g
.
ศศg h
Count
ศศh m
)
ศศm n
;
ศศn o
return
สส 
questionList
สส 
;
สส  
}
หห 	
public
ออ 
static
ออ 
List
ออ 
<
ออ 
ExamQuestionDTO
ออ *
>
ออ* +,
GetAttemptedQuestionDetails_SR
ออ, J
(
ออJ K
ExamDTO
ออK R
examObj
ออS Z
,
ออZ [
string
ออ\ b)
selectedQuestionList_string
ออc ~
)
ออ~ 
{
ฮฮ 	
return
ฯฯ 
ExamDAL
ฯฯ 
.
ฯฯ ,
GetAttemptedQuestionDetails_SR
ฯฯ 9
(
ฯฯ9 :
examObj
ฯฯ: A
,
ฯฯA B)
selectedQuestionList_string
ฯฯC ^
)
ฯฯ^ _
;
ฯฯ_ `
}
ะะ 	
public
าา 
static
าา 
int
าา 
GetExamIdBYUserId
าา +
(
าา+ ,
int
าา, /
?
าา/ 0
userId
าา1 7
)
าา7 8
{
ำำ 	
return
ิิ 
ExamDAL
ิิ 
.
ิิ 
GetExamIdBYUserId
ิิ ,
(
ิิ, -
Convert
ิิ- 4
.
ิิ4 5
ToInt32
ิิ5 <
(
ิิ< =
userId
ิิ= C
)
ิิC D
)
ิิD E
;
ิิE F
}
ีี 	
public
ุุ 
static
ุุ 
ExamStatusCountVM
ุุ ' 
GetExamStatusCount
ุุ( :
(
ุุ: ;
ServiceCallVM
ุุ; H
examService
ุุI T
)
ุุT U
{
ูู 	
return
ฺฺ 
ExamDAL
ฺฺ 
.
ฺฺ  
GetExamStatusCount
ฺฺ -
(
ฺฺ- .
examService
ฺฺ. 9
)
ฺฺ9 :
;
ฺฺ: ;
}
ÛÛ 	
public
ÞÞ 
static
ÞÞ 
List
ÞÞ 
<
ÞÞ 
ExamScoreDetailVM
ÞÞ ,
>
ÞÞ, -
GetExamScore
ÞÞ. :
(
ÞÞ: ;
ServiceCallVM
ÞÞ; H
examService
ÞÞI T
)
ÞÞT U
{
฿฿ 	
log
เเ 
.
เเ 
Information
เเ 
(
เเ 
$str
เเ :
,
เเ: ;
$str
เเ< J
,
เเJ K
examService
เเL W
.
เเW X
userId
เเX ^
)
เเ^ _
;
เเ_ `
List
แแ 
<
แแ 
ExamScoreDetailVM
แแ "
>
แแ" #
examScoreList
แแ$ 1
=
แแ2 3
new
แแ4 7
List
แแ8 <
<
แแ< =
ExamScoreDetailVM
แแ= N
>
แแN O
(
แแO P
)
แแP Q
;
แแQ R
ExamScoreDetailVM
โโ 
	examScore
โโ '
=
โโ( )
new
โโ* -
ExamScoreDetailVM
โโ. ?
(
โโ? @
)
โโ@ A
;
โโA B
examService
ๅๅ 
.
ๅๅ 
examType
ๅๅ  
=
ๅๅ! "
Convert
ๅๅ# *
.
ๅๅ* +
ToInt32
ๅๅ+ 2
(
ๅๅ2 3
ExamManagerEnum
ๅๅ3 B
.
ๅๅB C
ExamType
ๅๅC K
.
ๅๅK L

CustomMode
ๅๅL V
)
ๅๅV W
;
ๅๅW X
	examScore
ๆๆ 
=
ๆๆ 
ExamDAL
ๆๆ 
.
ๆๆ  
GetExamScore
ๆๆ  ,
(
ๆๆ, -
examService
ๆๆ- 8
)
ๆๆ8 9
;
ๆๆ9 :
	examScore
็็ 
.
็็ 
examType
็็ 
=
็็  
Convert
็็! (
.
็็( )
ToInt32
็็) 0
(
็็0 1
ExamManagerEnum
็็1 @
.
็็@ A
ExamType
็็A I
.
็็I J

CustomMode
็็J T
)
็็T U
;
็็U V
examScoreList
่่ 
.
่่ 
Add
่่ 
(
่่ 
	examScore
่่ '
)
่่' (
;
่่( )
examService
๋๋ 
.
๋๋ 
examType
๋๋  
=
๋๋! "
Convert
๋๋# *
.
๋๋* +
ToInt32
๋๋+ 2
(
๋๋2 3
ExamManagerEnum
๋๋3 B
.
๋๋B C
ExamType
๋๋C K
.
๋๋K L
SimulatedMode
๋๋L Y
)
๋๋Y Z
;
๋๋Z [
	examScore
์์ 
=
์์ 
ExamDAL
์์ 
.
์์  
GetExamScore
์์  ,
(
์์, -
examService
์์- 8
)
์์8 9
;
์์9 :
	examScore
ํํ 
.
ํํ 
examType
ํํ 
=
ํํ  
Convert
ํํ! (
.
ํํ( )
ToInt32
ํํ) 0
(
ํํ0 1
ExamManagerEnum
ํํ1 @
.
ํํ@ A
ExamType
ํํA I
.
ํํI J
SimulatedMode
ํํJ W
)
ํํW X
;
ํํX Y
examScoreList
๎๎ 
.
๎๎ 
Add
๎๎ 
(
๎๎ 
	examScore
๎๎ '
)
๎๎' (
;
๎๎( )
examService
๑๑ 
.
๑๑ 
examType
๑๑  
=
๑๑! "
Convert
๑๑# *
.
๑๑* +
ToInt32
๑๑+ 2
(
๑๑2 3
ExamManagerEnum
๑๑3 B
.
๑๑B C
ExamType
๑๑C K
.
๑๑K L
	QuickMode
๑๑L U
)
๑๑U V
;
๑๑V W
	examScore
๒๒ 
=
๒๒ 
ExamDAL
๒๒ 
.
๒๒  
GetExamScore
๒๒  ,
(
๒๒, -
examService
๒๒- 8
)
๒๒8 9
;
๒๒9 :
	examScore
๓๓ 
.
๓๓ 
examType
๓๓ 
=
๓๓  
Convert
๓๓! (
.
๓๓( )
ToInt32
๓๓) 0
(
๓๓0 1
ExamManagerEnum
๓๓1 @
.
๓๓@ A
ExamType
๓๓A I
.
๓๓I J
	QuickMode
๓๓J S
)
๓๓S T
;
๓๓T U
examScoreList
๔๔ 
.
๔๔ 
Add
๔๔ 
(
๔๔ 
	examScore
๔๔ '
)
๔๔' (
;
๔๔( )
log
๕๕ 
.
๕๕ 
Information
๕๕ 
(
๕๕ 
$str
๕๕ 8
,
๕๕8 9
$str
๕๕: H
,
๕๕H I
examService
๕๕J U
.
๕๕U V
userId
๕๕V \
)
๕๕\ ]
;
๕๕] ^
return
๖๖ 
examScoreList
๖๖  
;
๖๖  !
}
๗๗ 	
public
๚๚ 
static
๚๚ 
List
๚๚ 
<
๚๚ 
DashboardChartVM
๚๚ +
>
๚๚+ ,
GetChartDetail
๚๚- ;
(
๚๚; <
ChartParameterVM
๚๚< L
chartParameters
๚๚M \
)
๚๚\ ]
{
๛๛ 	
if
üü 
(
üü 
chartParameters
üü 
.
üü   
ScoreCompWithPeers
üü  2
==
üü3 5
false
üü6 ;
)
üü; <
{
ýý 
return
þþ 
ExamDAL
þþ 
.
þþ &
GetCumulativeChartDetail
þþ 7
(
þþ7 8
chartParameters
þþ8 G
)
þþG H
;
þþH I
}
ÿÿ 
else
€€ 
{
 
return
 
ExamDAL
 
.
  
GetPeerChartDetail
 1
(
1 2
chartParameters
2 A
)
A B
;
B C
}
 
}
 	
public
 
static
 
string
 $
CheckExamNameAvailable
 3
(
3 4

ExamNameVM
4 >
examName
? G
)
G H
{
 	
return
 
ExamDAL
 
.
 $
CheckExamNameAvailable
 1
(
1 2
examName
2 :
)
: ;
;
; <
}
 	
public
 
static
 #
ExamCountOnExamTypeVM
 +$
GetExamCountOnExamType
, B
(
B C
int
C F
userId
G M
)
M N
{
 	
return
 
ExamDAL
 
.
 $
GetExamCountOnExamType
 1
(
1 2
userId
2 8
)
8 9
;
9 :
}
 	
public
““ 
static
““ 
ResponseStatusVM
““ &*
CreateExamAndAddExamQuestion
““' C
(
““C D
ExamDTO
““D K
objCreateExam
““L Y
)
““Y Z
{
”” 	
List
•• 
<
•• 
ExamQuestionDTO
••  
>
••  !
questionList
••" .
=
••/ 0
new
••1 4
List
••5 9
<
••9 :
ExamQuestionDTO
••: I
>
••I J
(
••J K
)
••K L
;
••L M
List
–– 
<
–– 
int
–– 
>
–– !
listOfquestionCount
–– )
=
––* +
new
––, /
List
––0 4
<
––4 5
int
––5 8
>
––8 9
(
––9 :
)
––: ;
;
––; <
ExamAttemptDTO
—— 
examAttempt
—— &
=
——' (
new
——) ,
ExamAttemptDTO
——- ;
(
——; <
)
——< =
;
——= >
ResponseStatusVM
 
status
 #
=
$ %
new
& )
ResponseStatusVM
* :
(
: ;
)
; <
;
< =
ExamDTO
 
examObj
 
=
 
new
 !
ExamDTO
" )
(
) *
)
* +
;
+ ,
int
 
noofQuestion
 
=
 
$num
  
;
  !
int
 
createdexamId
 
=
 
$num
  !
;
! "
int
 
simulatedTime
 
=
 
Convert
  '
.
' (
ToInt32
( /
(
/ 0"
ConfigurationManager
0 D
.
D E
AppSettings
E P
[
P Q
$str
Q h
]
h i
)
i j
;
j k
int
 
time
 
=
 
Convert
 
.
 
ToInt32
 &
(
& '"
ConfigurationManager
' ;
.
; <
AppSettings
< G
[
G H
$str
H `
]
` a
)
a b
;
b c
log
 
.
 
Information
 
(
 
$str
 b
,
b c
$strd 
, 
objCreateExam ‘
.‘ ’
UserId’ 
, 
objCreateExam ง
.ง จ
ExamModeจ ฐ
,ฐ ฑ
objCreateExamฒ ฟ
.ฟ ภ
ExamNameภ ศ
,ศ ษ
objCreateExamส ื
.ื ุ
ExamTypeุ เ
)เ แ
;แ โ
if
   
(
   
objCreateExam
   
.
   
ExamType
   &
==
  ' )
Convert
  * 1
.
  1 2
ToInt32
  2 9
(
  9 :
ExamManagerEnum
  : I
.
  I J
ExamType
  J R
.
  R S
SpacedRepetition
  S c
)
  c d
)
  d e
{
กก 
examObj
ขข 
=
ขข  
SpacedRepetitionBL
ขข ,
.
ขข, -#
GetSpacedRepitionExam
ขข- B
(
ขขB C
objCreateExam
ขขC P
.
ขขP Q
UserId
ขขQ W
,
ขขW X
objCreateExam
ขขY f
.
ขขf g
TypeofCategory
ขขg u
)
ขขu v
;
ขขv w
if
ฃฃ 
(
ฃฃ 
examObj
ฃฃ 
.
ฃฃ 
ExamId
ฃฃ "
>
ฃฃ# $
$num
ฃฃ% &
)
ฃฃ& '
{
คค 
createdexamId
ฅฅ !
=
ฅฅ" #
examObj
ฅฅ$ +
.
ฅฅ+ ,
ExamId
ฅฅ, 2
;
ฅฅ2 3
}
ฆฆ 
else
งง 
{
จจ 
objCreateExam
ฉฉ !
.
ฉฉ! "
RoundNumber
ฉฉ" -
=
ฉฉ. /
$num
ฉฉ0 1
;
ฉฉ1 2
objCreateExam
ชช !
.
ชช! "
	SessionId
ชช" +
=
ชช, -
$num
ชช. /
;
ชช/ 0
createdexamId
ซซ !
=
ซซ" #
ExamDAL
ซซ$ +
.
ซซ+ ,

CreateExam
ซซ, 6
(
ซซ6 7
objCreateExam
ซซ7 D
)
ซซD E
;
ซซE F
}
ฌฌ 
}
ญญ 
else
ฎฎ 
{
ฏฏ 
createdexamId
ฐฐ 
=
ฐฐ 
ExamDAL
ฐฐ  '
.
ฐฐ' (

CreateExam
ฐฐ( 2
(
ฐฐ2 3
objCreateExam
ฐฐ3 @
)
ฐฐ@ A
;
ฐฐA B
}
ฑฑ 
log
ฒฒ 
.
ฒฒ 
Information
ฒฒ 
(
ฒฒ 
$str
ฒฒ e
,
ฒฒe f
$strฒฒg …
,ฒฒ… 
objCreateExamฒฒ ”
.ฒฒ” •
UserIdฒฒ• 
,ฒฒ 
objCreateExamฒฒ ช
.ฒฒช ซ
ExamModeฒฒซ ณ
,ฒฒณ ด
createdexamIdฒฒต ย
,ฒฒย ร
objCreateExamฒฒฤ ั
.ฒฒั า
ExamTypeฒฒา ฺ
,ฒฒฺ Û
objCreateExamฒฒÜ ้
.ฒฒ้ ๊
RoundNumberฒฒ๊ ๕
)ฒฒ๕ ๖
;ฒฒ๖ ๗
if
ดด 
(
ดด 
createdexamId
ดด 
>
ดด 
$num
ดด  !
)
ดด! "
{
ตต 
examObj
ถถ 
=
ถถ 
GetExamBYId
ถถ %
(
ถถ% &
createdexamId
ถถ& 3
)
ถถ3 4
;
ถถ4 5!
listOfquestionCount
ธธ #
=
ธธ$ %
GetQuestionList
ธธ& 5
(
ธธ5 6
objCreateExam
ธธ6 C
)
ธธC D
;
ธธD E
if
ปป 
(
ปป 
objCreateExam
ปป !
.
ปป! "
ExamType
ปป" *
==
ปป+ -
$num
ปป. /
)
ปป/ 0
{
ผผ 
questionList
ฝฝ  
=
ฝฝ! "(
FillQuestionListSharedExam
ฝฝ# =
(
ฝฝ= >
examObj
ฝฝ> E
,
ฝฝE F!
listOfquestionCount
ฝฝG Z
,
ฝฝZ [
objCreateExam
ฝฝ\ i
.
ฝฝi j
NoofQuestions
ฝฝj w
,
ฝฝw x
objCreateExamฝฝy 
.ฝฝ !
SelectedQuestionsฝฝ 
)ฝฝ 
;ฝฝ 
}
พพ 
else
ฟฟ 
{
ภภ 
questionList
มม  
=
มม! "
FillQuestionList
มม# 3
(
มม3 4
examObj
มม4 ;
,
มม; <!
listOfquestionCount
มม= P
,
มมP Q
objCreateExam
มมR _
.
มม_ `
NoofQuestions
มม` m
)
มมm n
;
มมn o
}
ยย 
if
รร 
(
รร 
questionList
รร  
.
รร  !
Count
รร! &
>
รร' (
$num
รร) *
)
รร* +
{
ฤฤ 
noofQuestion
ลล  
=
ลล! "
questionList
ลล# /
.
ลล/ 0
Count
ลล0 5
;
ลล5 6
if
ศศ 
(
ศศ 
(
ศศ 
Convert
ศศ  
.
ศศ  !
ToInt32
ศศ! (
(
ศศ( )
ExamManagerEnum
ศศ) 8
.
ศศ8 9
ExamType
ศศ9 A
.
ศศA B

CustomMode
ศศB L
)
ศศL M
==
ศศN P
objCreateExam
ศศQ ^
.
ศศ^ _
ExamType
ศศ_ g
&&
ศศh j
Convert
ศศk r
.
ศศr s
ToInt32
ศศs z
(
ศศz {
examObjศศ{ 
.ศศ 
ExamTimeTypeศศ 
)ศศ 
!=ศศ‘ “
Convertศศ” 
.ศศ 
ToInt32ศศ ฃ
(ศศฃ ค
ExamManagerEnumศศค ณ
.ศศณ ด
ExamTimeTypeศศด ภ
.ศศภ ม
Timeศศม ล
)ศศล ฦ
)ศศฦ ว
)ศศว ศ
{
ษษ 
examAttempt
สส #
.
สส# $ 
TotalAllocatedTime
สส$ 6
=
สส7 8
Convert
สส9 @
.
สส@ A
ToInt32
สสA H
(
สสH I
noofQuestion
สสI U
*
สสV W
time
สสX \
)
สส\ ]
;
สส] ^
}
หห 
else
ฬฬ 
if
ฬฬ 
(
ฬฬ 
Convert
ฬฬ $
.
ฬฬ$ %
ToInt32
ฬฬ% ,
(
ฬฬ, -
ExamManagerEnum
ฬฬ- <
.
ฬฬ< =
ExamType
ฬฬ= E
.
ฬฬE F
SimulatedMode
ฬฬF S
)
ฬฬS T
==
ฬฬU W
objCreateExam
ฬฬX e
.
ฬฬe f
ExamType
ฬฬf n
)
ฬฬn o
{
ออ 
examAttempt
ฮฮ #
.
ฮฮ# $ 
TotalAllocatedTime
ฮฮ$ 6
=
ฮฮ7 8
Convert
ฮฮ9 @
.
ฮฮ@ A
ToInt32
ฮฮA H
(
ฮฮH I
simulatedTime
ฮฮI V
)
ฮฮV W
;
ฮฮW X
}
ฯฯ 
else
ีี 
{
ึึ 
examAttempt
ืื #
.
ืื# $ 
TotalAllocatedTime
ืื$ 6
=
ืื7 8
$num
ืื9 :
;
ืื: ;
}
ุุ 
examAttempt
ฺฺ 
.
ฺฺ  
TotalConsumedTime
ฺฺ  1
=
ฺฺ2 3
$num
ฺฺ4 5
;
ฺฺ5 6
ExamQuestionDAL
ÞÞ #
.
ÞÞ# $
AddExamQuestion
ÞÞ$ 3
(
ÞÞ3 4
questionList
ÞÞ4 @
,
ÞÞ@ A
examObj
ÞÞB I
)
ÞÞI J
;
ÞÞJ K
ExamDAL
แแ 
.
แแ 

UpdateExam
แแ &
(
แแ& '
createdexamId
แแ' 4
,
แแ4 5
objCreateExam
แแ6 C
.
แแC D
UserId
แแD J
,
แแJ K
noofQuestion
แแL X
,
แแX Y
$str
แแZ i
)
แแi j
;
แแj k
status
โโ 
.
โโ &
UserEnteredQuestionCount
โโ 3
=
โโ4 5
objCreateExam
โโ6 C
.
โโC D
NoofQuestions
โโD Q
;
โโQ R
status
ใใ 
.
ใใ *
SystemGeneratedQuestionCount
ใใ 7
=
ใใ8 9
noofQuestion
ใใ: F
;
ใใF G
status
ไไ 
.
ไไ 
	ErrorCode
ไไ $
=
ไไ% &
$num
ไไ' (
;
ไไ( )
status
ๅๅ 
.
ๅๅ 
ExamId
ๅๅ !
=
ๅๅ" #
createdexamId
ๅๅ$ 1
;
ๅๅ1 2
status
ๆๆ 
.
ๆๆ 
Errormessage
ๆๆ '
=
ๆๆ( )
$str
ๆๆ* 8
;
ๆๆ8 9
log
็็ 
.
็็ 
Information
็็ #
(
็็# $
status
็็$ *
.
็็* +
Errormessage
็็+ 7
+
็็8 9
$str
็็: C
+
็็D E
status
็็F L
.
็็L M
ExamId
็็M S
)
็็S T
;
็็T U
}
่่ 
else
้้ 
{
๊๊ 
ExamDAL
์์ 
.
์์ 

DeleteExam
์์ &
(
์์& '
createdexamId
์์' 4
,
์์4 5
objCreateExam
์์6 C
.
์์C D
UserId
์์D J
)
์์J K
;
์์K L
status
ํํ 
.
ํํ 
	ErrorCode
ํํ $
=
ํํ% &
$num
ํํ' (
;
ํํ( )
status
๎๎ 
.
๎๎ 
ExamId
๎๎ !
=
๎๎" #
createdexamId
๎๎$ 1
;
๎๎1 2
status
๏๏ 
.
๏๏ 
Errormessage
๏๏ '
=
๏๏( )
$str
๏๏* p
;
๏๏p q
log
๐๐ 
.
๐๐ 
Information
๐๐ #
(
๐๐# $
status
๐๐$ *
.
๐๐* +
Errormessage
๐๐+ 7
+
๐๐8 9
$str
๐๐: C
+
๐๐D E
status
๐๐F L
.
๐๐L M
ExamId
๐๐M S
)
๐๐S T
;
๐๐T U
}
๑๑ 
}
๒๒ 
else
๓๓ 
{
๔๔ 
status
๕๕ 
.
๕๕ 
	ErrorCode
๕๕  
=
๕๕! "
$num
๕๕# $
;
๕๕$ %
status
๖๖ 
.
๖๖ 
Errormessage
๖๖ #
=
๖๖$ %
$str
๖๖& l
;
๖๖l m
log
๗๗ 
.
๗๗ 
Information
๗๗ 
(
๗๗  
status
๗๗  &
.
๗๗& '
Errormessage
๗๗' 3
+
๗๗4 5
$str
๗๗6 ?
+
๗๗@ A
status
๗๗B H
.
๗๗H I
ExamId
๗๗I O
)
๗๗O P
;
๗๗P Q
}
๘๘ 
log
๙๙ 
.
๙๙ 
Information
๙๙ 
(
๙๙ 
$str
๙๙ P
,
๙๙P Q
$str
๙๙R p
,
๙๙p q
createdexamId
๙๙r 
,๙๙ €
objCreateExam๙๙ 
.๙๙ 
UserId๙๙ •
,๙๙• –
objCreateExam๙๙— ค
.๙๙ค ฅ
RoundNumber๙๙ฅ ฐ
)๙๙ฐ ฑ
;๙๙ฑ ฒ
return
๛๛ 
status
๛๛ 
;
๛๛ 
}
üü 	
public
ÿÿ 
static
ÿÿ 
int
ÿÿ "
GetUserStatusIsFirst
ÿÿ .
(
ÿÿ. /
ServiceCallVM
ÿÿ/ <
userService
ÿÿ= H
)
ÿÿH I
{
€€ 	
return
 
ExamDAL
 
.
 "
GetUserStatusIsFirst
 /
(
/ 0
userService
0 ;
)
; <
;
< =
}
 	
public
…… 
static
…… 
void
…… %
UpdateUserStatusIsFirst
…… 2
(
……2 3
ServiceCallVM
……3 @
userService
……A L
)
……L M
{
 	
ExamDAL
 
.
 %
UpdateUserStatusIsFirst
 +
(
+ ,
userService
, 7
)
7 8
;
8 9
}
 	
public
 
static
 $
QuestionCountOnSection
 ,+
GetQuestionTypeCountBySection
- J
(
J K$
QuestionCountOnSection
K a
sectionValue
b n
)
n o
{
 	
return
 
ExamDAL
 
.
 +
GetQuestionTypeCountBySection
 8
(
8 9
sectionValue
9 E
)
E F
;
F G
}
 	
public
 
static
 
string
  
GetUserOptInStatus
 /
(
/ 0
ServiceCallVM
0 =
userService
> I
)
I J
{
‘‘ 	
return
’’ 
ExamDAL
’’ 
.
’’  
GetUserOptInStatus
’’ -
(
’’- .
userService
’’. 9
)
’’9 :
;
’’: ;
}
““ 	
public
–– 
static
–– 
int
–– 
UpdateUserOptIn
–– )
(
––) *
ServiceCallVM
––* 7
userService
––8 C
)
––C D
{
—— 	
return
 
ExamDAL
 
.
 
UpdateUserOptIn
 *
(
* +
userService
+ 6
)
6 7
;
7 8
}
 	
private
 
static
 
List
 
<
 
ExamQuestionDTO
 +
>
+ ,
ShuffleList
- 8
<
8 9
ExamQuestionDTO
9 H
>
H I
(
I J
List
J N
<
N O
ExamQuestionDTO
O ^
>
^ _
	inputList
` i
)
i j
{
 	
List
 
<
 
ExamQuestionDTO
  
>
  !

randomList
" ,
=
- .
new
/ 2
List
3 7
<
7 8
ExamQuestionDTO
8 G
>
G H
(
H I
)
I J
;
J K
Random
 
r
 
=
 
new
 
Random
 !
(
! "
)
" #
;
# $
int
   
randomIndex
   
=
   
$num
   
;
    
while
กก 
(
กก 
	inputList
กก 
.
กก 
Count
กก "
>
กก# $
$num
กก% &
)
กก& '
{
ขข 
randomIndex
ฃฃ 
=
ฃฃ 
r
ฃฃ 
.
ฃฃ  
Next
ฃฃ  $
(
ฃฃ$ %
$num
ฃฃ% &
,
ฃฃ& '
	inputList
ฃฃ( 1
.
ฃฃ1 2
Count
ฃฃ2 7
)
ฃฃ7 8
;
ฃฃ8 9

randomList
คค 
.
คค 
Add
คค 
(
คค 
	inputList
คค (
[
คค( )
randomIndex
คค) 4
]
คค4 5
)
คค5 6
;
คค6 7
	inputList
ฅฅ 
.
ฅฅ 
RemoveAt
ฅฅ "
(
ฅฅ" #
randomIndex
ฅฅ# .
)
ฅฅ. /
;
ฅฅ/ 0
}
ฆฆ 
log
งง 
.
งง 
Information
งง 
(
งง 
$str
งง =
,
งง= >
$str
งง? L
,
งงL M

randomList
งงN X
.
งงX Y
Count
งงY ^
)
งง^ _
;
งง_ `
return
ฉฉ 

randomList
ฉฉ 
;
ฉฉ 
}
ชช 	
public
ฌฌ 
static
ฌฌ 
List
ฌฌ 
<
ฌฌ  
EmailSuggestionDTO
ฌฌ -
>
ฌฌ- .
SearchEmails
ฌฌ/ ;
(
ฌฌ; <
EmailSearchDTO
ฌฌ< J
searchRequest
ฌฌK X
)
ฌฌX Y
{
ญญ 	
try
ฎฎ 
{
ฏฏ 
if
ฐฐ 
(
ฐฐ 
searchRequest
ฐฐ !
==
ฐฐ" $
null
ฐฐ% )
||
ฐฐ* ,
string
ฐฐ- 3
.
ฐฐ3 4
IsNullOrEmpty
ฐฐ4 A
(
ฐฐA B
searchRequest
ฐฐB O
.
ฐฐO P

SearchTerm
ฐฐP Z
)
ฐฐZ [
)
ฐฐ[ \
{
ฑฑ 
return
ฒฒ 
new
ฒฒ 
List
ฒฒ #
<
ฒฒ# $ 
EmailSuggestionDTO
ฒฒ$ 6
>
ฒฒ6 7
(
ฒฒ7 8
)
ฒฒ8 9
;
ฒฒ9 :
}
ณณ 
string
ตต 

searchTerm
ตต !
=
ตต" #
searchRequest
ตต$ 1
.
ตต1 2

SearchTerm
ตต2 <
.
ตต< =
Trim
ตต= A
(
ตตA B
)
ตตB C
;
ตตC D
if
ถถ 
(
ถถ 

searchTerm
ถถ 
.
ถถ 
Length
ถถ %
<
ถถ& '
$num
ถถ( )
)
ถถ) *
{
ทท 
return
ธธ 
new
ธธ 
List
ธธ #
<
ธธ# $ 
EmailSuggestionDTO
ธธ$ 6
>
ธธ6 7
(
ธธ7 8
)
ธธ8 9
;
ธธ9 :
}
นน 
SqlParameter
ผผ 
[
ผผ 
]
ผผ 
arrSqlParameter
ผผ .
=
ผผ/ 0
new
ผผ1 4
SqlParameter
ผผ5 A
[
ผผA B
]
ผผB C
{
ฝฝ 
new
พพ 
SqlParameter
พพ 
(
พพ 
$str
พพ *
,
พพ* +

searchTerm
พพ, 6
)
พพ6 7
,
พพ7 8
new
ฟฟ 
SqlParameter
ฟฟ 
(
ฟฟ 
$str
ฟฟ &
,
ฟฟ& '
searchRequest
ฟฟ( 5
.
ฟฟ5 6
UserId
ฟฟ6 <
)
ฟฟ< =
}
ภภ 
;
ภภ 
var
ยย 
emailSuggestions
ยย $
=
ยย% &
new
ยย' *
List
ยย+ /
<
ยย/ 0 
EmailSuggestionDTO
ยย0 B
>
ยยB C
(
ยยC D
)
ยยD E
;
ยยE F
using
ฤฤ 
(
ฤฤ 
SqlDataReader
ฤฤ $
objSqlDataReader
ฤฤ% 5
=
ฤฤ6 7
	SqlHelper
ฤฤ8 A
.
ฤฤA B
ExecuteReader
ฤฤB O
(
ฤฤO P#
SqlConnectionProvider
ลล )
.
ลล) *!
GetConnectionString
ลล* =
(
ลล= >
DataAccessType
ลล> L
.
ลลL M
Read
ลลM Q
)
ลลQ R
,
ลลR S
CommandType
ฦฦ 
.
ฦฦ  
StoredProcedure
ฦฦ  /
,
ฦฦ/ 0
$str
วว *
,
วว* +
arrSqlParameter
ศศ #
)
ศศ# $
)
ศศ$ %
{
ษษ 
while
สส 
(
สส 
objSqlDataReader
สส +
.
สส+ ,
Read
สส, 0
(
สส0 1
)
สส1 2
)
สส2 3
{
หห 
var
ฬฬ 
emailSuggestion
ฬฬ +
=
ฬฬ, -
new
ฬฬ. 1 
EmailSuggestionDTO
ฬฬ2 D
{
ออ 
UserId
ฮฮ "
=
ฮฮ# $
objSqlDataReader
ฮฮ% 5
[
ฮฮ5 6
$str
ฮฮ6 >
]
ฮฮ> ?
!=
ฮฮ@ B
DBNull
ฮฮC I
.
ฮฮI J
Value
ฮฮJ O
?
ฮฮP Q
Convert
ฮฮR Y
.
ฮฮY Z
ToInt32
ฮฮZ a
(
ฮฮa b
objSqlDataReader
ฮฮb r
[
ฮฮr s
$str
ฮฮs {
]
ฮฮ{ |
)
ฮฮ| }
:
ฮฮ~ 
$numฮฮ€ 
,ฮฮ 
Email
ฯฯ !
=
ฯฯ" #
objSqlDataReader
ฯฯ$ 4
[
ฯฯ4 5
$str
ฯฯ5 <
]
ฯฯ< =
?
ฯฯ= >
.
ฯฯ> ?
ToString
ฯฯ? G
(
ฯฯG H
)
ฯฯH I
,
ฯฯI J
}
ะะ 
;
ะะ 
emailSuggestions
ัั (
.
ัั( )
Add
ัั) ,
(
ัั, -
emailSuggestion
ัั- <
)
ัั< =
;
ัั= >
}
าา 
}
ำำ 
return
ีี 
emailSuggestions
ีี '
;
ีี' (
}
ึึ 
catch
ืื 
(
ืื 
	Exception
ืื 
ex
ืื 
)
ืื  
{
ุุ 
return
ฺฺ 
new
ฺฺ 
List
ฺฺ 
<
ฺฺ   
EmailSuggestionDTO
ฺฺ  2
>
ฺฺ2 3
(
ฺฺ3 4
)
ฺฺ4 5
;
ฺฺ5 6
}
ÛÛ 
}
ÜÜ 	
}
ÝÝ 
}ÞÞ ฬ-
dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\ExamHistoryBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public		 

static		 
class		 
ExamHistoryBL		 %
{

 
public 
static 
List 
< 
ExamHistoryDTO )
>) *
ExamHistoryDetails+ =
(= >
ExamHistoryDTO> L
examhistoryM X
)X Y
{ 	
return 
ExamHistoryDAL !
.! "
ExamHistoryDetails" 4
(4 5
examhistory5 @
)@ A
;A B
} 	
public 
static 
void $
DeleteExamHistoryDetails 3
(3 4
ExamHistoryDTO4 B
examhistoryC N
)N O
{ 	
ExamHistoryDAL 
. $
DeleteExamHistoryDetails 3
(3 4
examhistory4 ?
.? @
ExamId@ F
,F G
examhistoryH S
.S T
UserIdT Z
)Z [
;[ \
} 	
public 
static 
int "
ReshareSharedExamMulti 0
(0 1
int1 4
originalExamId5 C
,C D
intE H
creatorUserIdI V
,V W
stringX ^
creatorEmailId_ m
,m n
IEnumerableo z
<z {
string	{ 
>
 
emails
 
,
 
bool
 
force
 •
=
– —
false
 
,
 
DateTime
 ง
?
ง จ
startUtc
ฉ ฑ
=
ฒ ณ
null
ด ธ
,
ธ น
DateTime
บ ย
?
ย ร
endUtc
ฤ ส
=
ห ฬ
null
อ ั
)
ั า
{ 	
return 
ExamHistoryDAL !
.! ""
ReshareSharedExamMulti" 8
(8 9
originalExamId9 G
,G H
creatorUserIdI V
,V W
creatorEmailIdX f
,f g
emailsh n
,n o
forcep u
,u v
startUtcw 
,	 €
endUtc
 
)
 
;
 
} 	
public 
static 
List 
< 
string !
>! "-
!ReshareSharedExam_CheckDuplicates# D
(D E
intE H
originalExamIdI W
,W X
IEnumerableY d
<d e
stringe k
>k l
emailsm s
)s t
{ 	
return 
ExamHistoryDAL !
.! "-
!ReshareSharedExam_CheckDuplicates" C
(C D
originalExamIdD R
,R S
emailsT Z
)Z [
;[ \
} 	
public 
static 
PdfDetailsDataVM &
GetPdfDetails' 4
(4 5
ExamHistoryDTO5 C
examhistoryD O
)O P
{   	
return!! 
ExamHistoryDAL!!  
.!!  !
GetPdfDetails!!! .
(!!. /
examhistory!!/ :
)!!: ;
;!!; <
}"" 	
public%% 
static%% 
int%% 
	ResetExam%% #
(%%# $
int%%$ '
userId%%( .
)%%. /
{&& 	
return'' 
ExamHistoryDAL'' !
.''! "
	ResetExam''" +
(''+ ,
userId'', 2
)''2 3
;''3 4
}(( 	
public** 
static** 
List** 
<** 
ExamHistoryDTO** )
>**) *$
SharedExamHistoryDetails**+ C
(**C D
ExamHistoryDTO**D R
examhistory**S ^
)**^ _
{++ 	
return,, 
ExamHistoryDAL,, !
.,,! "$
SharedExamHistoryDetails,," :
(,,: ;
examhistory,,; F
),,F G
;,,G H
}-- 	
public// 
static// 
List// 
<// 
ExamHistoryDTO// )
>//) *-
!InsertorAddEmail_GetOptOutDetails//+ L
(//L M
ExamHistoryDTO//M [
values//\ b
)//b c
{00 	
List11 
<11 
ExamHistoryDTO11 
>11  

email_list11! +
=11, -
new11. 1
List112 6
<116 7
ExamHistoryDTO117 E
>11E F
(11F G
)11G H
;11H I
string22 
[22 
]22 

emailArray22 
=22  !
values22" (
.22( )
Emailids22) 1
.221 2
Split222 7
(227 8
$char228 ;
)22; <
;22< =
foreach33 
(33 
string33 
email33 !
in33" $

emailArray33% /
)33/ 0
{44 
ExamHistoryDTO55 
emailids55 '
=55( )
ExamHistoryDAL55* 8
.558 9-
!InsertorAddEmail_GetOptOutDetails559 Z
(55Z [
email55[ `
,55` a
values55b h
)55h i
;55i j

email_list66 
.66 
Add66 
(66 
emailids66 '
)66' (
;66( )
}77 
return99 

email_list99 
;99 
}:: 	
public<< 
static<< 
string<< 
OptOut<< #
(<<# $
int<<$ '
id<<( *
)<<* +
{== 	
return>> 
ExamHistoryDAL>> !
.>>! "
OptOut>>" (
(>>( )
id>>) +
)>>+ ,
;>>, -
}?? 	
}@@ 
}AA ึ	
_D:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\ImportBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ImportBL  
{ 
private 
static 
string 
apiUrl $
=% &#
WebConfigurationManager' >
.> ?
AppSettings? J
[J K
$strK S
]S T
;T U
private 
static 
string 
sAttrLogPath *
=+ , 
ConfigurationManager- A
.A B
AppSettingsB M
.M N
GetN Q
(Q R
$strR b
)b c
;c d
public 
static 
int 
GetQuestionCount *
(* +
ServiceCallVM+ 8
serviceCall9 D
)D E
{ 	
return 
	ImportDAL 
. 
GetQuestionCount -
(- .
serviceCall. 9
)9 :
;: ;
} 	
public 
static 
async 
Task  
<  !
ResponseStatusVM! 1
>1 2
ImportQuestion3 A
(A B
ServiceCallVMB O
serviceCallP [
)[ \
{ 	
int   
count   
=   
	ImportDAL   !
.  ! "
GetQuestionCount  " 2
(  2 3
serviceCall  3 >
)  > ?
;  ? @
if!! 
(!! 
count!! 
<=!! 
$num!! 
)!! 
{"" 
return## 
await## 
ImportBL## %
.##% &
SubmitQASData##& 3
(##3 4
serviceCall##4 ?
)##? @
;##@ A
}$$ 
return&& 
null&& 
;&& 
}'' 	
public)) 
static)) 
async)) 
Task))  
<))  !
ResponseStatusVM))! 1
>))1 2
SubmitQASData))3 @
())@ A
ServiceCallVM))A N
serviceCall))O Z
)))Z [
{** 	
string++ 
url++ 
=++ 
apiUrl++ 
+++  !
$str++" A
+++B C
serviceCall++D O
.++O P
Status++P V
+++W X
$str	++Y 
;
++ 
string,, 
responseBody,, 
;,,  
string-- 
jsonFilePath-- 
=--  ! 
ConfigurationManager--" 6
.--6 7
AppSettings--7 B
.--B C
Get--C F
(--F G
$str--G ]
)--] ^
;--^ _
string.. 
	tableName.. 
=.. 
string.. %
...% &
Empty..& +
;..+ ,
var// 
myUniqueFileName//  
=//! "
string//# )
.//) *
Format//* 0
(//0 1
$str//1 <
,//< =
Guid//> B
.//B C
NewGuid//C J
(//J K
)//K L
)//L M
;//M N
try00 
{11 
using22 
(22 
var22 
client22 !
=22" #
new22$ '

HttpClient22( 2
(222 3
)223 4
)224 5
{33 
client44 
.44 
Timeout44 "
=44# $
TimeSpan44% -
.44- .
FromMinutes44. 9
(449 :
$num44: <
)44< =
;44= >
HttpResponseMessage55 '
response55( 0
=551 2
await553 8
client559 ?
.55? @
GetAsync55@ H
(55H I
url55I L
)55L M
;55M N
response66 
.66 #
EnsureSuccessStatusCode66 4
(664 5
)665 6
;666 7
if77 
(77 
response77  
.77  !
IsSuccessStatusCode77! 4
)774 5
{88 
using99 
(99 
HttpContent99 *
content99+ 2
=993 4
response995 =
.99= >
Content99> E
)99E F
{:: 
responseBody;; (
=;;) *
await;;+ 0
response;;1 9
.;;9 :
Content;;: A
.;;A B
ReadAsStringAsync;;B S
(;;S T
);;T U
;;;U V
var<< 
data<<  $
=<<% &
QuestionQAS<<' 2
.<<2 3
FromJson<<3 ;
(<<; <
responseBody<<< H
)<<H I
;<<I J
if== 
(==  
data==  $
.==$ %
QuestionQuestion==% 5
.==5 6
Count==6 ;
>==< =
$num==> ?
)==? @
{>> 
foreach??  '
(??( )
var??) ,
questionDetails??- <
in??= ?
data??@ D
.??D E
QuestionQuestion??E U
)??U V
{@@  !

QuestionVMAA$ .
questioDataAA/ :
=AA; <
newAA= @

QuestionVMAAA K
(AAK L
)AAL M
;AAM N
ifBB$ &
(BB' (
questionDetailsBB( 7
.BB7 8
ImageBB8 =
.BB= >
CountBB> C
>BBD E
$numBBF G
)BBG H
{CC$ %
questioDataDD( 3
.DD3 4
QuestionTypeDD4 @
=DDA B
falseDDC H
;DDH I
}EE$ %
elseFF$ (
{GG$ %
questioDataHH( 3
.HH3 4
QuestionTypeHH4 @
=HHA B
trueHHC G
;HHG H
}II$ %
questioDataKK$ /
.KK/ 0
IdKK0 2
=KK3 4
questionDetailsKK5 D
.KKD E
IdKKE G
;KKG H
questioDataLL$ /
.LL/ 0

ReferencesLL0 :
=LL; <
questionDetailsLL= L
.LLL M

ReferencesLLM W
;LLW X
questioDataMM$ /
.MM/ 0
StatusMM0 6
=MM7 8
ConvertMM9 @
.MM@ A
ToInt32MMA H
(MMH I
questionDetailsMMI X
.MMX Y
StatusMMY _
)MM_ `
;MM` a
questioDataNN$ /
.NN/ 0
StemNN0 4
=NN5 6
questionDetailsNN7 F
.NNF G
StemNNG K
;NNK L
questioDataOO$ /
.OO/ 0

FriendlyIdOO0 :
=OO; <
questionDetailsOO= L
.OOL M

FriendlyidOOM W
.OOW X
ToStringOOX `
(OO` a
)OOa b
;OOb c
questioDataPP$ /
.PP/ 0
ActivePP0 6
=PP7 8
ConvertPP9 @
.PP@ A
	ToBooleanPPA J
(PPJ K
questionDetailsPPK Z
.PPZ [
StatusPP[ a
)PPa b
;PPb c
questioDataQQ$ /
.QQ/ 0
	CreatedonQQ0 9
=QQ: ;
ConvertQQ< C
.QQC D

ToDateTimeQQD N
(QQN O
questionDetailsQQO ^
.QQ^ _
	CreatedOnQQ_ h
)QQh i
;QQi j
questioDataRR$ /
.RR/ 0

ModifiedOnRR0 :
=RR; <
ConvertRR= D
.RRD E

ToDateTimeRRE O
(RRO P
questionDetailsRRP _
.RR_ `

ModifiedOnRR` j
)RRj k
;RRk l
questioDataSS$ /
.SS/ 0
DeletedSS0 7
=SS8 9
ConvertSS: A
.SSA B
	ToBooleanSSB K
(SSK L
questionDetailsSSL [
.SS[ \
DeletedSS\ c
)SSc d
;SSd e
intVV$ '

questionIdVV( 2
=VV3 4
	ImportDALVV5 >
.VV> ?
SaveQuestionDataVV? O
(VVO P
questioDataVVP [
)VV[ \
;VV\ ]
ifYY$ &
(YY' (

questionIdYY( 2
!=YY3 5
$numYY6 7
)YY7 8
{ZZ$ %
List\\( ,
<\\, -
TopicContentVM\\- ;
>\\; <
topicVMList\\= H
=\\I J
new\\K N
List\\O S
<\\S T
TopicContentVM\\T b
>\\b c
(\\c d
)\\d e
;\\e f
foreach]]( /
(]]0 1
var]]1 4'
questionDetailsTopicMapping]]5 P
in]]Q S
questionDetails]]T c
.]]c d
TopicMapping]]d p
)]]p q
{^^( )
TopicContentVM__, :
topicContent__; G
=__H I
new__J M
TopicContentVM__N \
(__\ ]
)__] ^
;__^ _
Topic``, 1
d``2 3
=``4 5
await``6 ;
GetTopic``< D
(``D E'
questionDetailsTopicMapping``E `
)``` a
;``a b
topicContentaa, 8
.aa8 9
Activeaa9 ?
=aa@ A
daaB C
.aaC D
TopicContentaaD P
.aaP Q
ActiveaaQ W
;aaW X
topicContentbb, 8
.bb8 9
Codebb9 =
=bb> ?
dbb@ A
.bbA B
TopicContentbbB N
.bbN O
CodebbO S
;bbS T
topicContentcc, 8
.cc8 9
Deletedcc9 @
=ccA B
dccC D
.ccD E
TopicContentccE Q
.ccQ R
DeletedccR Y
;ccY Z
topicContentdd, 8
.dd8 9

ModifiedOndd9 C
=ddD E
dddF G
.ddG H
TopicContentddH T
.ddT U

ModifiedOnddU _
;dd_ `
stringee, 2
[ee2 3
]ee3 4
bcscMapperContentee5 F
=eeG H
deeI J
.eeJ K
TopicContenteeK W
.eeW X
TitleeeX ]
.ee] ^
Splitee^ c
(eec d
$chareed g
)eeg h
;eeh i
stringff, 2
chapterff3 :
=ff; <
stringff= C
.ffC D
EmptyffD I
;ffI J
stringgg, 2
chapterNamegg3 >
=gg? @
stringggA G
.ggG H
EmptyggH M
;ggM N
stringhh, 2
topichh3 8
=hh9 :
stringhh; A
.hhA B
EmptyhhB G
;hhG H
stringii, 2
	topicNameii3 <
=ii= >
stringii? E
.iiE F
EmptyiiF K
;iiK L
ifjj, .
(jj/ 0
bcscMapperContentjj0 A
.jjA B
LengthjjB H
>jjI J
$numjjK L
&&jjM O
bcscMapperContentjjP a
[jja b
$numjjb c
]jjc d
!=jje g
nulljjh l
)jjl m
{kk, -
chapterll0 7
=ll8 9
bcscMapperContentll: K
[llK L
$numllL M
]llM N
;llN O
}mm, -
ifoo, .
(oo/ 0
bcscMapperContentoo0 A
.ooA B
LengthooB H
>ooI J
$numooK L
&&ooM O
bcscMapperContentooP a
[ooa b
$numoob c
]ooc d
!=ooe g
nullooh l
)ool m
{pp, -
chapterNameqq0 ;
=qq< =
bcscMapperContentqq> O
[qqO P
$numqqP Q
]qqQ R
;qqR S
}rr, -
iftt, .
(tt/ 0
bcscMapperContenttt0 A
.ttA B
LengthttB H
>ttI J
$numttK L
&&ttM O
bcscMapperContentttP a
[tta b
$numttb c
]ttc d
!=tte g
nulltth l
)ttl m
{uu, -
topicvv0 5
=vv6 7
bcscMapperContentvv8 I
[vvI J
$numvvJ K
]vvK L
;vvL M
}ww, -
ifyy, .
(yy/ 0
bcscMapperContentyy0 A
.yyA B
LengthyyB H
>yyI J
$numyyK L
&&yyM O
bcscMapperContentyyP a
[yya b
$numyyb c
]yyc d
!=yye g
nullyyh l
)yyl m
{zz, -
	topicName{{0 9
={{: ;
bcscMapperContent{{< M
[{{M N
$num{{N O
]{{O P
;{{P Q
}||, -
topicContent~~, 8
.~~8 9
Title~~9 >
=~~? @
d~~A B
.~~B C
TopicContent~~C O
.~~O P
Title~~P U
;~~U V
topicContent, 8
.8 9
TopicId9 @
=A B'
questionDetailsTopicMappingC ^
;^ _
topicContent
€€, 8
.
€€8 9
Chapter
€€9 @
=
€€A B
chapter
€€C J
;
€€J K
topicContent
, 8
.
8 9
ChapterName
9 D
=
E F
chapterName
G R
;
R S
topicContent
, 8
.
8 9
Topic
9 >
=
? @
topic
A F
;
F G
topicContent
, 8
.
8 9
	TopicName
9 B
=
C D
	topicName
E N
;
N O
topicVMList
, 7
.
7 8
Add
8 ;
(
; <
topicContent
< H
)
H I
;
I J
int
, /
topicId
0 7
=
8 9
	ImportDAL
: C
.
C D
SaveTopicData
D Q
(
Q R
topicContent
R ^
)
^ _
;
_ `"
QuestionTopicXWalkVM
, @ 
questionTopicXWalk
A S
=
T U
new
V Y"
QuestionTopicXWalkVM
Z n
(
n o
)
o p
;
p q 
questionTopicXWalk
, >
.
> ?

QuestionId
? I
=
J K

questionId
L V
;
V W 
questionTopicXWalk
, >
.
> ?
QASQuestionId
? L
=
M N
questionDetails
O ^
.
^ _
Id
_ a
;
a b 
questionTopicXWalk
, >
.
> ?

QASTopicId
? I
=
J K)
questionDetailsTopicMapping
L g
;
g h 
questionTopicXWalk
, >
.
> ?
TopicId
? F
=
G H
topicId
I P
;
P Q
int
’’, /"
questionTopicXwalkId
’’0 D
=
’’E F
	ImportDAL
’’G P
.
’’P Q(
SaveQuestionTopicXWalkData
’’Q k
(
’’k l 
questionTopicXWalk
’’l ~
)
’’~ 
;’’ €
foreach
——, 3
(
——4 5
Mapping
——5 <
topicmapping
——= I
in
——J L
d
——M N
.
——N O
TopicContent
——O [
.
——[ \
Mappings
——\ d
)
——d e
{
, -
	ProgramVM
0 9
program
: A
=
B C
new
D G
	ProgramVM
H Q
(
Q R
)
R S
;
S T
program
0 7
.
7 8
Program
8 ?
=
@ A
topicmapping
B N
.
N O
Program
O V
;
V W
program
0 7
.
7 8
QASProgramid
8 D
=
E F
topicmapping
G S
.
S T
	ProgramId
T ]
;
] ^
int
0 3
	programId
4 =
=
> ?
	ImportDAL
@ I
.
I J
SaveProgramData
J Y
(
Y Z
program
Z a
)
a b
;
b c
SubProgramVM
กก0 <

subProgram
กก= G
=
กกH I
new
กกJ M
SubProgramVM
กกN Z
(
กกZ [
)
กก[ \
;
กก\ ]

subProgram
ขข0 :
.
ขข: ;

Subprogram
ขข; E
=
ขขF G
topicmapping
ขขH T
.
ขขT U

SubProgram
ขขU _
;
ขข_ `

subProgram
ฃฃ0 :
.
ฃฃ: ;
QASSubprogramid
ฃฃ; J
=
ฃฃK L
topicmapping
ฃฃM Y
.
ฃฃY Z
SubProgramId
ฃฃZ f
;
ฃฃf g

subProgram
คค0 :
.
คค: ;
	ProgramId
คค; D
=
คคE F
	programId
คคG P
;
คคP Q
int
ฅฅ0 3
subProgramId
ฅฅ4 @
=
ฅฅA B
	ImportDAL
ฅฅC L
.
ฅฅL M 
SaveSubProgramData
ฅฅM _
(
ฅฅ_ `

subProgram
ฅฅ` j
)
ฅฅj k
;
ฅฅk l
SubSpecialityVM
ฉฉ0 ?
subSpeciality
ฉฉ@ M
=
ฉฉN O
new
ฉฉP S
SubSpecialityVM
ฉฉT c
(
ฉฉc d
)
ฉฉd e
;
ฉฉe f
subSpeciality
ชช0 =
.
ชช= >
Subspecialty
ชช> J
=
ชชK L
topicmapping
ชชM Y
.
ชชY Z
SubSpecialty
ชชZ f
;
ชชf g
subSpeciality
ซซ0 =
.
ซซ= >
QASSubspecialtyid
ซซ> O
=
ซซP Q
topicmapping
ซซR ^
.
ซซ^ _
SubSpecialtyId
ซซ_ m
;
ซซm n
subSpeciality
ฌฌ0 =
.
ฌฌ= >
SubprogramId
ฌฌ> J
=
ฌฌK L
subProgramId
ฌฌM Y
;
ฌฌY Z
int
ญญ0 3
subSpecialityId
ญญ4 C
=
ญญD E
	ImportDAL
ญญF O
.
ญญO P#
SaveSubSpecialityData
ญญP e
(
ญญe f
subSpeciality
ญญf s
)
ญญs t
;
ญญt u&
SubspecialtyTopicXWalkVM
ฑฑ0 H$
subspecialtyTopicXWalk
ฑฑI _
=
ฑฑ` a
new
ฑฑb e&
SubspecialtyTopicXWalkVM
ฑฑf ~
(
ฑฑ~ 
)ฑฑ €
;ฑฑ€ $
subspecialtyTopicXWalk
ฒฒ0 F
.
ฒฒF G
SubSpecialityId
ฒฒG V
=
ฒฒW X
subSpecialityId
ฒฒY h
;
ฒฒh i$
subspecialtyTopicXWalk
ณณ0 F
.
ณณF G
TopicId
ณณG N
=
ณณO P
topicId
ณณQ X
;
ณณX Y
int
ดด0 3&
subspecialtyTopicXWalkId
ดด4 L
=
ดดM N
	ImportDAL
ดดO X
.
ดดX Y,
SaveSubspecialtyTopicXWalkData
ดดY w
(
ดดw x%
subspecialtyTopicXWalkดดx 
)ดด 
;ดด 
}
นน, -
}
บบ( )
if
พพ( *
(
พพ+ ,
questionDetails
พพ, ;
.
พพ; <
Image
พพ< A
.
พพA B
Count
พพB G
>
พพH I
$num
พพJ K
)
พพK L
{
ฟฟ( )
List
ภภ, 0
<
ภภ0 1
ImageVM
ภภ1 8
>
ภภ8 9
imageVMList
ภภ: E
=
ภภF G
new
ภภH K
List
ภภL P
<
ภภP Q
ImageVM
ภภQ X
>
ภภX Y
(
ภภY Z
)
ภภZ [
;
ภภ[ \
foreach
มม, 3
(
มม4 5
Image
มม5 :
questionImage
มม; H
in
มมI K
questionDetails
มมL [
.
มม[ \
Image
มม\ a
)
มมa b
{
ยย, -
ImageVM
รร0 7
imageVM
รร8 ?
=
รร@ A
new
รรB E
ImageVM
รรF M
(
รรM N
)
รรN O
;
รรO P
imageVM
ฤฤ0 7
.
ฤฤ7 8
Caption
ฤฤ8 ?
=
ฤฤ@ A
questionImage
ฤฤB O
.
ฤฤO P
Caption
ฤฤP W
;
ฤฤW X
imageVM
ลล0 7
.
ลล7 8
Comments
ลล8 @
=
ลลA B
questionImage
ลลC P
.
ลลP Q
Comments
ลลQ Y
;
ลลY Z
imageVM
ฦฦ0 7
.
ฦฦ7 8
Credit
ฦฦ8 >
=
ฦฦ? @
questionImage
ฦฦA N
.
ฦฦN O
Credit
ฦฦO U
;
ฦฦU V
imageVM
วว0 7
.
วว7 8
Figure
วว8 >
=
วว? @
questionImage
ววA N
.
ววN O
Figure
ววO U
;
ววU V
imageVM
ศศ0 7
.
ศศ7 8
Path
ศศ8 <
=
ศศ= >
Convert
ศศ? F
.
ศศF G
ToString
ศศG O
(
ศศO P
HttpUtility
ศศP [
.
ศศ[ \

HtmlDecode
ศศ\ f
(
ศศf g
Convert
ศศg n
.
ศศn o
ToString
ศศo w
(
ศศw x
questionImageศศx …
.ศศ… 
Pathศศ 
)ศศ 
)ศศ 
)ศศ 
;ศศ 
imageVM
ษษ0 7
.
ษษ7 8
Source
ษษ8 >
=
ษษ? @
questionImage
ษษA N
.
ษษN O
Source
ษษO U
;
ษษU V
imageVM
สส0 7
.
สส7 8
Title
สส8 =
=
สส> ?
questionImage
สส@ M
.
สสM N
Title
สสN S
;
สสS T
imageVMList
หห0 ;
.
หห; <
Add
หห< ?
(
หห? @
imageVM
หห@ G
)
หหG H
;
หหH I
int
ฮฮ0 3
questionImageId
ฮฮ4 C
=
ฮฮD E
	ImportDAL
ฮฮF O
.
ฮฮO P
InsertImageData
ฮฮP _
(
ฮฮ_ `
imageVM
ฮฮ` g
,
ฮฮg h

questionId
ฮฮi s
,
ฮฮs t
	tableName
ฮฮu ~
=ฮฮ €
$strฮฮ ‘
)ฮฮ‘ ’
;ฮฮ’ “
}
ัั, -
}
าา( )
DiscussionVM
ิิ( 4
discussionVm
ิิ5 A
=
ิิB C
new
ิิD G
DiscussionVM
ิิH T
(
ิิT U
)
ิิU V
;
ิิV W
discussionVm
ืื( 4
.
ืื4 5
DiscussionText
ืื5 C
=
ืืD E
questionDetails
ืืF U
.
ืืU V

Discussion
ืืV `
.
ืื` a
Text
ืืa e
;
ืืe f
discussionVm
ุุ( 4
.
ุุ4 5
DiscussionType
ุุ5 C
=
ุุD E
false
ุุF K
;
ุุK L
discussionVm
ูู( 4
.
ูู4 5

QuestionId
ูู5 ?
=
ูู@ A

questionId
ููB L
;
ููL M
int
ÜÜ( +
discussionId
ÜÜ, 8
=
ÜÜ9 :
	ImportDAL
ÜÜ; D
.
ÜÜD E 
SaveDiscussionData
ÜÜE W
(
ÜÜW X
discussionVm
ÜÜX d
)
ÜÜd e
;
ÜÜe f
if
฿฿( *
(
฿฿+ ,
questionDetails
฿฿, ;
.
฿฿; <

Discussion
฿฿< F
.
฿฿F G
Image
฿฿G L
.
฿฿L M
Count
฿฿M R
>
฿฿S T
$num
฿฿U V
)
฿฿V W
{
เเ( )
List
แแ, 0
<
แแ0 1
ImageVM
แแ1 8
>
แแ8 9#
imageDiscussionVMList
แแ: O
=
แแP Q
new
แแR U
List
แแV Z
<
แแZ [
ImageVM
แแ[ b
>
แแb c
(
แแc d
)
แแd e
;
แแe f
foreach
โโ, 3
(
โโ4 5
Image
โโ5 :&
imageDiscusstionListData
โโ; S
in
โโT V
questionDetails
โโW f
.
โโf g

Discussion
โโg q
.
โโq r
Image
โโr w
)
โโw x
{
ใใ, -
ImageVM
ไไ0 7
imageVM
ไไ8 ?
=
ไไ@ A
new
ไไB E
ImageVM
ไไF M
(
ไไM N
)
ไไN O
;
ไไO P
imageVM
ๅๅ0 7
.
ๅๅ7 8
Caption
ๅๅ8 ?
=
ๅๅ@ A&
imageDiscusstionListData
ๅๅB Z
.
ๅๅZ [
Caption
ๅๅ[ b
;
ๅๅb c
imageVM
ๆๆ0 7
.
ๆๆ7 8
Comments
ๆๆ8 @
=
ๆๆA B&
imageDiscusstionListData
ๆๆC [
.
ๆๆ[ \
Comments
ๆๆ\ d
;
ๆๆd e
imageVM
็็0 7
.
็็7 8
Credit
็็8 >
=
็็? @&
imageDiscusstionListData
็็A Y
.
็็Y Z
Credit
็็Z `
;
็็` a
imageVM
่่0 7
.
่่7 8
Figure
่่8 >
=
่่? @&
imageDiscusstionListData
่่A Y
.
่่Y Z
Figure
่่Z `
;
่่` a
imageVM
้้0 7
.
้้7 8
Path
้้8 <
=
้้= >&
imageDiscusstionListData
้้? W
.
้้W X
Path
้้X \
;
้้\ ]
imageVM
๊๊0 7
.
๊๊7 8
Source
๊๊8 >
=
๊๊? @&
imageDiscusstionListData
๊๊A Y
.
๊๊Y Z
Source
๊๊Z `
;
๊๊` a
imageVM
๋๋0 7
.
๋๋7 8
Title
๋๋8 =
=
๋๋> ?&
imageDiscusstionListData
๋๋@ X
.
๋๋X Y
Title
๋๋Y ^
;
๋๋^ _#
imageDiscussionVMList
์์0 E
.
์์E F
Add
์์F I
(
์์I J
imageVM
์์J Q
)
์์Q R
;
์์R S
int
๏๏0 3
discussionImageId
๏๏4 E
=
๏๏F G
	ImportDAL
๏๏H Q
.
๏๏Q R
InsertImageData
๏๏R a
(
๏๏a b
imageVM
๏๏b i
,
๏๏i j
discussionId
๏๏k w
,
๏๏w x
	tableName๏๏y 
=๏๏ 
$str๏๏… —
)๏๏— 
;๏๏ 
}
๒๒, -
}
๓๓( )
if
๖๖( *
(
๖๖+ ,
questionDetails
๖๖, ;
.
๖๖; <
Answer
๖๖< B
.
๖๖B C
Count
๖๖C H
>
๖๖I J
$num
๖๖K L
)
๖๖L M
{
๗๗( )
List
๘๘, 0
<
๘๘0 1
AnswerVM
๘๘1 9
>
๘๘9 :
answerVMList
๘๘; G
=
๘๘H I
new
๘๘J M
List
๘๘N R
<
๘๘R S
AnswerVM
๘๘S [
>
๘๘[ \
(
๘๘\ ]
)
๘๘] ^
;
๘๘^ _
foreach
๙๙, 3
(
๙๙4 5
Answer
๙๙5 ;
answerVMListData
๙๙< L
in
๙๙M O
questionDetails
๙๙P _
.
๙๙_ `
Answer
๙๙` f
)
๙๙f g
{
๚๚, -
AnswerVM
๛๛0 8
answerVM
๛๛9 A
=
๛๛B C
new
๛๛D G
AnswerVM
๛๛H P
(
๛๛P Q
)
๛๛Q R
;
๛๛R S
answerVM
üü0 8
.
üü8 9
Text
üü9 =
=
üü> ?
answerVMListData
üü@ P
.
üüP Q
Text
üüQ U
;
üüU V
answerVM
ýý0 8
.
ýý8 9
Correct
ýý9 @
=
ýýA B
answerVMListData
ýýC S
.
ýýS T
Correct
ýýT [
;
ýý[ \
answerVM
þþ0 8
.
þþ8 9
Sequence
þþ9 A
=
þþB C
answerVMListData
þþD T
.
þþT U
Sequence
þþU ]
;
þþ] ^
answerVM
ÿÿ0 8
.
ÿÿ8 9
Id
ÿÿ9 ;
=
ÿÿ< =
answerVMListData
ÿÿ> N
.
ÿÿN O
Id
ÿÿO Q
;
ÿÿQ R
answerVM
€€0 8
.
€€8 9

QuestionId
€€9 C
=
€€D E

questionId
€€F P
;
€€P Q
answerVM
0 8
.
8 9

AnswerType
9 C
=
D E
false
F K
;
K L
answerVMList
0 <
.
< =
Add
= @
(
@ A
answerVM
A I
)
I J
;
J K
int
0 3
answerId
4 <
=
= >
	ImportDAL
? H
.
H I
SaveAnswerData
I W
(
W X
answerVM
X `
)
` a
;
a b
if
0 2
(
3 4
answerVMListData
4 D
.
D E
Image
E J
.
J K
Count
K P
>
Q R
$num
S T
)
T U
{
0 1
List
4 8
<
8 9
ImageVM
9 @
>
@ A
imageAnswerVMList
B S
=
T U
new
V Y
List
Z ^
<
^ _
ImageVM
_ f
>
f g
(
g h
)
h i
;
i j
foreach
4 ;
(
< =
Image
= B!
answerImageListData
C V
in
W Y
answerVMListData
Z j
.
j k
Image
k p
)
p q
{
4 5
ImageVM
8 ?
imageVM
@ G
=
H I
new
J M
ImageVM
N U
(
U V
)
V W
;
W X
imageVM
8 ?
.
? @
Caption
@ G
=
H I!
answerImageListData
J ]
.
] ^
Caption
^ e
;
e f
imageVM
8 ?
.
? @
Comments
@ H
=
I J!
answerImageListData
K ^
.
^ _
Comments
_ g
;
g h
imageVM
‘‘8 ?
.
‘‘? @
Credit
‘‘@ F
=
‘‘G H!
answerImageListData
‘‘I \
.
‘‘\ ]
Credit
‘‘] c
;
‘‘c d
imageVM
’’8 ?
.
’’? @
Figure
’’@ F
=
’’G H!
answerImageListData
’’I \
.
’’\ ]
Figure
’’] c
;
’’c d
imageVM
““8 ?
.
““? @
Path
““@ D
=
““E F!
answerImageListData
““G Z
.
““Z [
Path
““[ _
;
““_ `
imageVM
””8 ?
.
””? @
Source
””@ F
=
””G H!
answerImageListData
””I \
.
””\ ]
Source
””] c
;
””c d
imageVM
••8 ?
.
••? @
Title
••@ E
=
••F G!
answerImageListData
••H [
.
••[ \
Title
••\ a
;
••a b
imageAnswerVMList
––8 I
.
––I J
Add
––J M
(
––M N
imageVM
––N U
)
––U V
;
––V W
int
8 ;
answerImageId
< I
=
J K
	ImportDAL
L U
.
U V
InsertImageData
V e
(
e f
imageVM
f m
,
m n
answerId
o w
,
w x
	tableNamey 
= 
$str… 
) 
; 
}
4 5
}
0 1
}
, -
}
( )
}
  $ %
}
กก  !
}
ขข 
}
ฃฃ 
}
คค 
}
ฅฅ 
}
ฆฆ 
catch
งง 
(
งง 
	Exception
งง 
e
งง 
)
งง 
{
จจ 
Console
ฉฉ 
.
ฉฉ 
Write
ฉฉ 
(
ฉฉ 
e
ฉฉ 
.
ฉฉ  
Message
ฉฉ  '
)
ฉฉ' (
;
ฉฉ( )
Console
ชช 
.
ชช 
Write
ชช 
(
ชช 
e
ชช 
.
ชช  
InnerException
ชช  .
)
ชช. /
;
ชช/ 0
}
ซซ 
return
ญญ 
null
ญญ 
;
ญญ 
}
ฎฎ 	
public
ฐฐ 
static
ฐฐ 
async
ฐฐ 
Task
ฐฐ  
<
ฐฐ  !
ResponseStatusVM
ฐฐ! 1
>
ฐฐ1 2
RetiredQASData
ฐฐ3 A
(
ฐฐA B
ServiceCallVM
ฐฐB O
serviceCall
ฐฐP [
,
ฐฐ[ \
bool
ฐฐ] a
defaultexcerpt
ฐฐb p
)
ฐฐp q
{
ฑฑ 	
string
ณณ 
url
ณณ 
=
ณณ 
string
ณณ 
.
ณณ  
Empty
ณณ  %
;
ณณ% &
if
ดด 
(
ดด 
defaultexcerpt
ดด 
)
ดด 
{
ตต 
url
ถถ 
=
ถถ 
apiUrl
ถถ 
+
ถถ 
$str
ถถ >
+
ถถ? @
serviceCall
ถถA L
.
ถถL M
Status
ถถM S
+
ถถT U
$strถถV 
;ถถ …
}
ทท 
else
ธธ 
{
นน 
url
บบ 
=
บบ 
apiUrl
บบ 
+
บบ 
$str
บบ >
+
บบ? @
serviceCall
บบA L
.
บบL M
Status
บบM S
+
บบT U
$strบบV “
+บบ” •
serviceCallบบ– ก
.บบก ข
Modifiedafterบบข ฏ
.บบฏ ฐ
ToStringบบฐ ธ
(บบธ น
$strบบน ษ
)บบษ ส
;บบส ห
}
ปป 
string
ฝฝ 
responseBody
ฝฝ 
;
ฝฝ  
string
พพ 
jsonFilePath
พพ 
=
พพ  !"
ConfigurationManager
พพ" 6
.
พพ6 7
AppSettings
พพ7 B
.
พพB C
Get
พพC F
(
พพF G
$str
พพG ]
)
พพ] ^
;
พพ^ _
string
ฟฟ 
	tableName
ฟฟ 
=
ฟฟ 
string
ฟฟ %
.
ฟฟ% &
Empty
ฟฟ& +
;
ฟฟ+ ,
var
ภภ 
myUniqueFileName
ภภ  
=
ภภ! "
string
ภภ# )
.
ภภ) *
Format
ภภ* 0
(
ภภ0 1
$str
ภภ1 <
,
ภภ< =
Guid
ภภ> B
.
ภภB C
NewGuid
ภภC J
(
ภภJ K
)
ภภK L
)
ภภL M
;
ภภM N
try
มม 
{
ยย 
using
รร 
(
รร 
var
รร 
client
รร !
=
รร" #
new
รร$ '

HttpClient
รร( 2
(
รร2 3
)
รร3 4
)
รร4 5
{
ฤฤ 
client
ลล 
.
ลล 
Timeout
ลล "
=
ลล# $
TimeSpan
ลล% -
.
ลล- .
FromMinutes
ลล. 9
(
ลล9 :
$num
ลล: <
)
ลล< =
;
ลล= >!
ServicePointManager
วว '
.
วว' (
SecurityProtocol
วว( 8
=
วว9 :"
SecurityProtocolType
วว; O
.
ววO P
Tls
ววP S
|
ววT U"
SecurityProtocolType
ศศ$ 8
.
ศศ8 9
Tls11
ศศ9 >
|
ศศ? @"
SecurityProtocolType
ษษ$ 8
.
ษษ8 9
Tls12
ษษ9 >
;
ษษ> ?!
ServicePointManager
สส '
.
สส' (1
#ServerCertificateValidationCallback
สส( K
+=
สสL N
(
สสO P
sender
สสP V
,
สสV W
cert
สสX \
,
สส\ ]
chain
สส^ c
,
สสc d
sslPolicyErrors
สสe t
)
สสt u
=>
สสv x
true
สสy }
;
สส} ~!
HttpResponseMessage
หห '
response
หห( 0
=
หห1 2
await
หห3 8
client
หห9 ?
.
หห? @
GetAsync
หห@ H
(
หหH I
url
หหI L
)
หหL M
;
หหM N
response
ฬฬ 
.
ฬฬ %
EnsureSuccessStatusCode
ฬฬ 4
(
ฬฬ4 5
)
ฬฬ5 6
;
ฬฬ6 7
if
ออ 
(
ออ 
response
ออ  
.
ออ  !!
IsSuccessStatusCode
ออ! 4
)
ออ4 5
{
ฮฮ 
using
ฯฯ 
(
ฯฯ 
HttpContent
ฯฯ *
content
ฯฯ+ 2
=
ฯฯ3 4
response
ฯฯ5 =
.
ฯฯ= >
Content
ฯฯ> E
)
ฯฯE F
{
ะะ 
responseBody
ัั (
=
ัั) *
await
ัั+ 0
response
ัั1 9
.
ัั9 :
Content
ัั: A
.
ััA B
ReadAsStringAsync
ััB S
(
ััS T
)
ััT U
;
ััU V
var
าา 
data
าา  $
=
าา% &
QuestionQAS
าา' 2
.
าา2 3
FromJson
าา3 ;
(
าา; <
responseBody
าา< H
)
าาH I
;
าาI J
if
ำำ 
(
ำำ  
data
ำำ  $
.
ำำ$ %
QuestionQuestion
ำำ% 5
.
ำำ5 6
Count
ำำ6 ;
>
ำำ< =
$num
ำำ> ?
)
ำำ? @
{
ิิ 
foreach
ีี  '
(
ีี( )
var
ีี) ,
questionDetails
ีี- <
in
ีี= ?
data
ีี@ D
.
ีีD E
QuestionQuestion
ีีE U
)
ีีU V
{
ึึ  !

QuestionVM
ืื$ .
questioData
ืื/ :
=
ืื; <
new
ืื= @

QuestionVM
ืืA K
(
ืืK L
)
ืืL M
;
ืืM N
if
ุุ$ &
(
ุุ' (
questionDetails
ุุ( 7
.
ุุ7 8
Image
ุุ8 =
.
ุุ= >
Count
ุุ> C
>
ุุD E
$num
ุุF G
)
ุุG H
{
ูู$ %
questioData
ฺฺ( 3
.
ฺฺ3 4
QuestionType
ฺฺ4 @
=
ฺฺA B
false
ฺฺC H
;
ฺฺH I
}
ÛÛ$ %
else
ÜÜ$ (
{
ÝÝ$ %
questioData
ÞÞ( 3
.
ÞÞ3 4
QuestionType
ÞÞ4 @
=
ÞÞA B
true
ÞÞC G
;
ÞÞG H
}
฿฿$ %
questioData
แแ$ /
.
แแ/ 0
Id
แแ0 2
=
แแ3 4
questionDetails
แแ5 D
.
แแD E
Id
แแE G
;
แแG H
questioData
โโ$ /
.
โโ/ 0
Status
โโ0 6
=
โโ7 8
Convert
โโ9 @
.
โโ@ A
ToInt32
โโA H
(
โโH I
questionDetails
โโI X
.
โโX Y
Status
โโY _
)
โโ_ `
;
โโ` a
questioData
ใใ$ /
.
ใใ/ 0
Active
ใใ0 6
=
ใใ7 8
Convert
ใใ9 @
.
ใใ@ A
	ToBoolean
ใใA J
(
ใใJ K
questionDetails
ใใK Z
.
ใใZ [
Status
ใใ[ a
)
ใใa b
;
ใใb c
int
ๆๆ$ '

questionId
ๆๆ( 2
=
ๆๆ3 4
	ImportDAL
ๆๆ5 >
.
ๆๆ> ?!
RetiredQuestionData
ๆๆ? R
(
ๆๆR S
questioData
ๆๆS ^
)
ๆๆ^ _
;
ๆๆ_ `
if
็็$ &
(
็็' (

questionId
็็( 2
!=
็็3 5
$num
็็6 7
)
็็7 8
{
่่$ %
	ImportDAL
้้( 1
.
้้1 22
$DeleteContentFromBCSCMapperOnRetired
้้2 V
(
้้V W

questionId
้้W a
)
้้a b
;
้้b c
	ImportDAL
๊๊( 1
.
๊๊1 2-
RetiredQuestionFromRelatedTable
๊๊2 Q
(
๊๊Q R

questionId
๊๊R \
)
๊๊\ ]
;
๊๊] ^
}
๋๋$ %
}
๎๎  !
}
๏๏ 
}
๐๐ 
}
๑๑ 
}
๒๒ 
}
๓๓ 
catch
๔๔ 
(
๔๔ 
	Exception
๔๔ 
e
๔๔ 
)
๔๔ 
{
๕๕ 
Console
๖๖ 
.
๖๖ 
Write
๖๖ 
(
๖๖ 
e
๖๖ 
.
๖๖  
Message
๖๖  '
)
๖๖' (
;
๖๖( )
Console
๗๗ 
.
๗๗ 
Write
๗๗ 
(
๗๗ 
e
๗๗ 
.
๗๗  
InnerException
๗๗  .
)
๗๗. /
;
๗๗/ 0
}
๘๘ 
return
๚๚ 
null
๚๚ 
;
๚๚ 
}
๛๛ 	
public
þþ 
static
þþ 
async
þþ 
Task
þþ  
<
þþ  !
ResponseStatusVM
þþ! 1
>
þþ1 2
UpdateQASData
þþ3 @
(
þþ@ A
ServiceCallVM
þþA N
serviceCall
þþO Z
,
þþZ [
bool
þþ\ `
defaultexcerpt
þþa o
)
þþo p
{
ÿÿ 	
string
€€ 
url
€€ 
=
€€ 
string
€€ 
.
€€  
Empty
€€  %
;
€€% &
var
 
log
 
=
 
new
 
Serilog
 !
.
! "!
LoggerConfiguration
" 5
(
5 6
)
6 7
.
7 8
WriteTo
8 ?
.
? @
RollingFile
@ K
(
K L
sAttrLogPath
L X
,
X Y
shared
Z `
:
` a
true
b f
,
f g$
retainedFileCountLimit
h ~
:
~ 
$num€ 
) 
. 
CreateLogger 
( 
) ‘
;‘ ’
if
 
(
 
defaultexcerpt
 
)
 
{
 
url
…… 
=
…… 
apiUrl
…… 
+
…… 
$str
…… >
+
……? @
serviceCall
……A L
.
……L M
Status
……M S
+
……T U
$str……V 
;…… …
}
 
else
 
{
 
url
 
=
 
apiUrl
 
+
 
$str
 >
+
? @
serviceCall
A L
.
L M
Status
M S
+
T U
$strV “
+” •
serviceCall– ก
.ก ข
Modifiedafterข ฏ
.ฏ ฐ
ToStringฐ ธ
(ธ น
$strน ษ
)ษ ส
;ส ห
}
 
string
 
responseBody
 
;
  
string
 
jsonFilePath
 
=
  !"
ConfigurationManager
" 6
.
6 7
AppSettings
7 B
.
B C
Get
C F
(
F G
$str
G ]
)
] ^
;
^ _
string
 
	tableName
 
=
 
string
 %
.
% &
Empty
& +
;
+ ,
var
 
myUniqueFileName
  
=
! "
string
# )
.
) *
Format
* 0
(
0 1
$str
1 <
,
< =
Guid
> B
.
B C
NewGuid
C J
(
J K
)
K L
)
L M
;
M N
try
 
{
‘‘ 
using
’’ 
(
’’ 
var
’’ 
client
’’ !
=
’’" #
new
’’$ '

HttpClient
’’( 2
(
’’2 3
)
’’3 4
)
’’4 5
{
““ !
ServicePointManager
”” '
.
””' (1
#ServerCertificateValidationCallback
””( K
+=
””L N
(
””O P
sender
””P V
,
””V W
cert
””X \
,
””\ ]
chain
””^ c
,
””c d
sslPolicyErrors
””e t
)
””t u
=>
””v x
true
””y }
;
””} ~
client
•• 
.
•• 
Timeout
•• "
=
••# $
TimeSpan
••% -
.
••- .
FromMinutes
••. 9
(
••9 :
$num
••: <
)
••< =
;
••= >!
HttpResponseMessage
–– '
response
––( 0
=
––1 2
await
––3 8
client
––9 ?
.
––? @
GetAsync
––@ H
(
––H I
url
––I L
)
––L M
;
––M N
response
—— 
.
—— %
EnsureSuccessStatusCode
—— 4
(
——4 5
)
——5 6
;
——6 7
if
 
(
 
response
  
.
  !!
IsSuccessStatusCode
! 4
)
4 5
{
 
using
 
(
 
HttpContent
 *
content
+ 2
=
3 4
response
5 =
.
= >
Content
> E
)
E F
{
 
responseBody
 (
=
) *
await
+ 0
response
1 9
.
9 :
Content
: A
.
A B
ReadAsStringAsync
B S
(
S T
)
T U
;
U V
var
 
questiondata
  ,
=
- .
QuestionQAS
/ :
.
: ;
FromJson
; C
(
C D
responseBody
D P
)
P Q
;
Q R
log
 
.
  
Information
  +
(
+ ,
$str
, =
+
> ?
questiondata
@ L
)
L M
;
M N
if
   
(
    
questiondata
    ,
.
  , -
QuestionQuestion
  - =
.
  = >
Count
  > C
>
  D E
$num
  F G
)
  G H
{
กก 
foreach
ขข  '
(
ขข( )
var
ขข) ,
questionDetails
ขข- <
in
ขข= ?
questiondata
ขข@ L
.
ขขL M
QuestionQuestion
ขขM ]
)
ขข] ^
{
ฃฃ  !

QuestionVM
คค$ .
questioData
คค/ :
=
คค; <
new
คค= @

QuestionVM
คคA K
(
คคK L
)
คคL M
;
คคM N
if
ฅฅ$ &
(
ฅฅ' (
questionDetails
ฅฅ( 7
.
ฅฅ7 8
Image
ฅฅ8 =
.
ฅฅ= >
Count
ฅฅ> C
>
ฅฅD E
$num
ฅฅF G
)
ฅฅG H
{
ฆฆ$ %
questioData
งง( 3
.
งง3 4
QuestionType
งง4 @
=
งงA B
false
งงC H
;
งงH I
}
จจ$ %
else
ฉฉ$ (
{
ชช$ %
questioData
ซซ( 3
.
ซซ3 4
QuestionType
ซซ4 @
=
ซซA B
true
ซซC G
;
ซซG H
}
ฌฌ$ %
questioData
ฎฎ$ /
.
ฎฎ/ 0
Id
ฎฎ0 2
=
ฎฎ3 4
questionDetails
ฎฎ5 D
.
ฎฎD E
Id
ฎฎE G
;
ฎฎG H
questioData
ฏฏ$ /
.
ฏฏ/ 0

References
ฏฏ0 :
=
ฏฏ; <
questionDetails
ฏฏ= L
.
ฏฏL M

References
ฏฏM W
;
ฏฏW X
questioData
ฐฐ$ /
.
ฐฐ/ 0
Status
ฐฐ0 6
=
ฐฐ7 8
Convert
ฐฐ9 @
.
ฐฐ@ A
ToInt32
ฐฐA H
(
ฐฐH I
questionDetails
ฐฐI X
.
ฐฐX Y
Status
ฐฐY _
)
ฐฐ_ `
;
ฐฐ` a
questioData
ฑฑ$ /
.
ฑฑ/ 0
Stem
ฑฑ0 4
=
ฑฑ5 6
questionDetails
ฑฑ7 F
.
ฑฑF G
Stem
ฑฑG K
;
ฑฑK L
questioData
ฒฒ$ /
.
ฒฒ/ 0

FriendlyId
ฒฒ0 :
=
ฒฒ; <
questionDetails
ฒฒ= L
.
ฒฒL M

Friendlyid
ฒฒM W
.
ฒฒW X
ToString
ฒฒX `
(
ฒฒ` a
)
ฒฒa b
;
ฒฒb c
questioData
ณณ$ /
.
ณณ/ 0
Active
ณณ0 6
=
ณณ7 8
Convert
ณณ9 @
.
ณณ@ A
	ToBoolean
ณณA J
(
ณณJ K
questionDetails
ณณK Z
.
ณณZ [
Status
ณณ[ a
)
ณณa b
;
ณณb c
questioData
ดด$ /
.
ดด/ 0
	Createdon
ดด0 9
=
ดด: ;
Convert
ดด< C
.
ดดC D

ToDateTime
ดดD N
(
ดดN O
questionDetails
ดดO ^
.
ดด^ _
	CreatedOn
ดด_ h
)
ดดh i
;
ดดi j
questioData
ตต$ /
.
ตต/ 0

ModifiedOn
ตต0 :
=
ตต; <
Convert
ตต= D
.
ตตD E

ToDateTime
ตตE O
(
ตตO P
questionDetails
ตตP _
.
ตต_ `

ModifiedOn
ตต` j
)
ตตj k
;
ตตk l
questioData
ถถ$ /
.
ถถ/ 0
Deleted
ถถ0 7
=
ถถ8 9
Convert
ถถ: A
.
ถถA B
	ToBoolean
ถถB K
(
ถถK L
questionDetails
ถถL [
.
ถถ[ \
Deleted
ถถ\ c
)
ถถc d
;
ถถd e
questioData
ทท$ /
.
ทท/ 0!
NotRandomizeAnswers
ทท0 C
=
ททD E
Convert
ททF M
.
ททM N
	ToBoolean
ททN W
(
ททW X
questionDetails
ททX g
.
ททg h!
NotRandomizeAnswers
ททh {
)
ทท{ |
;
ทท| }
questioData
ธธ$ /
.
ธธ/ 0
RelatedContents
ธธ0 ?
=
ธธ@ A
Convert
ธธB I
.
ธธI J
ToString
ธธJ R
(
ธธR S
questionDetails
ธธS b
.
ธธb c
RelatedContents
ธธc r
)
ธธr s
;
ธธs t
int
ปป$ '

questionId
ปป( 2
=
ปป3 4
	ImportDAL
ปป5 >
.
ปป> ? 
UpdateQuestionData
ปป? Q
(
ปปQ R
questioData
ปปR ]
)
ปป] ^
;
ปป^ _
if
ฟฟ$ &
(
ฟฟ' (

questionId
ฟฟ( 2
!=
ฟฟ3 5
$num
ฟฟ6 7
)
ฟฟ7 8
{
ภภ$ %
if
ยย( *
(
ยย+ ,
questioData
ยย, 7
.
ยย7 8
RelatedContents
ยย8 G
!=
ยยH J
null
ยยK O
&&
ยยP R
!
ยยS T
string
ยยT Z
.
ยยZ [
IsNullOrEmpty
ยย[ h
(
ยยh i
questioData
ยยi t
.
ยยt u
RelatedContentsยยu 
)ยย …
)ยย… 
{
รร( )
int
ลล, /"
updatedQuestionid_RC
ลล0 D
=
ลลE F
	ImportDAL
ลลG P
.
ลลP Q+
UpdateorInsertRelatedContents
ลลQ n
(
ลลn o
questioData
ลลo z
,
ลลz {

questionIdลล| 
)ลล 
;ลล 
}
ฦฦ( )
List
ษษ( ,
<
ษษ, -
TopicContentVM
ษษ- ;
>
ษษ; <
topicVMList
ษษ= H
=
ษษI J
new
ษษK N
List
ษษO S
<
ษษS T
TopicContentVM
ษษT b
>
ษษb c
(
ษษc d
)
ษษd e
;
ษษe f
List
หห( ,
<
หห, -
int
หห- 0
>
หห0 1&
beforeUpdateDb_TopicList
หห2 J
=
หหK L
	ImportDAL
หหM V
.
หหV W'
GetQASTopicIdByQuestionId
หหW p
(
หหp q

questionId
หหq {
)
หห{ |
;
หห| }
	ImportDAL
ออ( 1
.
ออ1 2!
DeleteReferenceData
ออ2 E
(
ออE F

questionId
ออF P
,
ออP Q
	tableName
ออR [
=
ออ\ ]
$str
ออ^ r
)
ออr s
;
ออs t
foreach
ฮฮ( /
(
ฮฮ0 1
var
ฮฮ1 4)
questionDetailsTopicMapping
ฮฮ5 P
in
ฮฮQ S
questionDetails
ฮฮT c
.
ฮฮc d
TopicMapping
ฮฮd p
)
ฮฮp q
{
ฯฯ( )
TopicContentVM
ะะ, :
topicContent
ะะ; G
=
ะะH I
new
ะะJ M
TopicContentVM
ะะN \
(
ะะ\ ]
)
ะะ] ^
;
ะะ^ _
Topic
ัั, 1
d
ัั2 3
=
ัั4 5
await
ัั6 ;
GetTopic
ัั< D
(
ััD E)
questionDetailsTopicMapping
ััE `
)
ัั` a
;
ััa b
topicContent
าา, 8
.
าา8 9
Active
าา9 ?
=
าา@ A
d
าาB C
.
าาC D
TopicContent
าาD P
.
าาP Q
Active
าาQ W
;
าาW X
topicContent
ำำ, 8
.
ำำ8 9
Code
ำำ9 =
=
ำำ> ?
d
ำำ@ A
.
ำำA B
TopicContent
ำำB N
.
ำำN O
Code
ำำO S
;
ำำS T
topicContent
ิิ, 8
.
ิิ8 9
Deleted
ิิ9 @
=
ิิA B
d
ิิC D
.
ิิD E
TopicContent
ิิE Q
.
ิิQ R
Deleted
ิิR Y
;
ิิY Z
topicContent
ีี, 8
.
ีี8 9

ModifiedOn
ีี9 C
=
ีีD E
d
ีีF G
.
ีีG H
TopicContent
ีีH T
.
ีีT U

ModifiedOn
ีีU _
;
ีี_ `
string
ึึ, 2
[
ึึ2 3
]
ึึ3 4
bcscMapperContent
ึึ5 F
=
ึึG H
d
ึึI J
.
ึึJ K
TopicContent
ึึK W
.
ึึW X
Title
ึึX ]
.
ึึ] ^
Split
ึึ^ c
(
ึึc d
$char
ึึd g
)
ึึg h
;
ึึh i
string
ืื, 2
chapter
ืื3 :
=
ืื; <
string
ืื= C
.
ืืC D
Empty
ืืD I
;
ืืI J
string
ุุ, 2
chapterName
ุุ3 >
=
ุุ? @
string
ุุA G
.
ุุG H
Empty
ุุH M
;
ุุM N
string
ูู, 2
topic
ูู3 8
=
ูู9 :
string
ูู; A
.
ููA B
Empty
ููB G
;
ููG H
string
ฺฺ, 2
	topicName
ฺฺ3 <
=
ฺฺ= >
string
ฺฺ? E
.
ฺฺE F
Empty
ฺฺF K
;
ฺฺK L
if
ÛÛ, .
(
ÛÛ/ 0
bcscMapperContent
ÛÛ0 A
.
ÛÛA B
Length
ÛÛB H
>
ÛÛI J
$num
ÛÛK L
&&
ÛÛM O
bcscMapperContent
ÛÛP a
[
ÛÛa b
$num
ÛÛb c
]
ÛÛc d
!=
ÛÛe g
null
ÛÛh l
)
ÛÛl m
{
ÜÜ, -
chapter
ÝÝ0 7
=
ÝÝ8 9
bcscMapperContent
ÝÝ: K
[
ÝÝK L
$num
ÝÝL M
]
ÝÝM N
;
ÝÝN O
}
ÞÞ, -
if
เเ, .
(
เเ/ 0
bcscMapperContent
เเ0 A
.
เเA B
Length
เเB H
>
เเI J
$num
เเK L
&&
เเM O
bcscMapperContent
เเP a
[
เเa b
$num
เเb c
]
เเc d
!=
เเe g
null
เเh l
)
เเl m
{
แแ, -
chapterName
โโ0 ;
=
โโ< =
bcscMapperContent
โโ> O
[
โโO P
$num
โโP Q
]
โโQ R
;
โโR S
}
ใใ, -
if
ๅๅ, .
(
ๅๅ/ 0
bcscMapperContent
ๅๅ0 A
.
ๅๅA B
Length
ๅๅB H
>
ๅๅI J
$num
ๅๅK L
&&
ๅๅM O
bcscMapperContent
ๅๅP a
[
ๅๅa b
$num
ๅๅb c
]
ๅๅc d
!=
ๅๅe g
null
ๅๅh l
)
ๅๅl m
{
ๆๆ, -
topic
็็0 5
=
็็6 7
bcscMapperContent
็็8 I
[
็็I J
$num
็็J K
]
็็K L
;
็็L M
}
่่, -
if
๊๊, .
(
๊๊/ 0
bcscMapperContent
๊๊0 A
.
๊๊A B
Length
๊๊B H
>
๊๊I J
$num
๊๊K L
&&
๊๊M O
bcscMapperContent
๊๊P a
[
๊๊a b
$num
๊๊b c
]
๊๊c d
!=
๊๊e g
null
๊๊h l
)
๊๊l m
{
๋๋, -
	topicName
์์0 9
=
์์: ;
bcscMapperContent
์์< M
[
์์M N
$num
์์N O
]
์์O P
;
์์P Q
}
ํํ, -
topicContent
๏๏, 8
.
๏๏8 9
Title
๏๏9 >
=
๏๏? @
d
๏๏A B
.
๏๏B C
TopicContent
๏๏C O
.
๏๏O P
Title
๏๏P U
;
๏๏U V
topicContent
๐๐, 8
.
๐๐8 9
TopicId
๐๐9 @
=
๐๐A B)
questionDetailsTopicMapping
๐๐C ^
;
๐๐^ _
topicContent
๑๑, 8
.
๑๑8 9
Chapter
๑๑9 @
=
๑๑A B
chapter
๑๑C J
;
๑๑J K
topicContent
๒๒, 8
.
๒๒8 9
ChapterName
๒๒9 D
=
๒๒E F
chapterName
๒๒G R
;
๒๒R S
topicContent
๓๓, 8
.
๓๓8 9
Topic
๓๓9 >
=
๓๓? @
topic
๓๓A F
;
๓๓F G
topicContent
๔๔, 8
.
๔๔8 9
	TopicName
๔๔9 B
=
๔๔C D
	topicName
๔๔E N
;
๔๔N O
topicVMList
๕๕, 7
.
๕๕7 8
Add
๕๕8 ;
(
๕๕; <
topicContent
๕๕< H
)
๕๕H I
;
๕๕I J
int
๘๘, /
topicId
๘๘0 7
=
๘๘8 9
	ImportDAL
๘๘: C
.
๘๘C D
UpdateTopicData
๘๘D S
(
๘๘S T
topicContent
๘๘T `
)
๘๘` a
;
๘๘a b"
QuestionTopicXWalkVM
üü, @ 
questionTopicXWalk
üüA S
=
üüT U
new
üüV Y"
QuestionTopicXWalkVM
üüZ n
(
üün o
)
üüo p
;
üüp q 
questionTopicXWalk
ýý, >
.
ýý> ?

QuestionId
ýý? I
=
ýýJ K

questionId
ýýL V
;
ýýV W 
questionTopicXWalk
þþ, >
.
þþ> ?
QASQuestionId
þþ? L
=
þþM N
questionDetails
þþO ^
.
þþ^ _
Id
þþ_ a
;
þþa b 
questionTopicXWalk
ÿÿ, >
.
ÿÿ> ?

QASTopicId
ÿÿ? I
=
ÿÿJ K)
questionDetailsTopicMapping
ÿÿL g
;
ÿÿg h 
questionTopicXWalk
€€, >
.
€€> ?
TopicId
€€? F
=
€€G H
topicId
€€I P
;
€€P Q
int
, /"
questionTopicXwalkId
0 D
=
E F
	ImportDAL
G P
.
P Q*
UpdateQuestionTopicXWalkData
Q m
(
m n!
questionTopicXWalkn €
)€ 
; 
foreach
, 3
(
4 5
Mapping
5 <
topicmapping
= I
in
J L
d
M N
.
N O
TopicContent
O [
.
[ \
Mappings
\ d
)
d e
{
, -
	ProgramVM
0 9
program
: A
=
B C
new
D G
	ProgramVM
H Q
(
Q R
)
R S
;
S T
program
0 7
.
7 8
Program
8 ?
=
@ A
topicmapping
B N
.
N O
Program
O V
;
V W
program
0 7
.
7 8
QASProgramid
8 D
=
E F
topicmapping
G S
.
S T
	ProgramId
T ]
;
] ^
int
0 3
	programId
4 =
=
> ?
	ImportDAL
@ I
.
I J
UpdateProgramData
J [
(
[ \
program
\ c
)
c d
;
d e
SubProgramVM
‘‘0 <

subProgram
‘‘= G
=
‘‘H I
new
‘‘J M
SubProgramVM
‘‘N Z
(
‘‘Z [
)
‘‘[ \
;
‘‘\ ]

subProgram
’’0 :
.
’’: ;

Subprogram
’’; E
=
’’F G
topicmapping
’’H T
.
’’T U

SubProgram
’’U _
;
’’_ `

subProgram
““0 :
.
““: ;
QASSubprogramid
““; J
=
““K L
topicmapping
““M Y
.
““Y Z
SubProgramId
““Z f
;
““f g

subProgram
””0 :
.
””: ;
	ProgramId
””; D
=
””E F
	programId
””G P
;
””P Q
int
••0 3
subProgramId
••4 @
=
••A B
	ImportDAL
••C L
.
••L M"
UpdateSubProgramData
••M a
(
••a b

subProgram
••b l
)
••l m
;
••m n
SubSpecialityVM
0 ?
subSpeciality
@ M
=
N O
new
P S
SubSpecialityVM
T c
(
c d
)
d e
;
e f
subSpeciality
0 =
.
= >
Subspecialty
> J
=
K L
topicmapping
M Y
.
Y Z
SubSpecialty
Z f
;
f g
subSpeciality
0 =
.
= >
QASSubspecialtyid
> O
=
P Q
topicmapping
R ^
.
^ _
SubSpecialtyId
_ m
;
m n
subSpeciality
0 =
.
= >
SubprogramId
> J
=
K L
subProgramId
M Y
;
Y Z
int
0 3
subSpecialityId
4 C
=
D E
	ImportDAL
F O
.
O P%
UpdateSubSpecialityData
P g
(
g h
subSpeciality
h u
)
u v
;
v w&
SubspecialtyTopicXWalkVM
กก0 H$
subspecialtyTopicXWalk
กกI _
=
กก` a
new
กกb e&
SubspecialtyTopicXWalkVM
กกf ~
(
กก~ 
)กก €
;กก€ $
subspecialtyTopicXWalk
ขข0 F
.
ขขF G
SubSpecialityId
ขขG V
=
ขขW X
subSpecialityId
ขขY h
;
ขขh i$
subspecialtyTopicXWalk
ฃฃ0 F
.
ฃฃF G
TopicId
ฃฃG N
=
ฃฃO P
topicId
ฃฃQ X
;
ฃฃX Y
int
คค0 3&
subspecialtyTopicXWalkId
คค4 L
=
คคM N
	ImportDAL
คคO X
.
คคX Y.
 UpdateSubspecialtyTopicXWalkData
คคY y
(
คคy z%
subspecialtyTopicXWalkคคz 
)คค ‘
;คค‘ ’
}
จจ, -
}
ฉฉ( )
List
ซซ( ,
<
ซซ, -
int
ซซ- 0
>
ซซ0 1%
afterUpdateDb_TopicList
ซซ2 I
=
ซซJ K
	ImportDAL
ซซL U
.
ซซU V'
GetQASTopicIdByQuestionId
ซซV o
(
ซซo p

questionId
ซซp z
)
ซซz {
;
ซซ{ |
if
ฌฌ( *
(
ฌฌ+ ,
defaultexcerpt
ฌฌ, :
)
ฌฌ: ;
{
ญญ( )
log
ฎฎ, /
.
ฎฎ/ 0
Information
ฎฎ0 ;
(
ฎฎ; <
$str
ฎฎ< i
+
ฎฎj k

questionId
ฎฎl v
)
ฎฎv w
;
ฎฎw x,
UpdateBCSCMapperContentForOnce
ฏฏ, J
(
ฏฏJ K

questionId
ฏฏK U
)
ฏฏU V
;
ฏฏV W
}
ฐฐ( )
else
ฑฑ( ,
{
ฒฒ( )
log
ณณ, /
.
ณณ/ 0
Information
ณณ0 ;
(
ณณ; <
$str
ณณ< e
+
ณณf g

questionId
ณณh r
)
ณณr s
;
ณณs t-
UpdateBCSCMapperContentOnUpdate
ดด, K
(
ดดK L

questionId
ดดL V
,
ดดV W&
beforeUpdateDb_TopicList
ดดX p
,
ดดp q&
afterUpdateDb_TopicListดดr 
)ดด 
;ดด 
}
ตต( )
	ImportDAL
ธธ( 1
.
ธธ1 2!
DeleteReferenceData
ธธ2 E
(
ธธE F

questionId
ธธF P
,
ธธP Q
	tableName
ธธR [
=
ธธ\ ]
$str
ธธ^ n
)
ธธn o
;
ธธo p
if
นน( *
(
นน+ ,
questionDetails
นน, ;
.
นน; <
Image
นน< A
.
นนA B
Count
นนB G
>
นนH I
$num
นนJ K
)
นนK L
{
บบ( )
List
ปป, 0
<
ปป0 1
ImageVM
ปป1 8
>
ปป8 9
imageVMList
ปป: E
=
ปปF G
new
ปปH K
List
ปปL P
<
ปปP Q
ImageVM
ปปQ X
>
ปปX Y
(
ปปY Z
)
ปปZ [
;
ปป[ \
foreach
พพ, 3
(
พพ4 5
Image
พพ5 :
questionImage
พพ; H
in
พพI K
questionDetails
พพL [
.
พพ[ \
Image
พพ\ a
)
พพa b
{
ฟฟ, -
ImageVM
ภภ0 7
imageVM
ภภ8 ?
=
ภภ@ A
new
ภภB E
ImageVM
ภภF M
(
ภภM N
)
ภภN O
;
ภภO P
imageVM
มม0 7
.
มม7 8
Caption
มม8 ?
=
มม@ A
questionImage
มมB O
.
มมO P
Caption
มมP W
;
มมW X
imageVM
ยย0 7
.
ยย7 8
Comments
ยย8 @
=
ยยA B
questionImage
ยยC P
.
ยยP Q
Comments
ยยQ Y
;
ยยY Z
imageVM
รร0 7
.
รร7 8
Credit
รร8 >
=
รร? @
questionImage
รรA N
.
รรN O
Credit
รรO U
;
รรU V
imageVM
ฤฤ0 7
.
ฤฤ7 8
Figure
ฤฤ8 >
=
ฤฤ? @
questionImage
ฤฤA N
.
ฤฤN O
Figure
ฤฤO U
;
ฤฤU V
imageVM
ลล0 7
.
ลล7 8
Path
ลล8 <
=
ลล= >
Convert
ลล? F
.
ลลF G
ToString
ลลG O
(
ลลO P
HttpUtility
ลลP [
.
ลล[ \

HtmlDecode
ลล\ f
(
ลลf g
Convert
ลลg n
.
ลลn o
ToString
ลลo w
(
ลลw x
questionImageลลx …
.ลล… 
Pathลล 
)ลล 
)ลล 
)ลล 
;ลล 
imageVM
ฦฦ0 7
.
ฦฦ7 8
Source
ฦฦ8 >
=
ฦฦ? @
questionImage
ฦฦA N
.
ฦฦN O
Source
ฦฦO U
;
ฦฦU V
imageVM
วว0 7
.
วว7 8
Title
วว8 =
=
วว> ?
questionImage
วว@ M
.
ววM N
Title
ววN S
;
ววS T
imageVMList
ศศ0 ;
.
ศศ; <
Add
ศศ< ?
(
ศศ? @
imageVM
ศศ@ G
)
ศศG H
;
ศศH I
int
หห0 3
questionImageId
หห4 C
=
หหD E
	ImportDAL
หหF O
.
หหO P
InsertImageData
หหP _
(
หห_ `
imageVM
หห` g
,
หหg h

questionId
หหi s
,
หหs t
	tableName
หหu ~
=หห €
$strหห ‘
)หห‘ ’
;หห’ “
}
ฮฮ, -
log
ฯฯ, /
.
ฯฯ/ 0
Information
ฯฯ0 ;
(
ฯฯ; <
$str
ฯฯ< Y
+
ฯฯZ [
imageVMList
ฯฯ\ g
.
ฯฯg h
Count
ฯฯh m
)
ฯฯm n
;
ฯฯn o
}
ะะ( )
DiscussionVM
าา( 4
discussionVm
าา5 A
=
าาB C
new
าาD G
DiscussionVM
าาH T
(
าาT U
)
าาU V
;
าาV W
discussionVm
ีี( 4
.
ีี4 5
DiscussionText
ีี5 C
=
ีีD E
questionDetails
ีีF U
.
ีีU V

Discussion
ีีV `
.
ีี` a
Text
ีีa e
;
ีีe f
discussionVm
ึึ( 4
.
ึึ4 5
DiscussionType
ึึ5 C
=
ึึD E
false
ึึF K
;
ึึK L
discussionVm
ืื( 4
.
ืื4 5

QuestionId
ืื5 ?
=
ืื@ A

questionId
ืืB L
;
ืืL M
int
ฺฺ( +
discussionId
ฺฺ, 8
=
ฺฺ9 :
	ImportDAL
ฺฺ; D
.
ฺฺD E"
UpdateDiscussionData
ฺฺE Y
(
ฺฺY Z
discussionVm
ฺฺZ f
)
ฺฺf g
;
ฺฺg h
if
ÝÝ( *
(
ÝÝ+ ,
discussionId
ÝÝ, 8
!=
ÝÝ9 ;
$num
ÝÝ< =
)
ÝÝ= >
{
ÞÞ( )
	ImportDAL
฿฿, 5
.
฿฿5 6!
DeleteReferenceData
฿฿6 I
(
฿฿I J
discussionId
฿฿J V
,
฿฿V W
	tableName
฿฿X a
=
฿฿b c
$str
฿฿d v
)
฿฿v w
;
฿฿w x
}
เเ( )
if
โโ( *
(
โโ+ ,
questionDetails
โโ, ;
.
โโ; <

Discussion
โโ< F
.
โโF G
Image
โโG L
.
โโL M
Count
โโM R
>
โโS T
$num
โโU V
)
โโV W
{
ใใ( )
List
ไไ, 0
<
ไไ0 1
ImageVM
ไไ1 8
>
ไไ8 9#
imageDiscussionVMList
ไไ: O
=
ไไP Q
new
ไไR U
List
ไไV Z
<
ไไZ [
ImageVM
ไไ[ b
>
ไไb c
(
ไไc d
)
ไไd e
;
ไไe f
foreach
็็, 3
(
็็4 5
Image
็็5 :&
imageDiscusstionListData
็็; S
in
็็T V
questionDetails
็็W f
.
็็f g

Discussion
็็g q
.
็็q r
Image
็็r w
)
็็w x
{
่่, -
ImageVM
้้0 7
imageVM
้้8 ?
=
้้@ A
new
้้B E
ImageVM
้้F M
(
้้M N
)
้้N O
;
้้O P
imageVM
๊๊0 7
.
๊๊7 8
Caption
๊๊8 ?
=
๊๊@ A&
imageDiscusstionListData
๊๊B Z
.
๊๊Z [
Caption
๊๊[ b
;
๊๊b c
imageVM
๋๋0 7
.
๋๋7 8
Comments
๋๋8 @
=
๋๋A B&
imageDiscusstionListData
๋๋C [
.
๋๋[ \
Comments
๋๋\ d
;
๋๋d e
imageVM
์์0 7
.
์์7 8
Credit
์์8 >
=
์์? @&
imageDiscusstionListData
์์A Y
.
์์Y Z
Credit
์์Z `
;
์์` a
imageVM
ํํ0 7
.
ํํ7 8
Figure
ํํ8 >
=
ํํ? @&
imageDiscusstionListData
ํํA Y
.
ํํY Z
Figure
ํํZ `
;
ํํ` a
imageVM
๎๎0 7
.
๎๎7 8
Path
๎๎8 <
=
๎๎= >&
imageDiscusstionListData
๎๎? W
.
๎๎W X
Path
๎๎X \
;
๎๎\ ]
imageVM
๏๏0 7
.
๏๏7 8
Source
๏๏8 >
=
๏๏? @&
imageDiscusstionListData
๏๏A Y
.
๏๏Y Z
Source
๏๏Z `
;
๏๏` a
imageVM
๐๐0 7
.
๐๐7 8
Title
๐๐8 =
=
๐๐> ?&
imageDiscusstionListData
๐๐@ X
.
๐๐X Y
Title
๐๐Y ^
;
๐๐^ _#
imageDiscussionVMList
๑๑0 E
.
๑๑E F
Add
๑๑F I
(
๑๑I J
imageVM
๑๑J Q
)
๑๑Q R
;
๑๑R S
int
๔๔0 3
discussionImageId
๔๔4 E
=
๔๔F G
	ImportDAL
๔๔H Q
.
๔๔Q R
InsertImageData
๔๔R a
(
๔๔a b
imageVM
๔๔b i
,
๔๔i j
discussionId
๔๔k w
,
๔๔w x
	tableName๔๔y 
=๔๔ 
$str๔๔… —
)๔๔— 
;๔๔ 
}
๗๗, -
}
๘๘( )
if
๛๛( *
(
๛๛+ ,
questionDetails
๛๛, ;
.
๛๛; <
Answer
๛๛< B
.
๛๛B C
Count
๛๛C H
>
๛๛I J
$num
๛๛K L
)
๛๛L M
{
üü( )
List
ýý, 0
<
ýý0 1
AnswerVM
ýý1 9
>
ýý9 :
answerVMList
ýý; G
=
ýýH I
new
ýýJ M
List
ýýN R
<
ýýR S
AnswerVM
ýýS [
>
ýý[ \
(
ýý\ ]
)
ýý] ^
;
ýý^ _
foreach
þþ, 3
(
þþ4 5
Answer
þþ5 ;
answerVMListData
þþ< L
in
þþM O
questionDetails
þþP _
.
þþ_ `
Answer
þþ` f
)
þþf g
{
ÿÿ, -
AnswerVM
€€0 8
answerVM
€€9 A
=
€€B C
new
€€D G
AnswerVM
€€H P
(
€€P Q
)
€€Q R
;
€€R S
answerVM
0 8
.
8 9
Text
9 =
=
> ?
answerVMListData
@ P
.
P Q
Text
Q U
;
U V
answerVM
0 8
.
8 9
Correct
9 @
=
A B
answerVMListData
C S
.
S T
Correct
T [
;
[ \
answerVM
0 8
.
8 9
Sequence
9 A
=
B C
answerVMListData
D T
.
T U
Sequence
U ]
;
] ^
answerVM
0 8
.
8 9
Id
9 ;
=
< =
answerVMListData
> N
.
N O
Id
O Q
;
Q R
answerVM
……0 8
.
……8 9

QuestionId
……9 C
=
……D E

questionId
……F P
;
……P Q
answerVM
0 8
.
8 9

AnswerType
9 C
=
D E
false
F K
;
K L
answerVMList
0 <
.
< =
Add
= @
(
@ A
answerVM
A I
)
I J
;
J K
int
0 3
answerId
4 <
=
= >
	ImportDAL
? H
.
H I
UpdateAnswerData
I Y
(
Y Z
answerVM
Z b
)
b c
;
c d
if
0 2
(
3 4
answerId
4 <
!=
= ?
$num
@ A
)
A B
{
0 1
	ImportDAL
4 =
.
= >!
DeleteReferenceData
> Q
(
Q R
answerId
R Z
,
Z [
	tableName
\ e
=
f g
$str
h }
)
} ~
;
~ 
}
0 1
if
’’0 2
(
’’3 4
answerVMListData
’’4 D
.
’’D E
Image
’’E J
.
’’J K
Count
’’K P
>
’’Q R
$num
’’S T
)
’’T U
{
““0 1
List
””4 8
<
””8 9
ImageVM
””9 @
>
””@ A
imageAnswerVMList
””B S
=
””T U
new
””V Y
List
””Z ^
<
””^ _
ImageVM
””_ f
>
””f g
(
””g h
)
””h i
;
””i j
foreach
——4 ;
(
——< =
Image
——= B!
answerImageListData
——C V
in
——W Y
answerVMListData
——Z j
.
——j k
Image
——k p
)
——p q
{
4 5
ImageVM
8 ?
imageVM
@ G
=
H I
new
J M
ImageVM
N U
(
U V
)
V W
;
W X
imageVM
8 ?
.
? @
Caption
@ G
=
H I!
answerImageListData
J ]
.
] ^
Caption
^ e
;
e f
imageVM
8 ?
.
? @
Comments
@ H
=
I J!
answerImageListData
K ^
.
^ _
Comments
_ g
;
g h
imageVM
8 ?
.
? @
Credit
@ F
=
G H!
answerImageListData
I \
.
\ ]
Credit
] c
;
c d
imageVM
8 ?
.
? @
Figure
@ F
=
G H!
answerImageListData
I \
.
\ ]
Figure
] c
;
c d
imageVM
8 ?
.
? @
Path
@ D
=
E F!
answerImageListData
G Z
.
Z [
Path
[ _
;
_ `
imageVM
8 ?
.
? @
Source
@ F
=
G H!
answerImageListData
I \
.
\ ]
Source
] c
;
c d
imageVM
  8 ?
.
  ? @
Title
  @ E
=
  F G!
answerImageListData
  H [
.
  [ \
Title
  \ a
;
  a b
imageAnswerVMList
กก8 I
.
กกI J
Add
กกJ M
(
กกM N
imageVM
กกN U
)
กกU V
;
กกV W
int
คค8 ;
answerImageId
คค< I
=
คคJ K
	ImportDAL
คคL U
.
คคU V
InsertImageData
คคV e
(
คคe f
imageVM
คคf m
,
คคm n
answerId
คคo w
,
คคw x
	tableNameคคy 
=คค 
$strคค… 
)คค 
;คค 
}
งง4 5
}
จจ0 1
}
ฉฉ, -
}
ชช( )
}
ซซ$ %
}
ฌฌ  !
}
ญญ 
}
ฎฎ 
}
ฏฏ 
}
ฐฐ 
	ImportDAL
ฑฑ 
.
ฑฑ  
DeleteOldTopicData
ฑฑ ,
(
ฑฑ, -
)
ฑฑ- .
;
ฑฑ. /
}
ฒฒ 
catch
ณณ 
(
ณณ 
	Exception
ณณ 
e
ณณ 
)
ณณ 
{
ดด 
Console
ตต 
.
ตต 
Write
ตต 
(
ตต 
e
ตต 
.
ตต  
Message
ตต  '
)
ตต' (
;
ตต( )
Console
ถถ 
.
ถถ 
Write
ถถ 
(
ถถ 
e
ถถ 
.
ถถ  
InnerException
ถถ  .
)
ถถ. /
;
ถถ/ 0
log
ทท 
.
ทท 
Information
ทท 
(
ทท  
$str
ทท  2
+
ทท3 4
e
ทท5 6
.
ทท6 7
Message
ทท7 >
)
ทท> ?
;
ทท? @
log
ธธ 
.
ธธ 
Information
ธธ 
(
ธธ  
$str
ธธ  )
+
ธธ* +
e
ธธ, -
.
ธธ- .
InnerException
ธธ. <
)
ธธ< =
;
ธธ= >
}
นน 
return
ปป 
null
ปป 
;
ปป 
}
ผผ 	
private
พพ 
static
พพ 
async
พพ 
Task
พพ !
<
พพ! "
Topic
พพ" '
>
พพ' (
GetTopic
พพ) 1
(
พพ1 2
string
พพ2 8
topicId
พพ9 @
)
พพ@ A
{
ฟฟ 	
try
ภภ 
{
มม 
using
ยย 
(
ยย 
var
ยย 
client
ยย !
=
ยย" #
new
ยย$ '

HttpClient
ยย( 2
(
ยย2 3
)
ยย3 4
)
ยย4 5
{
รร 
client
ฤฤ 
.
ฤฤ 
Timeout
ฤฤ "
=
ฤฤ# $
TimeSpan
ฤฤ% -
.
ฤฤ- .
FromMinutes
ฤฤ. 9
(
ฤฤ9 :
$num
ฤฤ: <
)
ฤฤ< =
;
ฤฤ= >
string
ลล 
topicUrl
ลล #
=
ลล$ %
apiUrl
ลล& ,
+
ลล- .
$str
ลล/ C
+
ลลD E
topicId
ลลF M
;
ลลM N!
HttpResponseMessage
ฦฦ '
response
ฦฦ( 0
=
ฦฦ1 2
await
ฦฦ3 8
client
ฦฦ9 ?
.
ฦฦ? @
GetAsync
ฦฦ@ H
(
ฦฦH I
topicUrl
ฦฦI Q
)
ฦฦQ R
;
ฦฦR S
response
วว 
.
วว %
EnsureSuccessStatusCode
วว 4
(
วว4 5
)
วว5 6
;
วว6 7
if
ศศ 
(
ศศ 
response
ศศ  
.
ศศ  !!
IsSuccessStatusCode
ศศ! 4
)
ศศ4 5
{
ษษ 
using
สส 
(
สส 
HttpContent
สส *
content
สส+ 2
=
สส3 4
response
สส5 =
.
สส= >
Content
สส> E
)
สสE F
{
หห 
string
ฬฬ "

jsonString
ฬฬ# -
=
ฬฬ. /
await
ฬฬ0 5
response
ฬฬ6 >
.
ฬฬ> ?
Content
ฬฬ? F
.
ฬฬF G
ReadAsStringAsync
ฬฬG X
(
ฬฬX Y
)
ฬฬY Z
;
ฬฬZ [
var
ออ 
topic
ออ  %
=
ออ& '
Topic
ออ( -
.
ออ- .
FromJson
ออ. 6
(
ออ6 7

jsonString
ออ7 A
)
ออA B
;
ออB C
return
ฮฮ "
topic
ฮฮ# (
;
ฮฮ( )
}
ฯฯ 
}
ะะ 
else
ัั 
{
าา 
return
ำำ 
null
ำำ #
;
ำำ# $
}
ิิ 
}
ีี 
}
ึึ 
catch
ืื 
(
ืื 
	Exception
ืื 
e
ืื 
)
ืื 
{
ุุ 
Console
ูู 
.
ูู 
Write
ูู 
(
ูู 
e
ูู 
.
ูู  
Message
ูู  '
)
ูู' (
;
ูู( )
Console
ฺฺ 
.
ฺฺ 
Write
ฺฺ 
(
ฺฺ 
e
ฺฺ 
.
ฺฺ  
InnerException
ฺฺ  .
.
ฺฺ. /
ToString
ฺฺ/ 7
(
ฺฺ7 8
)
ฺฺ8 9
)
ฺฺ9 :
;
ฺฺ: ;
return
ÛÛ 
null
ÛÛ 
;
ÛÛ 
}
ÜÜ 
}
ÝÝ 	
public
ชช 
static
ชช 
int
ชช %
UpdateBCSCMapperContent
ชช 1
(
ชช1 2
)
ชช2 3
{
ซซ 	
List
ฌฌ 
<
ฌฌ 
int
ฌฌ 
>
ฌฌ 
questionList
ฌฌ "
=
ฌฌ# $
new
ฌฌ% (
List
ฌฌ) -
<
ฌฌ- .
int
ฌฌ. 1
>
ฌฌ1 2
(
ฌฌ2 3
)
ฌฌ3 4
;
ฌฌ4 5
questionList
ญญ 
=
ญญ 
	ImportDAL
ญญ $
.
ญญ$ %
GetQuestionList
ญญ% 4
(
ญญ4 5
)
ญญ5 6
;
ญญ6 7
foreach
ฎฎ 
(
ฎฎ 
int
ฎฎ 
item
ฎฎ 
in
ฎฎ  
questionList
ฎฎ! -
)
ฎฎ- .
{
ฏฏ 
List
ฐฐ 
<
ฐฐ 
BCSCContentVM
ฐฐ "
>
ฐฐ" #
bCSCContentData
ฐฐ$ 3
=
ฐฐ4 5
new
ฐฐ6 9
List
ฐฐ: >
<
ฐฐ> ?
BCSCContentVM
ฐฐ? L
>
ฐฐL M
(
ฐฐM N
)
ฐฐN O
;
ฐฐO P
bCSCContentData
ฑฑ 
=
ฑฑ  !/
!GetBCSCSectionChapterTopicDetails
ฑฑ" C
(
ฑฑC D
item
ฑฑD H
)
ฑฑH I
;
ฑฑI J
foreach
ณณ 
(
ณณ 
BCSCContentVM
ณณ &
bCSCContent
ณณ' 2
in
ณณ3 5
bCSCContentData
ณณ6 E
)
ณณE F
{
ดด 
var
ตต 
bcscBookdata
ตต $
=
ตต% &$
GetBCSCContentFromBook
ตต' =
(
ตต= >
bCSCContent
ตต> I
)
ตตI J
;
ตตJ K
bCSCContent
ถถ 
.
ถถ  
Content
ถถ  '
=
ถถ( )
bcscBookdata
ถถ* 6
.
ถถ6 7
BCSCContent
ถถ7 B
;
ถถB C
bCSCContent
ทท 
.
ทท  
BCSCbookWordCount
ทท  1
=
ทท2 3
bcscBookdata
ทท4 @
.
ทท@ A
TotalBcscWord
ททA N
;
ททN O
	ImportDAL
ธธ 
.
ธธ 0
"InsertContentInBCSCMapperIfNotInDb
ธธ @
(
ธธ@ A
bCSCContent
ธธA L
)
ธธL M
;
ธธM N
}
นน 
}
บบ 
return
ผผ 
$num
ผผ 
;
ผผ 
}
ฝฝ 	
public
ฟฟ 
static
ฟฟ 
int
ฟฟ -
UpdateBCSCMapperContentOnUpdate
ฟฟ 9
(
ฟฟ9 :
int
ฟฟ: =
question
ฟฟ> F
,
ฟฟF G
List
ฟฟH L
<
ฟฟL M
int
ฟฟM P
>
ฟฟP Q&
beforeUpdateDb_TopicList
ฟฟR j
,
ฟฟj k
List
ฟฟl p
<
ฟฟp q
int
ฟฟq t
>
ฟฟt u&
afterUpdateDb_TopicListฟฟv 
)ฟฟ 
{
ภภ 	
var
มม 
log
มม 
=
มม 
new
มม 
Serilog
มม !
.
มม! "!
LoggerConfiguration
มม" 5
(
มม5 6
)
มม6 7
.
มม7 8
WriteTo
มม8 ?
.
มม? @
RollingFile
มม@ K
(
มมK L
sAttrLogPath
มมL X
,
มมX Y
shared
มมZ `
:
มม` a
true
มมb f
,
มมf g$
retainedFileCountLimit
มมh ~
:
มม~ 
$numมม€ 
)มม 
.มม 
CreateLoggerมม 
(มม 
)มม ‘
;มม‘ ’
List
รร 
<
รร 
int
รร 
>
รร 
topicNotInDb
รร "
=
รร# $%
afterUpdateDb_TopicList
รร% <
.
รร< =
Except
รร= C
(
รรC D&
beforeUpdateDb_TopicList
รรD \
)
รร\ ]
.
รร] ^
ToList
รร^ d
(
รรd e
)
รรe f
;
รรf g
List
ฤฤ 
<
ฤฤ 
int
ฤฤ 
>
ฤฤ 
topicNotInQAS
ฤฤ #
=
ฤฤ$ %&
beforeUpdateDb_TopicList
ฤฤ& >
.
ฤฤ> ?
Except
ฤฤ? E
(
ฤฤE F%
afterUpdateDb_TopicList
ฤฤF ]
)
ฤฤ] ^
.
ฤฤ^ _
ToList
ฤฤ_ e
(
ฤฤe f
)
ฤฤf g
;
ฤฤg h
log
ลล 
.
ลล 
Information
ลล 
(
ลล 
$str
ลล 2
+
ลล3 4&
beforeUpdateDb_TopicList
ลล5 M
.
ลลM N
Count
ลลN S
)
ลลS T
;
ลลT U
log
ฦฦ 
.
ฦฦ 
Information
ฦฦ 
(
ฦฦ 
$str
ฦฦ 3
+
ฦฦ4 5&
beforeUpdateDb_TopicList
ฦฦ6 N
.
ฦฦN O
Count
ฦฦO T
)
ฦฦT U
;
ฦฦU V
try
วว 
{
ศศ 
if
ษษ 
(
ษษ 
topicNotInDb
ษษ  
.
ษษ  !
Count
ษษ! &
>
ษษ' (
$num
ษษ) *
)
ษษ* +
{
สส 
foreach
หห 
(
หห 
int
หห  
topicId
หห! (
in
หห) +
topicNotInDb
หห, 8
)
หห8 9
{
ฬฬ 
	ImportDAL
ออ !
.
ออ! ")
DeleteContentFromBCSCMapper
ออ" =
(
ออ= >
question
ออ> F
,
ออF G
topicId
ออH O
)
ออO P
;
ออP Q
List
ฮฮ 
<
ฮฮ 
BCSCContentVM
ฮฮ *
>
ฮฮ* +
bCSCContentData
ฮฮ, ;
=
ฮฮ< =
new
ฮฮ> A
List
ฮฮB F
<
ฮฮF G
BCSCContentVM
ฮฮG T
>
ฮฮT U
(
ฮฮU V
)
ฮฮV W
;
ฮฮW X
bCSCContentData
ฯฯ '
=
ฯฯ( )/
!GetBCSCSectionChapterTopicDetails
ฯฯ* K
(
ฯฯK L
question
ฯฯL T
)
ฯฯT U
;
ฯฯU V
foreach
ัั 
(
ัั  !
BCSCContentVM
ัั! .
bCSCContent
ัั/ :
in
ัั; =
bCSCContentData
ัั> M
)
ััM N
{
าา 
if
ำำ 
(
ำำ  
bCSCContent
ำำ  +
.
ำำ+ ,
TopicId
ำำ, 3
==
ำำ4 6
topicId
ำำ7 >
)
ำำ> ?
{
ิิ 
var
ืื  #
bcscBookdata
ืื$ 0
=
ืื1 2$
GetBCSCContentFromBook
ืื3 I
(
ืืI J
bCSCContent
ืืJ U
)
ืืU V
;
ืืV W
log
ุุ  #
.
ุุ# $
Information
ุุ$ /
(
ุุ/ 0
$str
ุุ0 R
+
ุุS T
topicId
ุุU \
)
ุุ\ ]
;
ุุ] ^
bCSCContent
ูู  +
.
ูู+ ,
Content
ูู, 3
=
ูู4 5
bcscBookdata
ูู6 B
.
ููB C
BCSCContent
ููC N
;
ููN O
bCSCContent
ฺฺ  +
.
ฺฺ+ ,
BCSCbookWordCount
ฺฺ, =
=
ฺฺ> ?
bcscBookdata
ฺฺ@ L
.
ฺฺL M
TotalBcscWord
ฺฺM Z
;
ฺฺZ [
log
ÛÛ  #
.
ÛÛ# $
Information
ÛÛ$ /
(
ÛÛ/ 0
$str
ÛÛ0 U
+
ÛÛV W
bcscBookdata
ÛÛX d
.
ÛÛd e
TotalBcscWord
ÛÛe r
)
ÛÛr s
;
ÛÛs t
	ImportDAL
ÝÝ  )
.
ÝÝ) *'
InsertContentInBCSCMapper
ÝÝ* C
(
ÝÝC D
bCSCContent
ÝÝD O
)
ÝÝO P
;
ÝÝP Q
}
ÞÞ 
}
฿฿ 
}
เเ 
}
แแ 
if
ใใ 
(
ใใ 
topicNotInQAS
ใใ !
.
ใใ! "
Count
ใใ" '
>
ใใ( )
$num
ใใ* +
)
ใใ+ ,
{
ไไ 
foreach
ๅๅ 
(
ๅๅ 
int
ๅๅ  
topicId
ๅๅ! (
in
ๅๅ) +
topicNotInQAS
ๅๅ, 9
)
ๅๅ9 :
{
ๆๆ 
	ImportDAL
็็ !
.
็็! ")
DeleteContentFromBCSCMapper
็็" =
(
็็= >
question
็็> F
,
็็F G
topicId
็็H O
)
็็O P
;
็็P Q
}
่่ 
}
้้ 
}
๊๊ 
catch
๋๋ 
(
๋๋ 
	Exception
๋๋ 
ex
๋๋ 
)
๋๋  
{
์์ 
log
ํํ 
.
ํํ 
Information
ํํ 
(
ํํ  
$str
ํํ  G
+
ํํH I
ex
ํํJ L
.
ํํL M
Message
ํํM T
)
ํํT U
;
ํํU V
}
๎๎ 
return
๐๐ 
$num
๐๐ 
;
๐๐ 
}
๑๑ 	
public
๓๓ 
static
๓๓ 
List
๓๓ 
<
๓๓ 
BCSCContentVM
๓๓ (
>
๓๓( )/
!GetBCSCSectionChapterTopicDetails
๓๓* K
(
๓๓K L
int
๓๓L O

questionId
๓๓P Z
)
๓๓Z [
{
๔๔ 	
return
๕๕ 
	ImportDAL
๕๕ 
.
๕๕ /
!GetBCSCSectionChapterTopicDetails
๕๕ >
(
๕๕> ?

questionId
๕๕? I
)
๕๕I J
;
๕๕J K
}
๖๖ 	
public
๘๘ 
static
๘๘ 
string
๘๘ 
GetFileText
๘๘ (
(
๘๘( )
string
๘๘) /
name
๘๘0 4
)
๘๘4 5
{
๙๙ 	
string
๚๚ 
fileContents
๚๚ 
=
๚๚  !
string
๚๚" (
.
๚๚( )
Empty
๚๚) .
;
๚๚. /
if
þþ 
(
þþ 
System
þþ 
.
þþ 
IO
þþ 
.
þþ 
File
þþ 
.
þþ 
Exists
þþ %
(
þþ% &
name
þþ& *
)
þþ* +
)
þþ+ ,
{
ÿÿ 
fileContents
€€ 
=
€€ 
System
€€ %
.
€€% &
IO
€€& (
.
€€( )
File
€€) -
.
€€- .
ReadAllText
€€. 9
(
€€9 :
name
€€: >
)
€€> ?
;
€€? @
fileContents
 
=
 
HtmlRemoval
 *
.
* +
StripTagsRegex
+ 9
(
9 :
fileContents
: F
)
F G
;
G H
}
 
return
 
fileContents
 
;
  
}
…… 	
public
 
static
 "
BCSCContentWordCount
 *$
GetBCSCContentFromBook
+ A
(
A B
BCSCContentVM
B O
bCSCContent
P [
)
[ \
{
 	
var
 
fileName
 
=
 
string
 !
.
! "
Empty
" '
;
' (
var
 
rData
 
=
 
string
 
.
 
Empty
 $
;
$ %
var
 
log
 
=
 
new
 
Serilog
 !
.
! "!
LoggerConfiguration
" 5
(
5 6
)
6 7
.
7 8
WriteTo
8 ?
.
? @
RollingFile
@ K
(
K L
sAttrLogPath
L X
,
X Y
shared
Z `
:
` a
true
b f
,
f g$
retainedFileCountLimit
h ~
:
~ 
$num€ 
) 
. 
CreateLogger 
( 
) ‘
;‘ ’
DirectoryInfo
 
	directory
 #
=
$ %
new
& )
DirectoryInfo
* 7
(
7 8%
WebConfigurationManager
8 O
.
O P
AppSettings
P [
[
[ \
$str
\ p
]
p q
+
r s
bCSCContent
t 
. €!
BCSCSectionNumber€ ‘
+’ “
string” 
. 
Empty  
)  ก
;ก ข
log
 
.
 
Information
 
(
 
$str
 0
+
1 2
	directory
3 <
)
< =
;
= >
IEnumerable
‘‘ 
<
‘‘ 
System
‘‘ 
.
‘‘ 
IO
‘‘ !
.
‘‘! "
FileInfo
‘‘" *
>
‘‘* +
fileList
‘‘, 4
=
‘‘5 6
	directory
‘‘7 @
.
‘‘@ A
GetFiles
‘‘A I
(
‘‘I J
$str
‘‘J O
,
‘‘O P
System
‘‘Q W
.
‘‘W X
IO
‘‘X Z
.
‘‘Z [
SearchOption
‘‘[ g
.
‘‘g h
AllDirectories
‘‘h v
)
‘‘v w
;
‘‘w x
string
’’ 
chapterTerm
’’ 
=
’’  
bCSCContent
’’! ,
.
’’, -
Chapter
’’- 4
.
’’4 5
ToString
’’5 =
(
’’= >
)
’’> ?
;
’’? @
string
““ ,
chapterTerm_WithoutTralingZero
““ 1
=
““2 3
bCSCContent
““4 ?
.
““? @
Chapter
““@ G
;
““G H
string
”” 
[
”” 
]
”” 
chapterwords
”” !
=
””" #
chapterTerm
””$ /
.
””/ 0
Split
””0 5
(
””5 6
$char
””6 9
)
””9 :
;
””: ;
string
•• 
chapterName
•• 
=
••  
chapterwords
••! -
[
••- .
$num
••. /
]
••/ 0
;
••0 1
string
–– 
	chapterId
–– 
=
–– 
chapterwords
–– +
[
––+ ,
$num
––, -
]
––- .
;
––. /
log
—— 
.
—— 
Information
—— 
(
—— 
$str
—— -
+
——. /
chapterTerm
——0 ;
)
——; <
;
——< =
chapterTerm
 
=
 
	chapterId
 #
.
# $
	TrimStart
$ -
(
- .
$char
. 1
)
1 2
;
2 3
chapterTerm
 
=
 
chapterName
 %
+
& '
$char
( +
+
, -
chapterTerm
. 9
;
9 :
string
 
	topicname
 
=
 
(
  
bCSCContent
  +
.
+ ,
	TopicName
, 5
.
5 6
ToString
6 >
(
> ?
)
? @
)
@ A
.
A B
Trim
B F
(
F G
)
G H
;
H I
if
 
(
 
!
 
string
 
.
 
IsNullOrEmpty
 %
(
% &
	topicname
& /
)
/ 0
)
0 1
{
 
char
 

ctoreplace
 
=
  !
$char
" %
;
% &
int
   

indexBegin
   
=
    
	topicname
  ! *
[
  * +
$num
  + ,
]
  , -
==
  . 0

ctoreplace
  1 ;
?
  < =
$num
  > ?
:
  @ A
$num
  B C
;
  C D
int
กก 
indexEnd
กก 
=
กก 
	topicname
กก (
[
กก( )
	topicname
กก) 2
.
กก2 3
Length
กก3 9
-
กก: ;
$num
กก< =
]
กก= >
==
กก? A

ctoreplace
กกB L
?
กกM N
$num
กกO P
:
กกQ R
$num
กกS T
;
กกT U
	topicname
ขข 
=
ขข 
	topicname
ขข %
.
ขข% &
	Substring
ขข& /
(
ขข/ 0

indexBegin
ขข0 :
,
ขข: ;
	topicname
ขข< E
.
ขขE F
Length
ขขF L
-
ขขM N
(
ขขO P
indexEnd
ขขP X
+
ขขY Z

indexBegin
ขข[ e
)
ขขe f
)
ขขf g
;
ขขg h
}
ฃฃ 
var
ฅฅ  
queryMatchingFiles
ฅฅ "
=
ฅฅ# $
from
ฆฆ 
file
ฆฆ 
in
ฆฆ 
fileList
ฆฆ %
where
งง 
file
งง 
.
งง 
	Extension
งง $
==
งง% '
$str
งง( /
&&
งง0 2
!
งง3 4
file
งง4 8
.
งง8 9
Name
งง9 =
.
งง= >
Contains
งง> F
(
งงF G
$str
งงG N
)
งงN O
let
จจ 
fileText
จจ 
=
จจ 
GetFileText
จจ *
(
จจ* +
file
จจ+ /
.
จจ/ 0
FullName
จจ0 8
)
จจ8 9
where
ฉฉ 
fileText
ฉฉ 
.
ฉฉ 
Contains
ฉฉ '
(
ฉฉ' (
	StripHTML
ฉฉ( 1
(
ฉฉ1 2
bCSCContent
ฉฉ2 =
.
ฉฉ= >
ChapterName
ฉฉ> I
.
ฉฉI J
Replace
ฉฉJ Q
(
ฉฉQ R
(
ฉฉR S
char
ฉฉS W
)
ฉฉW X
$num
ฉฉX \
,
ฉฉ\ ]
$char
ฉฉ^ a
)
ฉฉa b
.
ฉฉb c
Trim
ฉฉc g
(
ฉฉg h
)
ฉฉh i
)
ฉฉi j
)
ฉฉj k
&&
ฉฉl n
fileText
ฉฉo w
.
ฉฉw x
Containsฉฉx €
(ฉฉ€ 
	StripHTMLฉฉ 
(ฉฉ 
	topicnameฉฉ ”
.ฉฉ” •
Trimฉฉ• 
(ฉฉ 
)ฉฉ 
.ฉฉ 
Replaceฉฉ ฃ
(ฉฉฃ ค
(ฉฉค ฅ
charฉฉฅ ฉ
)ฉฉฉ ช
$numฉฉช ฎ
,ฉฉฎ ฏ
$charฉฉฐ ณ
)ฉฉณ ด
)ฉฉด ต
)ฉฉต ถ
select
ชช 
file
ชช 
.
ชช 
Name
ชช  
;
ชช  !
List
ฌฌ 
<
ฌฌ 
string
ฌฌ 
>
ฌฌ 
found
ฌฌ 
=
ฌฌ  
new
ฌฌ! $
List
ฌฌ% )
<
ฌฌ) *
string
ฌฌ* 0
>
ฌฌ0 1
(
ฌฌ1 2
)
ฌฌ2 3
;
ฌฌ3 4
string
ฏฏ 
bcscText
ฏฏ 
=
ฏฏ 
string
ฏฏ $
.
ฏฏ$ %
Empty
ฏฏ% *
;
ฏฏ* +
string
ฐฐ 
bcscContent
ฐฐ 
=
ฐฐ  
string
ฐฐ! '
.
ฐฐ' (
Empty
ฐฐ( -
;
ฐฐ- .
string
ฑฑ %
bcscContentTopicoutline
ฑฑ *
=
ฑฑ+ ,
string
ฑฑ- 3
.
ฑฑ3 4
Empty
ฑฑ4 9
;
ฑฑ9 :
int
ฒฒ 
bcscWord
ฒฒ 
=
ฒฒ 
$num
ฒฒ 
;
ฒฒ "
BCSCContentWordCount
ณณ  
content
ณณ! (
=
ณณ) *
new
ณณ+ ."
BCSCContentWordCount
ณณ/ C
(
ณณC D
)
ณณD E
;
ณณE F
try
ดด 
{
ตต 
foreach
ถถ 
(
ถถ 
string
ถถ 
filename
ถถ  (
in
ถถ) + 
queryMatchingFiles
ถถ, >
)
ถถ> ?
{
ทท 
string
วว 
filedata
วว #
=
วว$ %
string
วว& ,
.
วว, -
Empty
วว- 2
;
วว2 3
using
ฬฬ 
(
ฬฬ 
StreamReader
ฬฬ '
	fileTopic
ฬฬ( 1
=
ฬฬ2 3
new
ฬฬ4 7
StreamReader
ฬฬ8 D
(
ฬฬD E
	directory
ฬฬE N
+
ฬฬO P
$str
ฬฬQ U
+
ฬฬV W
filename
ฬฬX `
)
ฬฬ` a
)
ฬฬa b
{
ออ 
filedata
ฮฮ  
=
ฮฮ! "
	fileTopic
ฮฮ# ,
.
ฮฮ, -
	ReadToEnd
ฮฮ- 6
(
ฮฮ6 7
)
ฮฮ7 8
;
ฮฮ8 9
	fileTopic
ฯฯ !
.
ฯฯ! "
Close
ฯฯ" '
(
ฯฯ' (
)
ฯฯ( )
;
ฯฯ) *
}
ะะ 
HtmlDocument
าา  
htmlDocument
าา! -
=
าา. /
new
าา0 3
HtmlDocument
าา4 @
(
าา@ A
)
าาA B
;
าาB C
htmlDocument
ำำ  
.
ำำ  !
LoadHtml
ำำ! )
(
ำำ) *
filedata
ำำ* 2
)
ำำ2 3
;
ำำ3 4
var
ีี 
images
ีี 
=
ีี  
htmlDocument
ีี! -
.
ีี- .
DocumentNode
ีี. :
.
ีี: ;
SelectNodes
ีี; F
(
ีีF G
$str
ีีG N
)
ีีN O
;
ีีO P
if
ึึ 
(
ึึ 
images
ึึ 
!=
ึึ !
null
ึึ" &
)
ึึ& '
{
ืื 
foreach
ุุ 
(
ุุ  !
var
ุุ! $
node
ุุ% )
in
ุุ* ,
images
ุุ- 3
)
ุุ3 4
{
ูู 
var
ฺฺ 
src
ฺฺ  #
=
ฺฺ$ %
node
ฺฺ& *
.
ฺฺ* +

Attributes
ฺฺ+ 5
[
ฺฺ5 6
$str
ฺฺ6 <
]
ฺฺ< =
.
ฺฺ= >
Value
ฺฺ> C
;
ฺฺC D
if
ÜÜ 
(
ÜÜ  
src
ÜÜ  #
.
ÜÜ# $

StartsWith
ÜÜ$ .
(
ÜÜ. /
$str
ÜÜ/ 5
)
ÜÜ5 6
)
ÜÜ6 7
{
ÝÝ 
if
ÞÞ  "
(
ÞÞ# $
src
ÞÞ$ '
.
ÞÞ' (
Contains
ÞÞ( 0
(
ÞÞ0 1
$str
ÞÞ1 9
)
ÞÞ9 :
)
ÞÞ: ;
{
฿฿  !
src
เเ$ '
=
เเ( )
src
เเ* -
.
เเ- .
Replace
เเ. 5
(
เเ5 6
$str
เเ6 9
,
เเ9 :
$str
เเ; ?
)
เเ? @
;
เเ@ A
var
แแ$ '
qrresult
แแ( 0
=
แแ1 2
QrReader
แแ3 ;
.
แแ; <

ReadQrCode
แแ< F
(
แแF G%
WebConfigurationManager
แแG ^
.
แแ^ _
AppSettings
แแ_ j
[
แแj k
$str
แแk 
]แแ €
+แแ 
bCSCContentแแ 
.แแ !
BCSCSectionNumberแแ  
+แแก ข
$strแแฃ ง
+แแจ ฉ
srcแแช ญ
)แแญ ฎ
;แแฎ ฏ
if
โโ$ &
(
โโ' (
qrresult
โโ( 0
!=
โโ1 3
string
โโ4 :
.
โโ: ;
Empty
โโ; @
&&
โโA C
qrresult
โโD L
!=
โโM O
null
โโP T
)
โโT U
{
ใใ$ %
HtmlNode
ไไ( 0
h2Node
ไไ1 7
=
ไไ8 9
HtmlNode
ไไ: B
.
ไไB C

CreateNode
ไไC M
(
ไไM N
$str
ไไN V
)
ไไV W
;
ไไW X
node
ๅๅ( ,
.
ๅๅ, -
AppendChild
ๅๅ- 8
(
ๅๅ8 9
h2Node
ๅๅ9 ?
)
ๅๅ? @
;
ๅๅ@ A
HtmlNode
ๆๆ( 0
link
ๆๆ1 5
=
ๆๆ6 7
HtmlNode
ๆๆ8 @
.
ๆๆ@ A

CreateNode
ๆๆA K
(
ๆๆK L
$str
ๆๆL V
+
ๆๆW X
qrresult
ๆๆY a
+
ๆๆb c
$strๆๆd …
)ๆๆ… 
;ๆๆ 
node
็็( ,
.
็็, -
AppendChild
็็- 8
(
็็8 9
link
็็9 =
)
็็= >
;
็็> ?
}
่่$ %
src
๊๊$ '
=
๊๊( )
src
๊๊* -
.
๊๊- .
Replace
๊๊. 5
(
๊๊5 6
$str
๊๊6 :
,
๊๊: ;
$str
๊๊< ?
)
๊๊? @
;
๊๊@ A
}
๋๋  !
node
ํํ  $
.
ํํ$ %
SetAttributeValue
ํํ% 6
(
ํํ6 7
$str
ํํ7 <
,
ํํ< =
$str
ํํ> K
+
ํํL M
bCSCContent
ํํN Y
.
ํํY Z
BCSCSectionNumber
ํํZ k
+
ํํl m
$str
ํํn q
+
ํํr s
src
ํํt w
)
ํํw x
;
ํํx y
}
๎๎ 
}
๏๏ 
}
๐๐ 
List
๓๓ 
<
๓๓ 
HtmlNode
๓๓ !
>
๓๓! "
chaptertitle
๓๓# /
=
๓๓0 1
htmlDocument
๓๓2 >
.
๓๓> ?
DocumentNode
๓๓? K
.
๓๓K L
Descendants
๓๓L W
(
๓๓W X
)
๓๓X Y
.
๓๓Y Z
Where
๓๓Z _
(
๓๓_ `
x
๓๓` a
=>
๓๓b d
(
๓๓e f
x
๓๓f g
.
๓๓g h
Name
๓๓h l
==
๓๓m o
$str
๓๓p s
&&
๓๓t v
x
๓๓w x
.
๓๓x y

Attributes๓๓y 
[๓๓ 
$str๓๓ 
]๓๓ 
!=๓๓ 
null๓๓ ”
&&๓๓• —
x๓๓ 
.๓๓ 

Attributes๓๓ ค
[๓๓ค ฅ
$str๓๓ฅ ฌ
]๓๓ฌ ญ
.๓๓ญ ฎ
Value๓๓ฎ ณ
.๓๓ณ ด
Contains๓๓ด ผ
(๓๓ผ ฝ
$str๓๓ฝ ฬ
)๓๓ฬ อ
)๓๓อ ฮ
)๓๓ฮ ฯ
.๓๓ฯ ะ
ToList๓๓ะ ึ
(๓๓ึ ื
)๓๓ื ุ
;๓๓ุ ู
foreach
๖๖ 
(
๖๖ 
var
๖๖  
chaptertermdata
๖๖! 0
in
๖๖1 3
chaptertitle
๖๖4 @
)
๖๖@ A
{
๗๗ 
List
๚๚ 
<
๚๚ 
HtmlNode
๚๚ %
>
๚๚% &
toftitle
๚๚' /
=
๚๚0 1
htmlDocument
๚๚2 >
.
๚๚> ?
DocumentNode
๚๚? K
.
๚๚K L
Descendants
๚๚L W
(
๚๚W X
)
๚๚X Y
.
๚๚Y Z
Where
๚๚Z _
(
๚๚_ `
x
๚๚` a
=>
๚๚b d
(
๚๚e f
x
๚๚f g
.
๚๚g h
Name
๚๚h l
==
๚๚m o
$str
๚๚p s
&&
๚๚t v
x
๚๚w x
.
๚๚x y

Attributes๚๚y 
[๚๚ 
$str๚๚ 
]๚๚ 
!=๚๚ 
null๚๚ ”
&&๚๚• —
x๚๚ 
.๚๚ 

Attributes๚๚ ค
[๚๚ค ฅ
$str๚๚ฅ ฌ
]๚๚ฌ ญ
.๚๚ญ ฎ
Value๚๚ฎ ณ
.๚๚ณ ด
Contains๚๚ด ผ
(๚๚ผ ฝ
$str๚๚ฝ ม
)๚๚ม ย
&&๚๚ร ล
!๚๚ฦ ว
x๚๚ว ศ
.๚๚ศ ษ

Attributes๚๚ษ ำ
[๚๚ำ ิ
$str๚๚ิ Û
]๚๚Û Ü
.๚๚Ü Ý
Value๚๚Ý โ
.๚๚โ ใ
Contains๚๚ใ ๋
(๚๚๋ ์
$str๚๚์ ๓
)๚๚๓ ๔
&&๚๚๕ ๗
!๚๚๘ ๙
x๚๚๙ ๚
.๚๚๚ ๛

Attributes๚๚๛ …
[๚๚… 
$str๚๚ 
]๚๚ 
.๚๚ 
Value๚๚ ”
.๚๚” •
Contains๚๚• 
(๚๚ 
$str๚๚ ช
)๚๚ช ซ
)๚๚ซ ฌ
)๚๚ฌ ญ
.๚๚ญ ฎ
ToList๚๚ฎ ด
(๚๚ด ต
)๚๚ต ถ
;๚๚ถ ท
var
๛๛ '
figureReferenceDivContent
๛๛ 5
=
๛๛6 7
string
๛๛8 >
.
๛๛> ?
Empty
๛๛? D
;
๛๛D E
var
üü &
tableReferenceDivContent
üü 4
=
üü5 6
string
üü7 =
.
üü= >
Empty
üü> C
;
üüC D
if
ýý 
(
ýý 
HtmlRemoval
ýý '
.
ýý' (
StripTagsRegex
ýý( 6
(
ýý6 7
chaptertermdata
ýý7 F
.
ýýF G
	InnerText
ýýG P
.
ýýP Q
Replace
ýýQ X
(
ýýX Y
(
ýýY Z
char
ýýZ ^
)
ýý^ _
$num
ýý_ c
,
ýýc d
$char
ýýe h
)
ýýh i
)
ýýi j
==
ýýk m
bCSCContent
ýýn y
.
ýýy z
ChapterNameýýz …
.ýý… 
Replaceýý 
(ýý 
(ýý 
charýý “
)ýý“ ”
$numýý” 
,ýý 
$charýý 
)ýý 
.ýý 
Trimýý ฃ
(ýýฃ ค
)ýýค ฅ
&&ýýฆ จ
toftitleýýฉ ฑ
.ýýฑ ฒ
Countýýฒ ท
>ýýธ น
$numýýบ ป
)ýýป ผ
{
þþ %
bcscContentTopicoutline
€€ 3
+=
€€4 6
$str
€€7 >
;
€€> ?%
bcscContentTopicoutline
 3
+=
4 6
$str
7 D
+
E F
bCSCContent
G R
.
R S
BCSCSectionNumber
S d
+
e f
$str
g k
+
l m
bCSCContent
n y
.
y z
BCSCSectionTitlez 
+ 
$str ”
;” •%
bcscContentTopicoutline
 3
+=
4 6
$str
7 >
;
> ?%
bcscContentTopicoutline
 3
+=
4 6
$str
7 <
+
= >
chapterTerm
? J
+
K L
$str
M Q
+
R S
bCSCContent
T _
.
_ `
ChapterName
` k
+
l m
$str
n u
;
u v%
bcscContentTopicoutline
 3
+=
4 6
$str
7 h
;
h i
List
  
<
  !
string
! '
>
' (
	topicList
) 2
=
3 4
new
5 8
List
9 =
<
= >
string
> D
>
D E
(
E F
)
F G
;
G H
List
  
<
  !
string
! '
>
' (
sortedTopicList
) 8
=
9 :
new
; >
List
? C
<
C D
string
D J
>
J K
(
K L
)
L M
;
M N
foreach
 #
(
$ %
var
% (
topicListInsert
) 8
in
9 ;
toftitle
< D
)
D E
{
 
	topicList
  )
.
) *
Add
* -
(
- .
HtmlRemoval
. 9
.
9 :
StripTagsRegex
: H
(
H I
topicListInsert
I X
.
X Y
	InnerHtml
Y b
.
b c
ToString
c k
(
k l
)
l m
.
m n
Trim
n r
(
r s
)
s t
)
t u
)
u v
;
v w
}
 
string
 "
currentString
# 0
=
1 2
HtmlRemoval
3 >
.
> ?
StripTagsRegex
? M
(
M N
	topicname
N W
.
W X
Trim
X \
(
\ ]
)
] ^
)
^ _
;
_ `
int
 
topicCurrentindex
  1
=
2 3
	topicList
4 =
.
= >
IndexOf
> E
(
E F
currentString
F S
)
S T
;
T U
Console
 #
.
# $
	WriteLine
$ -
(
- .
topicCurrentindex
. ?
)
? @
;
@ A
int
‘‘ 
prev
‘‘  $
=
‘‘% &
topicCurrentindex
‘‘' 8
>
‘‘9 :
$num
‘‘; <
?
‘‘= >
topicCurrentindex
‘‘? P
-
‘‘Q R
$num
‘‘S T
:
‘‘U V
-
‘‘W X
$num
‘‘X Y
;
‘‘Y Z
int
’’ 
prev1
’’  %
=
’’& '
topicCurrentindex
’’( 9
>
’’: ;
$num
’’< =
?
’’> ?
topicCurrentindex
’’@ Q
-
’’R S
$num
’’T U
:
’’V W
-
’’X Y
$num
’’Y Z
;
’’Z [
int
”” 
next
””  $
=
””% &
topicCurrentindex
””' 8
>
””9 :
$num
””; <
?
””= >
topicCurrentindex
””? P
+
””Q R
$num
””S T
:
””U V
$num
””W X
;
””X Y
int
•• 
next1
••  %
=
••& '
topicCurrentindex
••( 9
>
••: ;
$num
••< =
?
••> ?
topicCurrentindex
••@ Q
+
••R S
$num
••T U
:
••V W
$num
••X Y
;
••Y Z
int
—— 
prevItem
——  (
,
——( )
prevOneItem
——* 5
;
——5 6
prevItem
 $
=
% &
prev
' +
!=
, .
-
/ 0
$num
0 1
?
2 3
	topicList
4 =
.
= >
IndexOf
> E
(
E F
currentString
F S
)
S T
:
U V
$num
W X
;
X Y
prevOneItem
 '
=
( )
prev1
* /
!=
0 2
-
3 4
$num
4 5
?
6 7
	topicList
8 A
.
A B
IndexOf
B I
(
I J
currentString
J W
)
W X
:
Y Z
$num
[ \
;
\ ]
string
 "
previousStringone
# 4
=
5 6
string
7 =
.
= >
Empty
> C
;
C D
string
 "
previousStringtwo
# 4
=
5 6
string
7 =
.
= >
Empty
> C
;
C D
string
 "
nextStringone
# 0
=
1 2
string
3 9
.
9 :
Empty
: ?
;
? @
string
 "
nextStringtwo
# 0
=
1 2
string
3 9
.
9 :
Empty
: ?
;
? @
string
   "
currentselected
  # 2
=
  3 4
string
  5 ;
.
  ; <
Empty
  < A
;
  A B
if
ขข 
(
ขข  
prevItem
ขข  (
>
ขข) *
$num
ขข+ ,
)
ขข, -
{
ฃฃ 
previousStringone
คค  1
=
คค2 3
	topicList
คค4 =
[
คค= >
prevItem
คค> F
-
คคG H
$num
คคI J
]
คคJ K
;
คคK L
}
ฅฅ 
if
งง 
(
งง  
prevOneItem
งง  +
>
งง, -
$num
งง. /
)
งง/ 0
{
จจ 
previousStringtwo
ฉฉ  1
=
ฉฉ2 3
	topicList
ฉฉ4 =
[
ฉฉ= >
prevItem
ฉฉ> F
-
ฉฉG H
$num
ฉฉI J
]
ฉฉJ K
;
ฉฉK L
}
ชช 
if
ฌฌ 
(
ฌฌ  
	topicList
ฌฌ  )
.
ฌฌ) * 
ElementAtOrDefault
ฌฌ* <
(
ฌฌ< =
next
ฌฌ= A
)
ฌฌA B
!=
ฌฌC E
null
ฌฌF J
)
ฌฌJ K
{
ญญ 
nextStringone
ฎฎ  -
=
ฎฎ. /
(
ฎฎ0 1
	topicList
ฎฎ1 :
[
ฎฎ: ;
next
ฎฎ; ?
]
ฎฎ? @
)
ฎฎ@ A
;
ฎฎA B
}
ฏฏ 
if
ฑฑ 
(
ฑฑ  
	topicList
ฑฑ  )
.
ฑฑ) * 
ElementAtOrDefault
ฑฑ* <
(
ฑฑ< =
next1
ฑฑ= B
)
ฑฑB C
!=
ฑฑD F
null
ฑฑG K
)
ฑฑK L
{
ฒฒ 
nextStringtwo
ณณ  -
=
ณณ. /
(
ณณ0 1
	topicList
ณณ1 :
[
ณณ: ;
next1
ณณ; @
]
ณณ@ A
)
ณณA B
;
ณณB C
}
ดด 
if
ถถ 
(
ถถ  
topicCurrentindex
ถถ  1
>=
ถถ2 4
$num
ถถ5 6
)
ถถ6 7
{
ทท 
currentselected
ธธ  /
=
ธธ0 1
	topicList
ธธ2 ;
[
ธธ; <
topicCurrentindex
ธธ< M
]
ธธM N
;
ธธN O
}
นน 
if
ปป 
(
ปป  
!
ปป  !
string
ปป! '
.
ปป' (
IsNullOrEmpty
ปป( 5
(
ปป5 6
previousStringtwo
ปป6 G
)
ปปG H
)
ปปH I
{
ผผ 
sortedTopicList
ฝฝ  /
.
ฝฝ/ 0
Add
ฝฝ0 3
(
ฝฝ3 4
previousStringtwo
ฝฝ4 E
)
ฝฝE F
;
ฝฝF G
}
พพ 
if
ภภ 
(
ภภ  
!
ภภ  !
string
ภภ! '
.
ภภ' (
IsNullOrEmpty
ภภ( 5
(
ภภ5 6
previousStringone
ภภ6 G
)
ภภG H
)
ภภH I
{
มม 
sortedTopicList
ยย  /
.
ยย/ 0
Add
ยย0 3
(
ยย3 4
previousStringone
ยย4 E
)
ยยE F
;
ยยF G
}
รร 
if
ลล 
(
ลล  
!
ลล  !
string
ลล! '
.
ลล' (
IsNullOrEmpty
ลล( 5
(
ลล5 6
currentselected
ลล6 E
)
ลลE F
)
ลลF G
{
ฦฦ 
sortedTopicList
วว  /
.
วว/ 0
Add
วว0 3
(
วว3 4
currentselected
วว4 C
)
ววC D
;
ววD E
}
ศศ 
if
สส 
(
สส  
!
สส  !
string
สส! '
.
สส' (
IsNullOrEmpty
สส( 5
(
สส5 6
nextStringone
สส6 C
)
สสC D
)
สสD E
{
หห 
sortedTopicList
ฬฬ  /
.
ฬฬ/ 0
Add
ฬฬ0 3
(
ฬฬ3 4
nextStringone
ฬฬ4 A
)
ฬฬA B
;
ฬฬB C
}
ออ 
if
ฯฯ 
(
ฯฯ  
!
ฯฯ  !
string
ฯฯ! '
.
ฯฯ' (
IsNullOrEmpty
ฯฯ( 5
(
ฯฯ5 6
nextStringtwo
ฯฯ6 C
)
ฯฯC D
)
ฯฯD E
{
ะะ 
sortedTopicList
ัั  /
.
ัั/ 0
Add
ัั0 3
(
ัั3 4
nextStringtwo
ัั4 A
.
ััA B
ToString
ััB J
(
ััJ K
)
ััK L
)
ััL M
;
ััM N
}
าา 
int
ิิ 
k1
ิิ  "
=
ิิ# $
$num
ิิ% &
;
ิิ& '
foreach
ุุ #
(
ุุ$ %
string
ุุ% +

topicName1
ุุ, 6
in
ุุ7 9
sortedTopicList
ุุ: I
)
ุุI J
{
ูู 
if
ฺฺ  "
(
ฺฺ# $

topicName1
ฺฺ$ .
==
ฺฺ/ 1
HtmlRemoval
ฺฺ2 =
.
ฺฺ= >
StripTagsRegex
ฺฺ> L
(
ฺฺL M
	topicname
ฺฺM V
.
ฺฺV W
Trim
ฺฺW [
(
ฺฺ[ \
)
ฺฺ\ ]
)
ฺฺ] ^
)
ฺฺ^ _
{
ÛÛ  !%
bcscContentTopicoutline
ÝÝ$ ;
+=
ÝÝ< >
$str
ÝÝ? s
+
ÝÝt u

topicName1ÝÝv €
.ÝÝ€ 
ToStringÝÝ 
(ÝÝ 
)ÝÝ 
+ÝÝ 
$strÝÝ 
;ÝÝ 
}
ÞÞ  !
else
฿฿  $
{
เเ  !%
bcscContentTopicoutline
แแ$ ;
+=
แแ< >
$str
แแ? E
+
แแF G

topicName1
แแH R
.
แแR S
ToString
แแS [
(
แแ[ \
)
แแ\ ]
+
แแ^ _
$str
แแ` g
;
แแg h
}
โโ  !
k1
ไไ  "
++
ไไ" $
;
ไไ$ %
}
ๅๅ %
bcscContentTopicoutline
็็ 3
+=
็็4 6
$str
็็7 >
;
็็> ?
Console
้้ #
.
้้# $
	WriteLine
้้$ -
(
้้- .
$str
้้. 2
)
้้2 3
;
้้3 4
int
์์ 
k
์์  !
=
์์" #
$num
์์$ %
;
์์% &
bcscContent
ํํ '
+=
ํํ( *
$str
ํํ+ 2
;
ํํ2 3
bcscContent
๎๎ '
+=
๎๎( *
$str
๎๎+ 8
+
๎๎9 :
bCSCContent
๎๎; F
.
๎๎F G
BCSCSectionNumber
๎๎G X
+
๎๎Y Z
$str
๎๎[ _
+
๎๎` a
bCSCContent
๎๎b m
.
๎๎m n
BCSCSectionTitle
๎๎n ~
+๎๎ €
$str๎๎ 
;๎๎ 
bcscContent
๏๏ '
+=
๏๏( *
$str
๏๏+ 2
;
๏๏2 3
bcscContent
๐๐ '
+=
๐๐( *
$str
๐๐+ 0
+
๐๐1 2
chapterTerm
๐๐3 >
+
๐๐? @
$str
๐๐A E
+
๐๐F G
bCSCContent
๐๐H S
.
๐๐S T
ChapterName
๐๐T _
+
๐๐` a
$str
๐๐b i
;
๐๐i j
bcscContent
๑๑ '
+=
๑๑( *
$str
๑๑+ \
;
๑๑\ ]
foreach
๓๓ #
(
๓๓$ %
var
๓๓% (
itemn
๓๓) .
in
๓๓/ 1
toftitle
๓๓2 :
)
๓๓: ;
{
๔๔ 
if
๕๕  "
(
๕๕# $
HtmlRemoval
๕๕$ /
.
๕๕/ 0
StripTagsRegex
๕๕0 >
(
๕๕> ?
itemn
๕๕? D
.
๕๕D E
	InnerHtml
๕๕E N
.
๕๕N O
Trim
๕๕O S
(
๕๕S T
)
๕๕T U
)
๕๕U V
==
๕๕W Y
HtmlRemoval
๕๕Z e
.
๕๕e f
StripTagsRegex
๕๕f t
(
๕๕t u
	topicname
๕๕u ~
.
๕๕~ 
Trim๕๕ 
(๕๕ 
)๕๕ …
)๕๕… 
)๕๕ 
{
๖๖  !
bcscContent
๘๘$ /
+=
๘๘0 2
$str
๘๘3 g
+
๘๘h i
itemn
๘๘j o
.
๘๘o p
	InnerHtml
๘๘p y
+
๘๘z {
$str๘๘| 
;๘๘ 
var
๚๚$ '
node
๚๚( ,
=
๚๚- .
htmlDocument
๚๚/ ;
.
๚๚; <
DocumentNode
๚๚< H
.
๚๚H I
SelectSingleNode
๚๚I Y
(
๚๚Y Z
itemn
๚๚Z _
.
๚๚_ `
XPath
๚๚` e
)
๚๚e f
;
๚๚f g
HtmlNode
๛๛$ ,
sibling
๛๛- 4
=
๛๛5 6
node
๛๛7 ;
.
๛๛; <
NextSibling
๛๛< G
;
๛๛G H
while
üü$ )
(
üü* +
sibling
üü+ 2
!=
üü3 5
null
üü6 :
)
üü: ;
{
ýý$ %
if
þþ( *
(
þþ+ ,
sibling
þþ, 3
.
þþ3 4
NodeType
þþ4 <
==
þþ= ?
HtmlNodeType
þþ@ L
.
þþL M
Element
þþM T
&&
þþU W
sibling
þþX _
.
þþ_ `
	OuterHtml
þþ` i
.
þþi j
Contains
þþj r
(
þþr s
$strþþs 
)þþ 
)þþ 
{
ÿÿ( )
try
€	€	, /
{
		, -
bcscText
		0 8
=
		9 :
sibling
		; B
.
		B C
	InnerHtml
		C L
;
		L M
string
		0 6
myString
		7 ?
=
		@ A
HtmlRemoval
		B M
.
		M N
StripTagsRegex
		N \
(
		\ ]
bcscText
		] e
)
		e f
;
		f g
int
		0 3
count
		4 9
=
		: ;
$num
		< =
;
		= >
string
		0 6
str
		7 :
=
		; <
myString
		= E
;
		E F
while
		0 5
(
		6 7
count
		7 <
<=
		= ?
str
		@ C
.
		C D
Length
		D J
-
		K L
$num
		M N
)
		N O
{
		0 1
if
		4 6
(
		7 8
str
		8 ;
[
		; <
count
		< A
]
		A B
==
		C E
$char
		F I
||
		J L
str
		M P
[
		P Q
count
		Q V
]
		V W
==
		X Z
$char
		[ _
||
		` b
str
		c f
[
		f g
count
		g l
]
		l m
==
		n p
$char
		q u
)
		u v
{
		4 5
bcscWord
		8 @
++
		@ B
;
		B C
}
		4 5
count
		4 9
++
		9 ;
;
		; <
}
		0 1
List
–	–	0 4
<
–	–	4 5
HtmlNode
–	–	5 =
>
–	–	= >!
figureReferenceSpan
–	–	? R
=
–	–	S T
sibling
–	–	U \
.
–	–	\ ]
Descendants
–	–	] h
(
–	–	h i
)
–	–	i j
.
–	–	j k
Where
–	–	k p
(
–	–	p q
x
–	–	q r
=>
–	–	s u
(
–	–	v w
x
–	–	w x
.
–	–	x y
Name
–	–	y }
==–	–	~ €
$str–	–	 
&&–	–	 
x–	–	 
.–	–	 

Attributes–	–	 —
[–	–	— 
$str–	–	 
]–	–	  
!=–	–	ก ฃ
null–	–	ค จ
&&–	–	ฉ ซ
x–	–	ฌ ญ
.–	–	ญ ฎ

Attributes–	–	ฎ ธ
[–	–	ธ น
$str–	–	น ฝ
]–	–	ฝ พ
!=–	–	ฟ ม
null–	–	ย ฦ
&&–	–	ว ษ
x–	–	ส ห
.–	–	ห ฬ

Attributes–	–	ฬ ึ
[–	–	ึ ื
$str–	–	ื Þ
]–	–	Þ ฿
.–	–	฿ เ
Value–	–	เ ๅ
.–	–	ๅ ๆ
Contains–	–	ๆ ๎
(–	–	๎ ๏
$str–	–	๏ ü
)–	–	ü ý
)–	–	ý þ
)–	–	þ ÿ
.–	–	ÿ €

DistinctBy–	–	€ 
(–	–	 
x–	–	 
=>–	–	 
x–	–	 ‘
.–	–	‘ ’

Attributes–	–	’ 
[–	–	 
$str–	–	 ก
]–	–	ก ข
.–	–	ข ฃ
Value–	–	ฃ จ
.–	–	จ ฉ
ToString–	–	ฉ ฑ
(–	–	ฑ ฒ
)–	–	ฒ ณ
)–	–	ณ ด
.–	–	ด ต
ToList–	–	ต ป
(–	–	ป ผ
)–	–	ผ ฝ
;–	–	ฝ พ'
figureReferenceDivContent
—	—	0 I
=
—	—	J K
string
—	—	L R
.
—	—	R S
Empty
—	—	S X
;
—	—	X Y
if
		0 2
(
		3 4!
figureReferenceSpan
		4 G
.
		G H
Count
		H M
>
		N O
$num
		P Q
)
		Q R
{
		0 1
foreach
		4 ;
(
		< =
var
		= @
span
		A E
in
		F H!
figureReferenceSpan
		I \
)
		\ ]
{
		4 5
List
		8 <
<
		< =
HtmlNode
		= E
>
		E F 
figureReferenceDiv
		G Y
=
		Z [
htmlDocument
		\ h
.
		h i
DocumentNode
		i u
.
		u v
Descendants		v 
(		 
)		 
.		 
Where		 
(		 
x		 
=>		 
(		 
x		 ‘
.		‘ ’
Name		’ –
==		— 
$str		 
&&		  ข
x		ฃ ค
.		ค ฅ

Attributes		ฅ ฏ
[		ฏ ฐ
$str		ฐ ด
]		ด ต
!=		ถ ธ
null		น ฝ
&&		พ ภ
x		ม ย
.		ย ร

Attributes		ร อ
[		อ ฮ
$str		ฮ า
]		า ำ
.		ำ ิ
Value		ิ ู
.		ู ฺ
Equals		ฺ เ
(		เ แ
span		แ ๅ
.		ๅ ๆ

Attributes		ๆ ๐
[		๐ ๑
$str		๑ ๕
]		๕ ๖
.		๖ ๗
Value		๗ ü
.		ü ý
ToString		ý …
(		… 
)		 
)		 
)		 
)		 
.		 

DistinctBy		 •
(		• –
x		– —
=>		 
x		 
.		 

Attributes		 ง
[		ง จ
$str		จ ฌ
]		ฌ ญ
.		ญ ฎ
Value		ฎ ณ
.		ณ ด
ToString		ด ผ
(		ผ ฝ
)		ฝ พ
)		พ ฟ
.		ฟ ภ
ToList		ภ ฦ
(		ฦ ว
)		ว ศ
;		ศ ษ
if
		8 :
(
		; < 
figureReferenceDiv
		< N
.
		N O
Count
		O T
>
		U V
$num
		W X
)
		X Y
{
		8 9
for
 	 	< ?
(
 	 	@ A
int
 	 	A D
i
 	 	E F
=
 	 	G H
$num
 	 	I J
;
 	 	J K
i
 	 	L M
<
 	 	N O 
figureReferenceDiv
 	 	P b
.
 	 	b c
Count
 	 	c h
;
 	 	h i
i
 	 	j k
++
 	 	k m
)
 	 	m n
{
ก	ก	< ='
figureReferenceDivContent
ข	ข	@ Y
+=
ข	ข	Z \ 
figureReferenceDiv
ข	ข	] o
[
ข	ข	o p
i
ข	ข	p q
]
ข	ข	q r
.
ข	ข	r s
	InnerHtml
ข	ข	s |
.
ข	ข	| }
ToStringข	ข	} …
(ข	ข	… 
)ข	ข	 
+ข	ข	 
$strข	ข	 ’
;ข	ข	’ “
}
ฃ	ฃ	< =
}
ค	ค	8 9
}
ฅ	ฅ	4 5
}
ฆ	ฆ	0 1
List
ฉ	ฉ	0 4
<
ฉ	ฉ	4 5
HtmlNode
ฉ	ฉ	5 =
>
ฉ	ฉ	= > 
tableReferenceSpan
ฉ	ฉ	? Q
=
ฉ	ฉ	R S
sibling
ฉ	ฉ	T [
.
ฉ	ฉ	[ \
Descendants
ฉ	ฉ	\ g
(
ฉ	ฉ	g h
)
ฉ	ฉ	h i
.
ฉ	ฉ	i j
Where
ฉ	ฉ	j o
(
ฉ	ฉ	o p
x
ฉ	ฉ	p q
=>
ฉ	ฉ	r t
(
ฉ	ฉ	u v
x
ฉ	ฉ	v w
.
ฉ	ฉ	w x
Name
ฉ	ฉ	x |
==
ฉ	ฉ	} 
$strฉ	ฉ	€ 
&&ฉ	ฉ	 
xฉ	ฉ	 
.ฉ	ฉ	 

Attributesฉ	ฉ	 –
[ฉ	ฉ	– —
$strฉ	ฉ	— 
]ฉ	ฉ	 
!=ฉ	ฉ	  ข
nullฉ	ฉ	ฃ ง
&&ฉ	ฉ	จ ช
xฉ	ฉ	ซ ฌ
.ฉ	ฉ	ฌ ญ

Attributesฉ	ฉ	ญ ท
[ฉ	ฉ	ท ธ
$strฉ	ฉ	ธ ผ
]ฉ	ฉ	ผ ฝ
!=ฉ	ฉ	พ ภ
nullฉ	ฉ	ม ล
&&ฉ	ฉ	ฦ ศ
xฉ	ฉ	ษ ส
.ฉ	ฉ	ส ห

Attributesฉ	ฉ	ห ี
[ฉ	ฉ	ี ึ
$strฉ	ฉ	ึ Ý
]ฉ	ฉ	Ý Þ
.ฉ	ฉ	Þ ฿
Valueฉ	ฉ	฿ ไ
.ฉ	ฉ	ไ ๅ
Containsฉ	ฉ	ๅ ํ
(ฉ	ฉ	ํ ๎
$strฉ	ฉ	๎ ๚
)ฉ	ฉ	๚ ๛
)ฉ	ฉ	๛ ü
)ฉ	ฉ	ü ý
.ฉ	ฉ	ý þ

DistinctByฉ	ฉ	þ 
(ฉ	ฉ	 
xฉ	ฉ	 
=>ฉ	ฉ	 
xฉ	ฉ	 
.ฉ	ฉ	 

Attributesฉ	ฉ	 
[ฉ	ฉ	 
$strฉ	ฉ	 
]ฉ	ฉ	  
.ฉ	ฉ	  ก
Valueฉ	ฉ	ก ฆ
.ฉ	ฉ	ฆ ง
ToStringฉ	ฉ	ง ฏ
(ฉ	ฉ	ฏ ฐ
)ฉ	ฉ	ฐ ฑ
)ฉ	ฉ	ฑ ฒ
.ฉ	ฉ	ฒ ณ
ToListฉ	ฉ	ณ น
(ฉ	ฉ	น บ
)ฉ	ฉ	บ ป
;ฉ	ฉ	ป ผ&
tableReferenceDivContent
ช	ช	0 H
=
ช	ช	I J
string
ช	ช	K Q
.
ช	ช	Q R
Empty
ช	ช	R W
;
ช	ช	W X
if
ฌ	ฌ	0 2
(
ฌ	ฌ	3 4 
tableReferenceSpan
ฌ	ฌ	4 F
.
ฌ	ฌ	F G
Count
ฌ	ฌ	G L
>
ฌ	ฌ	M N
$num
ฌ	ฌ	O P
)
ฌ	ฌ	P Q
{
ญ	ญ	0 1
foreach
ฎ	ฎ	4 ;
(
ฎ	ฎ	< =
var
ฎ	ฎ	= @
span
ฎ	ฎ	A E
in
ฎ	ฎ	F H 
tableReferenceSpan
ฎ	ฎ	I [
)
ฎ	ฎ	[ \
{
ฏ	ฏ	4 5
List
ฐ	ฐ	8 <
<
ฐ	ฐ	< =
HtmlNode
ฐ	ฐ	= E
>
ฐ	ฐ	E F
tableReferenceDiv
ฐ	ฐ	G X
=
ฐ	ฐ	Y Z
htmlDocument
ฐ	ฐ	[ g
.
ฐ	ฐ	g h
DocumentNode
ฐ	ฐ	h t
.
ฐ	ฐ	t u
Descendantsฐ	ฐ	u €
(ฐ	ฐ	€ 
)ฐ	ฐ	 
.ฐ	ฐ	 
Whereฐ	ฐ	 
(ฐ	ฐ	 
xฐ	ฐ	 
=>ฐ	ฐ	 
(ฐ	ฐ	 
xฐ	ฐ	 
.ฐ	ฐ	 ‘
Nameฐ	ฐ	‘ •
==ฐ	ฐ	– 
$strฐ	ฐ	 
&&ฐ	ฐ	 ก
xฐ	ฐ	ข ฃ
.ฐ	ฐ	ฃ ค

Attributesฐ	ฐ	ค ฎ
[ฐ	ฐ	ฎ ฏ
$strฐ	ฐ	ฏ ณ
]ฐ	ฐ	ณ ด
!=ฐ	ฐ	ต ท
nullฐ	ฐ	ธ ผ
&&ฐ	ฐ	ฝ ฟ
xฐ	ฐ	ภ ม
.ฐ	ฐ	ม ย

Attributesฐ	ฐ	ย ฬ
[ฐ	ฐ	ฬ อ
$strฐ	ฐ	อ ั
]ฐ	ฐ	ั า
.ฐ	ฐ	า ำ
Valueฐ	ฐ	ำ ุ
.ฐ	ฐ	ุ ู
Equalsฐ	ฐ	ู ฿
(ฐ	ฐ	฿ เ
spanฐ	ฐ	เ ไ
.ฐ	ฐ	ไ ๅ

Attributesฐ	ฐ	ๅ ๏
[ฐ	ฐ	๏ ๐
$strฐ	ฐ	๐ ๔
]ฐ	ฐ	๔ ๕
.ฐ	ฐ	๕ ๖
Valueฐ	ฐ	๖ ๛
.ฐ	ฐ	๛ ü
ToStringฐ	ฐ	ü 
(ฐ	ฐ	 …
)ฐ	ฐ	… 
)ฐ	ฐ	 
)ฐ	ฐ	 
)ฐ	ฐ	 
.ฐ	ฐ	 

DistinctByฐ	ฐ	 ”
(ฐ	ฐ	” •
xฐ	ฐ	• –
=>ฐ	ฐ	— 
xฐ	ฐ	 
.ฐ	ฐ	 

Attributesฐ	ฐ	 ฆ
[ฐ	ฐ	ฆ ง
$strฐ	ฐ	ง ซ
]ฐ	ฐ	ซ ฌ
.ฐ	ฐ	ฌ ญ
Valueฐ	ฐ	ญ ฒ
.ฐ	ฐ	ฒ ณ
ToStringฐ	ฐ	ณ ป
(ฐ	ฐ	ป ผ
)ฐ	ฐ	ผ ฝ
)ฐ	ฐ	ฝ พ
.ฐ	ฐ	พ ฟ
ToListฐ	ฐ	ฟ ล
(ฐ	ฐ	ล ฦ
)ฐ	ฐ	ฦ ว
;ฐ	ฐ	ว ศ
if
ฑ	ฑ	8 :
(
ฑ	ฑ	; <
tableReferenceDiv
ฑ	ฑ	< M
.
ฑ	ฑ	M N
Count
ฑ	ฑ	N S
>
ฑ	ฑ	T U
$num
ฑ	ฑ	V W
)
ฑ	ฑ	W X
{
ฒ	ฒ	8 9
for
ณ	ณ	< ?
(
ณ	ณ	@ A
int
ณ	ณ	A D
i
ณ	ณ	E F
=
ณ	ณ	G H
$num
ณ	ณ	I J
;
ณ	ณ	J K
i
ณ	ณ	L M
<
ณ	ณ	N O
tableReferenceDiv
ณ	ณ	P a
.
ณ	ณ	a b
Count
ณ	ณ	b g
;
ณ	ณ	g h
i
ณ	ณ	i j
++
ณ	ณ	j l
)
ณ	ณ	l m
{
ด	ด	< =&
tableReferenceDivContent
ต	ต	@ X
+=
ต	ต	Y [
tableReferenceDiv
ต	ต	\ m
[
ต	ต	m n
i
ต	ต	n o
]
ต	ต	o p
.
ต	ต	p q
	InnerHtml
ต	ต	q z
.
ต	ต	z {
ToStringต	ต	{ 
(ต	ต	 
)ต	ต	 …
+ต	ต	 
$strต	ต	 
;ต	ต	 ‘
}
ถ	ถ	< =
}
ท	ท	8 9
}
ธ	ธ	4 5
}
น	น	0 1
string
ฟ	ฟ	0 6"
imageToBeReadsection
ฟ	ฟ	7 K
=
ฟ	ฟ	L M%
WebConfigurationManager
ฟ	ฟ	N e
.
ฟ	ฟ	e f
AppSettings
ฟ	ฟ	f q
[
ฟ	ฟ	q r
$strฟ	ฟ	r 
]ฟ	ฟ	 
;ฟ	ฟ	 …
List
ภ	ภ	0 4
<
ภ	ภ	4 5
int
ภ	ภ	5 8
>
ภ	ภ	8 9&
imageToBeReadsectionList
ภ	ภ	: R
=
ภ	ภ	S T"
imageToBeReadsection
ภ	ภ	U i
.
ภ	ภ	i j
Split
ภ	ภ	j o
(
ภ	ภ	o p
$char
ภ	ภ	p s
)
ภ	ภ	s t
.
ภ	ภ	t u
Select
ภ	ภ	u {
(
ภ	ภ	{ |
int
ภ	ภ	| 
.ภ	ภ	 €
Parseภ	ภ	€ …
)ภ	ภ	… 
.ภ	ภ	 
ToListภ	ภ	 
(ภ	ภ	 
)ภ	ภ	 
;ภ	ภ	 
if
ม	ม	0 2
(
ม	ม	3 4&
imageToBeReadsectionList
ม	ม	4 L
.
ม	ม	L M
Exists
ม	ม	M S
(
ม	ม	S T
x
ม	ม	T U
=>
ม	ม	V X
x
ม	ม	Y Z
.
ม	ม	Z [
Equals
ม	ม	[ a
(
ม	ม	a b
bCSCContent
ม	ม	b m
.
ม	ม	m n
BCSCSectionNumber
ม	ม	n 
)ม	ม	 €
)ม	ม	€ 
)ม	ม	 
{
ย	ย	0 1
bcscText
ร	ร	4 <
=
ร	ร	= >
bcscText
ร	ร	? G
;
ร	ร	G H
}
ฤ	ฤ	0 1
else
ล	ล	0 4
{
ฦ	ฦ	0 1
bcscText
ว	ว	4 <
=
ว	ว	= >
Regex
ว	ว	? D
.
ว	ว	D E
Replace
ว	ว	E L
(
ว	ว	L M
bcscText
ว	ว	M U
,
ว	ว	U V
$strว	ว	W ”
,ว	ว	” •
stringว	ว	– 
.ว	ว	 
Emptyว	ว	 ข
)ว	ว	ข ฃ
;ว	ว	ฃ ค
}
ศ	ศ	0 1
break
อ	อ	0 5
;
อ	อ	5 6
}
ฮ	ฮ	, -
catch
ฯ	ฯ	, 1
(
ฯ	ฯ	2 3
	Exception
ฯ	ฯ	3 <
e
ฯ	ฯ	= >
)
ฯ	ฯ	> ?
{
ะ	ะ	, -
Console
ั	ั	0 7
.
ั	ั	7 8
	WriteLine
ั	ั	8 A
(
ั	ั	A B
e
ั	ั	B C
.
ั	ั	C D
InnerException
ั	ั	D R
)
ั	ั	R S
;
ั	ั	S T
log
า	า	0 3
.
า	า	3 4
Information
า	า	4 ?
(
า	า	? @
$str
า	า	@ _
+
า	า	` a
e
า	า	b c
.
า	า	c d
Message
า	า	d k
)
า	า	k l
;
า	า	l m
}
ำ	ำ	, -
break
ี	ี	, 1
;
ี	ี	1 2
}
ึ	ึ	( )
sibling
ุ	ุ	( /
=
ุ	ุ	0 1
sibling
ุ	ุ	2 9
.
ุ	ุ	9 :
NextSibling
ุ	ุ	: E
;
ุ	ุ	E F
}
ู	ู	$ %
}
ฺ	ฺ	  !
else
Û	Û	  $
{
Ü	Ü	  !
bcscContent
Þ	Þ	$ /
+=
Þ	Þ	0 2
$str
Þ	Þ	3 9
+
Þ	Þ	: ;
$str
Þ	Þ	< ?
+
Þ	Þ	@ A
itemn
Þ	Þ	B G
.
Þ	Þ	G H
	InnerHtml
Þ	Þ	H Q
+
Þ	Þ	R S
$str
Þ	Þ	T [
;
Þ	Þ	[ \
}
฿	฿	  !
k
แ	แ	  !
++
แ	แ	! #
;
แ	แ	# $
}
โ	โ	 
bcscContent
ไ	ไ	 '
+=
ไ	ไ	( *
$str
ไ	ไ	+ 2
;
ไ	ไ	2 3
if
ๅ	ๅ	 
(
ๅ	ๅ	  
!
ๅ	ๅ	  !
string
ๅ	ๅ	! '
.
ๅ	ๅ	' ( 
IsNullOrWhiteSpace
ๅ	ๅ	( :
(
ๅ	ๅ	: ;%
bcscContentTopicoutline
ๅ	ๅ	; R
)
ๅ	ๅ	R S
)
ๅ	ๅ	S T
{
ๆ	ๆ	 %
bcscContentTopicoutline
่	่	  7
+=
่	่	8 :
$str
่	่	; C
+
่	่	D E
bcscText
่	่	F N
;
่	่	N O
bcscText
้	้	  (
=
้	้	) *
string
้	้	+ 1
.
้	้	1 2
Empty
้	้	2 7
;
้	้	7 8
}
๊	๊	 %
bcscContentTopicoutline
์	์	 3
+=
์	์	4 6'
figureReferenceDivContent
์	์	7 P
;
์	์	P Q%
bcscContentTopicoutline
ํ	ํ	 3
+=
ํ	ํ	4 6&
tableReferenceDivContent
ํ	ํ	7 O
;
ํ	ํ	O P%
bcscContentTopicoutline
๎	๎	 3
+=
๎	๎	4 6
$str
๎	๎	7 >
;
๎	๎	> ?
}
๏	๏	 
else
๐	๐	 
{
๑	๑	 
}
๔	๔	 
}
๕	๕	 
}
๘	๘	 
}


 
catch


 
(


 
	Exception


 
ex


 
)


  
{


 
log


 
.


 
Information


 
(


  
$str


  @
+


A B
ex


C E
.


E F
Message


F M
)


M N
;


N O
}
…
…
 
content


 
.


 
BCSCContent


 
=


  !%
bcscContentTopicoutline


" 9
;


9 :
content


 
.


 
TotalBcscWord


 !
=


" #
bcscWord


$ ,
;


, -
return


 
content


 
;


 
}


 	
public


 
static


 
string


 
	StripHTML


 &
(


& '
string


' -
input


. 3
)


3 4
{


 	
return


 
Regex


 
.


 
Replace


  
(


  !
input


! &
,


& '
$str


( /
,


/ 0
string


1 7
.


7 8
Empty


8 =
)


= >
;


> ?
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
 
int


 *
UpdateBCSCMapperContentField


 6
(


6 7
)


7 8
{
‘
‘
 	
List
’
’
 
<
’
’
 
int
’
’
 
>
’
’
 
questionList
’
’
 "
=
’
’
# $
new
’
’
% (
List
’
’
) -
<
’
’
- .
int
’
’
. 1
>
’
’
1 2
(
’
’
2 3
)
’
’
3 4
;
’
’
4 5
questionList
“
“
 
=
“
“
 
	ImportDAL
“
“
 $
.
“
“
$ %
GetQuestionList
“
“
% 4
(
“
“
4 5
)
“
“
5 6
;
“
“
6 7
foreach
”
”
 
(
”
”
 
int
”
”
 
item
”
”
 
in
”
”
  
questionList
”
”
! -
)
”
”
- .
{
•
•
 
List
–
–
 
<
–
–
 
BCSCContentVM
–
–
 "
>
–
–
" #
bCSCContentData
–
–
$ 3
=
–
–
4 5
new
–
–
6 9
List
–
–
: >
<
–
–
> ?
BCSCContentVM
–
–
? L
>
–
–
L M
(
–
–
M N
)
–
–
N O
;
–
–
O P
bCSCContentData
—
—
 
=
—
—
  !/
!GetBCSCSectionChapterTopicDetails
—
—
" C
(
—
—
C D
item
—
—
D H
)
—
—
H I
;
—
—
I J
foreach


 
(


 
BCSCContentVM


 &
bCSCContent


' 2
in


3 5
bCSCContentData


6 E
)


E F
{


 
var


 
bcscBookdata


 $
=


% &$
GetBCSCContentFromBook


' =
(


= >
bCSCContent


> I
)


I J
;


J K
bCSCContent


 
.


  
Content


  '
=


( )
bcscBookdata


* 6
.


6 7
BCSCContent


7 B
;


B C
bCSCContent


 
.


  
BCSCbookWordCount


  1
=


2 3
bcscBookdata


4 @
.


@ A
TotalBcscWord


A N
;


N O
	ImportDAL
 
 
 
.
 
 
 *
UpdateBCSCMapperContentField
 
 
 :
(
 
 
: ;
bCSCContent
 
 
; F
)
 
 
F G
;
 
 
G H
}
ก
ก
 
}
ข
ข
 
return
ค
ค
 
$num
ค
ค
 
;
ค
ค
 
}
ฅ
ฅ
 	
public
ง
ง
 
static
ง
ง
 
int
ง
ง
 1
#UpdateBCSCMapperContentOnBookChange
ง
ง
 =
(
ง
ง
= >
)
ง
ง
> ?
{
จ
จ
 	
string
ฉ
ฉ
 
section
ฉ
ฉ
 
=
ฉ
ฉ
 %
WebConfigurationManager
ฉ
ฉ
 4
.
ฉ
ฉ
4 5
AppSettings
ฉ
ฉ
5 @
[
ฉ
ฉ
@ A
$str
ฉ
ฉ
A J
]
ฉ
ฉ
J K
;
ฉ
ฉ
K L
List
ช
ช
 
<
ช
ช
 
int
ช
ช
 
>
ช
ช
 
sectionList
ช
ช
 !
=
ช
ช
" #
section
ช
ช
$ +
.
ช
ช
+ ,
Split
ช
ช
, 1
(
ช
ช
1 2
$char
ช
ช
2 5
)
ช
ช
5 6
.
ช
ช
6 7
Select
ช
ช
7 =
(
ช
ช
= >
int
ช
ช
> A
.
ช
ช
A B
Parse
ช
ช
B G
)
ช
ช
G H
.
ช
ช
H I
ToList
ช
ช
I O
(
ช
ช
O P
)
ช
ช
P Q
;
ช
ช
Q R
List
ฌ
ฌ
 
<
ฌ
ฌ
 
int
ฌ
ฌ
 
>
ฌ
ฌ
 
questionList
ฌ
ฌ
 "
=
ฌ
ฌ
# $
new
ฌ
ฌ
% (
List
ฌ
ฌ
) -
<
ฌ
ฌ
- .
int
ฌ
ฌ
. 1
>
ฌ
ฌ
1 2
(
ฌ
ฌ
2 3
)
ฌ
ฌ
3 4
;
ฌ
ฌ
4 5
questionList
ญ
ญ
 
=
ญ
ญ
 
	ImportDAL
ญ
ญ
 $
.
ญ
ญ
$ %
GetQuestionList
ญ
ญ
% 4
(
ญ
ญ
4 5
)
ญ
ญ
5 6
;
ญ
ญ
6 7
foreach
ฎ
ฎ
 
(
ฎ
ฎ
 
int
ฎ
ฎ
 
item
ฎ
ฎ
 
in
ฎ
ฎ
  
questionList
ฎ
ฎ
! -
)
ฎ
ฎ
- .
{
ฏ
ฏ
 
List
ฐ
ฐ
 
<
ฐ
ฐ
 
BCSCContentVM
ฐ
ฐ
 "
>
ฐ
ฐ
" #
bCSCContentData
ฐ
ฐ
$ 3
=
ฐ
ฐ
4 5
new
ฐ
ฐ
6 9
List
ฐ
ฐ
: >
<
ฐ
ฐ
> ?
BCSCContentVM
ฐ
ฐ
? L
>
ฐ
ฐ
L M
(
ฐ
ฐ
M N
)
ฐ
ฐ
N O
;
ฐ
ฐ
O P
bCSCContentData
ฑ
ฑ
 
=
ฑ
ฑ
  !/
!GetBCSCSectionChapterTopicDetails
ฑ
ฑ
" C
(
ฑ
ฑ
C D
item
ฑ
ฑ
D H
)
ฑ
ฑ
H I
;
ฑ
ฑ
I J
foreach
ณ
ณ
 
(
ณ
ณ
 
BCSCContentVM
ณ
ณ
 &
bCSCContent
ณ
ณ
' 2
in
ณ
ณ
3 5
bCSCContentData
ณ
ณ
6 E
)
ณ
ณ
E F
{
ด
ด
 
if
ต
ต
 
(
ต
ต
 
sectionList
ต
ต
 #
.
ต
ต
# $
Exists
ต
ต
$ *
(
ต
ต
* +
p
ต
ต
+ ,
=>
ต
ต
- /
p
ต
ต
0 1
.
ต
ต
1 2
Equals
ต
ต
2 8
(
ต
ต
8 9
bCSCContent
ต
ต
9 D
.
ต
ต
D E
BCSCSectionNumber
ต
ต
E V
)
ต
ต
V W
)
ต
ต
W X
)
ต
ต
X Y
{
ถ
ถ
 
bool
ธ
ธ
 "
chapterandtopicmatch
ธ
ธ
 1
=
ธ
ธ
2 3"
ChapterAndTopicMatch
ธ
ธ
4 H
(
ธ
ธ
H I
bCSCContent
ธ
ธ
I T
)
ธ
ธ
T U
;
ธ
ธ
U V
if
น
น
 
(
น
น
 "
chapterandtopicmatch
น
น
 0
)
น
น
0 1
{
บ
บ
 
var
ป
ป
 
bcscBookdata
ป
ป
  ,
=
ป
ป
- .$
GetBCSCContentFromBook
ป
ป
/ E
(
ป
ป
E F
bCSCContent
ป
ป
F Q
)
ป
ป
Q R
;
ป
ป
R S
bCSCContent
ผ
ผ
 '
.
ผ
ผ
' (
Content
ผ
ผ
( /
=
ผ
ผ
0 1
bcscBookdata
ผ
ผ
2 >
.
ผ
ผ
> ?
BCSCContent
ผ
ผ
? J
;
ผ
ผ
J K
bCSCContent
ฝ
ฝ
 '
.
ฝ
ฝ
' (
BCSCbookWordCount
ฝ
ฝ
( 9
=
ฝ
ฝ
: ;
bcscBookdata
ฝ
ฝ
< H
.
ฝ
ฝ
H I
TotalBcscWord
ฝ
ฝ
I V
;
ฝ
ฝ
V W
	ImportDAL
พ
พ
 %
.
พ
พ
% &1
#UpdateBCSCMapperContentOnBookChange
พ
พ
& I
(
พ
พ
I J
bCSCContent
พ
พ
J U
)
พ
พ
U V
;
พ
พ
V W
}
ฟ
ฟ
 
else
ภ
ภ
 
{
ม
ม
 
var
ย
ย
 
log
ย
ย
  #
=
ย
ย
$ %
new
ย
ย
& )
Serilog
ย
ย
* 1
.
ย
ย
1 2!
LoggerConfiguration
ย
ย
2 E
(
ย
ย
E F
)
ย
ย
F G
.
ย
ย
G H
WriteTo
ย
ย
H O
.
ย
ย
O P
RollingFile
ย
ย
P [
(
ย
ย
[ \
sAttrLogPath
ย
ย
\ h
,
ย
ย
h i
shared
ย
ย
j p
:
ย
ย
p q
true
ย
ย
r v
,
ย
ย
v w%
retainedFileCountLimitย
ย
x 
:ย
ย
 
$numย
ย
 ‘
)ย
ย
‘ ’
.ย
ย
’ “
CreateLoggerย
ย
“ 
(ย
ย
  
)ย
ย
  ก
;ย
ย
ก ข
log
ร
ร
 
.
ร
ร
  
Information
ร
ร
  +
(
ร
ร
+ ,
$str
ร
ร
, a
+
ร
ร
b c
$str
ร
ร
d r
+
ร
ร
s t
bCSCContentร
ร
u €
.ร
ร
€ !
BCSCSectionNumberร
ร
 ’
+ร
ร
“ ”
$strร
ร
• 
+ร
ร
 
bCSCContentร
ร
 จ
.ร
ร
จ ฉ
ChapterNameร
ร
ฉ ด
+ร
ร
ต ถ
$strร
ร
ท ผ
+ร
ร
ฝ พ
bCSCContentร
ร
ฟ ส
.ร
ร
ส ห
	TopicNameร
ร
ห ิ
)ร
ร
ิ ี
;ร
ร
ี ึ
}
ฤ
ฤ
 
}
ฯ
ฯ
 
}
ะ
ะ
 
}
ั
ั
 
return
า
า
 
$num
า
า
 
;
า
า
 
}
ำ
ำ
 	
public
ึ
ึ
 
static
ึ
ึ
 
bool
ึ
ึ
 "
ChapterAndTopicMatch
ึ
ึ
 /
(
ึ
ึ
/ 0
BCSCContentVM
ึ
ึ
0 =
bCSCContent
ึ
ึ
> I
)
ึ
ึ
I J
{
ื
ื
 	
var
ู
ู
 
valid
ู
ู
 
=
ู
ู
 
false
ู
ู
 
;
ู
ู
 
if
Ü
Ü
 
(
Ü
Ü
 
!
Ü
Ü
 
string
Ü
Ü
 
.
Ü
Ü
 
IsNullOrEmpty
Ü
Ü
 %
(
Ü
Ü
% &
bCSCContent
Ü
Ü
& 1
.
Ü
Ü
1 2
ChapterName
Ü
Ü
2 =
)
Ü
Ü
= >
&&
Ü
Ü
? A
!
Ü
Ü
B C
string
Ü
Ü
C I
.
Ü
Ü
I J
IsNullOrEmpty
Ü
Ü
J W
(
Ü
Ü
W X
bCSCContent
Ü
Ü
X c
.
Ü
Ü
c d
	TopicName
Ü
Ü
d m
)
Ü
Ü
m n
)
Ü
Ü
n o
{
Ý
Ý
 
var
Þ
Þ
 
log
Þ
Þ
 
=
Þ
Þ
 
new
Þ
Þ
 
Serilog
Þ
Þ
 %
.
Þ
Þ
% &!
LoggerConfiguration
Þ
Þ
& 9
(
Þ
Þ
9 :
)
Þ
Þ
: ;
.
Þ
Þ
; <
WriteTo
Þ
Þ
< C
.
Þ
Þ
C D
RollingFile
Þ
Þ
D O
(
Þ
Þ
O P
sAttrLogPath
Þ
Þ
P \
,
Þ
Þ
\ ]
shared
Þ
Þ
^ d
:
Þ
Þ
d e
true
Þ
Þ
f j
,
Þ
Þ
j k%
retainedFileCountLimitÞ
Þ
l 
:Þ
Þ
 
$numÞ
Þ
 …
)Þ
Þ
… 
.Þ
Þ
 
CreateLoggerÞ
Þ
 “
(Þ
Þ
“ ”
)Þ
Þ
” •
;Þ
Þ
• –
DirectoryInfo
แ
แ
 
	directory
แ
แ
 '
=
แ
แ
( )
new
แ
แ
* -
DirectoryInfo
แ
แ
. ;
(
แ
แ
; <%
WebConfigurationManager
แ
แ
< S
.
แ
แ
S T
AppSettings
แ
แ
T _
[
แ
แ
_ `
$str
แ
แ
` t
]
แ
แ
t u
+
แ
แ
v w
bCSCContentแ
แ
x 
.แ
แ
 !
BCSCSectionNumberแ
แ
 •
+แ
แ
– —
stringแ
แ
 
.แ
แ
 
Emptyแ
แ
 ค
)แ
แ
ค ฅ
;แ
แ
ฅ ฆ
log
โ
โ
 
.
โ
โ
 
Information
โ
โ
 
(
โ
โ
  
$str
โ
โ
  4
+
โ
โ
5 6
	directory
โ
โ
7 @
)
โ
โ
@ A
;
โ
โ
A B
IEnumerable
ใ
ใ
 
<
ใ
ใ
 
System
ใ
ใ
 "
.
ใ
ใ
" #
IO
ใ
ใ
# %
.
ใ
ใ
% &
FileInfo
ใ
ใ
& .
>
ใ
ใ
. /
fileList
ใ
ใ
0 8
=
ใ
ใ
9 :
	directory
ใ
ใ
; D
.
ใ
ใ
D E
GetFiles
ใ
ใ
E M
(
ใ
ใ
M N
$str
ใ
ใ
N S
,
ใ
ใ
S T
System
ใ
ใ
U [
.
ใ
ใ
[ \
IO
ใ
ใ
\ ^
.
ใ
ใ
^ _
SearchOption
ใ
ใ
_ k
.
ใ
ใ
k l
AllDirectories
ใ
ใ
l z
)
ใ
ใ
z {
;
ใ
ใ
{ |
string
ๅ
ๅ
 
	topicname
ๅ
ๅ
  
=
ๅ
ๅ
! "
(
ๅ
ๅ
# $
bCSCContent
ๅ
ๅ
$ /
.
ๅ
ๅ
/ 0
	TopicName
ๅ
ๅ
0 9
.
ๅ
ๅ
9 :
ToString
ๅ
ๅ
: B
(
ๅ
ๅ
B C
)
ๅ
ๅ
C D
)
ๅ
ๅ
D E
.
ๅ
ๅ
E F
Trim
ๅ
ๅ
F J
(
ๅ
ๅ
J K
)
ๅ
ๅ
K L
;
ๅ
ๅ
L M
var
็
็
  
queryMatchingFiles
็
็
 &
=
็
็
' (
from
่
่
 
file
่
่
 
in
่
่
 
fileList
่
่
 %
where
้
้
 
file
้
้
 
.
้
้
 
	Extension
้
้
 $
==
้
้
% '
$str
้
้
( /
&&
้
้
0 2
!
้
้
3 4
file
้
้
4 8
.
้
้
8 9
Name
้
้
9 =
.
้
้
= >
Contains
้
้
> F
(
้
้
F G
$str
้
้
G N
)
้
้
N O
let
๊
๊
 
fileText
๊
๊
 
=
๊
๊
 
GetFileText
๊
๊
 *
(
๊
๊
* +
file
๊
๊
+ /
.
๊
๊
/ 0
FullName
๊
๊
0 8
)
๊
๊
8 9
where
๋
๋
 
fileText
๋
๋
 
.
๋
๋
 
Contains
๋
๋
 '
(
๋
๋
' (
	StripHTML
๋
๋
( 1
(
๋
๋
1 2
bCSCContent
๋
๋
2 =
.
๋
๋
= >
ChapterName
๋
๋
> I
.
๋
๋
I J
Replace
๋
๋
J Q
(
๋
๋
Q R
(
๋
๋
R S
char
๋
๋
S W
)
๋
๋
W X
$num
๋
๋
X \
,
๋
๋
\ ]
$char
๋
๋
^ a
)
๋
๋
a b
.
๋
๋
b c
Trim
๋
๋
c g
(
๋
๋
g h
)
๋
๋
h i
)
๋
๋
i j
)
๋
๋
j k
&&
๋
๋
l n
fileText
๋
๋
o w
.
๋
๋
w x
Contains๋
๋
x €
(๋
๋
€ 
	StripHTML๋
๋
 
(๋
๋
 
	topicname๋
๋
 ”
.๋
๋
” •
Trim๋
๋
• 
(๋
๋
 
)๋
๋
 
.๋
๋
 
Replace๋
๋
 ฃ
(๋
๋
ฃ ค
(๋
๋
ค ฅ
char๋
๋
ฅ ฉ
)๋
๋
ฉ ช
$num๋
๋
ช ฎ
,๋
๋
ฎ ฏ
$char๋
๋
ฐ ณ
)๋
๋
ณ ด
)๋
๋
ด ต
)๋
๋
ต ถ
select
์
์
 
file
์
์
 
.
์
์
 
Name
์
์
  
;
์
์
  !
try
๎
๎
 
{
๏
๏
 
foreach
๐
๐
 
(
๐
๐
 
string
๐
๐
 #
filename
๐
๐
$ ,
in
๐
๐
- / 
queryMatchingFiles
๐
๐
0 B
)
๐
๐
B C
{
๑
๑
 
string
๒
๒
 
filedata
๒
๒
 '
=
๒
๒
( )
string
๒
๒
* 0
.
๒
๒
0 1
Empty
๒
๒
1 6
;
๒
๒
6 7
using
๓
๓
 
(
๓
๓
 
StreamReader
๓
๓
 +
	fileTopic
๓
๓
, 5
=
๓
๓
6 7
new
๓
๓
8 ;
StreamReader
๓
๓
< H
(
๓
๓
H I
	directory
๓
๓
I R
+
๓
๓
S T
$str
๓
๓
U Y
+
๓
๓
Z [
filename
๓
๓
\ d
)
๓
๓
d e
)
๓
๓
e f
{
๔
๔
 
filedata
๕
๕
 $
=
๕
๕
% &
	fileTopic
๕
๕
' 0
.
๕
๕
0 1
	ReadToEnd
๕
๕
1 :
(
๕
๕
: ;
)
๕
๕
; <
;
๕
๕
< =
	fileTopic
๖
๖
 %
.
๖
๖
% &
Close
๖
๖
& +
(
๖
๖
+ ,
)
๖
๖
, -
;
๖
๖
- .
}
๗
๗
 
HtmlDocument
๙
๙
 $
htmlDocument
๙
๙
% 1
=
๙
๙
2 3
new
๙
๙
4 7
HtmlDocument
๙
๙
8 D
(
๙
๙
D E
)
๙
๙
E F
;
๙
๙
F G
htmlDocument
๚
๚
 $
.
๚
๚
$ %
LoadHtml
๚
๚
% -
(
๚
๚
- .
filedata
๚
๚
. 6
)
๚
๚
6 7
;
๚
๚
7 8
List
ý
ý
 
<
ý
ý
 
HtmlNode
ý
ý
 %
>
ý
ý
% &
chaptertitle
ý
ý
' 3
=
ý
ý
4 5
htmlDocument
ý
ý
6 B
.
ý
ý
B C
DocumentNode
ý
ý
C O
.
ý
ý
O P
Descendants
ý
ý
P [
(
ý
ý
[ \
)
ý
ý
\ ]
.
ý
ý
] ^
Where
ý
ý
^ c
(
ý
ý
c d
x
ý
ý
d e
=>
ý
ý
f h
(
ý
ý
i j
x
ý
ý
j k
.
ý
ý
k l
Name
ý
ý
l p
==
ý
ý
q s
$str
ý
ý
t w
&&
ý
ý
x z
x
ý
ý
{ |
.
ý
ý
| }

Attributesý
ý
} 
[ý
ý
 
$strý
ý
 
]ý
ý
 
!=ý
ý
‘ “
nullý
ý
” 
&&ý
ý
 
xý
ý
 
.ý
ý
 

Attributesý
ý
 จ
[ý
ý
จ ฉ
$strý
ý
ฉ ฐ
]ý
ý
ฐ ฑ
.ý
ý
ฑ ฒ
Valueý
ý
ฒ ท
.ý
ý
ท ธ
Containsý
ý
ธ ภ
(ý
ý
ภ ม
$strý
ý
ม ะ
)ý
ý
ะ ั
)ý
ý
ั า
)ý
ý
า ำ
.ý
ý
ำ ิ
ToListý
ý
ิ ฺ
(ý
ý
ฺ Û
)ý
ý
Û Ü
;ý
ý
Ü Ý
foreach
ÿ
ÿ
 
(
ÿ
ÿ
  !
var
ÿ
ÿ
! $
chaptertermdata
ÿ
ÿ
% 4
in
ÿ
ÿ
5 7
chaptertitle
ÿ
ÿ
8 D
)
ÿ
ÿ
D E
{
€€ 
List
  
<
  !
HtmlNode
! )
>
) *
toftitle
+ 3
=
4 5
htmlDocument
6 B
.
B C
DocumentNode
C O
.
O P
Descendants
P [
(
[ \
)
\ ]
.
] ^
Where
^ c
(
c d
x
d e
=>
f h
(
i j
x
j k
.
k l
Name
l p
==
q s
$str
t w
&&
x z
x
{ |
.
| }

Attributes} 
[ 
$str 
] 
!=‘ “
null” 
&& 
x 
. 

Attributes จ
[จ ฉ
$strฉ ฐ
]ฐ ฑ
.ฑ ฒ
Valueฒ ท
.ท ธ
Containsธ ภ
(ภ ม
$strม ล
)ล ฦ
&&ว ษ
!ส ห
xห ฬ
.ฬ อ

Attributesอ ื
[ื ุ
$strุ ฿
]฿ เ
.เ แ
Valueแ ๆ
.ๆ ็
Contains็ ๏
(๏ ๐
$str๐ ๗
)๗ ๘
&&๙ ๛
!ü ý
xý þ
.þ ÿ

Attributesÿ 
[ 
$str ‘
]‘ ’
.’ “
Value“ 
. 
Contains ก
(ก ข
$strข ฎ
)ฎ ฏ
)ฏ ฐ
)ฐ ฑ
.ฑ ฒ
ToListฒ ธ
(ธ น
)น บ
;บ ป
if
…… 
(
……  
HtmlRemoval
……  +
.
……+ ,
StripTagsRegex
……, :
(
……: ;
chaptertermdata
……; J
.
……J K
	InnerText
……K T
.
……T U
Replace
……U \
(
……\ ]
(
……] ^
char
……^ b
)
……b c
$num
……c g
,
……g h
$char
……i l
)
……l m
)
……m n
==
……o q
bCSCContent
……r }
.
……} ~
ChapterName……~ 
.…… 
Replace…… ‘
(……‘ ’
(……’ “
char……“ —
)……— 
$num…… 
,…… 
$char…… ก
)……ก ข
.……ข ฃ
Trim……ฃ ง
(……ง จ
)……จ ฉ
&&……ช ฌ
toftitle……ญ ต
.……ต ถ
Count……ถ ป
>……ผ ฝ
$num……พ ฟ
)……ฟ ภ
{
 
foreach
  '
(
( )
var
) ,
itemn
- 2
in
3 5
toftitle
6 >
)
> ?
{
  !
if
$ &
(
' (
HtmlRemoval
( 3
.
3 4
StripTagsRegex
4 B
(
B C
itemn
C H
.
H I
	InnerHtml
I R
.
R S
Trim
S W
(
W X
)
X Y
)
Y Z
==
[ ]
HtmlRemoval
^ i
.
i j
StripTagsRegex
j x
(
x y
	topicnamey 
. 
Trim 
( 
) 
) 
) 
{
$ %
valid
( -
=
. /
true
0 4
;
4 5
break
( -
;
- .
}
$ %
}
  !
}
‘‘ 
}
’’ 
}
““ 
}
”” 
catch
•• 
(
•• 
	Exception
••  
ex
••! #
)
••# $
{
–– 
log
—— 
.
—— 
Information
—— #
(
——# $
$str
——$ ?
+
——@ A
ex
——B D
.
——D E
Message
——E L
)
——L M
;
——M N
return
 
valid
  
;
  !
}
 
}
 
return
 
valid
 
;
 
}
 	
public
 
static
 
int
 ,
UpdateBCSCMapperContentForOnce
 8
(
8 9
int
9 <

questionId
= G
)
G H
{
 	
List
   
<
   
BCSCContentVM
   
>
   
bCSCContentData
    /
=
  0 1
new
  2 5
List
  6 :
<
  : ;
BCSCContentVM
  ; H
>
  H I
(
  I J
)
  J K
;
  K L
bCSCContentData
กก 
=
กก /
!GetBCSCSectionChapterTopicDetails
กก ?
(
กก? @

questionId
กก@ J
)
กกJ K
;
กกK L
	ImportDAL
ขข 
.
ขข 2
$DeleteContentFromBCSCMapperOnRetired
ขข :
(
ขข: ;

questionId
ขข; E
)
ขขE F
;
ขขF G
foreach
ฃฃ 
(
ฃฃ 
BCSCContentVM
ฃฃ "
bCSCContent
ฃฃ# .
in
ฃฃ/ 1
bCSCContentData
ฃฃ2 A
)
ฃฃA B
{
คค 
var
ฅฅ 
bcscBookdata
ฅฅ  
=
ฅฅ! "$
GetBCSCContentFromBook
ฅฅ# 9
(
ฅฅ9 :
bCSCContent
ฅฅ: E
)
ฅฅE F
;
ฅฅF G
bCSCContent
ฆฆ 
.
ฆฆ 
Content
ฆฆ #
=
ฆฆ$ %
bcscBookdata
ฆฆ& 2
.
ฆฆ2 3
BCSCContent
ฆฆ3 >
;
ฆฆ> ?
bCSCContent
งง 
.
งง 
BCSCbookWordCount
งง -
=
งง. /
bcscBookdata
งง0 <
.
งง< =
TotalBcscWord
งง= J
;
งงJ K
	ImportDAL
จจ 
.
จจ '
InsertContentInBCSCMapper
จจ 3
(
จจ3 4
bCSCContent
จจ4 ?
)
จจ? @
;
จจ@ A
}
ฉฉ 
return
ซซ 
$num
ซซ 
;
ซซ 
}
ฌฌ 	
}
ญญ 
}ฎฎ €ฏ
qD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\IncorrectQuestionDetailsBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class &
IncorrectQuestionDetailsBL 2
{ 
private 
static 
string 
_sAttrLogPath +
=, - 
ConfigurationManager. B
.B C
AppSettingsC N
.N O
GetO R
(R S
$strS `
)` a
;a b
private 
static 
Serilog 
. 
Core #
.# $
Logger$ *
log+ .
=/ 0
new1 4
LoggerConfiguration5 H
(H I
)I J
.J K
WriteToK R
.R S
RollingFileS ^
(^ _
_sAttrLogPath_ l
,l m
sharedn t
:t u
truev z
,z {#
retainedFileCountLimit	| ’
:
’ “
$num
” •
)
• –
.
– —
CreateLogger
— ฃ
(
ฃ ค
)
ค ฅ
;
ฅ ฆ
public 
static 
List 
< 
QuestionDetails *
>* +$
IncorrectQuestionDetails, D
(D E
	ReportsVME N"
incorrectReportDetailsO e
)e f
{ 	
List 
< 
QuestionDetails  
>  !%
reportQuestionDetailsList" ;
=< =
new> A
ListB F
<F G
QuestionDetailsG V
>V W
(W X
)X Y
;Y Z
List 
< '
IncorrectQuestionDetailsDTO ,
>, -
questionList. :
=; <
new= @
ListA E
<E F'
IncorrectQuestionDetailsDTOF a
>a b
(b c
)c d
;d e
questionList 
= '
IncorrectQuestionDetailsDAL 6
.6 7$
IncorrectQuestionDetails7 O
(O P"
incorrectReportDetailsP f
.f g
UserIdg m
,m n#
incorrectReportDetails	o …
.
… 
SubspecialtyId
 ”
,
” •$
incorrectReportDetails
– ฌ
.
ฌ ญ
ExamStartDate
ญ บ
,
บ ป$
incorrectReportDetails
ผ า
.
า ำ
ExamCompletedDate
ำ ไ
,
ไ ๅ$
incorrectReportDetails
ๆ ü
.
ü ý
NoOfRecords
ý 
,
 $
incorrectReportDetails
  
.
  ก
PageNo
ก ง
,
ง จ$
incorrectReportDetails
ฉ ฟ
.
ฟ ภ
Year
ภ ฤ
)
ฤ ล
;
ล ฦ
foreach 
( 
var 
item 
in  
questionList! -
)- .
{ 
item 
. 
UserId 
= "
incorrectReportDetails 4
.4 5
UserId5 ;
;; <
QuestionDetails !
reportQuestionDetails  5
=6 7
new8 ;
QuestionDetails< K
(K L
)L M
;M N
if 
( 
item 
. 
ExamType !
==" $
$num% &
)& '
{ !
reportQuestionDetails   )
=  * + 
GetExamQuestionForSR  , @
(  @ A
item  A E
.  E F
ExamId  F L
,  L M
item  N R
.  R S

QuestionId  S ]
,  ] ^
item  _ c
.  c d
UserId  d j
)  j k
;  k l
}!! 
else"" 
{## !
reportQuestionDetails%% )
=%%* +
GetExamQuestion%%, ;
(%%; <
item%%< @
.%%@ A
ExamId%%A G
,%%G H
item%%I M
.%%M N

QuestionId%%N X
,%%X Y
item%%Z ^
.%%^ _
UserId%%_ e
)%%e f
;%%f g
}&& !
reportQuestionDetails(( %
.((% &
QuestionCount((& 3
=((4 5
item((6 :
.((: ;
QuestionIdCount((; J
;((J K!
reportQuestionDetails)) %
.))% &
serialNumber))& 2
=))3 4
item))5 9
.))9 :
	Rownumber)): C
;))C D!
reportQuestionDetails** %
.**% &
SubSpeciality**& 3
=**4 5
item**6 :
.**: ;
Subspecialty**; G
;**G H!
reportQuestionDetails++ %
.++% &
Section++& -
=++. /
item++0 4
.++4 5
Section++5 <
;++< =%
reportQuestionDetailsList,, )
.,,) *
Add,,* -
(,,- .!
reportQuestionDetails,,. C
),,C D
;,,D E
}-- 
return// %
reportQuestionDetailsList// ,
;//, -
}00 	
public22 
static22 
QuestionDetails22 %
GetExamQuestion22& 5
(225 6
int226 9
?229 :
examId22; A
,22A B
int22C F
?22F G

questionId22H R
,22R S
int22T W
?22W X
userId22Y _
)22_ `
{33 	
SqlConnection44 

connection44 $
=44% &
new44' *
SqlConnection44+ 8
(448 9!
SqlConnectionProvider449 N
.44N O
GetConnectionString44O b
(44b c
DataAccessType44c q
.44q r
Read44r v
)44v w
)44w x
;44x y

connection55 
.55 
Open55 
(55 
)55 
;55 
try77 
{88 
Log99 
.99 
Information99 
(99  
$str99  X
,99X Y
$str99Z k
,99k l
examId99m s
,99s t

questionId99u 
,	99 €
userId
99 
)
99 
;
99 
ExamDTO;; 
examObj;; 
=;;  !
AssessmentBL;;" .
.;;. /
GetExamBYId;;/ :
(;;: ;
examId;;; A
);;A B
;;;B C
List<< 
<<< 
Choice<< 
><< 

choiceList<< '
=<<( )
new<<* -
List<<. 2
<<<2 3
Choice<<3 9
><<9 :
(<<: ;
)<<; <
;<<< =
QuestionDetails== 
questionDetails==  /
===0 1
new==2 5
QuestionDetails==6 E
(==E F
)==F G
;==G H
if>> 
(>> 
Convert>> 
.>> 
ToInt32>> #
(>># $

questionId>>$ .
)>>. /
==>>0 2
$num>>3 4
)>>4 5
{?? 
log@@ 
.@@ 
Information@@ #
(@@# $
$str@@$ \
,@@\ ]
$str@@^ p
,@@p q
examId@@r x
,@@x y

questionId	@@z 
,
@@ …
userId
@@ 
)
@@ 
;
@@ 

questionIdAA 
=AA  
AssessmentDALAA! .
.AA. /
GetFirstQuestionAA/ ?
(AA? @
examObjAA@ G
)AAG H
;AAH I
logBB 
.BB 
InformationBB #
(BB# $
$strBB$ Z
,BBZ [
$strBB\ n
,BBn o
examIdBBp v
,BBv w

questionId	BBx 
,
BB 
userId
BB 
)
BB 
;
BB 
}CC 
logFF 
.FF 
InformationFF 
(FF  
$strFF  X
,FFX Y
$strFFZ n
,FFn o
examIdFFp v
,FFv w

questionId	FFx 
,
FF 
userId
FF 
)
FF 
;
FF 
questionDetailsGG 
=GG  !
AssessmentDALGG" /
.GG/ 0
GetQuestionDetailsGG0 B
(GGB C
ConvertGGC J
.GGJ K
ToInt32GGK R
(GGR S
examIdGGS Y
)GGY Z
,GGZ [
ConvertGG\ c
.GGc d
ToInt32GGd k
(GGk l

questionIdGGl v
)GGv w
)GGw x
;GGx y
logHH 
.HH 
InformationHH 
(HH  
$strHH  V
,HHV W
$strHHX l
,HHl m
examIdHHn t
,HHt u

questionId	HHv €
,
HH€ 
userId
HH 
)
HH 
;
HH 
questionDetailsNN 
.NN  
rightChoiceIdNN  -
=NN. /
AssessmentDALNN0 =
.NN= >&
GetRightChoiceByQuestionIdNN> X
(NNX Y
ConvertNNY `
.NN` a
ToInt32NNa h
(NNh i

questionIdNNi s
)NNs t
,NNt u

connection	NNv €
)
NN€ 
;
NN 
questionDetailsQQ 
.QQ  

examStatusQQ  *
=QQ+ ,
examObjQQ- 4
.QQ4 5

ExamStatusQQ5 ?
;QQ? @
questionDetailsRR 
.RR  
examAttemptIdRR  -
=RR. /
examObjRR0 7
.RR7 8
ExamAttemptIdRR8 E
;RRE F
questionDetailsSS 
.SS  
examTimeTypeSS  ,
=SS- .
examObjSS/ 6
.SS6 7
ExamTimeTypeSS7 C
;SSC D
questionDetailsTT 
.TT  
examModeTT  (
=TT) *
examObjTT+ 2
.TT2 3
ExamModeTT3 ;
;TT; <
questionDetailsUU 
.UU  
examAnswerToShowUU  0
=UU1 2
examObjUU3 :
.UU: ;
ExamAnswerToShowUU; K
;UUK L
questionDetailsVV 
.VV  
noOfQuestionVV  ,
=VV- .
examObjVV/ 6
.VV6 7
NoofQuestionsVV7 D
;VVD E
questionDetailsWW 
.WW  
ExamNameWW  (
=WW) *
examObjWW+ 2
.WW2 3
ExamNameWW3 ;
;WW; <
questionDetailsXX 
.XX  
ExamTypeXX  (
=XX) *
examObjXX+ 2
.XX2 3
ExamTypeXX3 ;
;XX; <
questionDetailsYY 
.YY  
userIdYY  &
=YY' (
examObjYY) 0
.YY0 1
UserIdYY1 7
;YY7 8
log[[ 
.[[ 
Information[[ 
([[  
$str[[  X
,[[X Y
$str[[Z q
,[[q r
examId[[s y
,[[y z

questionId	[[{ …
,
[[… 
userId
[[ 
)
[[ 
;
[[ 
questionDetails\\ 
.\\  
questionDiscussion\\  2
=\\3 4
AssessmentDAL\\5 B
.\\B C!
GetQuestionDiscussion\\C X
(\\X Y
Convert\\Y `
.\\` a
ToInt32\\a h
(\\h i

questionId\\i s
)\\s t
,\\t u

connection	\\v €
)
\\€ 
;
\\ 
log]] 
.]] 
Information]] 
(]]  
$str]]  V
,]]V W
$str]]X o
,]]o p
examId]]q w
,]]w x

questionId	]]y 
,
]] 
userId
]]… 
)
]] 
;
]] 
questionDetails`` 
.``  

references``  *
=``+ ,
AssessmentDAL``- :
.``: ;
GetReferences``; H
(``H I
Convert``I P
.``P Q
ToInt32``Q X
(``X Y

questionId``Y c
)``c d
,``d e

connection``f p
)``p q
;``q r
questionDetailscc 
.cc  
notescc  %
=cc& '
AssessmentDALcc( 5
.cc5 6
GetNotescc6 >
(cc> ?
Convertcc? F
.ccF G
ToInt32ccG N
(ccN O

questionIdccO Y
)ccY Z
,ccZ [
Convertcc\ c
.ccc d
ToInt32ccd k
(cck l
userIdccl r
)ccr s
,ccs t
Convertccu |
.cc| }
ToInt32	cc} 
(
cc …
examId
cc… 
)
cc 
,
cc 

connection
cc 
)
cc 
;
cc 
questionDetailsff 
.ff  
RelatedContentsff  /
=ff0 1
AssessmentDALff2 ?
.ff? @
GetRelatedContentff@ Q
(ffQ R
ConvertffR Y
.ffY Z
ToInt32ffZ a
(ffa b

questionIdffb l
)ffl m
,ffm n

connectionffo y
)ffy z
;ffz {
questionDetailsii 
.ii   
examAttemptAnswerDTOii  4
=ii5 6
AssessmentDALii7 D
.iiD E 
GetExamAttemptAnsweriiE Y
(iiY Z
ConvertiiZ a
.iia b
ToInt32iib i
(iii j

questionIdiij t
)iit u
,iiu v
Convertiiw ~
.ii~ 
ToInt32	ii 
(
ii 
examObj
ii 
.
ii 
ExamAttemptId
ii 
)
ii 
,
ii 

connection
ii ฉ
)
iiฉ ช
;
iiช ซ
questionDetailsll 
.ll  
examAttemptTextll  /
=ll0 1
AssessmentDALll2 ?
.ll? @$
GetExamAttemptAnswerTextll@ X
(llX Y
ConvertllY `
.ll` a
ToInt32lla h
(llh i
examIdlli o
)llo p
,llp q
Convertllr y
.lly z
ToInt32	llz 
(
ll 

questionId
ll 
)
ll 
)
ll 
;
ll 
questionDetailsoo 
.oo  
	markCheckoo  )
=oo* +
AssessmentDALoo, 9
.oo9 :
GetMarkStatusoo: G
(ooG H
ConvertooH O
.ooO P
ToInt32ooP W
(ooW X
examIdooX ^
)oo^ _
,oo_ `
Convertooa h
.ooh i
ToInt32ooi p
(oop q

questionIdooq {
)oo{ |
,oo| }
Convert	oo~ …
.
oo… 
ToInt32
oo 
(
oo 
userId
oo ”
)
oo” •
)
oo• –
;
oo– —
questionDetailspp 
.pp  
examIdpp  &
=pp' (
Convertpp) 0
.pp0 1
ToInt32pp1 8
(pp8 9
examIdpp9 ?
)pp? @
;pp@ A
questionDetailsqq 
.qq  "
CurrentExamAttemptTimeqq  6
=qq7 8
DateTimeqq9 A
.qqA B
NowqqB E
;qqE F

choiceListtt 
=tt 
AssessmentDALtt *
.tt* +!
GetChoiceBYQuestionIdtt+ @
(tt@ A
ConvertttA H
.ttH I
ToInt32ttI P
(ttP Q

questionIdttQ [
)tt[ \
,tt\ ]
examIdtt^ d
,ttd e
questionDetailsttf u
.ttu v!
examAttemptAnswerDTO	ttv 
.
tt 
ChoiceId
tt “
,
tt“ ”
questionDetails
tt• ค
.
ttค ฅ
examAttemptId
ttฅ ฒ
,
ttฒ ณ
questionDetails
ttด ร
.
ttร ฤ 
NotRandomizeAnswer
ttฤ ึ
,
ttึ ื

connection
ttุ โ
)
ttโ ใ
;
ttใ ไ
questionDetailsuu 
.uu  

choiceListuu  *
=uu+ ,

choiceListuu- 7
;uu7 8
logyy 
.yy 
Informationyy 
(yy  
$stryy  X
,yyX Y
$stryyZ j
,yyj k
examIdyyl r
,yyr s

questionIdyyt ~
,yy~ 
userId
yy€ 
)
yy 
;
yy 
varzz 
peerdatazz 
=zz 
AssessmentDALzz ,
.zz, -
GetPeerDetailszz- ;
(zz; <
Convertzz< C
.zzC D
ToInt32zzD K
(zzK L

questionIdzzL V
)zzV W
,zzW X
ConvertzzY `
.zz` a
ToInt32zza h
(zzh i
userIdzzi o
)zzo p
,zzp q
questionDetails	zzr 
.
zz 
examAttemptId
zz 
)
zz 
;
zz ‘
log{{ 
.{{ 
Information{{ 
({{  
$str{{  V
,{{V W
$str{{X h
,{{h i
examId{{j p
,{{p q

questionId{{r |
,{{| }
userId	{{~ 
)
{{ …
;
{{… 
questionDetails|| 
.||  
PeerDetails||  +
=||, -
peerdata||. 6
.||6 7
Where||7 <
(||< =
s||= >
=>||? A
s||B C
.||C D
ChoiceId||D L
!=||M O
$num||P Q
)||Q R
.||R S
OrderBy||S Z
(||Z [
s||[ \
=>||] _
s||` a
.||a b
ChoiceOption||b n
)||n o
.||o p
ToList||p v
(||v w
)||w x
;||x y
log 
. 
Information 
(  
$str  X
,X Y
$strZ l
,l m
examIdn t
,t u

questionId	v €
,
€ 
userId
 
)
 
;
 
questionDetails
€€ 
.
€€  
QuestionCount
€€  -
=
€€. /
AssessmentDAL
€€0 =
.
€€= >
GetQuestionCount
€€> N
(
€€N O
Convert
€€O V
.
€€V W
ToInt32
€€W ^
(
€€^ _
examId
€€_ e
)
€€e f
)
€€f g
;
€€g h
log
 
.
 
Information
 
(
  
$str
  V
,
V W
$str
X j
,
j k
examId
l r
,
r s

questionId
t ~
,
~ 
userId€ 
) 
; 
log
 
.
 
Information
 
(
  
$str
  X
,
X Y
$str
Z n
,
n o
examId
p v
,
v w

questionIdx 
, 
userId 
) 
; 
questionDetails
…… 
.
……  
BCSCExcerpt
……  +
=
……, -
AssessmentDAL
……. ;
.
……; < 
GetBCSCExcerptText
……< N
(
……N O
Convert
……O V
.
……V W
ToInt32
……W ^
(
……^ _

questionId
……_ i
)
……i j
)
……j k
;
……k l
log
 
.
 
Information
 
(
  
$str
  V
,
V W
$str
X l
,
l m
examId
n t
,
t u

questionIdv €
,€ 
userId 
) 
; 
questionDetails
 
.
  
ExcerptHeadings
  /
=
0 1
AssessmentBL
2 >
.
> ? 
GetExcerptHeadings
? Q
(
Q R
questionDetails
R a
.
a b
BCSCExcerpt
b m
)
m n
;
n o
log
 
.
 
Information
 
(
  
$str
  X
,
X Y
$str
Z n
,
n o
examId
p v
,
v w

questionIdx 
, 
userId 
) 
; 
questionDetails
 
.
  
	TopicName
  )
=
* +
AssessmentDAL
, 9
.
9 : 
GetTopicByQuestion
: L
(
L M
Convert
M T
.
T U
ToInt32
U \
(
\ ]

questionId
] g
)
g h
)
h i
;
i j
log
 
.
 
Information
 
(
  
$str
  V
,
V W
$str
X l
,
l m
examId
n t
,
t u

questionIdv €
,€ 
userId 
) 
; 

connection
 
.
 
Close
  
(
  !
)
! "
;
" #
log
 
.
 
Information
 
(
  
$str
  V
,
V W
$str
X i
,
i j
examId
k q
,
q r

questionId
s }
,
} ~
userId …
)… 
; 
return
 
questionDetails
 &
;
& '
}
‘‘ 
catch
’’ 
(
’’ 
	Exception
’’ 
e
’’ 
)
’’ 
{
““ 
log
”” 
.
”” 
Error
”” 
(
”” 
e
”” 
.
”” 
Message
”” #
+
””$ %
$str
””& ?
+
””@ A
$str
””B L
+
””M N
examId
””O U
+
””V W
$str
””X b
+
””c d
userId
””e k
)
””k l
;
””l m
Console
•• 
.
•• 
Write
•• 
(
•• 
e
•• 
.
••  
Message
••  '
)
••' (
;
••( )
return
–– 
null
–– 
;
–– 
}
—— 
}
 	
public
 
static
 
QuestionDetails
 %"
GetExamQuestionForSR
& :
(
: ;
int
; >
?
> ?
examId
@ F
,
F G
int
H K
?
K L

questionId
M W
,
W X
int
Y \
?
\ ]
userId
^ d
)
d e
{
 	
SqlConnection
 

connection
 $
=
% &
new
' *
SqlConnection
+ 8
(
8 9#
SqlConnectionProvider
9 N
.
N O!
GetConnectionString
O b
(
b c
DataAccessType
c q
.
q r
Read
r v
)
v w
)
w x
;
x y

connection
 
.
 
Open
 
(
 
)
 
;
 
try
 
{
   
log
กก 
.
กก 
Information
กก 
(
กก  
$str
กก  X
,
กกX Y
$str
กกZ k
,
กกk l
examId
กกm s
,
กกs t

questionId
กกu 
,กก €
userIdกก 
)กก 
;กก 
ExamDTO
ขข 
examObj
ขข 
=
ขข  !
AssessmentBL
ขข" .
.
ขข. /
GetExamBYId
ขข/ :
(
ขข: ;
examId
ขข; A
)
ขขA B
;
ขขB C
List
ฃฃ 
<
ฃฃ 
Choice
ฃฃ 
>
ฃฃ 

choiceList
ฃฃ '
=
ฃฃ( )
new
ฃฃ* -
List
ฃฃ. 2
<
ฃฃ2 3
Choice
ฃฃ3 9
>
ฃฃ9 :
(
ฃฃ: ;
)
ฃฃ; <
;
ฃฃ< =
QuestionDetails
คค 
questionDetails
คค  /
=
คค0 1
new
คค2 5
QuestionDetails
คค6 E
(
คคE F
)
คคF G
;
คคG H
if
ฅฅ 
(
ฅฅ 
Convert
ฅฅ 
.
ฅฅ 
ToInt32
ฅฅ #
(
ฅฅ# $

questionId
ฅฅ$ .
)
ฅฅ. /
==
ฅฅ0 2
$num
ฅฅ3 4
)
ฅฅ4 5
{
ฆฆ 
log
งง 
.
งง 
Information
งง #
(
งง# $
$str
งง$ \
,
งง\ ]
$str
งง^ p
,
งงp q
examId
งงr x
,
งงx y

questionIdงงz 
,งง …
userIdงง 
)งง 
;งง 

questionId
จจ 
=
จจ  
AssessmentDAL
จจ! .
.
จจ. /
GetFirstQuestion
จจ/ ?
(
จจ? @
examObj
จจ@ G
)
จจG H
;
จจH I
log
ฉฉ 
.
ฉฉ 
Information
ฉฉ #
(
ฉฉ# $
$str
ฉฉ$ Z
,
ฉฉZ [
$str
ฉฉ\ n
,
ฉฉn o
examId
ฉฉp v
,
ฉฉv w

questionIdฉฉx 
,ฉฉ 
userIdฉฉ 
)ฉฉ 
;ฉฉ 
}
ชช 
log
ญญ 
.
ญญ 
Information
ญญ 
(
ญญ  
$str
ญญ  X
,
ญญX Y
$str
ญญZ n
,
ญญn o
examId
ญญp v
,
ญญv w

questionIdญญx 
,ญญ 
userIdญญ 
)ญญ 
;ญญ 
questionDetails
ฎฎ 
=
ฎฎ  !
AssessmentDAL
ฎฎ" /
.
ฎฎ/ 0#
GetQuestionDetails_SR
ฎฎ0 E
(
ฎฎE F
Convert
ฎฎF M
.
ฎฎM N
ToInt32
ฎฎN U
(
ฎฎU V
examId
ฎฎV \
)
ฎฎ\ ]
,
ฎฎ] ^
Convert
ฎฎ_ f
.
ฎฎf g
ToInt32
ฎฎg n
(
ฎฎn o

questionId
ฎฎo y
)
ฎฎy z
)
ฎฎz {
;
ฎฎ{ |
log
ฏฏ 
.
ฏฏ 
Information
ฏฏ 
(
ฏฏ  
$str
ฏฏ  V
,
ฏฏV W
$str
ฏฏX l
,
ฏฏl m
examId
ฏฏn t
,
ฏฏt u

questionIdฏฏv €
,ฏฏ€ 
userIdฏฏ 
)ฏฏ 
;ฏฏ 
questionDetails
ฒฒ 
.
ฒฒ  
rightChoiceId
ฒฒ  -
=
ฒฒ. /
AssessmentDAL
ฒฒ0 =
.
ฒฒ= >(
GetRightChoiceByQuestionId
ฒฒ> X
(
ฒฒX Y
Convert
ฒฒY `
.
ฒฒ` a
ToInt32
ฒฒa h
(
ฒฒh i

questionId
ฒฒi s
)
ฒฒs t
,
ฒฒt u

connectionฒฒv €
)ฒฒ€ 
;ฒฒ 
questionDetails
ตต 
.
ตต  

examStatus
ตต  *
=
ตต+ ,
examObj
ตต- 4
.
ตต4 5

ExamStatus
ตต5 ?
;
ตต? @
questionDetails
ถถ 
.
ถถ  
examAttemptId
ถถ  -
=
ถถ. /
examObj
ถถ0 7
.
ถถ7 8
ExamAttemptId
ถถ8 E
;
ถถE F
questionDetails
ทท 
.
ทท  
examTimeType
ทท  ,
=
ทท- .
examObj
ทท/ 6
.
ทท6 7
ExamTimeType
ทท7 C
;
ททC D
questionDetails
ธธ 
.
ธธ  
examMode
ธธ  (
=
ธธ) *
examObj
ธธ+ 2
.
ธธ2 3
ExamMode
ธธ3 ;
;
ธธ; <
questionDetails
นน 
.
นน  
examAnswerToShow
นน  0
=
นน1 2
examObj
นน3 :
.
นน: ;
ExamAnswerToShow
นน; K
;
นนK L
questionDetails
บบ 
.
บบ  
noOfQuestion
บบ  ,
=
บบ- .
examObj
บบ/ 6
.
บบ6 7
NoofQuestions
บบ7 D
;
บบD E
questionDetails
ปป 
.
ปป  
ExamName
ปป  (
=
ปป) *
examObj
ปป+ 2
.
ปป2 3
ExamName
ปป3 ;
;
ปป; <
questionDetails
ผผ 
.
ผผ  
ExamType
ผผ  (
=
ผผ) *
examObj
ผผ+ 2
.
ผผ2 3
ExamType
ผผ3 ;
;
ผผ; <
questionDetails
ฝฝ 
.
ฝฝ  
userId
ฝฝ  &
=
ฝฝ' (
examObj
ฝฝ) 0
.
ฝฝ0 1
UserId
ฝฝ1 7
;
ฝฝ7 8
log
ฟฟ 
.
ฟฟ 
Information
ฟฟ 
(
ฟฟ  
$str
ฟฟ  X
,
ฟฟX Y
$str
ฟฟZ q
,
ฟฟq r
examId
ฟฟs y
,
ฟฟy z

questionIdฟฟ{ …
,ฟฟ… 
userIdฟฟ 
)ฟฟ 
;ฟฟ 
questionDetails
ภภ 
.
ภภ   
questionDiscussion
ภภ  2
=
ภภ3 4
AssessmentDAL
ภภ5 B
.
ภภB C#
GetQuestionDiscussion
ภภC X
(
ภภX Y
Convert
ภภY `
.
ภภ` a
ToInt32
ภภa h
(
ภภh i

questionId
ภภi s
)
ภภs t
,
ภภt u

connectionภภv €
)ภภ€ 
;ภภ 
log
มม 
.
มม 
Information
มม 
(
มม  
$str
มม  V
,
มมV W
$str
มมX o
,
มมo p
examId
มมq w
,
มมw x

questionIdมมy 
,มม 
userIdมม… 
)มม 
;มม 
questionDetails
ฤฤ 
.
ฤฤ  

references
ฤฤ  *
=
ฤฤ+ ,
AssessmentDAL
ฤฤ- :
.
ฤฤ: ;
GetReferences
ฤฤ; H
(
ฤฤH I
Convert
ฤฤI P
.
ฤฤP Q
ToInt32
ฤฤQ X
(
ฤฤX Y

questionId
ฤฤY c
)
ฤฤc d
,
ฤฤd e

connection
ฤฤf p
)
ฤฤp q
;
ฤฤq r
questionDetails
วว 
.
วว  
RelatedContents
วว  /
=
วว0 1
AssessmentDAL
วว2 ?
.
วว? @
GetRelatedContent
วว@ Q
(
ววQ R
Convert
ววR Y
.
ววY Z
ToInt32
ววZ a
(
ววa b

questionId
ววb l
)
ววl m
,
ววm n

connection
ววo y
)
ววy z
;
ววz {
questionDetails
สส 
.
สส  
notes
สส  %
=
สส& '
AssessmentDAL
สส( 5
.
สส5 6
GetNotes
สส6 >
(
สส> ?
Convert
สส? F
.
สสF G
ToInt32
สสG N
(
สสN O

questionId
สสO Y
)
สสY Z
,
สสZ [
Convert
สส\ c
.
สสc d
ToInt32
สสd k
(
สสk l
userId
สสl r
)
สสr s
,
สสs t
Convert
สสu |
.
สส| }
ToInt32สส} 
(สส …
examIdสส… 
)สส 
,สส 

connectionสส 
)สส 
;สส 
questionDetails
ออ 
.
ออ  "
examAttemptAnswerDTO
ออ  4
=
ออ5 6
AssessmentDAL
ออ7 D
.
ออD E"
GetExamAttemptAnswer
ออE Y
(
ออY Z
Convert
ออZ a
.
ออa b
ToInt32
ออb i
(
ออi j

questionId
ออj t
)
ออt u
,
ออu v
Convert
ออw ~
.
ออ~ 
ToInt32ออ 
(ออ 
examObjออ 
.ออ 
ExamAttemptIdออ 
)ออ 
,ออ 

connectionออ ฉ
)ออฉ ช
;ออช ซ
questionDetails
ะะ 
.
ะะ  
examAttemptText
ะะ  /
=
ะะ0 1
AssessmentDAL
ะะ2 ?
.
ะะ? @&
GetExamAttemptAnswerText
ะะ@ X
(
ะะX Y
Convert
ะะY `
.
ะะ` a
ToInt32
ะะa h
(
ะะh i
examId
ะะi o
)
ะะo p
,
ะะp q
Convert
ะะr y
.
ะะy z
ToInt32ะะz 
(ะะ 

questionIdะะ 
)ะะ 
)ะะ 
;ะะ 
questionDetails
ำำ 
.
ำำ  
	markCheck
ำำ  )
=
ำำ* +
AssessmentDAL
ำำ, 9
.
ำำ9 :
GetMarkStatus
ำำ: G
(
ำำG H
Convert
ำำH O
.
ำำO P
ToInt32
ำำP W
(
ำำW X
examId
ำำX ^
)
ำำ^ _
,
ำำ_ `
Convert
ำำa h
.
ำำh i
ToInt32
ำำi p
(
ำำp q

questionId
ำำq {
)
ำำ{ |
,
ำำ| }
Convertำำ~ …
.ำำ… 
ToInt32ำำ 
(ำำ 
userIdำำ ”
)ำำ” •
)ำำ• –
;ำำ– —
questionDetails
ิิ 
.
ิิ  
examId
ิิ  &
=
ิิ' (
Convert
ิิ) 0
.
ิิ0 1
ToInt32
ิิ1 8
(
ิิ8 9
examId
ิิ9 ?
)
ิิ? @
;
ิิ@ A
questionDetails
ีี 
.
ีี  $
CurrentExamAttemptTime
ีี  6
=
ีี7 8
DateTime
ีี9 A
.
ีีA B
Now
ีีB E
;
ีีE F

choiceList
ุุ 
=
ุุ 
AssessmentDAL
ุุ *
.
ุุ* +#
GetChoiceBYQuestionId
ุุ+ @
(
ุุ@ A
Convert
ุุA H
.
ุุH I
ToInt32
ุุI P
(
ุุP Q

questionId
ุุQ [
)
ุุ[ \
,
ุุ\ ]
examId
ุุ^ d
,
ุุd e
questionDetails
ุุf u
.
ุุu v#
examAttemptAnswerDTOุุv 
.ุุ 
ChoiceIdุุ “
,ุุ“ ”
questionDetailsุุ• ค
.ุุค ฅ
examAttemptIdุุฅ ฒ
,ุุฒ ณ
questionDetailsุุด ร
.ุุร ฤ"
NotRandomizeAnswerุุฤ ึ
,ุุึ ื

connectionุุุ โ
)ุุโ ใ
;ุุใ ไ
questionDetails
ูู 
.
ูู  

choiceList
ูู  *
=
ูู+ ,

choiceList
ูู- 7
;
ูู7 8
log
ÝÝ 
.
ÝÝ 
Information
ÝÝ 
(
ÝÝ  
$str
ÝÝ  X
,
ÝÝX Y
$str
ÝÝZ j
,
ÝÝj k
examId
ÝÝl r
,
ÝÝr s

questionId
ÝÝt ~
,
ÝÝ~ 
userIdÝÝ€ 
)ÝÝ 
;ÝÝ 
var
ÞÞ 
peerdata
ÞÞ 
=
ÞÞ 
AssessmentDAL
ÞÞ ,
.
ÞÞ, -
GetPeerDetails
ÞÞ- ;
(
ÞÞ; <
Convert
ÞÞ< C
.
ÞÞC D
ToInt32
ÞÞD K
(
ÞÞK L

questionId
ÞÞL V
)
ÞÞV W
,
ÞÞW X
Convert
ÞÞY `
.
ÞÞ` a
ToInt32
ÞÞa h
(
ÞÞh i
userId
ÞÞi o
)
ÞÞo p
,
ÞÞp q
questionDetailsÞÞr 
.ÞÞ 
examAttemptIdÞÞ 
)ÞÞ 
;ÞÞ ‘
log
฿฿ 
.
฿฿ 
Information
฿฿ 
(
฿฿  
$str
฿฿  V
,
฿฿V W
$str
฿฿X h
,
฿฿h i
examId
฿฿j p
,
฿฿p q

questionId
฿฿r |
,
฿฿| }
userId฿฿~ 
)฿฿ …
;฿฿… 
questionDetails
เเ 
.
เเ  
PeerDetails
เเ  +
=
เเ, -
peerdata
เเ. 6
.
เเ6 7
Where
เเ7 <
(
เเ< =
s
เเ= >
=>
เเ? A
s
เเB C
.
เเC D
ChoiceId
เเD L
!=
เเM O
$num
เเP Q
)
เเQ R
.
เเR S
OrderBy
เเS Z
(
เเZ [
s
เเ[ \
=>
เเ] _
s
เเ` a
.
เเa b
ChoiceOption
เเb n
)
เเn o
.
เเo p
ToList
เเp v
(
เเv w
)
เเw x
;
เเx y
log
ใใ 
.
ใใ 
Information
ใใ 
(
ใใ  
$str
ใใ  X
,
ใใX Y
$str
ใใZ l
,
ใใl m
examId
ใใn t
,
ใใt u

questionIdใใv €
,ใใ€ 
userIdใใ 
)ใใ 
;ใใ 
questionDetails
ไไ 
.
ไไ  
QuestionCount
ไไ  -
=
ไไ. /
AssessmentDAL
ไไ0 =
.
ไไ= >
GetQuestionCount
ไไ> N
(
ไไN O
Convert
ไไO V
.
ไไV W
ToInt32
ไไW ^
(
ไไ^ _
examId
ไไ_ e
)
ไไe f
)
ไไf g
;
ไไg h
log
ๅๅ 
.
ๅๅ 
Information
ๅๅ 
(
ๅๅ  
$str
ๅๅ  V
,
ๅๅV W
$str
ๅๅX j
,
ๅๅj k
examId
ๅๅl r
,
ๅๅr s

questionId
ๅๅt ~
,
ๅๅ~ 
userIdๅๅ€ 
)ๅๅ 
;ๅๅ 
log
่่ 
.
่่ 
Information
่่ 
(
่่  
$str
่่  X
,
่่X Y
$str
่่Z n
,
่่n o
examId
่่p v
,
่่v w

questionId่่x 
,่่ 
userId่่ 
)่่ 
;่่ 
questionDetails
้้ 
.
้้  
BCSCExcerpt
้้  +
=
้้, -
AssessmentDAL
้้. ;
.
้้; < 
GetBCSCExcerptText
้้< N
(
้้N O
Convert
้้O V
.
้้V W
ToInt32
้้W ^
(
้้^ _

questionId
้้_ i
)
้้i j
)
้้j k
;
้้k l
log
๊๊ 
.
๊๊ 
Information
๊๊ 
(
๊๊  
$str
๊๊  V
,
๊๊V W
$str
๊๊X l
,
๊๊l m
examId
๊๊n t
,
๊๊t u

questionId๊๊v €
,๊๊€ 
userId๊๊ 
)๊๊ 
;๊๊ 
questionDetails
์์ 
.
์์  
ExcerptHeadings
์์  /
=
์์0 1
AssessmentBL
์์2 >
.
์์> ? 
GetExcerptHeadings
์์? Q
(
์์Q R
questionDetails
์์R a
.
์์a b
BCSCExcerpt
์์b m
)
์์m n
;
์์n o
log
๏๏ 
.
๏๏ 
Information
๏๏ 
(
๏๏  
$str
๏๏  X
,
๏๏X Y
$str
๏๏Z n
,
๏๏n o
examId
๏๏p v
,
๏๏v w

questionId๏๏x 
,๏๏ 
userId๏๏ 
)๏๏ 
;๏๏ 
questionDetails
๐๐ 
.
๐๐  
	TopicName
๐๐  )
=
๐๐* +
AssessmentDAL
๐๐, 9
.
๐๐9 : 
GetTopicByQuestion
๐๐: L
(
๐๐L M
Convert
๐๐M T
.
๐๐T U
ToInt32
๐๐U \
(
๐๐\ ]

questionId
๐๐] g
)
๐๐g h
)
๐๐h i
;
๐๐i j
log
๑๑ 
.
๑๑ 
Information
๑๑ 
(
๑๑  
$str
๑๑  V
,
๑๑V W
$str
๑๑X l
,
๑๑l m
examId
๑๑n t
,
๑๑t u

questionId๑๑v €
,๑๑€ 
userId๑๑ 
)๑๑ 
;๑๑ 

connection
๒๒ 
.
๒๒ 
Close
๒๒  
(
๒๒  !
)
๒๒! "
;
๒๒" #
log
๓๓ 
.
๓๓ 
Information
๓๓ 
(
๓๓  
$str
๓๓  V
,
๓๓V W
$str
๓๓X i
,
๓๓i j
examId
๓๓k q
,
๓๓q r

questionId
๓๓s }
,
๓๓} ~
userId๓๓ …
)๓๓… 
;๓๓ 
return
๔๔ 
questionDetails
๔๔ &
;
๔๔& '
}
๕๕ 
catch
๖๖ 
(
๖๖ 
	Exception
๖๖ 
e
๖๖ 
)
๖๖ 
{
๗๗ 
log
๘๘ 
.
๘๘ 
Error
๘๘ 
(
๘๘ 
e
๘๘ 
.
๘๘ 
Message
๘๘ #
+
๘๘$ %
$str
๘๘& ?
+
๘๘@ A
$str
๘๘B L
+
๘๘M N
examId
๘๘O U
+
๘๘V W
$str
๘๘X b
+
๘๘c d
userId
๘๘e k
)
๘๘k l
;
๘๘l m
Console
๙๙ 
.
๙๙ 
Write
๙๙ 
(
๙๙ 
e
๙๙ 
.
๙๙  
Message
๙๙  '
)
๙๙' (
;
๙๙( )
return
๚๚ 
null
๚๚ 
;
๚๚ 
}
๛๛ 
}
üü 	
}
ýý 
}þþ บเ
aD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\NoteBookBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 

NoteBookBL "
{		 
public

 
static

 
SectionsList

 "
GetNoteBookDetails

# 5
(

5 6
NoteBookRequest

6 E
noteBookRequest

F U
)

U V
{ 	
SectionsList 
sectionList $
=% &
new' *
SectionsList+ 7
(7 8
)8 9
;9 :
List 
< 
NoteSections 
> 
notesSectionList /
=0 1
new2 5
List6 :
<: ;
NoteSections; G
>G H
(H I
)I J
;J K
List 
< 
ChapterDetails 
>  
chapterList! ,
=- .
new/ 2
List3 7
<7 8
ChapterDetails8 F
>F G
(G H
)H I
;I J
List 
< 
ChapterDetails 
>  
chapterList_custom! 3
=4 5
new6 9
List: >
<> ?
ChapterDetails? M
>M N
(N O
)O P
;P Q
List 
< 
QuestionDetail 
>  
questionDetailList! 3
=4 5
new6 9
List: >
<> ?
QuestionDetail? M
>M N
(N O
)O P
;P Q
if 
( 
( 
noteBookRequest  
.  !
SubSpecialtyId! /
==0 2
$num3 4
||5 7
noteBookRequest8 G
.G H
SubSpecialtyIdH V
==W Y
nullZ ^
)^ _
&&` b
noteBookRequestc r
.r s
ChapterNames ~
==	 
null
 
)
 
{ 
notesSectionList  
=! "
NoteBookDAL# .
.. /
GetNotesSection/ >
(> ?
)? @
;@ A
if 
( 
notesSectionList $
.$ %
Count% *
>+ ,
$num- .
). /
{ 
List 
< 
NoteSections %
>% &
notesSectionLists' 8
=9 :
new; >
List? C
<C D
NoteSectionsD P
>P Q
(Q R
)R S
;S T
foreach 
( 
NoteSections )
section* 1
in2 4
notesSectionList5 E
)E F
{ 
chapterList   #
=  $ %
NoteBookDAL  & 1
.  1 2

GetChapter  2 <
(  < =
section  = D
.  D E
SubSpecialtyId  E S
,  S T
noteBookRequest  U d
)  d e
;  e f
List"" 
<"" 
ChapterDetails"" +
>""+ ,
chapterLists""- 9
="": ;
new""< ?
List""@ D
<""D E
ChapterDetails""E S
>""S T
(""T U
)""U V
;""V W
if## 
(## 
chapterList## '
.##' (
Count##( -
>##. /
$num##0 1
)##1 2
{$$ 
NoteSections%% (
noteSections%%) 5
=%%6 7
new%%8 ;
NoteSections%%< H
(%%H I
)%%I J
;%%J K
noteSections&& (
.&&( )
SubSpecialtyId&&) 7
=&&8 9
section&&: A
.&&A B
SubSpecialtyId&&B P
;&&P Q
noteSections'' (
.''( )
SubSpecialty'') 5
=''6 7
section''8 ?
.''? @
SubSpecialty''@ L
;''L M
noteSections(( (
.((( )
BCSCSectionNumber(() :
=((; <
section((= D
.((D E
BCSCSectionNumber((E V
;((V W
noteSections)) (
.))( )
BCSCSectionTitle))) 9
=)): ;
section))< C
.))C D
BCSCSectionTitle))D T
;))T U
foreach** #
(**$ %
ChapterDetails**% 3
chapter**4 ;
in**< >
chapterList**? J
)**J K
{++ 
ChapterDetails,,  .
chapterDetails,,/ =
=,,> ?
new,,@ C
ChapterDetails,,D R
(,,R S
),,S T
;,,T U
chapterDetails--  .
.--. /
Chapter--/ 6
=--7 8
chapter--9 @
.--@ A
Chapter--A H
;--H I
chapterDetails..  .
.... /
ChapterName../ :
=..; <
chapter..= D
...D E
ChapterName..E P
;..P Q
chapterDetails//  .
.//. /
ChapterCount/// ;
=//< =
chapter//> E
.//E F
ChapterCount//F R
;//R S
chapterDetails00  .
.00. /
ChapterSerialNumber00/ B
=00C D
chapter00E L
.00L M
ChapterSerialNumber00M `
;00` a
questionDetailList11  2
=113 4
NoteBookDAL115 @
.11@ A
GetNotesQuestion11A Q
(11Q R
section11R Y
.11Y Z
SubSpecialtyId11Z h
,11h i
chapter11j q
.11q r
ChapterName11r }
,11} ~
noteBookRequest	11 
.
11 
UserId
11 •
)
11• –
;
11– —
List22  $
<22$ %
QuestionDetail22% 3
>223 4
questionDetailLists225 H
=22I J
new22K N
List22O S
<22S T
QuestionDetail22T b
>22b c
(22c d
)22d e
;22e f
foreach33  '
(33( )
QuestionDetail33) 7
questionDetails338 G
in33H J
questionDetailList33K ]
)33] ^
{44  !
QuestionDetail55$ 2
questionDetail553 A
=55B C
new55D G
QuestionDetail55H V
(55V W
)55W X
;55X Y
questionDetail66$ 2
.662 3

QuestionId663 =
=66> ?
questionDetails66@ O
.66O P

QuestionId66P Z
;66Z [
questionDetail77$ 2
.772 3
Stem773 7
=778 9
questionDetails77: I
.77I J
Stem77J N
;77N O
questionDetail88$ 2
.882 3
	NotesList883 <
=88= >
NoteBookDAL88? J
.88J K
GetNotesList88K W
(88W X
questionDetails88X g
.88g h

QuestionId88h r
,88r s
noteBookRequest	88t 
.
88 
UserId
88 
)
88 
;
88 
questionDetail99$ 2
.992 3

ChoiceList993 =
=99> ?
NoteBookDAL99@ K
.99K L
GetChoiceList99L Y
(99Y Z
questionDetails99Z i
.99i j

QuestionId99j t
)99t u
;99u v
questionDetail::$ 2
.::2 3
RightChoiceId::3 @
=::A B
AssessmentDAL::C P
.::P Q&
GetRightChoiceByQuestionId::Q k
(::k l
Convert::l s
.::s t
ToInt32::t {
(::{ |
questionDetails	::| 
.
:: 

QuestionId
:: –
)
::– —
)
::— 
;
:: 
questionDetail;;$ 2
.;;2 3
UserChoiceId;;3 ?
=;;@ A
questionDetails;;B Q
.;;Q R
UserChoiceId;;R ^
;;;^ _
questionDetail<<$ 2
.<<2 3
	TopicName<<3 <
=<<= >
questionDetails<<? N
.<<N O
	TopicName<<O X
;<<X Y
questionDetail==$ 2
.==2 3
Topic==3 8
===9 :
questionDetails==; J
.==J K
Topic==K P
;==P Q
questionDetailLists>>$ 7
.>>7 8
Add>>8 ;
(>>; <
questionDetail>>< J
)>>J K
;>>K L
}??  !
chapterDetailsAA  .
.AA. /
QuestionListAA/ ;
=AA< =
questionDetailListsAA> Q
;AAQ R
ifCC  "
(CC# $
chapterDetailsCC$ 2
.CC2 3
QuestionListCC3 ?
.CC? @
CountCC@ E
>CCF G
$numCCH I
)CCI J
{DD  !
chapterListsEE$ 0
.EE0 1
AddEE1 4
(EE4 5
chapterDetailsEE5 C
)EEC D
;EED E
}FF  !
}GG 
noteSectionsII (
.II( )
ChapterListII) 4
=II5 6
chapterListsII7 C
;IIC D
notesSectionListsJJ -
.JJ- .
AddJJ. 1
(JJ1 2
noteSectionsJJ2 >
)JJ> ?
;JJ? @
sectionListKK '
.KK' (
NoteSectionsListsKK( 9
=KK: ;
notesSectionListsKK< M
;KKM N
}LL 
}MM 
ifNN 
(NN 
notesSectionListsNN (
.NN( )
CountNN) .
<=NN. 0
$numNN0 1
)NN1 2
{OO 
NoteSectionsPP $
noteSectionsPP% 1
=PP2 3
newPP4 7
NoteSectionsPP8 D
(PPD E
)PPE F
;PPF G
ListQQ 
<QQ 
ChapterDetailsQQ +
>QQ+ ,
chapterListsQQ- 9
=QQ: ;
newQQ< ?
ListQQ@ D
<QQD E
ChapterDetailsQQE S
>QQS T
(QQT U
)QQU V
;QQV W
ChapterDetailsSS &
chapterDetails1SS' 6
=SS7 8
newSS9 <
ChapterDetailsSS= K
(SSK L
)SSL M
;SSM N
chapterListsTT $
.TT$ %
AddTT% (
(TT( )
chapterDetails1TT) 8
)TT8 9
;TT9 :
noteSectionsUU $
.UU$ %
ChapterListUU% 0
=UU1 2
chapterListsUU3 ?
;UU? @
notesSectionListsVV )
.VV) *
AddVV* -
(VV- .
noteSectionsVV. :
)VV: ;
;VV; <
sectionListWW #
.WW# $
NoteSectionsListsWW$ 5
=WW6 7
notesSectionListsWW8 I
;WWI J
}XX 
elseYY 
{ZZ 
sectionList[[ #
.[[# $
NoteSectionsLists[[$ 5
=[[6 7
notesSectionLists[[8 I
;[[I J
}\\ 
}__ 
}`` 
elseaa 
ifaa 
(aa 
noteBookRequestaa $
.aa$ %
SubSpecialtyIdaa% 3
!=aa4 6
nullaa7 ;
&&aa< >
noteBookRequestaa? N
.aaN O
ChapterNameaaO Z
==aa[ ]
nullaa^ b
)aab c
{bb 
NoteSectionscc 
noteSectionscc )
=cc* +
newcc, /
NoteSectionscc0 <
(cc< =
)cc= >
;cc> ?
noteSectionsdd 
=dd 
NoteBookDALdd *
.dd* +#
GetSectionOnSubspeciltydd+ B
(ddB C
ConvertddC J
.ddJ K
ToInt32ddK R
(ddR S
noteBookRequestddS b
.ddb c
SubSpecialtyIdddc q
)ddq r
)ddr s
;dds t
Listee 
<ee 
NoteSectionsee !
>ee! "
notesSectionListsee# 4
=ee5 6
newee7 :
Listee; ?
<ee? @
NoteSectionsee@ L
>eeL M
(eeM N
)eeN O
;eeO P
chapterListgg 
=gg 
NoteBookDALgg )
.gg) *

GetChaptergg* 4
(gg4 5
noteBookRequestgg5 D
.ggD E
SubSpecialtyIdggE S
,ggS T
noteBookRequestggU d
)ggd e
;gge f
chapterList_customii "
=ii# $
NoteBookDALii% 0
.ii0 1(
GetChapter_withoutPaginationii1 M
(iiM N
noteBookRequestiiN ]
.ii] ^
SubSpecialtyIdii^ l
,iil m
noteBookRequestiin }
)ii} ~
;ii~ 
Listkk 
<kk 
ChapterDetailskk #
>kk# $
chapterListskk% 1
=kk2 3
newkk4 7
Listkk8 <
<kk< =
ChapterDetailskk= K
>kkK L
(kkL M
)kkM N
;kkN O
ifll 
(ll 
chapterListll 
.ll  
Countll  %
>ll& '
$numll( )
)ll) *
{mm 
foreachnn 
(nn 
ChapterDetailsnn +
chapternn, 3
innn4 6
chapterListnn7 B
)nnB C
{oo 
ChapterDetailspp &
chapterDetailspp' 5
=pp6 7
newpp8 ;
ChapterDetailspp< J
(ppJ K
)ppK L
;ppL M
chapterDetailsqq &
.qq& '
Chapterqq' .
=qq/ 0
chapterqq1 8
.qq8 9
Chapterqq9 @
;qq@ A
chapterDetailsrr &
.rr& '
ChapterNamerr' 2
=rr3 4
chapterrr5 <
.rr< =
ChapterNamerr= H
;rrH I
chapterDetailsss &
.ss& '
ChapterCountss' 3
=ss4 5
chapterss6 =
.ss= >
ChapterCountss> J
;ssJ K
chapterDetailstt &
.tt& '
ChapterSerialNumbertt' :
=tt; <
chaptertt= D
.ttD E
ChapterSerialNumberttE X
;ttX Y
questionDetailListuu *
=uu+ ,
NoteBookDALuu- 8
.uu8 9
GetNotesQuestionuu9 I
(uuI J
noteBookRequestuuJ Y
.uuY Z
SubSpecialtyIduuZ h
,uuh i
chapteruuj q
.uuq r
ChapterNameuur }
,uu} ~
noteBookRequest	uu 
.
uu 
UserId
uu •
)
uu• –
;
uu– —
Listvv 
<vv 
QuestionDetailvv +
>vv+ ,
questionDetailListsvv- @
=vvA B
newvvC F
ListvvG K
<vvK L
QuestionDetailvvL Z
>vvZ [
(vv[ \
)vv\ ]
;vv] ^
foreachww 
(ww  !
QuestionDetailww! /
questionDetailsww0 ?
inww@ B
questionDetailListwwC U
)wwU V
{xx 
QuestionDetailyy *
questionDetailyy+ 9
=yy: ;
newyy< ?
QuestionDetailyy@ N
(yyN O
)yyO P
;yyP Q
questionDetailzz *
.zz* +

QuestionIdzz+ 5
=zz6 7
questionDetailszz8 G
.zzG H

QuestionIdzzH R
;zzR S
questionDetail{{ *
.{{* +
Stem{{+ /
={{0 1
questionDetails{{2 A
.{{A B
Stem{{B F
;{{F G
questionDetail|| *
.||* +
	NotesList||+ 4
=||5 6
NoteBookDAL||7 B
.||B C
GetNotesList||C O
(||O P
questionDetails||P _
.||_ `

QuestionId||` j
,||j k
noteBookRequest||l {
.||{ |
UserId	||| 
)
|| 
;
|| 
questionDetail}} *
.}}* +

ChoiceList}}+ 5
=}}6 7
NoteBookDAL}}8 C
.}}C D
GetChoiceList}}D Q
(}}Q R
questionDetails}}R a
.}}a b

QuestionId}}b l
)}}l m
;}}m n
questionDetail~~ *
.~~* +
RightChoiceId~~+ 8
=~~9 :
AssessmentDAL~~; H
.~~H I&
GetRightChoiceByQuestionId~~I c
(~~c d
Convert~~d k
.~~k l
ToInt32~~l s
(~~s t
questionDetails	~~t 
.
~~ 

QuestionId
~~ 
)
~~ 
)
~~ 
;
~~ ‘
questionDetail *
.* +
UserChoiceId+ 7
=8 9
questionDetails: I
.I J
UserChoiceIdJ V
;V W
questionDetail
€€ *
.
€€* +
	TopicName
€€+ 4
=
€€5 6
questionDetails
€€7 F
.
€€F G
	TopicName
€€G P
;
€€P Q
questionDetail
 *
.
* +
Topic
+ 0
=
1 2
questionDetails
3 B
.
B C
Topic
C H
;
H I!
questionDetailLists
 /
.
/ 0
Add
0 3
(
3 4
questionDetail
4 B
)
B C
;
C D
}
 
chapterDetails
…… &
.
……& '
QuestionList
……' 3
=
……4 5!
questionDetailLists
……6 I
;
……I J
if
 
(
 
chapterDetails
 *
.
* +
QuestionList
+ 7
.
7 8
Count
8 =
>
> ?
$num
@ A
)
A B
{
 
chapterLists
 (
.
( )
Add
) ,
(
, -
chapterDetails
- ;
)
; <
;
< =
}
 
}
 
noteSections
  
.
  !
ChapterList
! ,
=
- .
chapterLists
/ ;
;
; <
notesSectionLists
 %
.
% &
Add
& )
(
) *
noteSections
* 6
)
6 7
;
7 8
sectionList
 
.
  
NoteSectionsLists
  1
=
2 3
notesSectionLists
4 E
;
E F
}
 
else
 
{
‘‘ 
ChapterDetails
’’ "
chapterDetails
’’# 1
=
’’2 3
new
’’4 7
ChapterDetails
’’8 F
(
’’F G
)
’’G H
;
’’H I
foreach
”” 
(
”” 
ChapterDetails
”” +
chapter
””, 3
in
””4 6 
chapterList_custom
””7 I
)
””I J
{
•• 
chapterDetails
–– &
.
––& '
ChapterCount
––' 3
=
––4 5
chapter
––6 =
.
––= >
ChapterCount
––> J
;
––J K
chapterDetails
—— &
.
——& '
Chapter
——' .
=
——/ 0
null
——1 5
;
——5 6
chapterDetails
 &
.
& '
ChapterName
' 2
=
3 4
null
5 9
;
9 :
chapterDetails
 &
.
& '!
ChapterSerialNumber
' :
=
; <
$num
= >
;
> ?
chapterDetails
 &
.
& '
QuestionList
' 3
=
4 5
new
6 9
List
: >
<
> ?
QuestionDetail
? M
>
M N
(
N O
)
O P
;
P Q
}
 
chapterLists
  
.
  !
Add
! $
(
$ %
chapterDetails
% 3
)
3 4
;
4 5
noteSections
  
.
  !
ChapterList
! ,
=
- .
chapterLists
/ ;
;
; <
notesSectionLists
 %
.
% &
Add
& )
(
) *
noteSections
* 6
)
6 7
;
7 8
sectionList
 
.
  
NoteSectionsLists
  1
=
2 3
notesSectionLists
4 E
;
E F
}
   
}
ฃฃ 
else
คค 
if
คค 
(
คค 
noteBookRequest
คค $
.
คค$ %
SubSpecialtyId
คค% 3
!=
คค4 6
null
คค7 ;
&&
คค< >
noteBookRequest
คค? N
.
คคN O
ChapterName
คคO Z
!=
คค[ ]
null
คค^ b
)
คคb c
{
ฅฅ 
NoteSections
ฆฆ 
noteSections
ฆฆ )
=
ฆฆ* +
new
ฆฆ, /
NoteSections
ฆฆ0 <
(
ฆฆ< =
)
ฆฆ= >
;
ฆฆ> ?
noteSections
งง 
=
งง 
NoteBookDAL
งง *
.
งง* +%
GetSectionOnSubspecilty
งง+ B
(
งงB C
Convert
งงC J
.
งงJ K
ToInt32
งงK R
(
งงR S
noteBookRequest
งงS b
.
งงb c
SubSpecialtyId
งงc q
)
งงq r
)
งงr s
;
งงs t
List
จจ 
<
จจ 
ChapterDetails
จจ #
>
จจ# $
chapterLists
จจ% 1
=
จจ2 3
new
จจ4 7
List
จจ8 <
<
จจ< =
ChapterDetails
จจ= K
>
จจK L
(
จจL M
)
จจM N
;
จจN O
List
ฉฉ 
<
ฉฉ 
NoteSections
ฉฉ !
>
ฉฉ! "
notesSectionLists
ฉฉ# 4
=
ฉฉ5 6
new
ฉฉ7 :
List
ฉฉ; ?
<
ฉฉ? @
NoteSections
ฉฉ@ L
>
ฉฉL M
(
ฉฉM N
)
ฉฉN O
;
ฉฉO P
ChapterDetails
ซซ 
chapterDetails
ซซ -
=
ซซ. /
new
ซซ0 3
ChapterDetails
ซซ4 B
(
ซซB C
)
ซซC D
;
ซซD E
chapterDetails
ฌฌ 
=
ฌฌ  
NoteBookDAL
ฌฌ! ,
.
ฌฌ, -
GetChapterByName
ฌฌ- =
(
ฌฌ= >
noteBookRequest
ฌฌ> M
)
ฌฌM N
;
ฌฌN O
chapterDetails
ญญ 
.
ญญ 
ChapterCount
ญญ +
=
ญญ, -
$num
ญญ. /
;
ญญ/ 0
chapterDetails
ฎฎ 
.
ฎฎ !
ChapterSerialNumber
ฎฎ 2
=
ฎฎ3 4
$num
ฎฎ5 6
;
ฎฎ6 7 
questionDetailList
ฐฐ "
=
ฐฐ# $
NoteBookDAL
ฐฐ% 0
.
ฐฐ0 1
GetNotesQuestion
ฐฐ1 A
(
ฐฐA B
noteBookRequest
ฐฐB Q
.
ฐฐQ R
SubSpecialtyId
ฐฐR `
,
ฐฐ` a
noteBookRequest
ฐฐb q
.
ฐฐq r
ChapterName
ฐฐr }
,
ฐฐ} ~
noteBookRequestฐฐ 
.ฐฐ 
UserIdฐฐ •
)ฐฐ• –
;ฐฐ– —
List
ฑฑ 
<
ฑฑ 
QuestionDetail
ฑฑ #
>
ฑฑ# $!
questionDetailLists
ฑฑ% 8
=
ฑฑ9 :
new
ฑฑ; >
List
ฑฑ? C
<
ฑฑC D
QuestionDetail
ฑฑD R
>
ฑฑR S
(
ฑฑS T
)
ฑฑT U
;
ฑฑU V
foreach
ฒฒ 
(
ฒฒ 
QuestionDetail
ฒฒ '
questionDetails
ฒฒ( 7
in
ฒฒ8 : 
questionDetailList
ฒฒ; M
)
ฒฒM N
{
ณณ 
QuestionDetail
ดด "
questionDetail
ดด# 1
=
ดด2 3
new
ดด4 7
QuestionDetail
ดด8 F
(
ดดF G
)
ดดG H
;
ดดH I
questionDetail
ตต "
.
ตต" #

QuestionId
ตต# -
=
ตต. /
questionDetails
ตต0 ?
.
ตต? @

QuestionId
ตต@ J
;
ตตJ K
questionDetail
ถถ "
.
ถถ" #
Stem
ถถ# '
=
ถถ( )
questionDetails
ถถ* 9
.
ถถ9 :
Stem
ถถ: >
;
ถถ> ?
questionDetail
ทท "
.
ทท" #
	NotesList
ทท# ,
=
ทท- .
NoteBookDAL
ทท/ :
.
ทท: ;
GetNotesList
ทท; G
(
ททG H
questionDetails
ททH W
.
ททW X

QuestionId
ททX b
,
ททb c
noteBookRequest
ททd s
.
ททs t
UserId
ททt z
)
ททz {
;
ทท{ |
questionDetail
ธธ "
.
ธธ" #

ChoiceList
ธธ# -
=
ธธ. /
NoteBookDAL
ธธ0 ;
.
ธธ; <
GetChoiceList
ธธ< I
(
ธธI J
questionDetails
ธธJ Y
.
ธธY Z

QuestionId
ธธZ d
)
ธธd e
;
ธธe f
questionDetail
นน "
.
นน" #
RightChoiceId
นน# 0
=
นน1 2
AssessmentDAL
นน3 @
.
นน@ A(
GetRightChoiceByQuestionId
นนA [
(
นน[ \
Convert
นน\ c
.
นนc d
ToInt32
นนd k
(
นนk l
questionDetails
นนl {
.
นน{ |

QuestionIdนน| 
)นน 
)นน 
;นน 
questionDetail
บบ "
.
บบ" #
QuestionImageList
บบ# 4
=
บบ5 6
AssessmentDAL
บบ7 D
.
บบD E"
GetQuestionImageList
บบE Y
(
บบY Z
questionDetails
บบZ i
.
บบi j

QuestionId
บบj t
)
บบt u
;
บบu v
questionDetail
ปป "
.
ปป" #
UserChoiceId
ปป# /
=
ปป0 1
questionDetails
ปป2 A
.
ปปA B
UserChoiceId
ปปB N
;
ปปN O
questionDetail
ผผ "
.
ผผ" #
	TopicName
ผผ# ,
=
ผผ- .
questionDetails
ผผ/ >
.
ผผ> ?
	TopicName
ผผ? H
;
ผผH I
questionDetail
ฝฝ "
.
ฝฝ" #
Topic
ฝฝ# (
=
ฝฝ) *
questionDetails
ฝฝ+ :
.
ฝฝ: ;
Topic
ฝฝ; @
;
ฝฝ@ A!
questionDetailLists
พพ '
.
พพ' (
Add
พพ( +
(
พพ+ ,
questionDetail
พพ, :
)
พพ: ;
;
พพ; <
}
ฟฟ 
chapterDetails
มม 
.
มม 
QuestionList
มม +
=
มม, -!
questionDetailLists
มม. A
;
มมA B
if
ยย 
(
ยย 
chapterDetails
ยย "
.
ยย" #
QuestionList
ยย# /
.
ยย/ 0
Count
ยย0 5
>
ยย6 7
$num
ยย8 9
)
ยย9 :
{
รร 
chapterLists
ฤฤ  
.
ฤฤ  !
Add
ฤฤ! $
(
ฤฤ$ %
chapterDetails
ฤฤ% 3
)
ฤฤ3 4
;
ฤฤ4 5
}
ลล 
else
ฦฦ 
{
วว 
ChapterDetails
ศศ "
chapterDetails1
ศศ# 2
=
ศศ3 4
new
ศศ5 8
ChapterDetails
ศศ9 G
(
ศศG H
)
ศศH I
;
ศศI J
chapterLists
ษษ  
.
ษษ  !
Add
ษษ! $
(
ษษ$ %
chapterDetails1
ษษ% 4
)
ษษ4 5
;
ษษ5 6
}
สส 
noteSections
ฬฬ 
.
ฬฬ 
ChapterList
ฬฬ (
=
ฬฬ) *
chapterLists
ฬฬ+ 7
;
ฬฬ7 8
notesSectionLists
ออ !
.
ออ! "
Add
ออ" %
(
ออ% &
noteSections
ออ& 2
)
ออ2 3
;
ออ3 4
sectionList
ฮฮ 
.
ฮฮ 
NoteSectionsLists
ฮฮ -
=
ฮฮ. /
notesSectionLists
ฮฮ0 A
;
ฮฮA B
}
ฯฯ 
return
ัั 
sectionList
ัั 
;
ัั 
}
าา 	
public
ิิ 
static
ิิ 
List
ิิ 
<
ิิ 
NoteSections
ิิ '
>
ิิ' (
GetSectionList
ิิ) 7
(
ิิ7 8
NoteBookRequest
ิิ8 G
noteBookRequest
ิิH W
)
ิิW X
{
ีี 	
return
ึึ 
NoteBookDAL
ึึ 
.
ึึ 
GetNotesSection
ึึ .
(
ึึ. /
)
ึึ/ 0
;
ึึ0 1
}
ืื 	
public
ูู 
static
ูู 
List
ูู 
<
ูู 
ChapterDetails
ูู )
>
ูู) *
GetChapterList
ูู+ 9
(
ูู9 :
NoteBookRequest
ูู: I
noteBookRequest
ููJ Y
)
ููY Z
{
ฺฺ 	
return
ÛÛ 
NoteBookDAL
ÛÛ 
.
ÛÛ 
GetChapterList
ÛÛ -
(
ÛÛ- .
noteBookRequest
ÛÛ. =
.
ÛÛ= >
SubSpecialtyId
ÛÛ> L
)
ÛÛL M
;
ÛÛM N
}
ÜÜ 	
public
ÞÞ 
static
ÞÞ 
List
ÞÞ 
<
ÞÞ 
Notes
ÞÞ  
>
ÞÞ  !
AddNotes
ÞÞ" *
(
ÞÞ* +
NotesRequest
ÞÞ+ 7
notesRequest
ÞÞ8 D
)
ÞÞD E
{
฿฿ 	
return
เเ 
NoteBookDAL
เเ 
.
เเ 
AddNotes
เเ '
(
เเ' (
notesRequest
เเ( 4
)
เเ4 5
;
เเ5 6
}
แแ 	
public
ใใ 
static
ใใ 
List
ใใ 
<
ใใ 
Notes
ใใ  
>
ใใ  !
UpdateNotes
ใใ" -
(
ใใ- .
NotesRequest
ใใ. :
notesRequest
ใใ; G
)
ใใG H
{
ไไ 	
return
ๅๅ 
NoteBookDAL
ๅๅ 
.
ๅๅ 
UpdateNotes
ๅๅ *
(
ๅๅ* +
notesRequest
ๅๅ+ 7
)
ๅๅ7 8
;
ๅๅ8 9
}
ๆๆ 	
public
่่ 
static
่่ 
List
่่ 
<
่่ 
Notes
่่  
>
่่  !
DeleteNotes
่่" -
(
่่- .
NotesRequest
่่. :
notesRequest
่่; G
)
่่G H
{
้้ 	
return
๊๊ 
NoteBookDAL
๊๊ 
.
๊๊ 
DeleteNotes
๊๊ *
(
๊๊* +
notesRequest
๊๊+ 7
)
๊๊7 8
;
๊๊8 9
}
๋๋ 	
}
์์ 
}ํํ ุ 
sD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\NotificationMessageSettingBL.cs
	namespace

 	
AAO


 
.

 
BAL

 
.

 
BCSCSelfAssessment

 $
{ 
public 

class (
NotificationMessageSettingBL -
{ 
public 
static 
List 
< &
NotificationMessageSetting 5
>5 6,
 GetAllNotificationMessageSetting7 W
(W X
SearchParametersX h

queDetailsi s
)s t
{ 	
return )
NotificationMessageSettingDAL 0
.0 1,
 GetAllNotificationMessageSetting1 Q
(Q R

queDetailsR \
)\ ]
;] ^
} 	
public 
static 
List 
< &
NotificationMessageSetting 5
>5 6&
GetAllMessageSettingByUser7 Q
(Q R
SearchParametersR b

queDetailsc m
)m n
{ 	
return )
NotificationMessageSettingDAL 0
.0 1&
GetAllMessageSettingByUser1 K
(K L

queDetailsL V
)V W
;W X
} 	
public 
static 
List 
< %
SharedExamNotificationDTO 4
>4 5,
 GetSharedExamNotificationsByUser6 V
(V W
intW Z
userId[ a
)a b
{ 	
return )
NotificationMessageSettingDAL 0
.0 1,
 GetSharedExamNotificationsByUser1 Q
(Q R
userIdR X
)X Y
;Y Z
} 	
public 
static 
bool $
UpdateNotificationStatus 3
(3 4
int4 7
userId8 >
)> ?
{ 	
return )
NotificationMessageSettingDAL 0
.0 1$
UpdateNotificationStatus1 I
(I J
userIdJ P
)P Q
;Q R
}   	
public"" 
static"" &
NotificationMessageSetting"" 0)
GetNotificationMessageSetting""1 N
(""N O
SearchParameters""O _

queDetails""` j
)""j k
{## 	
return$$ )
NotificationMessageSettingDAL$$ 0
.$$0 1)
GetNotificationMessageSetting$$1 N
($$N O

queDetails$$O Y
)$$Y Z
;$$Z [
}%% 	
public'' 
static'' 
void'' *
SaveNotificationMessageSetting'' 9
(''9 :&
NotificationMessageSetting'': T&
notificationMessageSetting''U o
)''o p
{(( 	)
NotificationMessageSettingDAL)) )
.))) **
SaveNotificationMessageSetting))* H
())H I&
notificationMessageSetting))I c
)))c d
;))d e
}** 	
public,, 
static,, 
bool,,  
DeleteMessageSetting,, /
(,,/ 0
SearchParameters,,0 @

queDetails,,A K
),,K L
{-- 	
return.. )
NotificationMessageSettingDAL.. 0
...0 1 
DeleteMessageSetting..1 E
(..E F

queDetails..F P
)..P Q
;..Q R
}// 	
public11 
static11 
bool11 ,
 InsertOrUpdateUserMessageSetting11 ;
(11; <
SearchParameters11< L

queDetails11M W
)11W X
{22 	
return33 )
NotificationMessageSettingDAL33 0
.330 1,
 InsertOrUpdateUserMessageSetting331 Q
(33Q R

queDetails33R \
)33\ ]
;33] ^
}44 	
public66 
static66 
ExamDTO66 
GetExamData66 )
(66) *
SearchParameters66* :
loginDetails66; G
)66G H
{77 	
return88 )
NotificationMessageSettingDAL88 0
.880 1
GetExamData881 <
(88< =
loginDetails88= I
)88I J
;88J K
}99 	
}:: 
};; 	
dD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\OptInReportBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
OptInReportBL 
{ 
public		 
static		 
List		 
<		 
OptInReports		 '
>		' (
OptInReports		) 5
(		5 6
OptInReports		6 B
optInReports		C O
)		O P
{

 	
return 
OptInReportsDAL "
." #
OptInReports# /
(/ 0
optInReports0 <
)< =
;= >
} 	
public 
static 
List 
< 
OptInReports '
>' (
GetOptIn) 1
(1 2
OptInReports2 >
optInReports? K
)K L
{ 	
return 
OptInReportsDAL "
." #
GetOptIn# +
(+ ,
optInReports, 8
)8 9
;9 :
} 	
} 
} 
nD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\Properties\AssemblyInfo.cs
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
]$$) *—
fD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\ReportDetailsBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ReportDetailsBL '
{ 
public		 
static		 
List		 
<		 
ReportsDetailsVM		 +
>		+ ,
ReportDetails		- :
(		: ;
ReportsDetailsVM		; K
reportDetails		L Y
)		Y Z
{

 	
return 
ReportDetailsDAL #
.# $
ReportDetails$ 1
(1 2
reportDetails2 ?
)? @
;@ A
} 	
} 
} 
uD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\ResidentChapterReportDetailsBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class *
ResidentChapterReportDetailsBL 6
{ 
public		 
static		 
List		 
<		 +
ResidentChapterReportDetailsDTO		 :
>		: ;(
ResidentChapterReportDetails		< X
(		X Y+
ResidentChapterReportDetailsDTO		Y x!
reportChapterDetails			y 
)
		 
{

 	
return +
ResidentChapterReportDetailsDAL 2
.2 3(
ResidentChapterReportDetails3 O
(O P 
reportChapterDetailsP d
)d e
;e f
} 	
public 
static 
List 
< +
ResidentChapterReportDetailsDTO :
>: ;
ResidentChartDetail< O
(O P+
ResidentChapterReportDetailsDTOP o!
reportChapterDetails	p 
)
 …
{ 	
return +
ResidentChapterReportDetailsDAL 2
.2 3(
ResidentChapterReportDetails3 O
(O P 
reportChapterDetailsP d
)d e
;e f
} 	
} 
} าW
iD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\SpacedRepetitionBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
SpacedRepetitionBL *
{ 
private 
static 
string 
_sAttrLogPath +
=, - 
ConfigurationManager. B
.B C
AppSettingsC N
.N O
GetO R
(R S
$strS `
)` a
;a b
private 
static 
Serilog 
. 
Core #
.# $
Logger$ *
log+ .
=/ 0
new1 4
LoggerConfiguration5 H
(H I
)I J
.J K
WriteToK R
.R S
RollingFileS ^
(^ _
_sAttrLogPath_ l
,l m
sharedn t
:t u
truev z
,z {#
retainedFileCountLimit	| ’
:
’ “
$num
” •
)
• –
.
– —
CreateLogger
— ฃ
(
ฃ ค
)
ค ฅ
;
ฅ ฆ
public 
static 
ExamDTO !
GetSpacedRepitionExam 3
(3 4
int4 7
userId8 >
,> ?
string@ F
typeofCategoryG U
)U V
{ 	
return 
SpacedRepetitionDAL &
.& '!
GetSpacedRepetionExam' <
(< =
userId= C
,C D
typeofCategoryE S
)S T
;T U
} 	
public 
static 
ExamStatusCountSRVM ) 
GetExamStatusCountSR* >
(> ?
ServiceCallVM? L
examServiceM X
)X Y
{ 	
log 
. 
Information 
( 
$str F
,F G
$strH ^
,^ _
examService` k
.k l
examIdl r
,r s
examServicet 
.	 €
userId
€ 
)
 
;
 
int 
examId 
= 
SpacedRepetitionDAL ,
., -
GetExamIdBYUserIdSR- @
(@ A
examServiceA L
.L M
userIdM S
)S T
;T U
log 
. 
Information 
( 
$str D
,D E
$strF \
,\ ]
examService^ i
.i j
examIdj p
,p q
examServicer }
.} ~
userId	~ 
)
 …
;
… 
return 
SpacedRepetitionDAL &
.& ' 
GetExamStatusCountSR' ;
(; <
examId< B
)B C
;C D
} 	
public"" 
static"" 
List"" 
<"" #
SRPerformanceOverviewVM"" 2
>""2 3+
GetSectionPerformanceOverviewSR""4 S
(""S T
ServiceCallVM""T a
examService""b m
)""m n
{## 	
log$$ 
.$$ 
Information$$ 
($$ 
$str$$ F
,$$F G
$str$$H ^
,$$^ _
examService$$` k
.$$k l
examId$$l r
,$$r s
examService$$t 
.	$$ €
userId
$$€ 
)
$$ 
;
$$ 
int%% 
examId%% 
=%% 
SpacedRepetitionDAL%% ,
.%%, -
GetExamIdBYUserIdSR%%- @
(%%@ A
examService%%A L
.%%L M
userId%%M S
)%%S T
;%%T U
log&& 
.&& 
Information&& 
(&& 
$str&& D
,&&D E
$str&&F \
,&&\ ]
examService&&^ i
.&&i j
examId&&j p
,&&p q
examService&&r }
.&&} ~
userId	&&~ 
)
&& …
;
&&… 
return'' 
SpacedRepetitionDAL'' &
.''& '+
GetSectionPerformanceOverviewSR''' F
(''F G
examId''G M
)''M N
;''N O
})) 	
public,, 
static,, 
List,, 
<,, *
SRPerformanceOverviewChapterVM,, 9
>,,9 :+
GetChapterPerformanceOverviewSR,,; Z
(,,Z [
ServiceCallVM,,[ h
examService,,i t
),,t u
{-- 	
log.. 
... 
Information.. 
(.. 
$str.. F
,..F G
$str..H ^
,..^ _
examService..` k
...k l
examId..l r
,..r s
examService..t 
.	.. €
userId
..€ 
)
.. 
;
.. 
int// 
examId// 
=// 
SpacedRepetitionDAL// ,
.//, -
GetExamIdBYUserIdSR//- @
(//@ A
examService//A L
.//L M
userId//M S
)//S T
;//T U
log00 
.00 
Information00 
(00 
$str00 D
,00D E
$str00F \
,00\ ]
examService00^ i
.00i j
examId00j p
,00p q
examService00r }
.00} ~
userId	00~ 
)
00 …
;
00… 
return11 
SpacedRepetitionDAL11 &
.11& '+
GetChapterPerformanceOverviewSR11' F
(11F G
examId11G M
,11M N
examService11O Z
.11Z [
SubpecialityId11[ i
)11i j
;11j k
}33 	
public66 
static66 
List66 
<66 )
SRPerformanceOverviewTopicsVM66 8
>668 9*
GetTopicsPerformanceOverviewSR66: X
(66X Y
ServiceCallVM66Y f
examService66g r
)66r s
{77 	
log88 
.88 
Information88 
(88 
$str88 F
,88F G
$str88H ^
,88^ _
examService88` k
.88k l
examId88l r
,88r s
examService88t 
.	88 €
userId
88€ 
)
88 
;
88 
int99 
examId99 
=99 
SpacedRepetitionDAL99 ,
.99, -
GetExamIdBYUserIdSR99- @
(99@ A
examService99A L
.99L M
userId99M S
)99S T
;99T U
log:: 
.:: 
Information:: 
(:: 
$str:: D
,::D E
$str::F \
,::\ ]
examService::^ i
.::i j
examId::j p
,::p q
examService::r }
.::} ~
userId	::~ 
)
:: …
;
::… 
return;; 
SpacedRepetitionDAL;; &
.;;& '*
GetTopicsPerformanceOverviewSR;;' E
(;;E F
examId;;F L
,;;L M
examService;;N Y
.;;Y Z
ChapterNumber;;Z g
,;;g h
examService;;i t
.;;t u
SubpecialityId	;;u 
,
;; 
examService
;;… 
.
;; ‘
ChapterName
;;‘ 
)
;; 
;
;; 
}>> 	
publicAA 
staticAA 
ListAA 
<AA !
SRRecommendedTopicsVMAA 0
>AA0 1"
GetRecommendedTopicsSRAA2 H
(AAH I
ServiceCallVMAAI V
examServiceAAW b
)AAb c
{BB 	
logCC 
.CC 
InformationCC 
(CC 
$strCC S
,CCS T
$strCCU k
,CCk l
examServiceCCm x
.CCx y
examIdCCy 
,	CC €
examService
CC 
.
CC 
userId
CC “
,
CC“ ”
examService
CC•  
.
CC  ก
examType
CCก ฉ
)
CCฉ ช
;
CCช ซ
intDD 
examIdDD 
=DD 
SpacedRepetitionDALDD ,
.DD, -
GetExamIdBYUserIdSRDD- @
(DD@ A
examServiceDDA L
.DDL M
userIdDDM S
)DDS T
;DDT U
logEE 
.EE 
InformationEE 
(EE 
$strEE D
,EED E
$strEEF \
,EE\ ]
examServiceEE^ i
.EEi j
examIdEEj p
,EEp q
examServiceEEr }
.EE} ~
userId	EE~ 
)
EE …
;
EE… 
returnFF 
SpacedRepetitionDALFF &
.FF& '"
GetRecommendedTopicsSRFF' =
(FF= >
examIdFF> D
,FFD E
examServiceFFF Q
.FFQ R
userIdFFR X
)FFX Y
;FFY Z
}HH 	
publicKK 
staticKK 
ListKK 
<KK '
SRRecommendedTopicsExportVMKK 6
>KK6 7(
GetRecommendedTopicsExportSRKK8 T
(KKT U
ServiceCallVMKKU b
examServiceKKc n
,KKn o(
SRRecommendedTopicsExportVM	KKp )
sRRecommendedTopicsExportVM
KK ง
)
KKง จ
{LL 	
logMM 
.MM 
InformationMM 
(MM 
$strMM T
,MMT U
$strMMV l
,MMl m
examServiceMMn y
.MMy z
examId	MMz €
,
MM€ 
examService
MM 
.
MM 
userId
MM ”
,
MM” •
examService
MM– ก
.
MMก ข
examType
MMข ช
)
MMช ซ
;
MMซ ฌ
intNN 
examIdNN 
=NN 
SpacedRepetitionDALNN ,
.NN, -
GetExamIdBYUserIdSRNN- @
(NN@ A
examServiceNNA L
.NNL M
userIdNNM S
)NNS T
;NNT U
logOO 
.OO 
InformationOO 
(OO 
$strOO D
,OOD E
$strOOF \
,OO\ ]
examServiceOO^ i
.OOi j
examIdOOj p
,OOp q
examServiceOOr }
.OO} ~
userId	OO~ 
)
OO …
;
OO… 
returnPP 
SpacedRepetitionDALPP &
.PP& '(
GetRecommendedTopicsExportSRPP' C
(PPC D
examIdPPD J
)PPJ K
;PPK L
}QQ 	
publicSS 
staticSS 
intSS "
DeleteRecommendedTopicSS 1
(SS1 2(
SRRecommendedTopicsDeletedVMSS2 N
delRecommendedTopicSSO b
)SSb c
{TT 	
logUU 
.UU 
InformationUU 
(UU 
$strUU =
,UU= >
$strUU? W
,UUW X
delRecommendedTopicUUY l
.UUl m
UserIdUUm s
)UUs t
;UUt u
intVV 
recordVV 
=VV 
SpacedRepetitionDALVV ,
.VV, -"
DeleteRecommendedTopicVV- C
(VVC D
delRecommendedTopicVVD W
)VVW X
;VVX Y
logWW 
.WW 
InformationWW 
(WW 
$strWW ;
,WW; <
$strWW= U
,WWU V
delRecommendedTopicWWW j
.WWj k
UserIdWWk q
)WWq r
;WWr s
returnXX 
recordXX 
;XX 
}ZZ 	
}[[ 
}\\ ฃ
cD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\SpecialityBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
SpecialityBL $
{		 
public

 
static

 
List

 
<

 !
SubSpecialityDetailVM

 0
>

0 1
GetSpecialityList

2 C
(

C D
ExamDTO

D K
exam

L P
)

P Q
{ 	
return 
SpecialityDAL  
.  !
GetSpecialityList! 2
(2 3
exam3 7
.7 8
UserId8 >
)> ?
;? @
} 	
} 
} ฺ
]D:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\UserBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public		 

class		 
UserBL		 
{

 
public 
static 
List 
< 
UserDTO "
>" #
GetUserDetails$ 2
(2 3
int3 6
userId7 =
)= >
{ 	
return 
UserDAL 
. 
GetByUserID &
(& '
userId' -
)- .
;. /
} 	
public 
static 
List 
< 
UserDTO "
>" #
ValidateUser$ 0
(0 1
string1 7
userName8 @
,@ A
stringB H
passwordI Q
)Q R
{ 	
return 
UserDAL 
. 
ValidateUser '
(' (
userName( 0
,0 1
password2 :
): ;
;; <
} 	
public 
static 
string 
GetUserByRole *
(* +
string+ 1
userName2 :
): ;
{ 	
return 
UserDAL 
. 
GetUserByRole (
(( )
userName) 1
)1 2
;2 3
} 	
public 
static 
int 

CreateUser $
($ %
UserDTO% ,
objUser- 4
)4 5
{ 	
return 
UserDAL 
. 

CreateUser %
(% &
objUser& -
)- .
;. /
} 	
public 
static 
List 
< 
UserDTO "
>" #
GetUserList$ /
(/ 0
)0 1
{   	
return!! 
UserDAL!! 
.!! 
GetUsers!! #
(!!# $
)!!$ %
;!!% &
}"" 	
public$$ 
static$$ 
int$$ 

UpdateUser$$ $
($$$ %
UserDTO$$% ,
objUser$$- 4
)$$4 5
{%% 	
return&& 
UserDAL&& 
.&& 
UpdateUsers&& &
(&&& '
objUser&&' .
)&&. /
;&&/ 0
}'' 	
public)) 
static)) 
List)) 
<)) 
UserDataDTO)) &
>))& '
GetOrAddUser))( 4
())4 5

UserJsonVM))5 ?
objUser))@ G
)))G H
{** 	
return++ 
UserDAL++ 
.++ 
GetOrAddUser++ '
(++' (
objUser++( /
)++/ 0
;++0 1
},, 	
public.. 
static.. 
List.. 
<.. 
UserDataDTO.. &
>..& '

GetRenewal..( 2
(..2 3
ServiceCallVM..3 @
userService..A L
)..L M
{// 	
return00 
UserDAL00 
.00 
GetByUserData00 (
(00( )
Convert00) 0
.000 1
ToInt32001 8
(008 9
userService009 D
.00D E
userId00E K
)00K L
)00L M
;00M N
}11 	
}22 
}33 @
aD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\UserViewBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 

UserViewBL "
{ 
private 
static 
string 
_sAttrLogPath +
=, - 
ConfigurationManager. B
.B C
AppSettingsC N
.N O
GetO R
(R S
$strS `
)` a
;a b
private 
static 
Serilog 
. 
Core #
.# $
Logger$ *
log+ .
=/ 0
new1 4
LoggerConfiguration5 H
(H I
)I J
.J K
WriteToK R
.R S
RollingFileS ^
(^ _
_sAttrLogPath_ l
,l m
sharedn t
:t u
truev z
,z {#
retainedFileCountLimit	| ’
:
’ “
$num
” •
)
• –
.
– —
CreateLogger
— ฃ
(
ฃ ค
)
ค ฅ
;
ฅ ฆ
public 
static 
QuestionDetails %
GetQuestionById& 5
(5 6
int6 9
?9 :

friendlyId; E
,E F
intG J
?J K
userIdL R
)R S
{ 	
SqlConnection 

connection $
=% &
new' *
SqlConnection+ 8
(8 9!
SqlConnectionProvider9 N
.N O
GetConnectionStringO b
(b c
DataAccessTypec q
.q r
Readr v
)v w
)w x
;x y

connection 
. 
Open 
( 
) 
; 
int 

questionId 
= 
UserViewDAL (
.( )%
GetQuestionIdByFriendlyid) B
(B C

friendlyIdC M
,M N

connectionO Y
)Y Z
;Z [
try 
{ 
log 
. 
Information 
(  
$str  B
,B C
$strD T
,T U

questionId 
) 
;  
List 
< 
Choice 
> 

choiceList '
=( )
new* -
List. 2
<2 3
Choice3 9
>9 :
(: ;
); <
;< =
QuestionDetails 
questionDetails  /
=0 1
new2 5
QuestionDetails6 E
(E F
)F G
;G H
log 
. 
Information 
(  
$str  :
): ;
;; <
questionDetails   
=    !
UserViewDAL  " -
.  - .*
GetQuestionDetailsByQuestionid  . L
(  L M
Convert  M T
.  T U
ToInt32  U \
(  \ ]

questionId  ] g
)  g h
)  h i
;  i j
log!! 
.!! 
Information!! 
(!!  
$str!!  8
)!!8 9
;!!9 :
questionDetails'' 
.''  
rightChoiceId''  -
=''. /
AssessmentDAL''0 =
.''= >&
GetRightChoiceByQuestionId''> X
(''X Y
Convert''Y `
.''` a
ToInt32''a h
(''h i

questionId''i s
)''s t
,''t u

connection	''v €
)
''€ 
;
'' 
questionDetails(( 
.((  
examAnswerToShow((  0
=((1 2
true((3 7
;((7 8
questionDetails)) 
.))  
questionDiscussion))  2
=))3 4
AssessmentDAL))5 B
.))B C!
GetQuestionDiscussion))C X
())X Y
Convert))Y `
.))` a
ToInt32))a h
())h i

questionId))i s
)))s t
,))t u

connection	))v €
)
))€ 
;
)) 
questionDetails,, 
.,,  

references,,  *
=,,+ ,
AssessmentDAL,,- :
.,,: ;
GetReferences,,; H
(,,H I
Convert,,I P
.,,P Q
ToInt32,,Q X
(,,X Y

questionId,,Y c
),,c d
,,,d e

connection,,f p
),,p q
;,,q r
List-- 
<-- 
string-- 
>-- 
	notesList-- &
=--' (
new--) ,
List--- 1
<--1 2
string--2 8
>--8 9
(--9 :
)--: ;
;--; <
	notesList.. 
... 
Add.. 
(.. 
$str.. N
)..N O
;..O P
questionDetails11 
.11  
RelatedContents11  /
=110 1
AssessmentDAL112 ?
.11? @
GetRelatedContent11@ Q
(11Q R
Convert11R Y
.11Y Z
ToInt3211Z a
(11a b

questionId11b l
)11l m
,11m n

connection11o y
)11y z
;11z {
questionDetails44 
.44  
notes44  %
=44& '
	notesList44( 1
;441 2

choiceList88 
=88 
UserViewDAL88 (
.88( )%
GetChoiceListBYQuestionId88) B
(88B C
Convert88C J
.88J K
ToInt3288K R
(88R S

questionId88S ]
)88] ^
,88^ _
questionDetails88` o
.88o p
NotRandomizeAnswer	88p 
,
88 

connection
88 
)
88 
;
88 
questionDetails99 
.99  

choiceList99  *
=99+ ,

choiceList99- 7
;997 8
log<< 
.<< 
Information<< 
(<<  
$str<<  B
,<<B C
$str<<D X
,<<X Y

questionId<<Z d
)<<d e
;<<e f
questionDetails== 
.==  
BCSCExcerpt==  +
===, -
AssessmentDAL==. ;
.==; <
GetBCSCExcerptText==< N
(==N O
Convert==O V
.==V W
ToInt32==W ^
(==^ _

questionId==_ i
)==i j
)==j k
;==k l
log>> 
.>> 
Information>> 
(>>  
$str>>  @
,>>@ A
$str>>B V
,>>V W

questionId>>X b
)>>b c
;>>c d
questionDetails@@ 
.@@  
ExcerptHeadings@@  /
=@@0 1
AssessmentBL@@2 >
.@@> ?
GetExcerptHeadings@@? Q
(@@Q R
questionDetails@@R a
.@@a b
BCSCExcerpt@@b m
)@@m n
;@@n o
questionDetailsCC 
.CC  
	TopicNameCC  )
=CC* +
AssessmentDALCC, 9
.CC9 :
GetTopicByQuestionCC: L
(CCL M
ConvertCCM T
.CCT U
ToInt32CCU \
(CC\ ]

questionIdCC] g
)CCg h
)CCh i
;CCi j
logDD 
.DD 
InformationDD 
(DD  
$strDD  @
,DD@ A
$strDDB S
,DDS T

questionIdDDU _
)DD_ `
;DD` a

connectionEE 
.EE 
CloseEE  
(EE  !
)EE! "
;EE" #
returnFF 
questionDetailsFF &
;FF& '
}GG 
catchHH 
(HH 
	ExceptionHH 
eHH 
)HH 
{II 
logJJ 
.JJ 
ErrorJJ 
(JJ 
eJJ 
.JJ 
MessageJJ #
+JJ$ %
$strJJ& 3
+JJ4 5

questionIdJJ6 @
+JJA B
$strJJC L
+JJM N
userIdJJO U
)JJU V
;JJV W
ConsoleKK 
.KK 
WriteKK 
(KK 
eKK 
.KK  
MessageKK  '
)KK' (
;KK( )
returnLL 
nullLL 
;LL 
}MM 
}NN 	
}OO 
}PP ต	
jD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\UtilizationReportBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

class 
UtilizationReportBL $
{ 
public		 
static		 
List		 
<		  
UtilizationReportsVM		 /
>		/ 0
UtilizationReports		1 C
(		C D 
UtilizationReportsVM		D X
utilizationReports		Y k
)		k l
{

 	
return !
UtilizationReportsDAL (
.( )
UtilizationReports) ;
(; <
utilizationReports< N
)N O
;O P
} 	
public 
static  
UtilizationReportsVM *
	AtAGlance+ 4
(4 5 
UtilizationReportsVM5 I
utilizationReportsJ \
)\ ]
{ 	
return !
UtilizationReportsDAL (
.( )
	AtAGlance) 2
(2 3
utilizationReports3 E
)E F
;F G
} 	
} 
} ๛
gD:\AAO-Azure\Branches\Main\AAO.WebAPI.BCSCSelfAssessment\AAO.BAL.BCSCSelfAssessment\ViewAssessmentBL.cs
	namespace 	
AAO
 
. 
BAL 
. 
BCSCSelfAssessment $
{ 
public 

static 
class 
ViewAssessmentBL (
{ 
private 
static 
string 
_sAttrLogPath +
=, - 
ConfigurationManager. B
.B C
AppSettingsC N
.N O
GetO R
(R S
$strS `
)` a
;a b
private 
static 
Serilog 
. 
Core #
.# $
Logger$ *
log+ .
=/ 0
new1 4
LoggerConfiguration5 H
(H I
)I J
.J K
WriteToK R
.R S
RollingFileS ^
(^ _
_sAttrLogPath_ l
,l m
sharedn t
:t u
truev z
,z {#
retainedFileCountLimit	| ’
:
’ “
$num
” •
)
• –
.
– —
CreateLogger
— ฃ
(
ฃ ค
)
ค ฅ
;
ฅ ฆ
public 
static 
List 
< 
QuestionDetails *
>* +!
ViewAssessmentDetails, A
(A B
ExamQuestionDTOB Q
examqueR Y
)Y Z
{ 	
List 
< 
QuestionDetails  
>  !#
examQuestionDetailsList" 9
=: ;
new< ?
List@ D
<D E
QuestionDetailsE T
>T U
(U V
)V W
;W X
List 
< 
int 
> 
questionList "
=# $
new% (
List) -
<- .
int. 1
>1 2
(2 3
)3 4
;4 5
questionList 
= 
ViewAssessmentDAL ,
., -!
ViewAssessmentDetails- B
(B C
ConvertC J
.J K
ToInt32K R
(R S
examqueS Z
.Z [
ExamId[ a
)a b
)b c
;c d
foreach 
( 
int 
item 
in  
questionList! -
)- .
{ 
QuestionDetails 
examQuestionDetails  3
=4 5
new6 9
QuestionDetails: I
(I J
)J K
;K L
examQuestionDetails #
=$ %
AssessmentBL& 2
.2 3
GetExamQuestion3 B
(B C
(C D
ConvertD K
.K L
ToInt32L S
(S T
examqueT [
.[ \
ExamId\ b
)b c
)c d
,d e
itemf j
,j k
Convertl s
.s t
ToInt32t {
({ |
examque	| 
.
 
UserId
 
)
 
)
 
;
 #
examQuestionDetailsList '
.' (
Add( +
(+ ,
examQuestionDetails, ?
)? @
;@ A
} 
return   #
examQuestionDetailsList   *
;  * +
}!! 	
public## 
static## 
List## 
<## 
QuestionDetails## *
>##* +
FilterByQuestions##, =
(##= >
AssesmentDetailVM##> O
	assDetail##P Y
)##Y Z
{$$ 	
List%% 
<%% 
QuestionDetails%%  
>%%  !#
examQuestionDetailsList%%" 9
=%%: ;
new%%< ?
List%%@ D
<%%D E
QuestionDetails%%E T
>%%T U
(%%U V
)%%V W
;%%W X
List&& 
<&& !
QuestionIdWithCountVM&& &
>&&& '
questionList&&( 4
=&&5 6
new&&7 :
List&&; ?
<&&? @!
QuestionIdWithCountVM&&@ U
>&&U V
(&&V W
)&&W X
;&&X Y
questionList'' 
='' 
ViewAssessmentDAL'' ,
.'', -
FilterByQuestions''- >
(''> ?
Convert''? F
.''F G
ToInt32''G N
(''N O
	assDetail''O X
.''X Y
ExamId''Y _
)''_ `
,''` a
Convert''b i
.''i j
ToString''j r
(''r s
	assDetail''s |
.''| }
Filter	''} 
)
'' 
,
'' …
	assDetail
'' 
.
'' 
NoOfRecords
'' 
,
'' 
	assDetail
'' ฆ
.
''ฆ ง
PageNo
''ง ญ
,
''ญ ฎ
	assDetail
''ฏ ธ
.
''ธ น
UserId
''น ฟ
)
''ฟ ภ
;
''ภ ม
foreach(( 
((( !
QuestionIdWithCountVM(( *
item((+ /
in((0 2
questionList((3 ?
)((? @
{)) 
QuestionDetails** 
examQuestionDetails**  3
=**4 5
new**6 9
QuestionDetails**: I
(**I J
)**J K
;**K L
examQuestionDetails,, #
=,,$ %
GetExamQuestion,,& 5
(,,5 6
(,,6 7
Convert,,7 >
.,,> ?
ToInt32,,? F
(,,F G
	assDetail,,G P
.,,P Q
ExamId,,Q W
),,W X
),,X Y
,,,Y Z
item,,[ _
.,,_ `

QuestionId,,` j
,,,j k
Convert,,l s
.,,s t
ToInt32,,t {
(,,{ |
	assDetail	,,| …
.
,,… 
UserId
,, 
)
,, 
)
,, 
;
,, 
examQuestionDetails-- #
.--# $
QuestionCount--$ 1
=--2 3
item--4 8
.--8 9
QuestionIdCount--9 H
;--H I
examQuestionDetails.. #
...# $
serialNumber..$ 0
=..1 2
item..3 7
...7 8

QuestionNo..8 B
;..B C#
examQuestionDetailsList// '
.//' (
Add//( +
(//+ ,
examQuestionDetails//, ?
)//? @
;//@ A
}00 
return22 #
examQuestionDetailsList22 *
;22* +
}33 	
public55 
static55 
List55 
<55 
QuestionDetails55 *
>55* +
ViewDetails55, 7
(557 8
ExamQuestionDTO558 G
examque55H O
)55O P
{66 	
List77 
<77 
QuestionDetails77  
>77  !#
examQuestionDetailsList77" 9
=77: ;
new77< ?
List77@ D
<77D E
QuestionDetails77E T
>77T U
(77U V
)77V W
;77W X
List88 
<88 
int88 
>88 
questionList88 "
=88# $
new88% (
List88) -
<88- .
int88. 1
>881 2
(882 3
)883 4
;884 5
questionList99 
=99 
ViewAssessmentDAL99 ,
.99, -
ViewDetails99- 8
(998 9
Convert999 @
.99@ A
ToInt3299A H
(99H I
examque99I P
.99P Q
ExamId99Q W
)99W X
)99X Y
;99Y Z
foreach:: 
(:: 
int:: 
item:: 
in::  
questionList::! -
)::- .
{;; 
QuestionDetails<< 
examQuestionDetails<<  3
=<<4 5
new<<6 9
QuestionDetails<<: I
(<<I J
)<<J K
;<<K L
examQuestionDetails== #
===$ %
AssessmentBL==& 2
.==2 3
GetExamQuestion==3 B
(==B C
(==C D
Convert==D K
.==K L
ToInt32==L S
(==S T
examque==T [
.==[ \
ExamId==\ b
)==b c
)==c d
,==d e
item==f j
,==j k
Convert==l s
.==s t
ToInt32==t {
(=={ |
examque	==| 
.
== 
UserId
== 
)
== 
)
== 
;
== #
examQuestionDetailsList>> '
.>>' (
Add>>( +
(>>+ ,
examQuestionDetails>>, ?
)>>? @
;>>@ A
}?? 
returnAA #
examQuestionDetailsListAA *
;AA* +
}BB 	
publicDD 
staticDD 
ListDD 
<DD 
QuestionDetailsDD *
>DD* +
SearchByQuestionsDD, =
(DD= >
AssesmentDetailVMDD> O
	assDetailDDP Y
)DDY Z
{EE 	
ListFF 
<FF 
QuestionDetailsFF  
>FF  !#
examQuestionDetailsListFF" 9
=FF: ;
newFF< ?
ListFF@ D
<FFD E
QuestionDetailsFFE T
>FFT U
(FFU V
)FFV W
;FFW X
ListGG 
<GG  
QuestionIdWithExamIdGG %
>GG% &
questionListGG' 3
=GG4 5
newGG6 9
ListGG: >
<GG> ? 
QuestionIdWithExamIdGG? S
>GGS T
(GGT U
)GGU V
;GGV W
questionListHH 
=HH 
ViewAssessmentDALHH ,
.HH, -
SearchByQuestionsHH- >
(HH> ?
ConvertHH? F
.HHF G
ToStringHHG O
(HHO P
	assDetailHHP Y
.HHY Z
UserIdHHZ `
)HH` a
,HHa b
ConvertHHc j
.HHj k
ToStringHHk s
(HHs t
	assDetailHHt }
.HH} ~

SearchTerm	HH~ 
)
HH 
,
HH 
Convert
HH ’
.
HH’ “
ToString
HH“ 
(
HH 
	assDetail
HH ฅ
.
HHฅ ฆ
Filter
HHฆ ฌ
)
HHฌ ญ
,
HHญ ฎ
	assDetail
HHฏ ธ
.
HHธ น
NoOfRecords
HHน ฤ
,
HHฤ ล
	assDetail
HHฦ ฯ
.
HHฯ ะ
PageNo
HHะ ึ
)
HHึ ื
;
HHื ุ
foreachJJ 
(JJ  
QuestionIdWithExamIdJJ )
itemJJ* .
inJJ/ 1
questionListJJ2 >
)JJ> ?
{KK 
QuestionDetailsLL 
examQuestionDetailsLL  3
=LL4 5
newLL6 9
QuestionDetailsLL: I
(LLI J
)LLJ K
;LLK L
examQuestionDetailsMM #
=MM$ %
AssessmentBLMM& 2
.MM2 3"
GetExamQuestion_SearchMM3 I
(MMI J
(MMJ K
ConvertMMK R
.MMR S
ToInt32MMS Z
(MMZ [
itemMM[ _
.MM_ `
ExamIdMM` f
)MMf g
)MMg h
,MMh i
itemMMj n
.MMn o

QuestionIdMMo y
,MMy z
Convert	MM{ 
.
MM 
ToInt32
MM 
(
MM 
	assDetail
MM ”
.
MM” •
UserId
MM• 
)
MM 
)
MM 
;
MM 
examQuestionDetailsNN #
.NN# $
QuestionCountNN$ 1
=NN2 3
itemNN4 8
.NN8 9
QuestionIdCountNN9 H
;NNH I
examQuestionDetailsOO #
.OO# $
serialNumberOO$ 0
=OO1 2
itemOO3 7
.OO7 8

QuestionNoOO8 B
;OOB C#
examQuestionDetailsListPP '
.PP' (
AddPP( +
(PP+ ,
examQuestionDetailsPP, ?
)PP? @
;PP@ A
}QQ 
returnSS #
examQuestionDetailsListSS *
;SS* +
}__ 	
publicaa 
staticaa 
Listaa 
<aa 
QuestionDetailsaa *
>aa* +(
SearchByQuestions_SharedExamaa, H
(aaH I
AssesmentDetailVMaaI Z
	assDetailaa[ d
)aad e
{bb 	
Listcc 
<cc 
QuestionDetailscc  
>cc  !#
examQuestionDetailsListcc" 9
=cc: ;
newcc< ?
Listcc@ D
<ccD E
QuestionDetailsccE T
>ccT U
(ccU V
)ccV W
;ccW X
Listdd 
<dd  
QuestionIdWithExamIddd %
>dd% &
questionListdd' 3
=dd4 5
newdd6 9
Listdd: >
<dd> ? 
QuestionIdWithExamIddd? S
>ddS T
(ddT U
)ddU V
;ddV W
questionListee 
=ee 
ViewAssessmentDALee ,
.ee, -
SearchByQuestionsee- >
(ee> ?
Convertee? F
.eeF G
ToStringeeG O
(eeO P
	assDetaileeP Y
.eeY Z
UserIdeeZ `
)ee` a
,eea b
Converteec j
.eej k
ToStringeek s
(ees t
	assDetaileet }
.ee} ~

SearchTerm	ee~ 
)
ee 
,
ee 
Convert
ee ’
.
ee’ “
ToString
ee“ 
(
ee 
	assDetail
ee ฅ
.
eeฅ ฆ
Filter
eeฆ ฌ
)
eeฌ ญ
,
eeญ ฎ
	assDetail
eeฏ ธ
.
eeธ น
NoOfRecords
eeน ฤ
,
eeฤ ล
	assDetail
eeฦ ฯ
.
eeฯ ะ
PageNo
eeะ ึ
)
eeึ ื
;
eeื ุ
foreachgg 
(gg  
QuestionIdWithExamIdgg )
itemgg* .
ingg/ 1
questionListgg2 >
)gg> ?
{hh 
QuestionDetailsii 
examQuestionDetailsii  3
=ii4 5
newii6 9
QuestionDetailsii: I
(iiI J
)iiJ K
;iiK L
examQuestionDetailsjj #
=jj$ %
AssessmentBLjj& 2
.jj2 3-
!GetExamQuestion_Search_SharedExamjj3 T
(jjT U
(jjU V
ConvertjjV ]
.jj] ^
ToInt32jj^ e
(jje f
itemjjf j
.jjj k
ExamIdjjk q
)jjq r
)jjr s
,jjs t
itemjju y
.jjy z

QuestionId	jjz 
,
jj …
Convert
jj 
.
jj 
ToInt32
jj •
(
jj• –
	assDetail
jj– 
.
jj  
UserId
jj  ฆ
)
jjฆ ง
)
jjง จ
;
jjจ ฉ
examQuestionDetailskk #
.kk# $
QuestionCountkk$ 1
=kk2 3
itemkk4 8
.kk8 9
QuestionIdCountkk9 H
;kkH I
examQuestionDetailsll #
.ll# $
serialNumberll$ 0
=ll1 2
itemll3 7
.ll7 8

QuestionNoll8 B
;llB C#
examQuestionDetailsListmm '
.mm' (
Addmm( +
(mm+ ,
examQuestionDetailsmm, ?
)mm? @
;mm@ A
}nn 
returnpp #
examQuestionDetailsListpp *
;pp* +
}|| 	
public~~ 
static~~ 
QuestionDetails~~ %
GetExamQuestion~~& 5
(~~5 6
int~~6 9
?~~9 :
examId~~; A
,~~A B
int~~C F
?~~F G

questionId~~H R
,~~R S
int~~T W
?~~W X
userId~~Y _
)~~_ `
{ 	
SqlConnection
€€ 

connection
€€ $
=
€€% &
new
€€' *
SqlConnection
€€+ 8
(
€€8 9#
SqlConnectionProvider
€€9 N
.
€€N O!
GetConnectionString
€€O b
(
€€b c
DataAccessType
€€c q
.
€€q r
Read
€€r v
)
€€v w
)
€€w x
;
€€x y

connection
 
.
 
Open
 
(
 
)
 
;
 
try
 
{
 
Log
…… 
.
…… 
Information
…… 
(
……  
$str
……  X
,
……X Y
$str
……Z k
,
……k l
examId
……m s
,
……s t

questionId
……u 
,…… €
userId…… 
)…… 
;…… 
ExamDTO
 
examObj
 
=
  !
AssessmentBL
" .
.
. /
GetExamBYId
/ :
(
: ;
examId
; A
)
A B
;
B C
List
 
<
 
Choice
 
>
 

choiceList
 '
=
( )
new
* -
List
. 2
<
2 3
Choice
3 9
>
9 :
(
: ;
)
; <
;
< =
QuestionDetails
 
questionDetails
  /
=
0 1
new
2 5
QuestionDetails
6 E
(
E F
)
F G
;
G H
if
 
(
 
Convert
 
.
 
ToInt32
 #
(
# $

questionId
$ .
)
. /
==
0 2
$num
3 4
)
4 5
{
 
log
 
.
 
Information
 #
(
# $
$str
$ \
,
\ ]
$str
^ p
,
p q
examId
r x
,
x y

questionIdz 
, …
userId 
) 
; 

questionId
 
=
  
AssessmentDAL
! .
.
. /
GetFirstQuestion
/ ?
(
? @
examObj
@ G
)
G H
;
H I
log
 
.
 
Information
 #
(
# $
$str
$ Z
,
Z [
$str
\ n
,
n o
examId
p v
,
v w

questionIdx 
, 
userId 
) 
; 
}
 
log
’’ 
.
’’ 
Information
’’ 
(
’’  
$str
’’  X
,
’’X Y
$str
’’Z n
,
’’n o
examId
’’p v
,
’’v w

questionId’’x 
,’’ 
userId’’ 
)’’ 
;’’ 
questionDetails
““ 
=
““  !
AssessmentDAL
““" /
.
““/ 0 
GetQuestionDetails
““0 B
(
““B C
Convert
““C J
.
““J K
ToInt32
““K R
(
““R S
examId
““S Y
)
““Y Z
,
““Z [
Convert
““\ c
.
““c d
ToInt32
““d k
(
““k l

questionId
““l v
)
““v w
)
““w x
;
““x y
log
”” 
.
”” 
Information
”” 
(
””  
$str
””  V
,
””V W
$str
””X l
,
””l m
examId
””n t
,
””t u

questionId””v €
,””€ 
userId”” 
)”” 
;”” 
questionDetails
 
.
  
rightChoiceId
  -
=
. /
AssessmentDAL
0 =
.
= >(
GetRightChoiceByQuestionId
> X
(
X Y
Convert
Y `
.
` a
ToInt32
a h
(
h i

questionId
i s
)
s t
,
t u

connectionv €
)€ 
; 
questionDetails
 
.
  

examStatus
  *
=
+ ,
examObj
- 4
.
4 5

ExamStatus
5 ?
;
? @
questionDetails
 
.
  
examAttemptId
  -
=
. /
examObj
0 7
.
7 8
ExamAttemptId
8 E
;
E F
questionDetails
 
.
  
examTimeType
  ,
=
- .
examObj
/ 6
.
6 7
ExamTimeType
7 C
;
C D
questionDetails
   
.
    
examMode
    (
=
  ) *
examObj
  + 2
.
  2 3
ExamMode
  3 ;
;
  ; <
questionDetails
กก 
.
กก  
examAnswerToShow
กก  0
=
กก1 2
examObj
กก3 :
.
กก: ;
ExamAnswerToShow
กก; K
;
กกK L
questionDetails
ขข 
.
ขข  
noOfQuestion
ขข  ,
=
ขข- .
examObj
ขข/ 6
.
ขข6 7
NoofQuestions
ขข7 D
;
ขขD E
questionDetails
ฃฃ 
.
ฃฃ  
ExamName
ฃฃ  (
=
ฃฃ) *
examObj
ฃฃ+ 2
.
ฃฃ2 3
ExamName
ฃฃ3 ;
;
ฃฃ; <
questionDetails
คค 
.
คค  
ExamType
คค  (
=
คค) *
examObj
คค+ 2
.
คค2 3
ExamType
คค3 ;
;
คค; <
questionDetails
ฅฅ 
.
ฅฅ  
userId
ฅฅ  &
=
ฅฅ' (
examObj
ฅฅ) 0
.
ฅฅ0 1
UserId
ฅฅ1 7
;
ฅฅ7 8
log
งง 
.
งง 
Information
งง 
(
งง  
$str
งง  X
,
งงX Y
$str
งงZ q
,
งงq r
examId
งงs y
,
งงy z

questionIdงง{ …
,งง… 
userIdงง 
)งง 
;งง 
questionDetails
จจ 
.
จจ   
questionDiscussion
จจ  2
=
จจ3 4
AssessmentDAL
จจ5 B
.
จจB C#
GetQuestionDiscussion
จจC X
(
จจX Y
Convert
จจY `
.
จจ` a
ToInt32
จจa h
(
จจh i

questionId
จจi s
)
จจs t
,
จจt u

connectionจจv €
)จจ€ 
;จจ 
log
ฉฉ 
.
ฉฉ 
Information
ฉฉ 
(
ฉฉ  
$str
ฉฉ  V
,
ฉฉV W
$str
ฉฉX o
,
ฉฉo p
examId
ฉฉq w
,
ฉฉw x

questionIdฉฉy 
,ฉฉ 
userIdฉฉ… 
)ฉฉ 
;ฉฉ 
questionDetails
ฌฌ 
.
ฌฌ  

references
ฌฌ  *
=
ฌฌ+ ,
AssessmentDAL
ฌฌ- :
.
ฌฌ: ;
GetReferences
ฌฌ; H
(
ฌฌH I
Convert
ฌฌI P
.
ฌฌP Q
ToInt32
ฌฌQ X
(
ฌฌX Y

questionId
ฌฌY c
)
ฌฌc d
,
ฌฌd e

connection
ฌฌf p
)
ฌฌp q
;
ฌฌq r
questionDetails
ฏฏ 
.
ฏฏ  
notes
ฏฏ  %
=
ฏฏ& '
AssessmentDAL
ฏฏ( 5
.
ฏฏ5 6
GetNotes
ฏฏ6 >
(
ฏฏ> ?
Convert
ฏฏ? F
.
ฏฏF G
ToInt32
ฏฏG N
(
ฏฏN O

questionId
ฏฏO Y
)
ฏฏY Z
,
ฏฏZ [
Convert
ฏฏ\ c
.
ฏฏc d
ToInt32
ฏฏd k
(
ฏฏk l
userId
ฏฏl r
)
ฏฏr s
,
ฏฏs t
Convert
ฏฏu |
.
ฏฏ| }
ToInt32ฏฏ} 
(ฏฏ …
examIdฏฏ… 
)ฏฏ 
,ฏฏ 

connectionฏฏ 
)ฏฏ 
;ฏฏ 
questionDetails
ฒฒ 
.
ฒฒ  
RelatedContents
ฒฒ  /
=
ฒฒ0 1
AssessmentDAL
ฒฒ2 ?
.
ฒฒ? @
GetRelatedContent
ฒฒ@ Q
(
ฒฒQ R
Convert
ฒฒR Y
.
ฒฒY Z
ToInt32
ฒฒZ a
(
ฒฒa b

questionId
ฒฒb l
)
ฒฒl m
,
ฒฒm n

connection
ฒฒo y
)
ฒฒy z
;
ฒฒz {
questionDetails
ตต 
.
ตต  "
examAttemptAnswerDTO
ตต  4
=
ตต5 6
AssessmentDAL
ตต7 D
.
ตตD E"
GetExamAttemptAnswer
ตตE Y
(
ตตY Z
Convert
ตตZ a
.
ตตa b
ToInt32
ตตb i
(
ตตi j

questionId
ตตj t
)
ตตt u
,
ตตu v
Convert
ตตw ~
.
ตต~ 
ToInt32ตต 
(ตต 
examObjตต 
.ตต 
ExamAttemptIdตต 
)ตต 
,ตต 

connectionตต ฉ
)ตตฉ ช
;ตตช ซ
questionDetails
ธธ 
.
ธธ  
examAttemptText
ธธ  /
=
ธธ0 1
AssessmentDAL
ธธ2 ?
.
ธธ? @&
GetExamAttemptAnswerText
ธธ@ X
(
ธธX Y
Convert
ธธY `
.
ธธ` a
ToInt32
ธธa h
(
ธธh i
examId
ธธi o
)
ธธo p
,
ธธp q
Convert
ธธr y
.
ธธy z
ToInt32ธธz 
(ธธ 

questionIdธธ 
)ธธ 
)ธธ 
;ธธ 
questionDetails
ปป 
.
ปป  
	markCheck
ปป  )
=
ปป* +
AssessmentDAL
ปป, 9
.
ปป9 :
GetMarkStatus
ปป: G
(
ปปG H
Convert
ปปH O
.
ปปO P
ToInt32
ปปP W
(
ปปW X
examId
ปปX ^
)
ปป^ _
,
ปป_ `
Convert
ปปa h
.
ปปh i
ToInt32
ปปi p
(
ปปp q

questionId
ปปq {
)
ปป{ |
,
ปป| }
Convertปป~ …
.ปป… 
ToInt32ปป 
(ปป 
userIdปป ”
)ปป” •
)ปป• –
;ปป– —
questionDetails
ผผ 
.
ผผ  
examId
ผผ  &
=
ผผ' (
Convert
ผผ) 0
.
ผผ0 1
ToInt32
ผผ1 8
(
ผผ8 9
examId
ผผ9 ?
)
ผผ? @
;
ผผ@ A
questionDetails
ฝฝ 
.
ฝฝ  $
CurrentExamAttemptTime
ฝฝ  6
=
ฝฝ7 8
DateTime
ฝฝ9 A
.
ฝฝA B
Now
ฝฝB E
;
ฝฝE F

choiceList
ภภ 
=
ภภ 
AssessmentDAL
ภภ *
.
ภภ* +#
GetChoiceBYQuestionId
ภภ+ @
(
ภภ@ A
Convert
ภภA H
.
ภภH I
ToInt32
ภภI P
(
ภภP Q

questionId
ภภQ [
)
ภภ[ \
,
ภภ\ ]
examId
ภภ^ d
,
ภภd e
questionDetails
ภภf u
.
ภภu v#
examAttemptAnswerDTOภภv 
.ภภ 
ChoiceIdภภ “
,ภภ“ ”
questionDetailsภภ• ค
.ภภค ฅ
examAttemptIdภภฅ ฒ
,ภภฒ ณ
questionDetailsภภด ร
.ภภร ฤ"
NotRandomizeAnswerภภฤ ึ
,ภภึ ื

connectionภภุ โ
)ภภโ ใ
;ภภใ ไ
questionDetails
มม 
.
มม  

choiceList
มม  *
=
มม+ ,

choiceList
มม- 7
;
มม7 8
log
ลล 
.
ลล 
Information
ลล 
(
ลล  
$str
ลล  X
,
ลลX Y
$str
ลลZ j
,
ลลj k
examId
ลลl r
,
ลลr s

questionId
ลลt ~
,
ลล~ 
userIdลล€ 
)ลล 
;ลล 
var
ฦฦ 
peerdata
ฦฦ 
=
ฦฦ 
AssessmentDAL
ฦฦ ,
.
ฦฦ, -
GetPeerDetails
ฦฦ- ;
(
ฦฦ; <
Convert
ฦฦ< C
.
ฦฦC D
ToInt32
ฦฦD K
(
ฦฦK L

questionId
ฦฦL V
)
ฦฦV W
,
ฦฦW X
Convert
ฦฦY `
.
ฦฦ` a
ToInt32
ฦฦa h
(
ฦฦh i
userId
ฦฦi o
)
ฦฦo p
,
ฦฦp q
questionDetailsฦฦr 
.ฦฦ 
examAttemptIdฦฦ 
)ฦฦ 
;ฦฦ ‘
log
วว 
.
วว 
Information
วว 
(
วว  
$str
วว  V
,
ววV W
$str
ววX h
,
ววh i
examId
ววj p
,
ววp q

questionId
ววr |
,
วว| }
userIdวว~ 
)วว …
;วว… 
questionDetails
ศศ 
.
ศศ  
PeerDetails
ศศ  +
=
ศศ, -
peerdata
ศศ. 6
.
ศศ6 7
Where
ศศ7 <
(
ศศ< =
s
ศศ= >
=>
ศศ? A
s
ศศB C
.
ศศC D
ChoiceId
ศศD L
!=
ศศM O
$num
ศศP Q
)
ศศQ R
.
ศศR S
OrderBy
ศศS Z
(
ศศZ [
s
ศศ[ \
=>
ศศ] _
s
ศศ` a
.
ศศa b
ChoiceOption
ศศb n
)
ศศn o
.
ศศo p
ToList
ศศp v
(
ศศv w
)
ศศw x
;
ศศx y
log
หห 
.
หห 
Information
หห 
(
หห  
$str
หห  X
,
หหX Y
$str
หหZ l
,
หหl m
examId
หหn t
,
หหt u

questionIdหหv €
,หห€ 
userIdหห 
)หห 
;หห 
questionDetails
ฬฬ 
.
ฬฬ  
QuestionCount
ฬฬ  -
=
ฬฬ. /
AssessmentDAL
ฬฬ0 =
.
ฬฬ= >
GetQuestionCount
ฬฬ> N
(
ฬฬN O
Convert
ฬฬO V
.
ฬฬV W
ToInt32
ฬฬW ^
(
ฬฬ^ _
examId
ฬฬ_ e
)
ฬฬe f
)
ฬฬf g
;
ฬฬg h
log
ออ 
.
ออ 
Information
ออ 
(
ออ  
$str
ออ  V
,
ออV W
$str
ออX j
,
ออj k
examId
ออl r
,
ออr s

questionId
ออt ~
,
ออ~ 
userIdออ€ 
)ออ 
;ออ 
log
ะะ 
.
ะะ 
Information
ะะ 
(
ะะ  
$str
ะะ  X
,
ะะX Y
$str
ะะZ n
,
ะะn o
examId
ะะp v
,
ะะv w

questionIdะะx 
,ะะ 
userIdะะ 
)ะะ 
;ะะ 
questionDetails
ัั 
.
ัั  
BCSCExcerpt
ัั  +
=
ัั, -
AssessmentDAL
ัั. ;
.
ัั; < 
GetBCSCExcerptText
ัั< N
(
ััN O
Convert
ััO V
.
ััV W
ToInt32
ััW ^
(
ัั^ _

questionId
ัั_ i
)
ััi j
)
ััj k
;
ััk l
log
าา 
.
าา 
Information
าา 
(
าา  
$str
าา  V
,
าาV W
$str
าาX l
,
าาl m
examId
าาn t
,
าาt u

questionIdาาv €
,าา€ 
userIdาา 
)าา 
;าา 
questionDetails
ิิ 
.
ิิ  
ExcerptHeadings
ิิ  /
=
ิิ0 1
AssessmentBL
ิิ2 >
.
ิิ> ? 
GetExcerptHeadings
ิิ? Q
(
ิิQ R
questionDetails
ิิR a
.
ิิa b
BCSCExcerpt
ิิb m
)
ิิm n
;
ิิn o
log
ืื 
.
ืื 
Information
ืื 
(
ืื  
$str
ืื  X
,
ืืX Y
$str
ืืZ n
,
ืืn o
examId
ืืp v
,
ืืv w

questionIdืืx 
,ืื 
userIdืื 
)ืื 
;ืื 
questionDetails
ุุ 
.
ุุ  
	TopicName
ุุ  )
=
ุุ* +
AssessmentDAL
ุุ, 9
.
ุุ9 : 
GetTopicByQuestion
ุุ: L
(
ุุL M
Convert
ุุM T
.
ุุT U
ToInt32
ุุU \
(
ุุ\ ]

questionId
ุุ] g
)
ุุg h
)
ุุh i
;
ุุi j
log
ูู 
.
ูู 
Information
ูู 
(
ูู  
$str
ูู  V
,
ููV W
$str
ููX l
,
ููl m
examId
ููn t
,
ููt u

questionIdููv €
,ูู€ 
userIdูู 
)ูู 
;ูู 

connection
ฺฺ 
.
ฺฺ 
Close
ฺฺ  
(
ฺฺ  !
)
ฺฺ! "
;
ฺฺ" #
log
ÛÛ 
.
ÛÛ 
Information
ÛÛ 
(
ÛÛ  
$str
ÛÛ  V
,
ÛÛV W
$str
ÛÛX i
,
ÛÛi j
examId
ÛÛk q
,
ÛÛq r

questionId
ÛÛs }
,
ÛÛ} ~
userIdÛÛ …
)ÛÛ… 
;ÛÛ 
return
ÜÜ 
questionDetails
ÜÜ &
;
ÜÜ& '
}
ÝÝ 
catch
ÞÞ 
(
ÞÞ 
	Exception
ÞÞ 
e
ÞÞ 
)
ÞÞ 
{
฿฿ 
log
เเ 
.
เเ 
Error
เเ 
(
เเ 
e
เเ 
.
เเ 
Message
เเ #
+
เเ$ %
$str
เเ& ?
+
เเ@ A
$str
เเB L
+
เเM N
examId
เเO U
+
เเV W
$str
เเX b
+
เเc d
userId
เเe k
)
เเk l
;
เเl m
Console
แแ 
.
แแ 
Write
แแ 
(
แแ 
e
แแ 
.
แแ  
Message
แแ  '
)
แแ' (
;
แแ( )
return
โโ 
null
โโ 
;
โโ 
}
ใใ 
}
ไไ 	
}
ๅๅ 
}ๆๆ 