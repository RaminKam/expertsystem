/*****************************************************************************

		Copyright (c) My Company

 Project:  GUI_EXPSYS_VER1
 FileName: EXPERT.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "gui_expsys_ver1.inc"
include "gui_expsys_ver1.con"
include "hlptopic.con"
global domains
liststring=string*
list_numbers_for_kardio=real*
global predicates
 expert
global database 
single derevo_to_view_database(TREE)
single derevo_now_trace_for_rule(TREE)
single why_trace(liststring)
single kardio_input_data(list_numbers_for_kardio)
domains
listder=der*
der=der(integer,listder);null
list=integer*
listoflist=list*
%liststring=string* liststring=string*
predicates
fact(symbol,integer,integer,integer)
fact(symbol,string,integer)
fact1(symbol,string,string)	% for SEPSIS
rule(integer,string,symbol,list,list,integer)
question(string,integer)
sum_adding(string,string,integer)
go(list,TREELIST,liststring)
doc(integer,liststring)
%expert - global
op(list)
any2(integer,integer,list,list,TREELIST,liststring)
sizeList(list,integer)

kolNeg(integer)
kolPos(integer)
kol_neg_list_in_db(liststring,integer)
kol_pos_list_in_db(liststring,integer)
docc(symbol,integer)

oneQuestion(symbol)			%for one-fact question, not more
question_sepsis(string)
inDataBase(string,string)
goOr(list,integer,list,TREELIST,liststring)				% for or-goal rules, now only 2 goal is true 
fact2(symbol,string,string,integer)

tashQuestion(symbol)
tash_in_data_base(string,string,integer)
tash_score(integer,symbol,integer,integer,string)

understand_user_question(string,list)
int_to_ans(integer,string)
dialog_ynw(string,string)

goAll_in(string,list,TREELIST)
goAll(string,listoflist,TREELIST)

showAllAnswers_in(list)
showAllAnswers(listoflist)
dialog_yh(string,string)
delete_all_db

append_der_list(TREELIST,TREELIST,TREELIST)
string_list_to_one_line(liststring,string,string)
%predicates for cardio-signal
kardioLongYears(real,real,real,real)
kardioHeartFreq(real,real,real,real)
kardioPrisnak(symbol,string)

question_to_user_with_db(string)
database - base
single sum(integer)
single sum_tash(integer)
pos(string)
neg(string)
clauses
%derevo_to_view_database(tree("0",unmarked,
%	    [tree("3",unmarked,[],0),
%		     tree("2",unmarked,
%			  [tree("4",unmarked,[],0)],0),
%		     tree("1",unmarked,[],0)
%		    ],0))
sum(0).
sum_tash(0).
fact(pr5,1,0,2).
fact(pr7,1,3,5).
fact(pr8,1,6,100).
					%fact1 for Sepsises group
fact1(sirsPr1,"SIRS","SIRS �����. 1: t>38C ��� t<36�").
fact1(sirsPr2,"SIRS","������� ��������� ����������>90").
fact1(sirsPr3,"SIRS","������� �������>20 ��� PaCO2<32mmHg").
fact1(sirsPr4,"SIRS","���-�� ����������>12.000/mm>3, <4.000/mm>3 ��� >10% band").
fact1(sepsisPr,"Sepsis","���� �������������� ��� ���������� �������� ��������").
fact1(hardSepsisPr,"Hard Sepsis","���� ������� �������� �������").
fact1(sepsisShock,"Sepsis Shock","���� ������� ������������ ����").
fact1(mofPr,"MOF","���� ������� ������������ ���������������(MOF)").
					%fact2 for TASH group
fact2(gr1Pr1,"Level gemogl","������� ����������� <7 g/dl",8).
fact2(gr1Pr2,"Level gemogl","������� �����������  <9 g/dl",6).
fact2(gr1Pr3,"Level gemogl","������� �����������  <10 g/dl",4).
fact2(gr1Pr4,"Level gemogl","������� �����������  <11 g/dl",3).
fact2(gr1Pr5,"Level gemogl","������� �����������  <12 g/dl",2).
fact2(gr1Pr6,"Level gemogl","������� �����������  >=12 g/dl",0).

fact2(gr2Pr1,"Bases more","������� ��������� - <-10 mmol/L",4).
fact2(gr2Pr2,"Bases more","������� ��������� - <-6 mmol/L",3).
fact2(gr2Pr3,"Bases more","������� ��������� - <-2 mmol/L",1).
fact2(gr2Pr4,"Bases more","������� ��������� - >=-2 mmol/L",0).

fact2(gr3Pr1,"Davlenie","��������������� ������������ �������� - <100 mmHg",4).
fact2(gr3Pr2,"Davlenie","��������������� ������������ �������� - <120 mmHg",1).
fact2(gr3Pr3,"Davlenie","��������������� ������������ �������� - >=120 mmHg",0).

fact2(gr4Pr1,"Heart freq","������� ��������� ���������� - >120 bpm",2).
fact2(gr4Pr2,"Heart freq","������� ��������� ���������� - <=120 bpm",0).

fact2(gr5Pr1,"FAST","������������� ��������� FAST ������������",6).
fact2(gr5Pr2,"FAST","������������� ��������� FAST ������������",0).

fact2(gr6Pr1,"Perelom","���� �������� ������� ��������� ����� ��� ������� ��������� ����� �� ���������",3).
fact2(gr6Pr2,"Perelom","��� ��������� �������� ��������� ����� ��� ������� ��������� ����� �� ���������",0).

tash_score(1,tashSc1,0,8,"����������� �������� <5%").
tash_score(2,tashSc2,9,9,"����������� �������� 6%").
tash_score(3,tashSc3,10,10,"����������� �������� 8%").
tash_score(4,tashSc4,11,11,"����������� �������� 11%").
tash_score(5,tashSc5,12,12,"����������� �������� 14%").
tash_score(6,tashSc6,13,13,"����������� �������� 18%").
tash_score(7,tashSc7,14,14,"����������� �������� 23%").
tash_score(8,tashSc8,15,15,"����������� �������� 29%").
tash_score(9,tashSc9,16,16,"����������� �������� 35%").
tash_score(10,tashSc10,17,17,"����������� �������� 43%").
tash_score(11,tashSc11,18,18,"����������� �������� 50%").
tash_score(12,tashSc12,19,19,"����������� �������� 57%").
tash_score(13,tashSc13,20,20,"����������� �������� 65%").
tash_score(14,tashSc14,21,21,"����������� �������� 71%").
tash_score(15,tashSc15,22,22,"����������� �������� 77%").
tash_score(16,tashSc16,23,23,"����������� �������� 82%").
tash_score(17,tashSc17,24,31,"����������� �������� >85%").
fact(pr1,"Wells - ����������� �������� �������� �������� ���",3):-!.
fact(pr2,"Wells - ������������� - ������������ ������� ��� ���� ������ ������",3):-!.
fact(pr3,"Wells - ������� ��������� ���������� > 100/���",1):-!.
fact(pr4,"Wells - ������������� ��� ������� 3 ��� ��� �������� � ��������� 4 ������",1):-!.
fact(pr5,"Wells - ����� ��������������� ������������� ��� ������� �������� ���",1):-!.
fact(pr6,"Wells - �������������",1):-!.
fact(pr7,"Wells - ������� ��������������� �������, �� ������� � ��������� 6 �������",1):-!.
rule(1,"Wells - ����������� �������� �������� �������� ���",pr1,[],[],0).

rule(2,"Wells - ������������� - ������������ ������� ��� ���� ������ ������",pr2,[],[],0).

rule(3,"Wells - ������� ��������� ���������� > 100/���",pr3,[],[],0).

rule(83,"Wells - ������������� ��� ������� 3 ��� ��� �������� � ��������� 4 ������",pr4,[],[],0).
rule(84,"Wells - ����� ��������������� ������������� ��� ������� �������� ���",pr5,[],[],0).
rule(85,"Wells - �������������",pr6,[],[],0).
rule(86,"Wells - ������� ��������������� �������, �� ������� � ��������� 6 �������",pr7,[],[],0).

rule(4,"Wells - ������ ���� �� ���� ���������",none,[1,2,3,83,84,85,86],[],0).

rule(5,"Wells - ����� ����� �� 0 �� 1",pr5,[4],[],0).
rule(7,"Wells - ����� ����� �� 2 �� 6",pr7,[4],[],0).
rule(8,"Wells - ����� ����� �� 7 � �����",pr8,[4],[],0).

rule(6,"Wells - ������ ���� �������� �������",none,[5],[],0).
rule(9,"Wells - ������� ���� �������� �������",none,[7],[],0).
rule(10,"Wells - ������� ���� �������� �������",none,[8],[],0).
							%For 2:
rule(11,"Sepsises - SIRS �����. 1: t>38C ��� t<36�",sirsPr1,[],[],0).
rule(12,"Sepsises - ������� ��������� ����������>90",sirsPr2,[],[],0).
rule(13,"Sepsises - ������� �������>20 ��� PaCO2<32mmHg",sirsPr3,[],[],0).
rule(14,"Sepsises - ���-�� ����������>12.000/mm>3, <4.000/mm>3 ��� >10% band",sirsPr4,[],[],0).
rule(15,"Sepsises - ������� ���� SIRS",none,[],[11,12,13,14],2).

rule(16,"Sepsises - ���� �������������� ��� ���������� �������� ��������",sepsisPr,[],[],0).
rule(17,"Sepsises - ������� ���� ������",none,[15,16],[],0).

rule(18,"Sepsises - ���� ������� �������� �������",hardSepsisPr,[],[],0).
rule(19,"Sepsises - ������� ���� ������� ������",none,[17,18],[],0).

rule(51,"Sepsises - ���� ������� ������������ ����",sepsisShock,[],[],0).
rule(52,"Sepsises - ������� ���� ����������� ���",none,[19,51],[],0).

rule(20,"Sepsises - ���� ������� ������������ ���������������(MOF)",mofPr,[],[],0).
rule(21,"Sepsises - ������� ���� MOF",none,[19,20],[],0).
rule(21,"Sepsises - ������� ���� MOF",none,[52,20],[],0).

rule(22,"TASH - ������� ����������� - <7",gr1Pr1,[],[],0).
rule(23,"TASH - ������� ����������� - <9",gr1Pr2,[],[],0).
rule(24,"TASH - ������� ����������� - <10",gr1Pr3,[],[],0).
rule(25,"TASH - ������� ����������� - <11",gr1Pr4,[],[],0).
rule(26,"TASH - ������� ����������� - <12",gr1Pr5,[],[],0).
rule(27,"TASH - ������� ����������� - >=12",gr1Pr6,[],[],0).

rule(28,"TASH - ������� ����������� - ���� ����� �����",none,[],[22,23,24,25,26,27],1).

rule(29,"TASH - ������� ��������� - <-10 mmol/L",gr2Pr1,[],[],0).
rule(30,"TASH - ������� ��������� - <-6 mmol/L",gr2Pr2,[],[],0).
rule(31,"TASH - ������� ��������� - <-2 mmol/L",gr2Pr3,[],[],0).
rule(32,"TASH - ������� ��������� - >=-2 mmol/L",gr2Pr4,[],[],0).

rule(33,"TASH - ������� ��������� - ���� ����� �����",none,[],[29,30,31,32],1).

rule(34,"TASH - ��������������� ������������ �������� - <100 mmHg",gr3Pr1,[],[],0).
rule(35,"TASH - ��������������� ������������ �������� - <120 mmHg",gr3Pr2,[],[],0).
rule(36,"TASH - ��������������� ������������ �������� - >=120 mmHg",gr3Pr3,[],[],0).

rule(37,"TASH - ��������������� ������������ �������� - ���� ����� �����",none,[],[34,35,36],1).

rule(38,"TASH - ������� ��������� ���������� - >120 bpm",gr4Pr1,[],[],0).
rule(39,"TASH - ������� ��������� ���������� - <=120 bpm",gr4Pr2,[],[],0).

rule(40,"TASH - ������� ��������� ���������� - ���� ����� �����",none,[],[38,39],1).

rule(41,"TASH - ������������� ��������� FAST ������������",gr5Pr1,[],[],0).
rule(42,"TASH - ������������� ��������� FAST ������������",gr5Pr2,[],[],0).

rule(43,"TASH - ��������� FAST ������������ - ���� ����� �����",none,[],[41,42],1).

rule(44,"TASH - ���� �������� ������� ��������� ����� ��� ������� ��������� ����� �� ���������",gr6Pr1,[],[],0).
rule(45,"TASH - ��� ��������� �������� ��������� ����� ��� ������� ��������� ����� �� ���������",gr6Pr2,[],[],0).

rule(46,"TASH - ������� ��������� ����� ��� ������� ��������� ����� �� ��������� - ���� ����� �����",none,[],[44,45],1).

rule(47,"TASH - ��� ������ ��������� ��� TASH-������ ��������",none,[28,33,37,40,43,46],[],0).

rule(48,"TASH -  TASH-score ����������� �������� <5% ",tashSc1,[47],[],0).
rule(49,"TASH -  TASH-score ����������� �������� 6% ",tashSc2,[47],[],0).
rule(50,"TASH -  TASH-score ����������� �������� 8% ",tashSc3,[47],[],0).
rule(87,"TASH -  TASH-score ����������� �������� 11% ",tashSc4,[47],[],0).
rule(88,"TASH -  TASH-score ����������� �������� 14% ",tashSc5,[47],[],0).
rule(89,"TASH -  TASH-score ����������� �������� 18% ",tashSc6,[47],[],0).
rule(90,"TASH -  TASH-score ����������� �������� 23% ",tashSc7,[47],[],0).
rule(91,"TASH -  TASH-score ����������� �������� 29% ",tashSc8,[47],[],0).
rule(92,"TASH -  TASH-score ����������� �������� 35% ",tashSc9,[47],[],0).
rule(93,"TASH -  TASH-score ����������� �������� 43% ",tashSc10,[47],[],0).
rule(94,"TASH -  TASH-score ����������� �������� 50% ",tashSc11,[47],[],0).
rule(95,"TASH -  TASH-score ����������� �������� 57% ",tashSc12,[47],[],0).
rule(96,"TASH -  TASH-score ����������� �������� 65% ",tashSc13,[47],[],0).
rule(97,"TASH -  TASH-score ����������� �������� 71% ",tashSc14,[47],[],0).
rule(98,"TASH -  TASH-score ����������� �������� 77% ",tashSc15,[47],[],0).
rule(99,"TASH -  TASH-score ����������� �������� 82% ",tashSc16,[47],[],0).
rule(100,"TASH -  TASH-score ����������� �������� >85% ",tashSc17,[47],[],0).



					%������ ��� �������������
rule(53,"��������� ������������� ����� � �����",none,[],[],0).
rule(54,"������������ ��������� ����� � �����",none,[],[],0).
rule(55,"������������ ������������� ���� � �����",none,[],[],0).
rule(56,"������� ��������� ���������� � �����",none,[],[],0).
rule(57,"������������ - �������������� �������� � �����",none,[53,54,55,56],[],0).		%������

rule(58,"����� ��������� ��� pulsus tardus",pulsusTardus,[],[],0).
rule(59,"���������� �������������� �������������",none,[58],[],0).
rule(60,"����������� ��������� ������������� � ��������������� �������",none,[59],[],0).	%������
rule(61,"����� ��������� ��� pulsus celer",pulsusCeler,[],[],0).
rule(62,"������ �������������� ������������� � ������� ������������� ������",none,[61],[],0).
rule(63,"����������� ���������� ���������������",none,[62],[],0).				%������

rule(64,"������� ������� ��� ������� ������ ������ ������������� �����",kardioPatPr1,[],[],0).
rule(65,"�� �������� ������� ���������",kardioPatPr2,[],[],0).
rule(66,"���������� ����� ��������� ����� ����� �������, �� ��������� � ���������� ��������",kardioPatPr3,[],[],0).
rule(67,"��������� ������������ �������������� ���� ��������� �����",kardioPatPr4,[],[],0).
rule(68,"� ����� ������� ���� �������������� �����(������� \"���������� ������\")",kardioPatPr5,[],[],0).

%������:
rule(69,"���� �������������� �������� ��������� ����, ����������� �� ���������� ����� ��� ��������� ������������",none,[],[64,65,66,67,68],0).	%������

rule(70,"���������� �������������� �����",kardioPatZabPr1,[],[],0).
rule(71,"������� �������������",none,[70],[],0).						%������
rule(72,"������� ��������������� �������",none,[70],[],0).					%������


rule(73,"�������� ��������� ������ �� ����� � �����",kardioPatZabPr2,[],[],0).
rule(74,"���������� �� ���������� �����",none,[73],[],0). 					%������

rule(75,"������� ������� �������� �����",kardioPatZabPr3,[],[],0).
rule(76,"�������� ������������ �������� ������",none,[75],[],0).				%������

rule(77,"��������� ��������� ���� ������� �� ���� �������",kardioPatZabPr4,[],[],0).
rule(78,"�������� ������������ �����������",none,[77],[],0).					%������

rule(79,"����� ������ ����������������� ������ ��� ������� ���� � ����������� ������� ���������������� ������ ��� ���������",kardioPatZabPr5,[],[],0).
rule(80,"�������� ��������� ���� ��������������� ������������",none,[79],[],0).			%������

rule(81,"��������� ��������� ���� ����������� ����������� ��� ��������� ����������",kardioPatZabPr6,[],[],0).
rule(82,"�������� �������������� ������������ � ������ ��������������",none,[81],[],0).		%������

%last-100
				%any2 - List = first maximum 2 true goals
%doc(_,Tr):-asserta(why_trace(Tr)),fail.
doc(1,_Tr):-fact(pr1,Ques,Ball),question(Ques,Ball).
doc(2,_Tr):-fact(pr2,Ques,Ball),question(Ques,Ball).
doc(3,_Tr):-fact(pr3,Ques,Ball),question(Ques,Ball).
doc(4,_Tr).
doc(5,_Tr):-fact(pr5,_,A,B),sum(Sum),Sum<=B,Sum>=A.
doc(7,_Tr):-fact(pr7,_,A,B),sum(Sum),Sum<=B,Sum>=A.
doc(8,_Tr):-fact(pr8,_,A,B),sum(Sum),Sum<=B,Sum>=A.
doc(6,_Tr).
doc(9,_Tr).
doc(10,_Tr).
doc(11,_Tr):-docc(sirsPr1,11).	%on zavisit ot goOr(KolOr), kolOr=2 vsegda dolshno
doc(12,_Tr):-docc(sirsPr2,11).
doc(13,_Tr):-docc(sirsPr3,11).
doc(14,_Tr):-docc(sirsPr4,11).
doc(15,_Tr).
doc(16,_Tr):-oneQuestion(sepsisPr).
doc(17,_Tr).
doc(18,_Tr):-oneQuestion(hardSepsisPr).
doc(19,_Tr).
doc(20,_Tr):-oneQuestion(mofPr).
doc(21,_Tr).
doc(22,_Tr):-tashQuestion(gr1Pr1).
doc(23,_Tr):-tashQuestion(gr1Pr2).
doc(24,_Tr):-tashQuestion(gr1Pr3).
doc(25,_Tr):-tashQuestion(gr1Pr4).
doc(26,_Tr):-tashQuestion(gr1Pr5).
doc(27,_Tr):-tashQuestion(gr1Pr6).
doc(28,_Tr).
doc(29,_Tr):-tashQuestion(gr2Pr1).
doc(30,_Tr):-tashQuestion(gr2Pr2).
doc(31,_Tr):-tashQuestion(gr2Pr3).
doc(32,_Tr):-tashQuestion(gr2Pr4).
doc(33,_Tr).
doc(34,_Tr):-tashQuestion(gr3Pr1).
doc(35,_Tr):-tashQuestion(gr3Pr2).
doc(36,_Tr):-tashQuestion(gr3Pr3).
doc(37,_Tr).
doc(38,_Tr):-tashQuestion(gr4Pr1).
doc(39,_Tr):-tashQuestion(gr4Pr2).
doc(40,_Tr).
doc(41,_Tr):-tashQuestion(gr5Pr1).
doc(42,_Tr):-tashQuestion(gr5Pr2).
doc(43,_Tr).
doc(44,_Tr):-tashQuestion(gr6Pr1).
doc(45,_Tr):-tashQuestion(gr6Pr2).
doc(46,_Tr).
doc(47,_).
doc(48,_Tr):-
 tash_score(_,tashSc1,A,B,_),
 sum_tash(Sum),
 Sum<=B,
 Sum>=A.
doc(49,_Tr):-
 tash_score(_,tashSc2,A,B,_),
 sum_tash(Sum),
 Sum<=B,
 Sum>=A.
doc(50,_Tr):-
 tash_score(_,tashSc3,A,B,_),
 sum_tash(Sum),
 Sum<=B,
 Sum>=A.
doc(51,_Tr):-
 oneQuestion(sepsisShock).
doc(52,_).
					%docs for kardio-segnal:
doc(53,_):-
 kardio_input_data([_,_,AB1,_,AB2,_,_,_,AB4,_,AB5]),
 APV=AB2-AB2,
 ADV=AB4-AB5,
 E=abs(ADV-APV/2),
 E<0.1.
doc(54,_):-
 kardio_input_data([Years,TB1,_AB1,_,_AB2,_,_,_,_AB4,TB5,_AB5]),
 DPV=TB5-TB1,
 kardioLongYears(Years1,Years2,DPV1,DPV2),
 Years<=Years2,
 Years>=Years1,
 DPV<=DPV2,
 DPV>=DPV1.
doc(55,_):-
 kardio_input_data([_Years,TB1,_AB1,_,_AB2,_,_,TB4,_AB4,TB5,_AB5]),
 DSF=abs(TB4-TB1),
 DPV=abs(TB5-TB1),
 DPV1=DPV*0.324,
 E=abs(DSF-DPV*0.324),
 E<0.01.
doc(56,_):-
 kardio_input_data([Years,TB1,_AB1,_,_AB2,_,_,_,_AB4,TB5,_AB5]),
 DPV=TB5-TB1,
 F=60/DPV,
 kardioHeartFreq(Years1,Years2,F1,F2),
 Years<=Years2,
 Years>=Years1,
 F<=F2,
 F>=F1.
doc(57,_).
doc(58,_):-
 kardioPrisnak(pulsusTardus,Prisnak),
 question_to_user_with_db(Prisnak).
doc(59,_).
doc(60,_).
doc(61,_):-
 kardioPrisnak(pulsusCeler,Prisnak),
 question_to_user_with_db(Prisnak).
doc(62,_).
doc(63,_).
doc(64,_):-
 kardioPrisnak(kardioPatPr1,Prisnak),
 question_to_user_with_db(Prisnak).
doc(65,_):-
 kardioPrisnak(kardioPatPr2,Prisnak),
 question_to_user_with_db(Prisnak).
doc(66,_):-
 kardioPrisnak(kardioPatPr3,Prisnak),
 question_to_user_with_db(Prisnak).
doc(67,_):-
 kardioPrisnak(kardioPatPr4,Prisnak),
 question_to_user_with_db(Prisnak).
doc(68,_):-
 kardioPrisnak(kardioPatPr5,Prisnak),
 question_to_user_with_db(Prisnak).
doc(69,_).
doc(70,_):-
 not(doc(64,[])),
 kardioPrisnak(kardioPatZabPr1,Prisnak),
 question_to_user_with_db(Prisnak).
doc(71,_).
doc(72,_).
doc(73,_):-
 kardioPrisnak(kardioPatZabPr2,Prisnak),
 question_to_user_with_db(Prisnak).
doc(74,_).
doc(75,_):-
 kardioPrisnak(kardioPatZabPr3,Prisnak),
 question_to_user_with_db(Prisnak).
doc(76,_).
doc(77,_):-
 kardioPrisnak(kardioPatZabPr4,Prisnak),
 question_to_user_with_db(Prisnak).
doc(78,_).
doc(79,_):-
 kardioPrisnak(kardioPatZabPr5,Prisnak),
 question_to_user_with_db(Prisnak).
doc(80,_).
doc(81,_):-
 kardioPrisnak(kardioPatZabPr6,Prisnak),
 question_to_user_with_db(Prisnak).
doc(82,_).
doc(83,_Tr):-fact(pr4,Ques,Ball),question(Ques,Ball).
doc(84,_Tr):-fact(pr5,Ques,Ball),question(Ques,Ball).
doc(85,_Tr):-fact(pr6,Ques,Ball),question(Ques,Ball).
doc(86,_Tr):-fact(pr7,Ques,Ball),question(Ques,Ball).
doc(N,_Tr):-
 N<=100,
 N>=87,
 rule(N,_,Id,_,_,_),
 tash_score(_,Id,A,B,_),
 sum_tash(Sum),
 Sum<=B,
 Sum>=A.


		%doc(_,_). ������ ������� �.�. ��� ��������� ������ ���� ���������� �����������!
					%facts fo kardio-signal:
kardioHeartFreq(0,1,140,120).
kardioHeartFreq(1,3,120,105).
kardioHeartFreq(3,5,105,100).
kardioHeartFreq(5,8,100,90).
kardioHeartFreq(8,10,90,85).
kardioHeartFreq(10,20,85,60).
kardioHeartFreq(20,30,60,65).
kardioHeartFreq(30,40,65,68).
kardioHeartFreq(40,50,68,72).
kardioHeartFreq(50,60,72,80).
kardioHeartFreq(60,70,80,84).
kardioHeartFreq(80,80,82,85).

kardioLongYears(0,1,0.43,0.50).  
kardioLongYears(1,3,0.50,0.57).
kardioLongYears(3,5,0.57,0.6).
kardioLongYears(5,8,0.60,0.67).
kardioLongYears(8,10,0.67,0.7).
kardioLongYears(10,20,0.7,1.0).
kardioLongYears(20,30,1.0,0.92).
kardioLongYears(30,40,0.92,0.88).
kardioLongYears(40,50,0.88,0.83).
kardioLongYears(50,60,0.83,0.75).
kardioLongYears(60,70,0.75,0.71).
kardioLongYears(80,90,0.73,0.70).

kardioPrisnak(kardioPatPr1,"������� ������� ���������� ��� ������� �������� ��������� �������������� �����").
kardioPrisnak(kardioPatPr2,"�� �������� ���������").
kardioPrisnak(kardioPatPr3,"������� ���������� ����� ��������� ����� ����� �������, �� ��������� � ���������� ��������").
kardioPrisnak(kardioPatPr4,"���������� ������������ �������������� ���� ��������� �����").
kardioPrisnak(kardioPatPr5,"� ����� ������� �������������� �����(������� \"���������� ������\")").

kardioPrisnak(pulsusTardus,"���� ������� pulsus tardus:\
������ ��������� ����� �������, �������������, ������� ��������� � ����� �������").

kardioPrisnak(pulsusCeler,"���� ������� pulsus celer:\
������ ��������� ����� ����� ������ ������, ������� �������� � ������������ ��������").
kardioPrisnak(kardioPatZabPr1,"������� ���������� �������������� �����").
kardioPrisnak(kardioPatZabPr2,"������� �������� ��������� ������ �� ����� � �����").
kardioPrisnak(kardioPatZabPr3,"������� ������� �������� ��������� ������").
kardioPrisnak(kardioPatZabPr4,"������� �������� �������� ��������� ���� �� ���� �������").
kardioPrisnak(kardioPatZabPr5,"�������: ����� ������ ����������������� ������ ��� ������� ����\
(��������� ��������� ��������� ����) � ����������� ������� ���������������� ������ ��� ��������� ���� ���\
���������� �������������� ����� � ��������� ��������� ����������").
kardioPrisnak(kardioPatZabPr6,"�������: ��������� ��������� ���� ����������� ����������� ��� �������� ���������� ���\
���������� �������������� ����� � ��������� ��������� ����������").
question_to_user_with_db(Prisnak):-		
 pos(Prisnak),!.
question_to_user_with_db(Prisnak):-
 not(neg(Prisnak)),
 question_sepsis(Prisnak),!.
				%Fot TUSH-group database-questions
tashQuestion(Id):-
 fact2(Id,_,Prisnak,_),
 pos(Prisnak),!.
tashQuestion(Id):-
 fact2(Id,_,Prisnak,_),
 neg(Prisnak),fail,!.
tashQuestion(Id):-
 fact2(Id,_,Prisnak,Ball),
 not(neg(Prisnak)),
 not(pos(Prisnak)),
 %write("\nIs ",Prisnak," true?"),
 %readln(Ans),
 dialog_ynw(Prisnak,Ans),
 tash_in_data_base(Ans,Prisnak,Ball),!.


tash_in_data_base("y",Prisnak,Ball):-
 asserta(pos(Prisnak)),sum_tash(Sum1),Sum2=Sum1+Ball,asserta(sum_tash(Sum2)),!.
tash_in_data_base("n",Prisnak,_):-
 asserta(neg(Prisnak)),!,fail.
tash_in_data_base(_,_,_):-
 write("\nTASH-not correct answer"),!,fail.

oneQuestion(Id):-		%For Sepsises - one question, not more
 fact1(Id,_,Prisnak),
 pos(Prisnak),!.
oneQuestion(Id):-
 fact1(Id,_,Prisnak),
 not(neg(Prisnak)),
 question_sepsis(Prisnak),!.

 
docc(_,11):-
 kolNeg(KolNeg1),write("\nKolneg=",KolNeg1),KolNeg1>2,!,fail.
docc(_,11):-
 kolPos(KolPos1),write("\nKolpos=",KolPos1),KolPos1>=2,!.
docc(Id,11):-
 fact1(Id,_,Prisnak),
 pos(Prisnak),
 !.
docc(Id,11):-
 fact1(Id,_,Prisnak),
 neg(Prisnak),
 !,fail.
docc(Id,11):-
 fact1(Id,_,Prisnak),
 question_sepsis(Prisnak),!.
question_sepsis(Prisnak):-
 %write("\nIs ",Prisnak," true?"),
 %readln(An),
 dialog_ynw(Prisnak,An),
 inDataBase(Prisnak,An),!.
inDataBase(Prisnak,"y"):-
 asserta(pos(Prisnak)).
inDataBase(Prisnak,"n"):-
 asserta(neg(Prisnak)),!,fail.


kolNeg(Kol):-
 findall(Prisnak,fact1(_,"SIRS",Prisnak),List),%write("\nListNeg=",List),
 kol_neg_list_in_db(List,Kol).
kol_neg_list_in_db([],0):-!.
kol_neg_list_in_db([H|T],Kol):-
  neg(H),!,
  kol_neg_list_in_db(T,Kol1),
  Kol=Kol1+1.
kol_neg_list_in_db([_|T],Kol):-
 !,kol_neg_list_in_db(T,Kol).
kol_pos_list_in_db([],0):-!.
kol_pos_list_in_db([H|T],Kol):-
  pos(H),!,
  kol_pos_list_in_db(T,Kol1),
  Kol=Kol1+1. 
kol_pos_list_in_db([_|T],Kol):-
 !,kol_pos_list_in_db(T,Kol).
kolPos(Kol):-
 findall(Prisnak,fact1(_,"SIRS",Prisnak),List),
 kol_pos_list_in_db(List,Kol).
 
question(Text,Ball):-
 not(pos(Text)),
 not(neg(Text)),
 %write("\nIs ",Text,"true?"),
 %readln(Answer),
 dialog_ynw(Text,Answer),
 sum_adding(Text,Answer,Ball).
question(_,_):-!.
sum_adding(Question,"y",Ball):-
 sum(Sum1),Sum2=Ball+Sum1,asserta(sum(Sum2)),asserta(pos(Question)),!.
sum_adding(Question,"n",_):-asserta(neg(Question)),!.
sum_adding(_,_,_):-write("\nNot correct answer!"),!.
							%������ ������:
sizeList([],0):-!.
sizeList([_|T],Size):-
 sizeList(T,SizeTail),
 Size=SizeTail+1.

append_der_list([],List,List).
append_der_list([H|L1],List2,[H|L3]):-
    append_der_list(L1,List2,L3).

any2(NeedSize,NeedSize,_,[],[],_):-!.
any2(_,_,[],[],[],_):-!.
any2(NeedSize,Size,[H|T1],[H|T2],[FirstDer|OtherDer],Why):-
 Nomer=[H],
 go(Nomer,UnderFirstDer,Why),
 rule(H,Text,_,_,_,_),
 FirstDer=tree(Text,unmarked,UnderFirstDer,0),%der(H,UnderFirstDer),
 Size1=Size+1,!,
 any2(NeedSize,Size1,T1,T2,OtherDer,Why).
any2(NeedSize,Size,[_|T1],List,OrDer,Why):-
 !,any2(NeedSize,Size,T1,List,OrDer,Why).



go([],[],_):-!.
go([H|T],[FirstDer|OtherDer],Why):-
 rule(H,Name,_,ListAnd,ListOr,KolOr),
 NewWhy=[Name|Why],
 go(ListAnd,UnderFirstDer,NewWhy),
 goOr(ListOr,KolOr,_,OrDer,NewWhy),				%?Der ����� ������ ������������ ����� �������� goOr �� ������ ������ ������
 append_der_list(UnderFirstDer,OrDer,TwoDers),
 FirstDer=tree(Name,unmarked,TwoDers,0),		%der(H,TwoDers),
 							%TwoDers=UnderFirstDer+OrDer,
 
 asserta(why_trace(NewWhy)),
 doc(H,NewWhy),
 go(T,OtherDer,Why).					%,write("\nName=",Name).
goOr([],_,[],[],_):-!.
goOr(ListOr,KolOr,ListYes,OrDer,Why):-			%On 2-or only true goal, another - negative goal
 KolOr<>0,
 any2(KolOr,0,ListOr,ListYes,OrDer,Why),
 sizeList(ListYes,KolOr).
goOr(ListOr,0,ListYes,OrDer,Why):-			%For any Kol>0
 any2(100000,0,ListOr,ListYes,OrDer,Why),
 sizeList(ListYes,KolListYes),
 KolListYes>0.

							%��������� ������������:
expert:-
 write("\n\t\tExpert:"),


 User_Question=dlg_GetStr("���������� �������","������� ������ �������","����� ���� ����������� �� ������ ������������������?"),%������� ������ �������","����� �������?
 %understand_user_question(User_Question,ListOrGoalRules),
 %goOr(ListOrGoalRules,1,ListYes1),
 
 goAll(User_Question,ListofList,LisrDers),
 asserta(derevo_to_view_database(tree("All goals",unmarked,LisrDers,0))),
 write("\nAll asnwers=",ListOfList),
 %write("\nAll ders=",LisrDers),
 %ListYes1=[H|_],
 %rule(H,Str,_,_,_,_),
 %dialog_yh(Str,"Beacause answer = how?"),
 %write("\nAnswer: ",ListYes1),
 showAllAnswers(ListOfList),
 delete_all_db.
expert:-
  dlg_Note("������� �� ����� �������","������� �� ����� ������ �� ������"),write("\nNegative "),sum(Sum),write(Sum),delete_all_db.
op([28]).
%op([9]).
%op([10]).
%						��� ������ ����������� ���������:
%����������� ������ � ������ ��� ������ � ���������� ����
%derevo_to_str():-
 
showAllAnswers([]):-!.
showAllAnswers([H|L]):-
 showAllAnswers_in(H),
 showAllAnswers(L).
showAllAnswers_in([]):-!.
showAllAnswers_in([H|L]):-
 rule(H,Str,_,_,_,_),
 dialog_yh(Str,"Beacause answer = how?"),
 showAllAnswers_in(L).
goAll("����� ���� ����������� �� ������ ������������������?",[Yes],LisrDers):-
 goAll_in("����� ���� ����������� �� ������ ������������������?",Yes,LisrDers),
 !.
goAll("Wells",[Yes],LisrDers):-
 goAll_in("Wells",Yes,LisrDers),
 !.
goAll("TASH",[Yes],LisrDers):-
 goAll_in("TASH",Yes,LisrDers),
 !.
goAll("Sepsis",[Yes],LisrDers):-
 goAll_in("Sepsis",Yes,LisrDers),
 !.
goAll("����� �������?",[YesList],LisrDers):-
 any2(1000,0,[6,9,10,15,17,19,52,21,48,49,50],YesList,LisrDers,[]).
 %findall(List,goAll_in(_,List,_),AllList),!.

goAll_in("����� ���� ����������� �� ������ ������������������?",Yes,LisrDers):-
 any2(1000,0,[69,57,60,63,71,72,74,76,78,80,82],Yes,LisrDers,[]).%[69,57,60,63]

goAll_in("Wells",YesWells,LisrDers):-
 goOr([6,9,10],1,YesWells,LisrDers,[]).
goAll_in("Sepsis",YesSepsis,LisrDers):-
 any2(1000,0,[15,17,19,52,21],YesSepsis,LisrDers,[]).
goAll_in("TASH",YesTash,LisrDers):-
 goOr([48,49,50,87,88,89,90,91,92,93,94,95,96,97,98,99,100],1,YesTash,LisrDers,[]).
dialog_yh(Ans_on_request,How):-
 concat("����� �� ��� ������: ",Ans_on_request,X),
 concat(X," !",ResQuestion),
 Number=dlg_Ask("Dialog",ResQuestion,["&Ok","&How"]),
 write("Now answer:",Ans_on_request," with number ",Number),
 Number<>1,!.
dialog_yh(Question,How):-
 %dlg_Note("��� ������� �����",How),
 Win=vpi_GetTaskWin(),
 win_tree_Create(Win),
 %_NumL=win_SendEvent (Win, e_Menu(id_tree_window,0)),
 dialog_yh(Question,How),
 !.
 
dialog_ynw(Question,Answer):-
 concat("Is ",Question,X),
 concat(X," true?",ResQuestion),
 Number=dlg_Ask("Dialog",ResQuestion,["&Yes","&No","&Why?"]),
 int_to_ans(Number,Answer),
 write("Now answer:",Answer," with number ",Number),
 Answer<>"w",!.
dialog_ynw(Question,Answer):-
 why_trace(Tr),
 string_list_to_one_line(Tr,"",AnswerOnWhyQuestion),
 dlg_Note("����� ������",AnswerOnWhyQuestion),
 write("\nTrace=",Tr),
 dialog_ynw(Question,Answer),
 !.
string_list_to_one_line([],Line,Line):-!.
string_list_to_one_line([First|T],Second,Line):-
 concat(First," <= ",ResFirst),
 concat(Second,ResFirst,LineBuf),
 string_list_to_one_line(T,LineBuf,Line).
int_to_ans(0,"y").
int_to_ans(1,"n").
int_to_ans(2,"w").

understand_user_question(User_Question,ListOrGoalRules):-
 User_Question="����� �������?",
 ListOrGoalRules=[28],
 !.
understand_user_question(_,[28]):-!.

delete_all_db:-
 retractall(pos(_)),retractall(neg(_)),asserta(sum(0)),asserta(sum_tash(0)).