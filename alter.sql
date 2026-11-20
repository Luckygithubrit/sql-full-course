create table lucky1(
id int unique ,name varchar (20) not null ,age int check(age>=18),mobilenumber varchar(10) check(length(mobilenumber)=10),college varchar(20) not null
);
insert into lucky1 values(12211491,'lucky',22,9182543736,'lpu');
insert into lucky1 values(12211492,'chikku',22,9499900909,'lpu');
insert into lucky1 values(12211493,'steven',22,9182543737,'lpu');
insert into lucky1 values(12211494,'lakesh',22,9182543738,'lpu');
insert into lucky1 values(12211495,'virat',22,9182543739,'lpu');
insert into lucky1 values(12211496,'bunny',22,9182543730,'lpu');
-- insert into lucky1 values(12211496,'bunny',22,918254373,'lpu'); 

alter table lucky1 modify mobilenumber varchar(10) not null;

-- check constraint
select constraint_type,constraint_name from information_schema.table_constraints where table_name='lucky1' and table_schema=database();


alter table lucky1 drop check lucky1_chk_1;
alter table lucky1 add constraint age check(age>=21);



-- insert into lucky1 values(12211497,'bunny',20,9182543732,'lpu'); 

select * from lucky1;