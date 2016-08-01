create table booking(
car_model varchar2(10) primary key,
rent_date varchar2(40),
return_date varchar2(20),
region varchar2(10),
travel varchar2(2),
socar_zone varchar2(20),
print_pay_km int,
print_pay_rent int --
);

select * from booking;
