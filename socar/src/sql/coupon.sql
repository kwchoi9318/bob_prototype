create table coupon(
coupon_count int,
name varchar2(10),
ep_date varchar2(15),
condition varchar2(20),
open_date varchar2(30)
);

Int couponCount : 쿠폰의 남은 수량
String name : 쿠폰이름
String epDate :유효기간
String condition : 쿠폰사용조건
String openDate : 오픈기간