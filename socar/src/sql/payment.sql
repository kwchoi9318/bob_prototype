create sequence pay_seq start with 1000 increment by 1 cycle;

create table payment(
	pay_seq int primary key,
	car_model varchar2(10),
	distance_km int,
	id varchar2(20),
	constraint payment_member_fk foreign key (id)
	references member(id) on delete cascade
);

select * from payment;