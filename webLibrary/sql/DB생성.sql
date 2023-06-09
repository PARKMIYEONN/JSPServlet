drop table t_member;

create table t_member(
       id varchar2(100) primary key,
       password varchar2(100) not null,
       name varchar2(100),
       type char(1) default 'U'
       );
       
insert into t_member(id, password, name, type)
values('admin', 'admin', '������', 'S');

insert into t_member(id, password, name)
values('aaa', '1234', 'ȫ�浿');

commit;

select * from t_member;