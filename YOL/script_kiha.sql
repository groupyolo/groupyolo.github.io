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



insert into MSTATE(msSeq,MSSTATE) VALUES (1,'��湲�');
insert into MSTATE(msSeq,MSSTATE) VALUES (2,'�솢�꽦');
insert into MSTATE(msSeq,MSSTATE) VALUES (3,'�쑕硫�');
insert into MSTATE(msSeq,MSSTATE) VALUES (4,'�깉�눜');



insert into LSTATE(lsSeq,lsSTATE) VALUES (1,'濡쒓렇�씤');
insert into LSTATE(lsSeq,lsSTATE) VALUES (2,'濡쒓렇�븘�썐');

insert into mGrade(MGSEQ,MGGRADE) VALUES (1,'臾대즺');
insert into mGrade(MGSEQ,MGGRADE) VALUES (2,'�쑀猷�');



select * from member;
select * from statemember order by smdate;
select * from login;
select * from MGRADE;

commit;


insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덈퀝�슦','珥덈뵫�씗以�','2016-8-6','bibid@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덊삙�굹','援щ━援щ━�넚�궗由�','2016-5-4','baby19142@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�궓以�','�꼫���굹�쓽怨⑤젞83','2016-5-20','bibid@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'泥쒖갔�씗','援щ━援щ━蹂묒븘由�108','2016-9-12','start@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듯쁺','泥쒗븯臾댁쟻�굪�빟�씠117','2016-3-15','apple1959@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�궓沅곴린�븯','醫뗭븘�븯�뒗源�吏��쁽','2017-5-10','hothot@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�씗吏�','�썐�뒗源�吏��쁽','2016-2-12','web1931@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�슦湲고븯','�긽�겮�븳�룎�룘','2017-2-25','abc@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'二쇱젙�씗','�썐�뒗�넚�궗由�','2017-5-15','apple@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'議곕궓以�','怨좎옣�궃�젙�븘','2016-2-10','baby@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�삙吏�','�꼫���굹�쓽�넚�궗由�','2017-5-21','def@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�슦�떆�쁽','�뒋�띁�삤�겕','2017-3-20','hothot@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�썑','二쎌씪�냸�쓽源�吏��쁽','2017-2-12','def19131@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源��쁺','紐삳궃�씠�굪�빟�씠','2017-3-20','web19129@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦誘명씗','�썐�뒗源�吏��쁽54','2016-4-10','abc@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�슦�빐�굹','泥쒗븯臾댁쟻�솕�쁺','2016-2-6','soso@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑺씗以�','珥덈뵫�꽑�쁺','2016-11-25','baby@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�궓沅곷퀝�슦','泥쒗븯臾댁쟻�굪�빟�씠','2017-3-15','orange@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'理쒖젙�씗','�뒋�띁�빐�굹','2016-9-4','baby@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�슦�뼹','醫뗭븘�븯�뒗蹂묒븘由�','2016-8-20','hothot19137@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'理쒗샇吏�','二쎌씪�냸�쓽�삤吏뺤뼱','2017-3-4','abc@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�슦�썑','�뜑�읇蹂묒븘由�','2016-10-6','soso@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덊씗以�','�뒋�띁�삤吏뺤뼱','2016-11-20','abc@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덊씗以�','�꼫���굹�쓽怨⑤젞','2017-9-12','bibid@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'理쒕궓以�','�뜑�읇�솕�쁺','2016-9-21','weare1946@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳嫄댄씗','洹��뿬�슫�솕�쁺','2017-2-6','orange@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�빐�굹','洹��뿬�슫�굪�빟�씠','2017-8-2','web@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源��깭�쁽','�꼫���굹�쓽�솕�쁺','2017-9-10','bibid1997@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑺깭�쁽','二쎌씪�냸�쓽�씗以�','2017-5-12','sexy@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�궓沅곴굔�씗','�뒋�띁�꽑�쁺','2016-5-20','soso1927@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'理쒕퀝�슦','�슱�듃�씪�솕�쁺','2016-9-20','abc1960@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'議곕��','二쎌씪�냸�쓽�넚�궗由�','2017-5-15','abc1963@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듭떆�쁽','怨좎옣�궃�넚�궗由�','2016-10-21','web1971@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源��궓以�','�썐�뒗�굪�빟�씠','2016-3-20','hothot1973@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'二쇳쁺','二쎌씪�냸�쓽�솕�쁺','2017-4-20','start19105@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�깭�쁽','�긽�겮�븳�삤�겕','2016-3-15','hothot@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'議곗슦�쁺','�븘由꾨떎�슫�삤吏뺤뼱','2017-4-2','orange1962@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젙�샇吏�','援щ━援щ━�삤吏뺤뼱','2016-2-2','gogo1945@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳蹂묒슦','�꼫���굹�쓽�씗以�70','2017-5-6','weare1947@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'泥쒗삙�굹','珥덈뵫�삤�겕','2017-2-6','baby1928@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦�쁺','泥쒗븯臾댁쟻�굪�빟�씠69','2016-11-10','def@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듭떆�쁽','�슱�듃�씪�굪�빟�씠','2017-9-12','start1990@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듬궓以�','洹��뿬�슫源�吏��쁽','2016-2-12','orange@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑸��','醫뗭븘�븯�뒗�삤�겕','2016-2-21','apple1998@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�뼹','洹��뿬�슫�씗以�','2017-4-2','def1994@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'泥쒗깭�쁽','�긽�겮�븳蹂묒븘由�','2016-4-8','weare@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�궓沅곹씗吏�','�꼫���굹�쓽蹂묒븘由�','2016-5-12','web@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덇린�깭','�븘由꾨떎�슫�솕�쁺','2016-2-8','sexy@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젙湲고깭','珥덈뵫�빐�굹','2017-4-6','def19114@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젙�빐�굹','泥쒗븯臾댁쟻�꽑�쁺','2017-2-12','sexy@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦�씗以�','怨좎옣�궃�솕�쁺','2016-3-15','start@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듭꽑�쁺','援щ━援щ━怨⑤젞','2016-11-6','start@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듯썑','�슱�듃�씪源�吏��쁽','2016-11-12','hothot@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�씠�궓�쁺','援щ━援щ━�삤�겕','2016-9-6','start@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑹젙�씗','紐삳궃�씠蹂묒븘由�','2016-2-4','weare@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젙�쑄�븘','�뒋�띁�솕�쁺','2016-11-10','def19100@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�씠�젙�씗','�긽�겮�븳源�吏��쁽79','2016-5-6','web1976@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덉슦�쁺','援щ━援щ━�젙�븘','2017-5-12','soso19109@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源��썑','泥쒗븯臾댁쟻�룎�룘','2017-4-10','def@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�씠�썑','珥덈뵫源�吏��쁽','2016-8-10','bibid@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젙�삙吏�','�긽�겮�븳�굪�빟�씠75','2017-4-25','apple@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑷린�븯','二쎌씪�냸�쓽�굪�빟�씠','2017-8-15','baby@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源�湲고븯','�긽�겮�븳�솕�쁺','2017-5-10','def1977@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�삙吏�','�븘由꾨떎�슫�꽑�쁺','2016-3-20','soso@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덊빐�굹','紐삳궃�씠�젙�븘50','2016-2-20','orange1972@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덉슦�쁺','援щ━援щ━�꽑�쁺','2017-8-15','gogo@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑷린�깭','援щ━援щ━蹂묒븘由�','2017-8-21','orange@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덉뼹','�슱�듃�씪�젙�븘','2016-4-10','start19126@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源�吏�','珥덈뵫�넚�궗由�','2017-5-12','apple@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦�샇吏�','�꼫���굹�쓽�삤�겕','2017-3-20','gogo1961@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�샇吏�','醫뗭븘�븯�뒗�룎�룘','2017-4-8','soso1958@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦蹂묒슦','紐삳궃�씠�룎�룘','2016-10-12','abc1968@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛뺥씗吏�','�꼫���굹�쓽�꽑�쁺','2017-2-21','apple@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�궓沅곷궓�쁺','泥쒗븯臾댁쟻�빐�굹','2017-5-10','gogo@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�샇吏�','�뒋�띁怨⑤젞','2017-5-20','gogo19115@paran.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦�슦�쁺','�븘由꾨떎�슫�굪�빟�씠','2016-10-10','bibid@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덊깭�쁽','�꼫���굹�쓽�삤吏뺤뼱','2017-5-8','hothot19101@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛뺤쭊','�슱�듃�씪�꽑�쁺','2016-8-8','web@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛뺥샇吏�','�긽�겮�븳�꽑�쁺','2016-11-2','apple@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'二쇳깭�쁽','怨좎옣�궃源�吏��쁽','2017-2-8','weare19130@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�슦�쁺','�썐�뒗�꽑�쁺','2017-9-10','def1940@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�꽦�뼹','�뜑�읇�굪�빟�씠','2017-3-2','weare@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�씠�뼹','�븘由꾨떎�슫蹂묒븘由�','2017-9-10','gogo@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�슦李ы씗','�뜑�읇�넚�궗由�55','2017-9-6','orange19127@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑸��','�슱�듃�씪�룎�룘','2016-11-21','baby1984@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젙�깭�쁽','洹��뿬�슫�빐�굹','2017-2-6','sexy1993@gmail.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'怨듭쭊','�슱�듃�씪�삤吏뺤뼱99','2016-5-4','hothot1992@paran.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源�吏�','洹��뿬�슫怨⑤젞135','2017-4-25','baby@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'泥쒖쑄�븘','�꼫���굹�쓽�룎�룘','2017-3-20','def@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�쁺','怨좎옣�궃蹂묒븘由�','2017-5-8','soso@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源�吏�','二쎌씪�냸�쓽蹂묒븘由�','2017-9-20','start19119@yahoo.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�옣�젙�씗','�꼫���굹�쓽�빐�굹','2016-11-4','start@yahoo.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'二쇳빐�굹','醫뗭븘�븯�뒗�솕�쁺','2016-5-15','sexy@naver.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�씠�궓�쁺','�긽�겮�븳�씗以�','2016-4-10','hothot@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'源�嫄댄씗','醫뗭븘�븯�뒗怨⑤젞','2016-2-25','orange1978@gmail.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�씠�궓�쁺','洹��뿬�슫�삤吏뺤뼱','2016-3-10','soso@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�븳�젙�씗','珥덈뵫�솕�쁺','2017-9-20','sexy1952@daum.com','0000','1');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'議곗쭊','援щ━援щ━�굪�빟�씠','2016-4-25','orange@naver.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'�젣媛덈�명씗','洹��뿬�슫蹂묒븘由�106','2017-9-4','gogo@daum.com','0000','2');
insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'諛⑺삙吏�','洹��뿬�슫�룎�룘','2016-9-10','web1944@daum.com','0000','1');



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

/*�떎�젣 �굹以묒뿉 �벝 �봽濡쒖떆��. �쑕硫닿퀎�젙 寃��깋�슜*/

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


/* �뜑誘몄슜 �봽濡쒖떆��. �쑕硫닿퀎�젙 寃��깋�슜*/

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

create or replace view faqTotalView
as select b.*, a.faqcategory from faqCategory a
    inner join faq b
        on a.faqCategorySeq=b.faqCategorySeq;

select * from faqTotalView;
commit;
select * from faqCategory;
select * from faq;
insert into faq values(2,2,'테스트2','내용2',sysdate,1);
insert into faq values(3,2,'테스트3','내용3',sysdate,1);
insert into faq values(4,3,'테스트4','내용4',sysdate,1);
insert into faq values(5,5,'테스트5','내용5',sysdate,1);

select * from faqTotalView where faqCategoryseq=1;

insert into faq values(6,1,'테스트6','내용6',sysdate,1);
insert into faq values(7,1,'테스트7','내용7',sysdate,1);
insert into faq values(8,1,'테스트8','내용8',sysdate,1);
insert into faq values(9,1,'테스트9','내용9',sysdate,1);
insert into faq values(10,1,'테스트10','내용10',sysdate,1);
insert into faq values(11,1,'테스트11','내용11',sysdate,1);

create table incfunction(
    seq number primary key,
    BigTitleNum number,
    bigtitle varchar2(2000),
    title varchar2(1000),
    cont varchar2(3000)
);

create sequence incSeq;

insert into incfunction values(incSeq.nextval,1,'쉽고 확실한 홈페이지','간편한 에디터','코딩 걱정없이 쉽고 간편한 사용자 친화적인 드래그-앤-드롭 방식의 에디터로 내 홈페이지를 완성하세요.');
insert into incfunction values(incSeq.nextval,1,'쉽고 확실한 홈페이지','원페이지','내 비즈니스 홍보를 위한 한장짜리 원페이지 홈페이지를 손쉽고 멋지게 제작하세요.');
insert into incfunction values(incSeq.nextval,1,'쉽고 확실한 홈페이지','이미지편집','이미지 편집 기능을 활용해 비즈니스 효과를 극대화하세요.');
insert into incfunction values(incSeq.nextval,1,'쉽고 확실한 홈페이지','스크린 위치 고정','스크린 스크롤 및 크기 조절시에도 방문자가 사용할 수 있도록 요소의 위치를 고정시켜보세요.');
insert into incfunction values(incSeq.nextval,1,'쉽고 확실한 홈페이지','소셜미디어 연동','내 홈페이지와 소셜 채널의 연동을 위해 소셜 미디어 아이콘을 추가하세요.');

insert into incfunction values(incSeq.nextval,2,'비지니스를 위한 홈페이지','웹 로그 분석','방문 횟수 및 방문 경로, 페이지뷰 등 내 홈페이지 활동 및 트래픽을 통계로 확인하세요.');
insert into incfunction values(incSeq.nextval,2,'비지니스를 위한 홈페이지','커뮤니케이션 도구','방문자 및 고객 관리를 위한 YOL! 커뮤니케이션 도구로 직접 소통하세요.');

insert into incfunction values(incSeq.nextval,3,'YOL! 도움말 센터','24시 고객지원','언제든지 YOL! 도움말 센터를 통해 내 문의사항을 해결하세요.');
insert into incfunction values(incSeq.nextval,3,'YOL! 도움말 센터','자주 묻는 질문','[자주 묻는 질문] 페이지에서 다양한 질문 및 답변을 확인하세요.');
insert into incfunction values(incSeq.nextval,3,'YOL! 도움말 센터','1:1 실시간 채팅','실시간으로 관계자에게 궁금한 것을 확인하세요.');
commit;
select * from incFunction ;


ALTER TABLE login  ADD lCheckIP varchar2(100) default 'none';
ALTER TABLE lstate  drop column lCheckIP;

select * from login;
commit;

select * from statemember;

select mseq,max(smdate) from statemember
    where msseq=2 
    group by mseq 
        
        order by mseq asc;













