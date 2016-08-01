create table socar_member(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
birth varchar2(11),
gender varchar2(1),
phone varchar2(15),
address varchar2(100),
region varchar2(30),
job varchar2(10),
license_val varchar2(5),
license_local varchar2(3),
license_num varchar2(20),
license_end varchar2(11),
license_start varchar2(11),
rent_date varchar2(24),
rent_zone varchar2(10),
car_model varchar2(10),
pay_km int,
pay_rent int
);

select * from socar_member;
