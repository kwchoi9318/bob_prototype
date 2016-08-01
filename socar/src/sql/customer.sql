select * from customer;--

create sequence cust_seq start with 1000 increment by 1 cycle;

create table customer(
	cust_seq int primary key,
	title varchar2(50),
	content varchar2(200),
	file varchar2(255),
	reg_date varchar2(10),
	id varchar2(20),
	constraint customer_member_fk foreign key (id)
	references member(id) on delete cascade
);
	
	
