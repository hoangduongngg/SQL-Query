SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Hoang Duong>
-- Create date: <Create 01:00' 23.05.2022>
-- Description:	<Create new Order in COM4. Use Link Server & Stored Procedure>
-- =============================================
CREATE PROCEDURE AddNewSender_LINK4
	@id VARCHAR(100),
	@name VARCHAR(100),
	@address VARCHAR(100),
	@phone VARCHAR(100)
AS
BEGIN
	INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblSender
	(
	    id,
	    name,
	    address,
	    phone
	)
	VALUES
	(   @id,  -- id - varchar(100)
	    @name,  -- name - varchar(100)
	    @address,  -- address - varchar(100)
	    @phone  -- phone - varchar(100)
	 )
END

GO
EXEC dbo.AddNewSender_LINK4 @id = 'HY100',      -- varchar(100)
                            @name = 'Hoang Duong',    -- varchar(100)
                            @address = 'Hung Yen', -- varchar(100)
                            @phone = '0123456789'    -- varchar(100)

GO

CREATE PROC AddNewReceiver_LINK4
@id VARCHAR(100),
	@name VARCHAR(100),
	@address VARCHAR(100),
	@phone VARCHAR(100)
AS
BEGIN
	INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblReceiver
	(
	    id,
	    name,
	    address,
	    phone
	)
	VALUES
	(   @id,  -- id - varchar(100)
	    @name,  -- name - varchar(100)
	    @address,  -- address - varchar(100)
	    @phone  -- phone - varchar(100)
	 )
END

GO
EXEC dbo.AddNewReceiver_LINK4 @id = 'HY100',      -- varchar(100)
                              @name = 'Nam Duong',    -- varchar(100)
                              @address = 'Hung Yen', -- varchar(100)
                              @phone = '9546321'    -- varchar(100)
GO

CREATE PROC AddNewOrder_LINK4
	@id VARCHAR(100),
	@senderId VARCHAR(100),
	@receiverId VARCHAR(100)
AS
BEGIN
	INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblOrder
	(
	    id,
	    senderId,
	    receiverId,
	    distributeId
	)
	VALUES
	(   '',  -- id - varchar(100)
	    '',  -- senderId - varchar(100)
	    '',  -- receiverId - varchar(100)
	    '4'  -- distributeId - varchar(100)
	    )
END

GO

EXEC dbo.AddNewOrder_LINK4 @id = '100',        -- varchar(100)
                           @senderId = 'HY100',  -- varchar(100)
                           @receiverId = 'HY100' -- varchar(100)

GO

