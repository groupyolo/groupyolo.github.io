
--JoinBoard

INSERT INTO JOINBOARD (RESEQ, MSEQ, JSUBJECT, JCONTENT, JSTART, JEND, JCOUNT, JREGDATE, ACTIVESTATE)
    VALUES (RESEQ.nextval, 68, '스프링프로젝트', '스프링+마이바티스로 프로젝트 진행하려 합니다.', '2017-10-01', '2017-10-20', 4, '2017-09-25', 'n');

INSERT INTO JOIN (JSEQ, MSEQ, JREGDATE, APSEQ, RESEQ)
    VALUES (JSEQ.nextval, 42, '2017-09-26', '0', '1');

COMMIT;

SELECT * FROM vjoinTeam;
select gradeName from VjoinMember reSeq = '1';
SELECT * FROM VJoinMember WHERE reSeq = '1' ORDER BY jRegDate ASC;

CREATE OR REPLACE VIEW vjoinTeam
AS
 SELECT jb.*,m.MNAME, m.MNICKNAME, (SELECT count(*) FROM JOIN WHERE reSeq = jb.RESEQ AND apSeq = '1') as mCount FROM JOINBOARD jb
    INNER JOIN MEMBER m
     ON jb.MSEQ = m.MSEQ;

CREATE OR REPLACE VIEW VjoinMember
  AS
  SELECT j.*, m.MNAME, m.MNICKNAME, a.GRADENAME FROM join j
    INNER JOIN MEMBER m
      ON j.MSEQ = m.MSEQ
    INNER JOIN APPROVE a
      ON j.APSEQ = a.APSEQ;