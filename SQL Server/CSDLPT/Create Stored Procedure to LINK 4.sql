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


--=============================================
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

--=============================================
CREATE PROC AddNewShipper_LINK4
	@id VARCHAR(100),
	@name VARCHAR(100),
	@phone VARCHAR(100),
	@salary FLOAT
AS
BEGIN
    INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblShipper
    (
        id,
        name,
        phone,
        salary,
        postOfficeId
    )
    VALUES
    (   @id,  -- id - varchar(100)
        @name,  -- name - varchar(100)
        @phone,  -- phone - varchar(100)
        @salary, -- salary - float
        'HY'  -- postOfficeId - varchar(100)
        )
END
GO
--=============================================
CREATE PROC AddNewUser_LINK4
	@id VARCHAR(100),
	@username VARCHAR(100),
	@password VARCHAR(100),
	@address VARCHAR(100),
	@phone VARCHAR(100),
	@position VARCHAR(100),
	@salary FLOAT
AS
BEGIN
    INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblUser
    (
        id,
        username,
        password,
        address,
        phone,
        position,
        salary,
        postOfficeId
    )
    VALUES
    (   @id,  -- id - varchar(100)
        @username,  -- username - varchar(100)
        @password,  -- password - varchar(100)
        @address,  -- address - varchar(100)
        @phone,  -- phone - varchar(100)
        @position,  -- position - varchar(100)
        @salary, -- salary - float
        'HY'  -- postOfficeId - varchar(100)
        )
END
GO

--=============================================

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


--=============================================
CREATE PROC AddNewProduct_LINK4
	@id VARCHAR(100),
	@name VARCHAR(100),
	@note VARCHAR(100),
	@price FLOAT,
	@orderId VARCHAR(100)
	
AS
BEGIN
	INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblProduct
	(
	    id,
	    name,
	    note,
	    price,
	    orderId
	)
	VALUES
	(   @id,  -- id - varchar(100)
	    @name,  -- name - varchar(100)
	    @note,  -- note - varchar(100)
	    @price, -- price - float
	    @orderId  -- orderId - varchar(100)
	    )
END
GO

--=============================================

CREATE PROC AddNewBill_LINK4
	@id VARCHAR(100),
	@description VARCHAR(100),
	@shipperId VARCHAR(100),
	@userId VARCHAR(100),
	@orderId VARCHAR(100)
AS
BEGIN
    INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblBill
    (
        id,
        description,
        shipperId,
        userId,
        orderId
    )
    VALUES
    (   @id,        -- id - varchar(100)
        @description,        -- description - varchar(100)
        GETDATE(), -- orderAt - date
        GETDATE(), -- receivedAt - date
        @shipperId,        -- shipperId - varchar(100)
        @userId,        -- userId - varchar(100)
        @orderId        -- orderId - varchar(100)
        )
END
GO



