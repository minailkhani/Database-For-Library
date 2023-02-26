use project;
#1
#1 کتاب های ترجمه شده و کتاب زبان اصلی آن:
select
    s_t.name originalbookName,
    s_t.publName publisher,
    s_o.name
    from book t
    join book o on
        t.Callnumber = o.translateof
    join source s_t on t.Callnumber = s_t.CallNumber
    join source s_o on t.Callnumber = s_o.CallNumber;

#2
 #2اطلاعلات مربوط به امانت گرفتن صندوق هایی که خالی شده را پاک میکنیم. چون دیگر لازم نداریم. قبل از انجام این عمل میتوان ستون های depositرا مشاهده کرد تا از صحت عملکرد این عمل مطمین شویم
# select * from deposit;
delete from deposit where end is not null;

#3
# اعلامیه هایی که بیش از یک ماه است که نصب شده اند برداشته شوند
# SELECT * FROM bulletin;
update bulletin
    set
        end = curdate()
where (end is null ) and ((curdate()-start)>30);

#4
# همان طور که در پشت کارت نوشته شده کسی نمیتواند بیش از 5 کتاب به امانت بگیرد. پس باید بتوانیم تعداد کتاب های امانت گرفته شده توسط هر شخص را محاسبه کنیم
SELECT
    p.name,
    p.memberID,
    count(h.memberID)
    from patron p
    left join hold h on p.memberID = h.memberID
    group by p.memberID;

#5
#تعداد اطلس های هر استک
SELECT
    s.stackNUM,
     count(s.stackNUM)
    from source s
    inner join periodical p on p.Callnumber = s.CallNumber
        union
    select
       s.stackNUM,
        count(s.stackNUM)

        from source s
        LEFT join atlas a on s.CallNumber = a.Callnumber;

#6
# # برزگداشت تهبه کنندگانی که فوت کرده اند و هنر آنها
select
    c.creatorname as name,
    c.birthdate,
    c.deathdate,
    'author' job
    from creator c
    inner join author a on
        c.ID = a.creatorid
        where c.deathdate is not null
    union
select
    c.creatorname as name,
    c.birthdate,
    c.deathdate,
    'translate' job
    from creator c
    inner join translate t on
        c.ID = t.creatorid
        where c.deathdate is not null
    union
select
    c.creatorname as name,
    c.birthdate,
    c.deathdate,
    'compiler' job
    from creator c
    inner join  compiler c2 on
        c.ID = c2.creatorid
    where c.deathdate is not null
    union
select
    c.creatorname as name,
    c.birthdate,
    c.deathdate,
    'speaker' job
    from creator c
    inner join speaks s on
        c.ID = s.creatorID
    where c.deathdate is not null;

#7
#ثبت رزرو سالن:
# SELECT * from reservation;
INSERT into reservation (libraryName, amphName, name, date, organizer, needreserve) value
('library1','amphName2','jashn etmam term4', '1400-5-24', 'mina ilkhani', 1);

#8
select
    *
    FROM worker
    order by libraryName;

#9
#در کدام کتابخانه کارمند یا سمت 'res3' نداریم:
select
    distinct (worker.libraryName)
    from worker
    where worker.responsibility != 'res3';
select  * from worker;

#10:
# اطلاعات کامل مرتبط با آثار هر انتشارات
select
     p.pblshrName,
     s.CallNumber,
    s.name,
    s.stackNUM,
    s.line
     from source s
    left join  publisher p on
         p.pblshrName = s.publName;
