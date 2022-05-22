

--SELECT * FROM dbo.tblOrder
EXEC dbo.AddNewOrder @id = '7',          -- varchar(100)
                     @senderId = 'ND1',    -- varchar(100)
                     @receiverId = 'ND1',  -- varchar(100)
                     @distributeId = '3' -- varchar(100)

GO
--SELECT * FROM dbo.tblProduct
EXEC dbo.AddNewProduct @id = '7',     -- varchar(100)
                       @name = 'Book Harry Potter',   -- varchar(100)
                       @note = 'Book',   -- varchar(100)
                       @price = 1000.0, -- float
                       @orderId = '7' -- varchar(100)

GO
--SELECT * FROM dbo.tblBill
EXEC dbo.AddNewBill @id = '7',          -- varchar(100)
                    @description = '', -- varchar(100)
                    @shipperId = 'ND1',   -- varchar(100)
                    @userId = 'ND1',      -- varchar(100)
                    @orderId = '7'      -- varchar(100)
