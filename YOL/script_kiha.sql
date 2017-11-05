create sequence mSeq;
create SEQUENCE smSeq;
create SEQUENCE lSeq;

drop sequence mSeq;
drop SEQUENCE lseq;
drop SEQUENCE smseq;
delete from mstate;
delete from member;
delete from statemember;
delete from login;
delete from mgrade;
drop table STATEMEMBER;

CREATE TABLE statemember
(
  smseq number PRIMARY KEY ,
  mseq number REFERENCES MEMBER(mseq),
  msseq number DEFAULT 1 REFERENCES MSTATE(msseq),
  smdate date DEFAULT sysdate,
  smdetail varchar2(2000)


);

alter TABLE MSTATE MODIFY MSSTATE varchar2(100);
alter table lState MODIFY LSSTATE varchar2(100);
alter table MGRADE MODIFY mggrade varchar2(100);
alter TABLE Member modify MNICKNAME varchar2(200);
alter table STATEMEMBER MODIFY mseq REFERENCES MEMBER(MSEQ );
alter table statemember MODIFY msseq DEFAULT 1 REFERENCES MSTATE(MsSEQ) ;
alter table statemember MODIFY SMDETAIL not null ;



insert into MSTATE(msSeq,MSSTATE) VALUES (1,'대기');
insert into MSTATE(msSeq,MSSTATE) VALUES (2,'활성');
insert into MSTATE(msSeq,MSSTATE) VALUES (3,'휴면');
insert into MSTATE(msSeq,MSSTATE) VALUES (4,'탈퇴');



insert into LSTATE(lsSeq,lsSTATE) VALUES (1,'로그인');
insert into LSTATE(lsSeq,lsSTATE) VALUES (2,'로그아웃');

insert into mGrade(MGSEQ,MGGRADE) VALUES (1,'무료');
insert into mGrade(MGSEQ,MGGRADE) VALUES (2,'유료');



select * from member;
select * from statemember order by smdate;
select * from login;
select * from MGRADE;

commit;


insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈병우','초딩희준','2016-8-6','bibid@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈혜나','구리구리송사리','2016-5-4','baby19142@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장남준','너와나의골렘83','2016-5-20','bibid@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'천찬희','구리구리병아리108','2016-9-12','start@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공혁','천하무적삐약이117','2016-3-15','apple1959@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'남궁기하','좋아하는김지현','2017-5-10','hothot@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한희진','웃는김지현','2016-2-12','web1931@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'우기하','상큼한돌돔','2017-2-25','abc@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'주정희','웃는송사리','2017-5-15','apple@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'조남준','고장난정아','2016-2-10','baby@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한혜진','너와나의송사리','2017-5-21','def@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'우시현','슈퍼오크','2017-3-20','hothot@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장후','죽일놈의김지현','2017-2-12','def19131@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김혁','못난이삐약이','2017-3-20','web19129@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성미희','웃는김지현54','2016-4-10','abc@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'우해나','천하무적화영','2016-2-6','soso@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방희준','초딩선영','2016-11-25','baby@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'남궁병우','천하무적삐약이','2017-3-15','orange@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'최정희','슈퍼해나','2016-9-4','baby@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'우얼','좋아하는병아리','2016-8-20','hothot19137@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'최호진','죽일놈의오징어','2017-3-4','abc@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'우후','더럽병아리','2016-10-6','soso@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈희준','슈퍼오징어','2016-11-20','abc@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈희준','너와나의골렘','2017-9-12','bibid@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'최남준','더럽화영','2016-9-21','weare1946@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한건희','귀여운화영','2017-2-6','orange@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한해나','귀여운삐약이','2017-8-2','web@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김태현','너와나의화영','2017-9-10','bibid1997@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방태현','죽일놈의희준','2017-5-12','sexy@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'남궁건희','슈퍼선영','2016-5-20','soso1927@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'최병우','울트라화영','2016-9-20','abc1960@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'조민','죽일놈의송사리','2017-5-15','abc1963@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공시현','고장난송사리','2016-10-21','web1971@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김남준','웃는삐약이','2016-3-20','hothot1973@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'주혁','죽일놈의화영','2017-4-20','start19105@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장태현','상큼한오크','2016-3-15','hothot@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'조우혁','아름다운오징어','2017-4-2','orange1962@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'정호진','구리구리오징어','2016-2-2','gogo1945@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한병우','너와나의희준70','2017-5-6','weare1947@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'천혜나','초딩오크','2017-2-6','baby1928@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성혁','천하무적삐약이69','2016-11-10','def@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공시현','울트라삐약이','2017-9-12','start1990@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공남준','귀여운김지현','2016-2-12','orange@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방민','좋아하는오크','2016-2-21','apple1998@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한얼','귀여운희준','2017-4-2','def1994@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'천태현','상큼한병아리','2016-4-8','weare@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'남궁희진','너와나의병아리','2016-5-12','web@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈기태','아름다운화영','2016-2-8','sexy@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'정기태','초딩해나','2017-4-6','def19114@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'정해나','천하무적선영','2017-2-12','sexy@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성희준','고장난화영','2016-3-15','start@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공선영','구리구리골렘','2016-11-6','start@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공후','울트라김지현','2016-11-12','hothot@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'이남혁','구리구리오크','2016-9-6','start@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방정희','못난이병아리','2016-2-4','weare@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'정윤아','슈퍼화영','2016-11-10','def19100@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'이정희','상큼한김지현79','2016-5-6','web1976@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈우혁','구리구리정아','2017-5-12','soso19109@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김후','천하무적돌돔','2017-4-10','def@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'이후','초딩김지현','2016-8-10','bibid@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'정혜진','상큼한삐약이75','2017-4-25','apple@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방기하','죽일놈의삐약이','2017-8-15','baby@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김기하','상큼한화영','2017-5-10','def1977@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장혜진','아름다운선영','2016-3-20','soso@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈해나','못난이정아50','2016-2-20','orange1972@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈우혁','구리구리선영','2017-8-15','gogo@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방기태','구리구리병아리','2017-8-21','orange@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈얼','울트라정아','2016-4-10','start19126@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김진','초딩송사리','2017-5-12','apple@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성호진','너와나의오크','2017-3-20','gogo1961@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한호진','좋아하는돌돔','2017-4-8','soso1958@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성병우','못난이돌돔','2016-10-12','abc1968@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'박희진','너와나의선영','2017-2-21','apple@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'남궁남혁','천하무적해나','2017-5-10','gogo@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장호진','슈퍼골렘','2017-5-20','gogo19115@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성우혁','아름다운삐약이','2016-10-10','bibid@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈태현','너와나의오징어','2017-5-8','hothot19101@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'박진','울트라선영','2016-8-8','web@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'박호진','상큼한선영','2016-11-2','apple@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'주태현','고장난김지현','2017-2-8','weare19130@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한우혁','웃는선영','2017-9-10','def1940@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'성얼','더럽삐약이','2017-3-2','weare@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'이얼','아름다운병아리','2017-9-10','gogo@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'우찬희','더럽송사리55','2017-9-6','orange19127@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방민','울트라돌돔','2016-11-21','baby1984@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'정태현','귀여운해나','2017-2-6','sexy1993@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'공진','울트라오징어99','2016-5-4','hothot1992@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김진','귀여운골렘135','2017-4-25','baby@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'천윤아','너와나의돌돔','2017-3-20','def@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장혁','고장난병아리','2017-5-8','soso@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김진','죽일놈의병아리','2017-9-20','start19119@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'장정희','너와나의해나','2016-11-4','start@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'주해나','좋아하는화영','2016-5-15','sexy@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'이남혁','상큼한희준','2016-4-10','hothot@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'김건희','좋아하는골렘','2016-2-25','orange1978@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'이남혁','귀여운오징어','2016-3-10','soso@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'한정희','초딩화영','2017-9-20','sexy1952@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'조진','구리구리삐약이','2016-4-25','orange@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'제갈미희','귀여운병아리106','2017-9-4','gogo@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'방혜진','귀여운돌돔','2016-9-10','web1944@daum.com','0000','1');



rollback;

select * from MEMBER;
select * from statemember;
select * from MSTATE;
select * from login;
commit;

insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,1,default,(select mDate from member where mSeq=1),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,2,default,(select mDate from member where mSeq=2),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,3,default,(select mDate from member where mSeq=3),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,4,default,(select mDate from member where mSeq=4),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,5,default,(select mDate from member where mSeq=5),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,6,default,(select mDate from member where mSeq=6),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,7,default,(select mDate from member where mSeq=7),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,8,default,(select mDate from member where mSeq=8),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,9,default,(select mDate from member where mSeq=9),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,10,default,(select mDate from member where mSeq=10),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,11,default,(select mDate from member where mSeq=11),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,12,default,(select mDate from member where mSeq=12),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,13,default,(select mDate from member where mSeq=13),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,14,default,(select mDate from member where mSeq=14),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,15,default,(select mDate from member where mSeq=15),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,16,default,(select mDate from member where mSeq=16),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,17,default,(select mDate from member where mSeq=17),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,18,default,(select mDate from member where mSeq=18),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,19,default,(select mDate from member where mSeq=19),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,20,default,(select mDate from member where mSeq=20),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,21,default,(select mDate from member where mSeq=21),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,22,default,(select mDate from member where mSeq=22),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,23,default,(select mDate from member where mSeq=23),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,24,default,(select mDate from member where mSeq=24),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,25,default,(select mDate from member where mSeq=25),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,26,default,(select mDate from member where mSeq=26),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,27,default,(select mDate from member where mSeq=27),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,28,default,(select mDate from member where mSeq=28),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,29,default,(select mDate from member where mSeq=29),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,30,default,(select mDate from member where mSeq=30),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,31,default,(select mDate from member where mSeq=31),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,32,default,(select mDate from member where mSeq=32),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,33,default,(select mDate from member where mSeq=33),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,34,default,(select mDate from member where mSeq=34),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,35,default,(select mDate from member where mSeq=35),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,36,default,(select mDate from member where mSeq=36),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,37,default,(select mDate from member where mSeq=37),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,38,default,(select mDate from member where mSeq=38),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,39,default,(select mDate from member where mSeq=39),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,40,default,(select mDate from member where mSeq=40),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,41,default,(select mDate from member where mSeq=41),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,42,default,(select mDate from member where mSeq=42),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,43,default,(select mDate from member where mSeq=43),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,44,default,(select mDate from member where mSeq=44),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,45,default,(select mDate from member where mSeq=45),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,46,default,(select mDate from member where mSeq=46),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,47,default,(select mDate from member where mSeq=47),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,48,default,(select mDate from member where mSeq=48),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,49,default,(select mDate from member where mSeq=49),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,50,default,(select mDate from member where mSeq=50),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,51,default,(select mDate from member where mSeq=51),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,52,default,(select mDate from member where mSeq=52),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,53,default,(select mDate from member where mSeq=53),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,54,default,(select mDate from member where mSeq=54),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,55,default,(select mDate from member where mSeq=55),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,56,default,(select mDate from member where mSeq=56),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,57,default,(select mDate from member where mSeq=57),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,58,default,(select mDate from member where mSeq=58),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,59,default,(select mDate from member where mSeq=59),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,60,default,(select mDate from member where mSeq=60),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,61,default,(select mDate from member where mSeq=61),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,62,default,(select mDate from member where mSeq=62),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,63,default,(select mDate from member where mSeq=63),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,64,default,(select mDate from member where mSeq=64),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,65,default,(select mDate from member where mSeq=65),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,66,default,(select mDate from member where mSeq=66),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,67,default,(select mDate from member where mSeq=67),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,68,default,(select mDate from member where mSeq=68),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,69,default,(select mDate from member where mSeq=69),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,70,default,(select mDate from member where mSeq=70),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,71,default,(select mDate from member where mSeq=71),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,72,default,(select mDate from member where mSeq=72),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,73,default,(select mDate from member where mSeq=73),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,74,default,(select mDate from member where mSeq=74),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,75,default,(select mDate from member where mSeq=75),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,76,default,(select mDate from member where mSeq=76),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,77,default,(select mDate from member where mSeq=77),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,78,default,(select mDate from member where mSeq=78),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,79,default,(select mDate from member where mSeq=79),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,80,default,(select mDate from member where mSeq=80),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,81,default,(select mDate from member where mSeq=81),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,82,default,(select mDate from member where mSeq=82),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,83,default,(select mDate from member where mSeq=83),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,84,default,(select mDate from member where mSeq=84),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,85,default,(select mDate from member where mSeq=85),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,86,default,(select mDate from member where mSeq=86),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,87,default,(select mDate from member where mSeq=87),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,88,default,(select mDate from member where mSeq=88),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,89,default,(select mDate from member where mSeq=89),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,90,default,(select mDate from member where mSeq=90),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,91,default,(select mDate from member where mSeq=91),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,92,default,(select mDate from member where mSeq=92),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,93,default,(select mDate from member where mSeq=93),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,94,default,(select mDate from member where mSeq=94),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,95,default,(select mDate from member where mSeq=95),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,96,default,(select mDate from member where mSeq=96),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,97,default,(select mDate from member where mSeq=97),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,98,default,(select mDate from member where mSeq=98),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,99,default,(select mDate from member where mSeq=99),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,100,default,(select mDate from member where mSeq=100),null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,1,2,(select mDate from member where mSeq=1)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,2,2,(select mDate from member where mSeq=2)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,3,2,(select mDate from member where mSeq=3)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,4,2,(select mDate from member where mSeq=4)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,5,2,(select mDate from member where mSeq=5)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,6,2,(select mDate from member where mSeq=6)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,7,2,(select mDate from member where mSeq=7)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,8,2,(select mDate from member where mSeq=8)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,9,2,(select mDate from member where mSeq=9)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,10,2,(select mDate from member where mSeq=10)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,11,2,(select mDate from member where mSeq=11)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,12,2,(select mDate from member where mSeq=12)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,13,2,(select mDate from member where mSeq=13)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,14,2,(select mDate from member where mSeq=14)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,15,2,(select mDate from member where mSeq=15)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,16,2,(select mDate from member where mSeq=16)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,17,2,(select mDate from member where mSeq=17)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,18,2,(select mDate from member where mSeq=18)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,19,2,(select mDate from member where mSeq=19)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,20,2,(select mDate from member where mSeq=20)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,21,2,(select mDate from member where mSeq=21)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,22,2,(select mDate from member where mSeq=22)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,23,2,(select mDate from member where mSeq=23)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,24,2,(select mDate from member where mSeq=24)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,25,2,(select mDate from member where mSeq=25)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,26,2,(select mDate from member where mSeq=26)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,27,2,(select mDate from member where mSeq=27)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,28,2,(select mDate from member where mSeq=28)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,29,2,(select mDate from member where mSeq=29)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,30,2,(select mDate from member where mSeq=30)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,31,2,(select mDate from member where mSeq=31)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,32,2,(select mDate from member where mSeq=32)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,33,2,(select mDate from member where mSeq=33)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,34,2,(select mDate from member where mSeq=34)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,35,2,(select mDate from member where mSeq=35)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,36,2,(select mDate from member where mSeq=36)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,37,2,(select mDate from member where mSeq=37)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,38,2,(select mDate from member where mSeq=38)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,39,2,(select mDate from member where mSeq=39)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,40,2,(select mDate from member where mSeq=40)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,41,2,(select mDate from member where mSeq=41)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,42,2,(select mDate from member where mSeq=42)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,43,2,(select mDate from member where mSeq=43)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,44,2,(select mDate from member where mSeq=44)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,45,2,(select mDate from member where mSeq=45)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,46,2,(select mDate from member where mSeq=46)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,47,2,(select mDate from member where mSeq=47)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,48,2,(select mDate from member where mSeq=48)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,49,2,(select mDate from member where mSeq=49)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,50,2,(select mDate from member where mSeq=50)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,51,2,(select mDate from member where mSeq=51)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,52,2,(select mDate from member where mSeq=52)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,53,2,(select mDate from member where mSeq=53)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,54,2,(select mDate from member where mSeq=54)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,55,2,(select mDate from member where mSeq=55)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,56,2,(select mDate from member where mSeq=56)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,57,2,(select mDate from member where mSeq=57)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,58,2,(select mDate from member where mSeq=58)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,59,2,(select mDate from member where mSeq=59)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,60,2,(select mDate from member where mSeq=60)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,61,2,(select mDate from member where mSeq=61)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,62,2,(select mDate from member where mSeq=62)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,63,2,(select mDate from member where mSeq=63)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,64,2,(select mDate from member where mSeq=64)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,65,2,(select mDate from member where mSeq=65)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,66,2,(select mDate from member where mSeq=66)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,67,2,(select mDate from member where mSeq=67)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,68,2,(select mDate from member where mSeq=68)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,69,2,(select mDate from member where mSeq=69)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,70,2,(select mDate from member where mSeq=70)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,71,2,(select mDate from member where mSeq=71)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,72,2,(select mDate from member where mSeq=72)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,73,2,(select mDate from member where mSeq=73)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,74,2,(select mDate from member where mSeq=74)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,75,2,(select mDate from member where mSeq=75)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,76,2,(select mDate from member where mSeq=76)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,77,2,(select mDate from member where mSeq=77)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,78,2,(select mDate from member where mSeq=78)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,79,2,(select mDate from member where mSeq=79)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,80,2,(select mDate from member where mSeq=80)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,81,2,(select mDate from member where mSeq=81)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,82,2,(select mDate from member where mSeq=82)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,83,2,(select mDate from member where mSeq=83)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,84,2,(select mDate from member where mSeq=84)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,85,2,(select mDate from member where mSeq=85)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,86,2,(select mDate from member where mSeq=86)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,87,2,(select mDate from member where mSeq=87)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,88,2,(select mDate from member where mSeq=88)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,89,2,(select mDate from member where mSeq=89)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,90,2,(select mDate from member where mSeq=90)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,91,2,(select mDate from member where mSeq=91)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,92,2,(select mDate from member where mSeq=92)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,93,2,(select mDate from member where mSeq=93)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,94,2,(select mDate from member where mSeq=94)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,95,2,(select mDate from member where mSeq=95)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,96,2,(select mDate from member where mSeq=96)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,97,2,(select mDate from member where mSeq=97)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,98,2,(select mDate from member where mSeq=98)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,99,2,(select mDate from member where mSeq=99)+1,null);
insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,100,2,(select mDate from member where mSeq=100)+1,null);

DECLARE

  BEGIN
  for i in 1..100 LOOP
    insert into login values(lseq.nextval,i,1,(select smDate from STATEMEMBER where mSeq=i and msSeq=2));
   insert into login values(lseq.nextval,i,2,(select smDate from STATEMEMBER where mSeq=i and msSeq=2)+(1/(24*60)*10));
  END LOOP;

END;
select * from LOGIN;
commit;
select mseq,count(*) from login group by mseq;
select * from login order by mSeq asc, lDate asc;
delete from login;

declare
  sDate date;
  sDay number;
  sTime number;
  rnd number;
  BEGIN
    for i in 1..100 loop
      rnd := floor(DBMS_RANDOM.VALUE(0, 3));
      for j in 0..100 loop
        select ldate into sDate from (select ldate, rowNum as rnum from (select ldate from login where mseq=i and lsseq=2 order by ldate desc )a) where rnum=1;
        sDay := floor(DBMS_RANDOM.VALUE(1, 20));
        sTime :=floor(DBMS_RANDOM.VALUE(10, 200));
        sDate:=sDate+sDay+(1/(24*60)*sTime);

        if(sDate<sysdate) then insert into login values(lseq.nextval,i,1,sDate);sDate:=sDate+(1/(24*60)*sTime);insert into login values(lseq.nextval,i,2,sDate);
        end if;
        exit when  sDate>sysdate;
      end loop;
    end loop;
  END;

/*실제 나중에 쓸 프로시저. 휴면계정 검색용*/

create or replace PROCEDURE vacationMember
  as

  v_max date;
  begin

  for i in 1..100 loop


    select max(ldate) into v_max from login where mseq=i;
    if((sysdate-v_max)>365) then insert into statemember values(smseq.nextval,i,3,sysdate,null);
    end if;
    end loop;


  end;


/* 더미용 프로시저. 휴면계정 검색용*/

declare

  v_max date;
  begin

  for i in 1..100 loop


    select max(ldate) into v_max from login where mseq=i;
    if((sysdate-v_max)>365) then insert into statemember values(smseq.nextval,i,3,sysdate,null);
    end if;
    end loop;


  end;



begin
  vacationMember();

END;