begin transaction
SET XACT_ABORT 
on
begin try;
	create table shipper( id varchar(100), name varchar(100), phone varchar(100), salary float, postOfficeId varchar(100), quantity int)
	insert into shipper(id, name, phone, salary, postOfficeId,quantity) select s.id, s.name,s.phone, s.salary, s.postOfficeId,count(t.shipperId) as quantity from DELIVERY_MANAGEMENT.dbo.tblShipper as s join DELIVERY_MANAGEMENT.dbo.tblBill as t on s.id=t.shipperId group by  s.id,s.name,s.phone,s.salary,s.postOfficeId
	declare @max int
	select @max =max(quantity) from dbo.shipper
	select * from shipper where quantity= @max
	drop table shipper
end try
begin catch
if(@@ERROR>0)
begin
print('Loi')
rollback tran
end
else
begin
commit tran
end
end CATCH

