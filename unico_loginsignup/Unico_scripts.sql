create database Unico
go
use Unico

create Table [User](			
UserID int Primary key,
FirstName varchar(20) NOT NULL,
LastName varchar(20) NOT NULL,
Phone varchar(11) Unique NOT NULL,
Email varchar(50) Unique NOT NULL,
UserPassword varchar(16) check(len(UserPassword) >= 8) NOT NULL
)

Create Table Shops(
ShopID int Primary key,
City varchar(20) NOT NULL,
Address varchar(100) NOT NULL,
Contact varchar(11) Unique NOT NULL
)

Create Table Sale(
SaleID int primary key,
SaleName varchar(30) NOT NULL,
Discount int NOT NULL,
StartDate Date NOT NULL,
EndDate Date NOT NULL
)

Create Table Product(
ProductID varchar(30) primary key,
Color varchar(30) NOT NULL,
Price int NOT NULL,
SaleID int Foreign key references [Sale](SaleID),
Rating int check (Rating >=1 AND Rating <= 5),
ShopsID int Foreign key references [Shops](ShopID)
)


Create table Voucher(
voucherID int primary key,
Discount int NOT NULL,
EndDate date NOT NULL,
VoucherStatus varchar(10) NOT NULL
)


Create Table [Order](
OrderID int primary key,
userID int Unique Foreign key  references [User](UserID) NOT NULL,
orderDate Date NOT NULL,
InitialPrice int NOT NULL,
voucherCode int Foreign key references [Voucher](voucherID) NOT NULL,
FinalPrice int NOT NULL
)




Create Table ProductsInOrder( 
orderID int NOT NULL Foreign key references [Order](orderID),
ProductID varchar(30) NOT NULL Foreign key references [Product](ProductID),
Quantity int,
Price int NOT NULL
primary key(orderID, ProductID)
)


create table ProductSize(
Size int,
ProductID varchar(30) NOT NULL foreign key references Product(ProductID),
primary key(Size, ProductID)
)