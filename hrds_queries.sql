USE   Training_19Sep19_Pune
GO


CREATE TABLE [46008587].[Employee](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Designation] [int] NOT NULL,
	[Department] [int] NOT NULL
 );



 CREATE TABLE [46008587].[Department](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Head] [varchar](50) NOT NULL,
	[Location] [varchar](50) NOT NULL
	);



CREATE TABLE [46008587].[Designation](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL
	);

use Training_19Sep19_Pune
go

Create PROCEDURE [46008587].[InsertEmployee]
@ID int,
@Name varchar(50),
@Designation int,
@Department int
AS
BEGIN
	insert into Employee values(@ID, @Name, @Designation, @Department)
END

GO


Create PROCEDURE [46008587].[SelectEmployee]
@ID int,
@Name varchar(50) output,
@Designation int output,
@Department int output
AS
BEGIN
	select @Name = Name, @Designation = Designation, @Department = Department
	from Employee where Id = @ID
END
GO






Create PROCEDURE [46008587].[UpdateEmployee]
@ID int,
@Name varchar(50),
@Designation int,
@Department int
AS
BEGIN
	update Employee set Name = @Name,Designation = @Designation, Department = @Department where ID = @ID
END

GO


Create PROCEDURE [46008587].[DeleteEmployee]
@ID int
AS
BEGIN
	delete Employee where ID = @ID
END

GO


CREATE PROCEDURE [46008587].[GetEmployees]
AS
BEGIN
select * from Employee
END
GO


CREATE PROCEDURE [46008587].[GetDesignations]
AS
BEGIN
select * from [46008587].Designation
END
GO



CREATE PROCEDURE [46008587].[GetDepartments]
AS
BEGIN
select * from [46008587].Department
END
GO


