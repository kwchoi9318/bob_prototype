create table member(
	id varchar2(20) primary key,
	pw varchar2(20),
	name varchar2(20),
	birth varchar2(11),
	gender varchar2(1),
	phone varchar2(15),
	address varchar2(100),
	region varchar2(30),
	job varchar2(10),
	licence_num varchar2(20),
	constraint member_licence_fk foreign key (licence_num)
	references licence(licence_num) on delete cascade
);

select * from member;

