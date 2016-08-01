create sequence hist_seq start with 1000 increment by 1 cycle;
create table history(
	hist_seq int primary key,
	rent_date varchar2(24),
	rent_zone varchar2(10),
	car_model varchar2(10),
	pay_km int,
	id varchar2(20),
	constraint history_member_fk foreign key (id)
	references member(id) on delete cascade
);

select * from history;