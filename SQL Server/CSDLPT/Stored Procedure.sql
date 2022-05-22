-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROC ShowAllSender
AS

BEGIN
	SELECT * FROM tblSender;
END

go

CREATE PROC AddNewSender
	@id VARCHAR(100),
	@name VARCHAR(100),
	@address VARCHAR(100),
	@phone VARCHAR(100)
AS
BEGIN
	INSERT INTO tblSender (id, name, address, phone)
	VALUES (@id, @name, @address, @phone)
END
go