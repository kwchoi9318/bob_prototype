create sequence book_seq start with 1000 increment by 1 cycle;
create table booking(
<<<<<<< HEAD

	book_seq int primary key,
	car_model varchar2(10) ,
	rent_date varchar2(40),
	return_date varchar2(20),
	region varchar2(10),
	travel varchar2(10),
	socar_zone varchar2(20),
	id varchar2(20),
	constraint booking_member_fk foreign key (id)
	references member(id) on delete cascade
=======
car_model varchar2(10) primary key,
rent_date varchar2(40),
return_date varchar2(20),
region varchar2(10),
travel varchar2(2),
socar_zone varchar2(20),
print_pay_km int,
print_pay_rent int--
>>>>>>> refs/heads/donghyuk
);


select * from booking;
