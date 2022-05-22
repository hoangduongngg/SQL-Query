EXEC dbo.AddNewSender_LINK4 @id = 'HY100',      -- varchar(100)
                            @name = 'Hoang Duong',    -- varchar(100)
                            @address = 'Hung Yen', -- varchar(100)
                            @phone = '0123456789'    -- varchar(100)

GO
--=============================================
EXEC dbo.AddNewReceiver_LINK4 @id = 'HY100',      -- varchar(100)
                              @name = 'Nam Duong',    -- varchar(100)
                              @address = 'Hung Yen', -- varchar(100)
                              @phone = '9546321'    -- varchar(100)
GO
--=============================================
EXEC dbo.AddNewOrder_LINK4 @id = '100',        -- varchar(100)
                           @senderId = 'HY100',  -- varchar(100)
                           @receiverId = 'HY100' -- varchar(100)

GO
--=============================================
EXEC dbo.AddNewProduct_LINK4 @id = '100',     -- varchar(100)
                             @name = 'MacBook M1',   -- varchar(100)
                             @note = 'Laptop',   -- varchar(100)
                             @price = 100.0, -- float
                             @orderId = '100' -- varchar(100)

GO