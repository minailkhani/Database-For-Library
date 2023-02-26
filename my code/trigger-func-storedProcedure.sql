use project;
#1 trigger
# منبعی که قرار است امانت داده شود قابل امانت دادن باشد
delimiter //
create trigger hold_source
    before insert on hold
    for each row
    begin
        if  (
            select holdable from source
            where source.CallNumber = new.Callnumber
            ) <> 1 then
            signal sqlstate '45000' set message_text = 'this source can not be held!';
        end if ;
    end //
delimiter ;
# insert into hold (Callnumber, memberID, startHold, endHold) values
# (3,100001,curdate(),null);

#2 trigger
# کسی که 5 منبع امانت گرفته است نتواند بازم امانتی بگیرد
delimiter //
create trigger hold_count_control
    before insert  on hold
    for each row
    begin
        if (
            select
                count(*)
                from hold
                where memberID = new.memberID and isnull(hold.endHold)
            ) > 4 then
            signal sqlstate '45000' set message_text = 'this patron can not hold at a time anymore';
        end if ;
    end //
delimiter ;
insert into hold (Callnumber, memberID, startHold) values
# (1,100001,curdate()),
# (2,100001,curdate()),
# (4,100001,curdate()),
# (5,100001,curdate()),
# (8,100001,curdate())و
#(7,100001,curdate());

# func 1
# محاسبه ی منابع امانت گرفته شده توسط شخصی
delimiter //
create function member_hold_count(memberID int unsigned) returns int unsigned deterministic
begin
    return
        (
            select
                count(distinct hold.Callnumber)
                from hold
                where hold.memberID = memberID
            );
end //
delimiter ;
# select member_hold_count(100001);

# func 2
#تعداد اطلس های هر کتابخانه
delimiter //
create function library_atlas_count(libraryName varchar(20)) returns int unsigned deterministic
begin
    return
        (
            select
            count(distinct a.Callnumber)
            from belong b
            left join atlas a on
                b.Callnumber = a.Callnumber
            where b.libraryName = libraryName
            );
end //
delimiter ;

# select library_atlas_count('library3');

#procedure1
#محل منبعی را تغببر دهیم(بسیار کاربردی برای نمایشگاه موقت و یاperiodical )
delimiter //
create procedure change_stack(src_stack_id int unsigned, dest_stack_id int unsigned)
begin
    update source
        set
            stackNUM = dest_stack_id
        where stackNUM = src_stack_id ;
end //
delimiter ;
call change_stack(3,4) ;
select
    s.CallNumber,
    s.stackNUM
    from source s;


delimiter //
create procedure holyday_constraint()
begin
    update source
        set
            source.holdable = 2
        where source.holdable = 1;

end //
delimiter ;

delimiter //
create procedure disable_holyday_constraint()
begin
    update source
        set
            source.holdable = 1
    where source.holdable = 2;
end //
delimiter ;
# call holyday_constraint();