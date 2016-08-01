create sequence car_seq start with 1000 increment by 1 cycle;
create table car(
	car_seq int primary key,
	drive_price int
	car_image varchar2(20),
	car_model varchar2(20),
	car_oil varchar2(15),
	car_option varchar2(50),
	pay_km int,
	car_zone varchar2(50),
	rent_time varchar2(50)
);
select * from car;