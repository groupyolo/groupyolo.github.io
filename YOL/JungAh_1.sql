
--JoinBoard

INSERT INTO JOINBOARD (RESEQ, MSEQ, JSUBJECT, JCONTENT, JSTART, JEND, JCOUNT, JREGDATE, ACTIVESTATE)
    VALUES (RESEQ.nextval, 68, '스프링프로젝트', '스프링+마이바티스로 프로젝트 진행하려 합니다.', '2017-10-01', '2017-10-20', 4, '2017-09-25', 'n');

INSERT INTO JOIN (JSEQ, MSEQ, JREGDATE, APSEQ, RESEQ)
    VALUES (JSEQ.nextval, 42, '2017-09-26', '0', '1');

COMMIT;

SELECT * FROM vjoinTeam;
select gradeName from VjoinMember reSeq = '1';
SELECT * FROM VJoinMember WHERE reSeq = '1' ORDER BY jRegDate ASC;
SELECT decode(ACTIVESTATE, 'n', '마감', 'y', '모집중', 'd', '삭제') as activeState FROM joinBoard ;
select replace(ACTIVESTATE, 'n', '1') from JOINBOARD ;
SELECT * FROM MEMBER WHERE MEMAIL = 'def19100@yahoo.com';

UPDATE JOIN SET apSeq = 1 WHERE JSEQ = 22;
UPDATE JOIN SET apSeq = 1 WHERE JSEQ = 23;

SELECT decode(prSeq, null, 0) FROM PROJECT;

update JOINBOARD SET RESEQ = 3 where reseq = 101;

SELECT max(reSeq) as reSeq FROM JoinBoard WHERE mSeq = 68;
DELETE FROM JOIN WHERE JSEQ = 24;
INSERT INTO JOIN (JSEQ, MSEQ, JREGDATE, APSEQ, RESEQ) VALUES (8, 68, '2017-10-25 00:00:00', 1, 2);


CREATE OR REPLACE VIEW vjoinTeam
AS
 SELECT jb.*, m.MNICKNAME, (SELECT count(*) FROM JOIN WHERE join.reSeq = jb.RESEQ AND apSeq = '1') as mCount,
                              decode(jb.ACTIVESTATE, 'n', '마감', 'y', '모집중', 'd', '삭제') as sName,
                                (SELECT count(*) FROM PROJECT WHERE PROJECT.reSeq = jb.RESEQ ) as pCount,
                                  nvl((SELECT prSeq FROM PROJECT WHERE PROJECT.reSeq = jb.RESEQ), 0) as prSeq
                                    FROM JOINBOARD jb
    INNER JOIN MEMBER m
     ON jb.MSEQ = m.MSEQ
    WHERE jb.jCount <> 1;

CREATE OR REPLACE VIEW VjoinMember
  AS
  SELECT j.*, m.MNICKNAME, a.GRADENAME FROM join j
    INNER JOIN MEMBER m
      ON j.MSEQ = m.MSEQ
    INNER JOIN APPROVE a
      ON j.APSEQ = a.APSEQ;