create table licence(
	licence_val varchar2(5),
	licence_local varchar2(3),
	licence_num varchar2(20) primary key,
	licence_end varchar2(11),
	licence_start varchar2(11)
);
select * from licence;
