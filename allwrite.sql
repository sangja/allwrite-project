
drop table tbl_menu;
drop table member;
create SEQUENCE seq_member;
create table member (
    bno number not null primary key,
    bname varchar2(50),
    bpassword varchar2(50),
    bmemo CLOB);
    
    
create table tbl_menu (
    bno number not null,
    fsize number default(12) not null,
    fcolor varchar2(20) not null,
    italic char(1) check(italic in('0', '1')),
    underline char(1) check(underline in('0', '1')),
    constraint fk_code FOREIGN KEY(bno) REFERENCES member(bno));

    commit;
   select *from member; 
   select *from tbl_menu;