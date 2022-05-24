--sender,shipper, product , user da co
-- chuyen product tu 1 sender sang 1 receiver
-- shipper doi phuong
-- tat ca cac hoat dong lien quan den chuyen hang

SELECT * FROM dbo.tblReceiver
SELECT * FROM dbo.tblSender
SELECT * FROM LINK4.DELIVERY_MANAGEMENT.dbo.tblProduct
SELECT * FROM LINK4.DELIVERY_MANAGEMENT.dbo.tblOrder
SELECT * FROM dbo.tblProduct



BEGIN TRANSACTION
	
	INSERT INTO DELIVERY_MANAGEMENT.dbo.tblOrder
	(
	    id,
	    senderId,
	    receiverId,
	    distributeId
	)
	VALUES
	(   '10',  -- id - varchar(100)
	    'HY1',  -- senderId - varchar(100)
	    'HY1',  -- receiverId - varchar(100)
	    '4'  -- distributeId - varchar(100)
	    )

	GO
    
	INSERT INTO LINK4.DELIVERY_MANAGEMENT.dbo.tblBill
	(
	    id,
	    description,
	    orderAt,
	    receivedAt,
	    shipperId,
	    userId,
	    orderId
	)
	VALUES
	(   '10',        -- id - varchar(100)
	    '',        -- description - varchar(100)
	    GETDATE(), -- orderAt - date
	    GETDATE(), -- receivedAt - date
	    'HY1',        -- shipperId - varchar(100)
	    'HY1',        -- userId - varchar(100)
	    '10'        -- orderId - varchar(100)
	    )

COMMIT TRANSACTION
