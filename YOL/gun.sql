create sequence PBCSEQ
/

create sequence PBSEQ
/

create sequence JSEQ
/

create sequence RESEQ
/

create sequence PRSEQ
/

create sequence FBSEQ
/

create sequence FBCOMSEQ
/

create sequence INQUIRYSEQ
/

create sequence FAQSEQ
/

create sequence NOTICEBOARDSESQ
/

create sequence SMSEQ
/

create sequence MSEQ
/

create sequence LSEQ
/

create sequence FBCATSEQ
/

create table APPRAISE
(
	APSEQ NUMBER not null
		constraint PK_APPRAISE
			primary key,
	PRSEQ NUMBER not null,
	MSEQ NUMBER not null,
	ADSCORE NUMBER default 0,
	ADCOMMENT VARCHAR2(500)
)
/

create table APPROVE
(
	APSEQ NUMBER not null
		constraint PK_APPROVE
			primary key,
	GRADENAME VARCHAR2(20) not null
)
/

create table CHAT
(
	CSEQ NUMBER not null
		constraint PK_CHAT
			primary key,
	MSEQ NUMBER not null,
	CWSEQ NUMBER not null,
	CCONTENT VARCHAR2(2000) not null,
	CDATE DATE default sysdate not null,
	CREAD NUMBER default 0 not null
)
/

create table FREEBOARD
(
	FBSEQ NUMBER not null
		constraint PK_FREEBOARD
			primary key,
	MSEQ NUMBER not null,
	FBCATSEQ NUMBER not null,
	FBNAME VARCHAR2(100) not null,
	FBVCOUNT NUMBER default 0 not null,
	FBMAIN VARCHAR2(1000),
	FBTIME DATE default SysDate not null
)
/

create table JOIN
(
	JSEQ NUMBER not null
		constraint PK_JOIN
			primary key,
	MSEQ NUMBER,
	JREGDATE DATE default sysdate,
	APSEQ NUMBER
		constraint FK_APPROVE_TO_JOIN
			references APPROVE,
	RESEQ NUMBER
)
/

create table MEMBER
(
	MSEQ NUMBER not null
		constraint PK_MEMBER
			primary key,
	MGSEQ NUMBER not null,
	MNICKNAME VARCHAR2(200) not null,
	MEMAIL VARCHAR2(30) not null,
	MPASSWORD VARCHAR2(20) not null,
	MDATE DATE not null
)
/

alter table APPRAISE
	add constraint FK_MEMBER_TO_APPRAISE
		foreign key (MSEQ) references MEMBER
/

alter table CHAT
	add constraint FK_MEMBER_TO_CHAT
		foreign key (MSEQ) references MEMBER
/

alter table FREEBOARD
	add constraint FK_MEMBER_TO_FREEBOARD
		foreign key (MSEQ) references MEMBER
/

alter table JOIN
	add constraint FK_MEMBER_TO_JOIN
		foreign key (MSEQ) references MEMBER
/

create table MGRADE
(
	MGSEQ NUMBER not null
		constraint PK_MGRADE
			primary key,
	MGGRADE VARCHAR2(100) not null
)
/

alter table MEMBER
	add constraint FK_MGRADE_TO_MEMBER
		foreign key (MGSEQ) references MGRADE
/

create table MSTATE
(
	MSSEQ NUMBER not null
		constraint PK_MSTATE
			primary key,
	MSSTATE VARCHAR2(100) not null
)
/

create table PBCOMMENT
(
	PBCSEQ NUMBER not null
		constraint PK_PBCOMMENT
			primary key,
	PBSEQ NUMBER not null,
	JSEQ NUMBER not null
		constraint FK_JOIN_TO_PBCOMMENT
			references JOIN,
	PBCOMMENT VARCHAR2(300) not null,
	PBCREGDATE DATE default sysdate not null
)
/

create table PROJECT
(
	PRSEQ NUMBER not null
		constraint PK_PROJECT
			primary key,
	RESEQ NUMBER not null,
	TESEQ NUMBER not null,
	OPSEQ NUMBER not null,
	PRNAME VARCHAR2(50) not null,
	PRURL VARCHAR2(100),
	PRCOUNT NUMBER default 0 not null,
	COMPLETE NUMBER default 0 not null,
	USAGE NUMBER default 0 not null,
	PRFILENAME VARCHAR2(100) not null,
	SITENAME VARCHAR2(100) not null
)
/

alter table APPRAISE
	add constraint FK_PROJECT_TO_APPRAISE
		foreign key (PRSEQ) references PROJECT
/

create table PROJECTBOARD
(
	PBSEQ NUMBER not null
		constraint PK_PROJECTBOARD
			primary key,
	JSEQ NUMBER not null
		constraint FK_JOIN_TO_PROJECTBOARD
			references JOIN,
	PBSUBJECT VARCHAR2(50) not null,
	PBCONTENT VARCHAR2(500) not null,
	PBREGDATE DATE default sysdate not null,
	PBTAG VARCHAR2(10) not null,
	PRSEQ NUMBER not null
		constraint FK_PROJECT_TO_PROJECTBOARD
			references PROJECT,
	NSSEQ NUMBER not null
)
/

alter table PBCOMMENT
	add constraint FK_PROJECTBOARD_TO_PBCOMMENT
		foreign key (PBSEQ) references PROJECTBOARD
/

create table QUESTION
(
	QUESTIONSEQ NUMBER not null
		constraint PK_QUESTION
			primary key,
	MSEQ NUMBER not null
		constraint FK_MEMBER_TO_QUESTION
			references MEMBER,
	QCATEGORYSEQ NUMBER,
	QTITLE VARCHAR2(50) not null,
	QHITS NUMBER default 0 not null,
	QCOMMENTCOUNT NUMBER default 0 not null,
	QCONTENT VARCHAR2(500),
	QTIME DATE default sysdate not null
)
/

create table SHOW
(
	SHSEQ NUMBER not null
		constraint PK_SHOW
			primary key,
	PRSEQ NUMBER
		constraint FK_PROJECT_TO_SHOW
			references PROJECT
)
/

create table ADMIN
(
	ADMINSEQ NUMBER not null
		constraint PK_ADMIN
			primary key,
	ADMINID VARCHAR2(30) not null,
	PASSWORD VARCHAR2(30) not null
)
/

create table ADMINURL
(
	ADMINURL VARCHAR2(50) not null
)
/

create table CATEGORY
(
	CASEQ NUMBER not null
		constraint PK_CATEGORY
			primary key,
	CATEGORY VARCHAR2(20) not null
)
/

create table CONNECTCOUNT
(
	CCSEQ NUMBER not null
		constraint PK_CONNECTCOUNT
			primary key,
	DAILYCOUNT NUMBER,
	PRSEQ NUMBER not null
		constraint FK_PROJECT_TO_CONNECTCOUNT
			references PROJECT
)
/

create table CWRITE
(
	CWSEQ NUMBER not null
		constraint PK_CWRITE
			primary key,
	CWWRITER NUMBER not null
)
/

alter table CHAT
	add constraint FK_CWRITE_TO_CHAT
		foreign key (CWSEQ) references CWRITE
/

create table FBOARDCATEGORY
(
	FBCATSEQ NUMBER not null
		constraint PK_FBOARDCATEGORY
			primary key,
	FBCATEGORY VARCHAR2(20)
)
/

alter table FREEBOARD
	add constraint FK_FBOARDCATEGORY_TO_FREEBOARD
		foreign key (FBCATSEQ) references FBOARDCATEGORY
/

create table FBOARDCOM
(
	FBCOMSEQ NUMBER not null
		constraint PK_FBOARDCOM
			primary key,
	FBSEQ NUMBER not null
		constraint FK_FREEBOARD_TO_FBOARDCOM
			references FREEBOARD,
	MSEQ NUMBER not null
		constraint FK_MEMBER_TO_FBOARDCOM
			references MEMBER,
	FBCOMA VARCHAR2(500),
	FBCOMTIME DATE default sysdate not null
)
/

create table INQUIRY
(
	INQUIRYSEQ NUMBER not null
		constraint PK_INQUIRY
			primary key,
	MSEQ NUMBER not null
		constraint FK_MEMBER_TO_INQUIRY
			references MEMBER,
	TITLE VARCHAR2(50) not null,
	ICONTENT VARCHAR2(500),
	ENROLLTIME DATE default sysdate not null,
	HITS NUMBER default 0 not null,
	OPENSEQ NUMBER default 1 not null,
	INQUIRYCATEGORYSEQ NUMBER not null
)
/

create table INQUIRYBOARD
(
	INQUIRYBOARDSEQ NUMBER not null
		constraint PK_INQUIRYBOARD
			primary key,
	CONTENT VARCHAR2(20),
	TAGOK VARCHAR2(10) default 'n' not null,
	INQUIRYSEQ NUMBER not null
		constraint FK_INQUIRY_TO_INQUIRYBOARD
			references INQUIRY
)
/

create table INQUIRYCATEGORY
(
	INQUIRYCATEGORYSEQ NUMBER not null
		constraint PK_INQUIRYCATEGORY
			primary key,
	CATEGORY VARCHAR2(20)
)
/

alter table INQUIRY
	add constraint FK_INQUIRYCATEGORY_TO_INQUIRY
		foreign key (INQUIRYCATEGORYSEQ) references INQUIRYCATEGORY
/

create table JOINBOARD
(
	RESEQ NUMBER not null
		constraint PK_JOINBOARD
			primary key,
	MSEQ NUMBER not null
		constraint FK_MEMBER_TO_JOINBOARD
			references MEMBER,
	JSUBJECT VARCHAR2(50) not null,
	JCONTENT VARCHAR2(500) not null,
	JSTART DATE not null,
	JEND DATE not null,
	JCOUNT NUMBER not null,
	JREGDATE DATE default sysdate not null,
	ACTIVESTATE VARCHAR2(10) default 'n' not null
)
/

alter table JOIN
	add constraint FK_JOINBOARD_TO_JOIN
		foreign key (RESEQ) references JOINBOARD
/

alter table PROJECT
	add constraint FK_JOINBOARD_TO_PROJECT
		foreign key (RESEQ) references JOINBOARD
/

create table LOGIN
(
	LSEQ NUMBER not null
		constraint PK_LOGIN
			primary key,
	MSEQ NUMBER not null
		constraint FK_MEMBER_TO_LOGIN
			references MEMBER,
	LSSEQ NUMBER not null,
	LDATE DATE default sysdate not null
)
/

create table LSTATE
(
	LSSEQ NUMBER not null
		constraint PK_LSTATE
			primary key,
	LSSTATE VARCHAR2(100) not null
)
/

alter table LOGIN
	add constraint FK_LSTATE_TO_LOGIN
		foreign key (LSSEQ) references LSTATE
/

create table NOTICEBOARD
(
	NOTICEBOARDSEQ NUMBER not null
		constraint PK_NOTICEBOARD
			primary key,
	NOTICECATEGORYSEQ NUMBER not null,
	TITLE VARCHAR2(50) not null,
	NCONTENT VARCHAR2(500),
	ENROLLTIME DATE default sysdate not null,
	STARTEXP DATE not null,
	ENDEXP DATE not null
)
/

create table NOTICECATEGORY
(
	NOTICECATEGORYSEQ NUMBER not null
		constraint PK_NOTICECATEGORY
			primary key,
	NOTICECATEGORY VARCHAR2(20)
)
/

alter table NOTICEBOARD
	add constraint FK_NOTICECATEGORY_TO_NTCBRD
		foreign key (NOTICECATEGORYSEQ) references NOTICECATEGORY
/

create table NOTICESTATE
(
	NSSEQ NUMBER not null
		constraint PK_NOTICESTATE
			primary key,
	NSSTATE VARCHAR2(20) not null
)
/

alter table PROJECTBOARD
	add constraint FK_NOTICESTATE_TO_PROJECTBOARD
		foreign key (NSSEQ) references NOTICESTATE
/

create table OPEN
(
	OPENSEQ NUMBER not null
		constraint PK_OPEN
			primary key,
	OPENOK VARCHAR2(10)
)
/

alter table INQUIRY
	add constraint FK_OPEN_TO_INQUIRY
		foreign key (OPENSEQ) references OPEN
/

create table OPENSTATE
(
	OPSEQ NUMBER not null
		constraint PK_OPENSTATE
			primary key,
	STATE VARCHAR2(20) not null
)
/

alter table PROJECT
	add constraint FK_OPENSTATE_TO_PROJECT
		foreign key (OPSEQ) references OPENSTATE
/

create table QCATEGORY
(
	QCATEGORYSEQ NUMBER not null
		constraint PK_QCATEGORY
			primary key,
	QCATEGORY VARCHAR2(20)
)
/

alter table QUESTION
	add constraint FK_QCATEGORY_TO_QUESTION
		foreign key (QCATEGORYSEQ) references QCATEGORY
/

create table QCOMMENT
(
	QCOMMENTSEQ NUMBER not null
		constraint PK_QCOMMENT
			primary key,
	QUESTIONSEQ NUMBER not null
		constraint FK_QUESTION_TO_QCOMMENT
			references QUESTION,
	MSEQ NUMBER not null
		constraint FK_MEMBER_TO_QCOMMENT
			references MEMBER,
	QCOMMENT VARCHAR2(500),
	QCOMMENTTIME DATE default sysdate not null
)
/

create table TEMPCATEGORY
(
	TCSEQ NUMBER not null
		constraint PK_TEMPCATEGORY
			primary key,
	CASEQ NUMBER not null
		constraint FK_CATEGORY_TO_TEMPCATEGORY
			references CATEGORY,
	TESEQ NUMBER not null
)
/

create table TEMPLATE
(
	TESEQ NUMBER not null
		constraint PK_TEMPLATE
			primary key,
	TNAME VARCHAR2(50) not null,
	TFILENAME VARCHAR2(50) not null
)
/

alter table PROJECT
	add constraint FK_TEMPLATE_TO_PROJECT
		foreign key (TESEQ) references TEMPLATE
/

alter table TEMPCATEGORY
	add constraint FK_TEMPLATE_TO_TEMPCATEGORY
		foreign key (TESEQ) references TEMPLATE
/

create table VISITOR
(
	VISITORSEQ NUMBER not null
		constraint PK_VISITOR
			primary key,
	INTIME DATE default sysdate not null,
	IP VARCHAR2(30)
)
/

create table FAQ
(
	FAQSEQ NUMBER not null
		constraint PK_FAQ
			primary key,
	FAQCATEGORYSEQ NUMBER not null,
	TITLE VARCHAR2(50) not null,
	FCONTENT VARCHAR2(500),
	ENROLLTIME DATE default sysdate not null,
	OPENSEQ NUMBER default 1 not null
		constraint FK_OPEN_TO_FAQ
			references OPEN
)
/

create table FAQCATEGORY
(
	FAQCATEGORYSEQ NUMBER not null
		constraint PK_FAQCATEGORY
			primary key,
	FAQCATEGORY VARCHAR2(20)
)
/

alter table FAQ
	add constraint FK_FAQCATEGORY_TO_FAQ
		foreign key (FAQCATEGORYSEQ) references FAQCATEGORY
/

create table STATEMEMBER
(
	SMSEQ NUMBER not null
		primary key,
	MSEQ NUMBER
		references MEMBER,
	MSSEQ NUMBER default 1
		references MSTATE,
	SMDATE DATE default sysdate,
	SMDETAIL VARCHAR2(2000)
)
/

CREATE VIEW VJOINTEAM AS SELECT jb."RESEQ",jb."MSEQ",jb."JSUBJECT",jb."JCONTENT",jb."JSTART",jb."JEND",jb."JCOUNT",jb."JREGDATE",jb."ACTIVESTATE", m.MNICKNAME, (SELECT count(*) FROM JOIN WHERE join.reSeq = jb.RESEQ AND apSeq = '1') as mCount,
                              decode(jb.ACTIVESTATE, 'n', '마감', 'y', '모집중', 'd', '삭제') as sName,
                                (SELECT count(*) FROM PROJECT WHERE PROJECT.reSeq = jb.RESEQ ) as pCount,
                                  nvl((SELECT prSeq FROM PROJECT WHERE PROJECT.reSeq = jb.RESEQ), 0) as prSeq
                                    FROM JOINBOARD jb
    INNER JOIN MEMBER m
     ON jb.MSEQ = m.MSEQ
    WHERE jb.jCount <> 1
/

CREATE VIEW VJOINMEMBER AS SELECT j."JSEQ",j."MSEQ",j."JREGDATE",j."APSEQ",j."RESEQ", m.MNICKNAME, a.GRADENAME FROM join j
    INNER JOIN MEMBER m
      ON j.MSEQ = m.MSEQ
    INNER JOIN APPROVE a
      ON j.APSEQ = a.APSEQ
/

CREATE VIEW VPROJECTINFO AS select p.prseq, p.reseq, p.prURL, p.complete, p.usage, p.siteName, j.mseq, j.jcount, o.state, g.MGGRADE
    from project p 
        inner join joinBoard j on p.reseq = j.reseq 
            inner join openState o on p.opseq = o.opseq
                inner join member m on j.MSEQ = m.MSEQ
                    inner join MGRADE g on m.MGSEQ = g.MGSEQ
/

CREATE VIEW VPROJECTJOIN AS select p.prseq, p.reseq,j.apseq, a.gradename,j.mseq, m.mnickname, m.memail, '팀원' as grade
    from project p 
        inner join join j on p.reseq= j.reseq
            inner join approve a on j.apseq = a.APSEQ
                inner join member m on j.mseq = m.mseq
/

CREATE VIEW CREATINFO AS SELECT p.prSeq, j.reSeq, teSeq, opSeq, prName, prURL, SiteName, jContent, m.mSeq, mgSeq, apSeq, j.jRegDate, jo.jRegdate as jointime
FROM Member m INNER JOIN JoinBoard j on m.mSeq= j.mSeq INNER JOIN Join jo on j.mSeq = jo.mSeq INNER JOIN Project p on j.reSeq= p.reSeq
/

CREATE PROCEDURE vacationMember
  as

  v_max date;
  begin

  for i in 1..100 loop

    /*(select a.*,ROWNUM from (select * from login where mseq=i and lsSeq=2 order by lDate desc)a);*/
    select max(ldate) into v_max from login where mseq=i;
    if((sysdate-v_max)>365) then insert into statemember values(smseq.nextval,i,3,sysdate,null);
    end if;
    end loop;


  end;
/

