create database quiz;
go 
 use quiz
 go 

 create table escuela(
 escuelaid int primary key,
 schoolname varchar(50) not null,
 descripcion varchar(1000),
 addres varchar(50),
 phone varchar(50),
 postCode varchar(1000),
 postaddres varchar(50)
 );
 

 create table clase (
 classId int identity  primary key,
 escuelaid int not null ,
 classname varchar(50) not null,
 descripcion varchar(1000),
 foreign key (escuelaid) references escuela(escuelaid)
 );

 create procedure  consulta
 @escuelaid as int 
 as
 begin 
	select * from  escuela where escuelaid = @escuelaid
	end 

	create procedure insertar 

 @schoolname varchar(50),
 @descripcion varchar(1000),
 @addres varchar(50),
 @phone varchar(50),
 @postCode varchar(1000),
 @postaddres varchar(50)
	as 
	begin 
	insert into escuela(schoolname,descripcion,addres,phone,postCode,postaddres) 
	values(@schoolname,@descripcion,@addres,@phone,@postCode, @postaddres)
	end

	create procedure borrarescuela
	@escuelaid int 
	as

	begin
	delete escuela where escuelaid = @escuelaid 

	end

	create procedure modificarescuela 
	@escuelaid int,
	 @schoolname varchar(50),
 @descripcion varchar(1000),
 @addres varchar(50),
 @phone varchar(50),
 @postCode varchar(1000),
 @postaddres varchar(50)

 as
	begin 
		update escuela set escuelaid = @escuelaid, schoolname =@schoolname,descripcion=@descripcion,addres=@addres,
		phone=@phone,postCode=@postCode,postaddres=@postaddres
		
		end

	CREATE PROCEDURE MostrarEscuelas
AS
BEGIN
    SELECT 
        escuelaid, 
        schoolname, 
        descripcion, 
        addres, 
        phone 
    FROM escuela;
END;


////C		 R		U		D   de clases////


CREATE PROCEDURE MostrarClases
AS
BEGIN
    SELECT 
        classId, 
        escuelaid, 
        classname, 
        descripcion 
    FROM clase;
END;


CREATE PROCEDURE InsertarClase
    @escuelaid INT,
    @classname VARCHAR(50),
    @descripcion VARCHAR(1000)
AS
BEGIN
    INSERT INTO clase (escuelaid, classname, descripcion)
    VALUES (@escuelaid, @classname, @descripcion);
END;


CREATE PROCEDURE BorrarClase
    @classId INT
AS
BEGIN
    DELETE FROM clase
    WHERE classId = @classId;
END;


	CREATE PROCEDURE ModificarClase
    @classId INT,
    @classname VARCHAR(50),
    @descripcion VARCHAR(1000)
AS
BEGIN
    UPDATE clase
    SET 
        classname = @classname,
        descripcion = @descripcion
    WHERE classId = @classId;
END;



CREATE PROCEDURE MostrarClasesPorEscuela
    @escuelaid INT
AS
BEGIN
    SELECT 
        classId, 
        classname, 
        descripcion 
    FROM clase
    WHERE escuelaid = @escuelaid;
END;





