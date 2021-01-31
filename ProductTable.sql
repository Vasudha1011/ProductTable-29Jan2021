use WFASql
--1.Create table Product
create table Product(
ProductId int not null primary key identity(1,1),
Description varchar(30) not null UNIQUE,
SetQty int not null 
check (SetQty=1 or SetQty=5 or SetQty=10)
default 1,
Rate decimal(10,2)
check(rate>=51 and rate<=5000)
)


--Inserting 20 records in the Product table
insert into Product values('Chocolates',10,100.25)
insert into Product values('Milk',1,100)
insert into Product values('SilkCadbury',10,200.05)
insert into Product values('Books',5,51.9)
insert into Product values('Shampoo',10,300.45)
insert into Product values('FaceCream',1,500)
insert into Product values('ToothBrush',5,150.89)
insert into Product values('IceCream',10,800)
insert into Product values('Maggi',5,60.78)
insert into Product values('Laptop',1,5000)
insert into Product values('BagPack',5,890.78)
insert into Product values('Shoes',10,500)
insert into Product values('Yogurt',10,120.25)
insert into Product values('Table',1,2000.9)
insert into Product values('Televisions',5,4006.90)
insert into Product values('Keyboard',5,1009.78)
insert into Product values('Mask',10,100)
insert into Product values('Bedsheet',5,900.89)
insert into Product values('DarkFantasy',10,730.09)
insert into Product values('Coffee',1,500)

select * from Product

--Update all the rates with 10% rate hike 
update Product set Rate=Rate*0.1 from Product

-- Delete last record by providing the ProductID
delete from Product where ProductId=20

--Altering the Product table
alter table Product Add  MarginCode char(1) 
check(MarginCode='A' or MarginCode='B' or MarginCode=NULL)

--Update few records to set MarginCode to A and some records MarginCode to B

update Product set MarginCode='A' where ProductId<10

update Product set MarginCode='B' where ProductId>10

--Update all the SetQty to 10 for all Items which have MarginCode A and whose original
--SetQty is 1.

update product set SetQty=10 where MarginCode='A' and SetQty=1





