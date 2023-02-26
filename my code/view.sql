use project;
#1
CREATE VIEW ut_patron as
    select
        r.email,
        r.NationalID,
        p.name
    from registerInf r
    inner join patron p on r.NationalID = p.memberID
    where r.email like '%@ut.ac.ir';

#2
CREATE VIEW rank_of_multimedia_source as
    select
            avg(c.grade) as grade,
            s.name as source_name,
            s.CallNumber,
            s.publName,
            mul.type

    from multimedia mul
    left join comment c on
        mul.Callnumber = c.Callnumber
    inner join source s on mul.Callnumber = s.CallNumber
    group by mul.Callnumber
    order by avg(c.grade) desc ;

#3
create view fine as
SELECT
    p.name,
    r.cellphoneNUM,
    h.startHold,
    curdate()- h.startHold as late,
    (curdate()- h.startHold)*2 as 'fine*1000'
    from hold h
    inner join registerinf r on
        h.memberID = r.NationalID
    inner join patron p on r.NationalID = p.memberID
    where (h.endHold is null and (curdate()- h.startHold)>14);


#4
create view publisher_hold as
select
    s.publName,
    COUNT(h.memberID)
    from  source s
    left join hold h on
        s.CallNumber = h.Callnumber
    group by s.publName;

#5
CREATE view not_single_chair_in_readingRoom as
SELECT
    ch.type, roomnum, num,
    l.libraryName,
    (ch.type*ch.num)
    from library l
    inner join chairandtable ch on l.libraryName = ch.libraryName
    where ch.type !=1;