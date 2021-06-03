alter proc userRegisteration
 
@FirstName	varchar(20),
@LastName	varchar(20),
@Phone	varchar(11),
@Email	varchar(50),
@UserPassword	varchar(16)

as 
	insert into [User] ( FirstName,LastName,Phone,Email,UserPassword)
	values( @FirstName,@LastName,@Phone,@Email,@UserPassword)

	