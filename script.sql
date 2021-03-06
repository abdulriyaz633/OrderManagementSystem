USE [MyDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ShippingAddressUpdate]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ShippingAddressSelect]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ShippingAddressInsert]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ShippingAddressDelete]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ProductUpdate]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ProductSelect]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ProductInsert]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_ProductDelete]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderUpdate]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderStatusUpdate]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderStatusSelect]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderStatusInsert]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderStatusDelete]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderSelect]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderInsert]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_OrderDelete]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_BuyerInfoUpdate]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_BuyerInfoSelect]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_BuyerInfoInsert]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_tbl_BuyerInfoDelete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ShippingAddress]') AND type in (N'U'))
ALTER TABLE [dbo].[tbl_ShippingAddress] DROP CONSTRAINT IF EXISTS [FK_tbl_ShippingAddress_tbl_BuyerInfo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Order]') AND type in (N'U'))
ALTER TABLE [dbo].[tbl_Order] DROP CONSTRAINT IF EXISTS [FK_tbl_Order_tbl_ShippingAddress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Order]') AND type in (N'U'))
ALTER TABLE [dbo].[tbl_Order] DROP CONSTRAINT IF EXISTS [FK_tbl_Order_tbl_Product]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Order]') AND type in (N'U'))
ALTER TABLE [dbo].[tbl_Order] DROP CONSTRAINT IF EXISTS [FK_tbl_Order_tbl_OrderStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Order]') AND type in (N'U'))
ALTER TABLE [dbo].[tbl_Order] DROP CONSTRAINT IF EXISTS [FK_tbl_Order_tbl_BuyerInfo]
GO
/****** Object:  Table [dbo].[tbl_ShippingAddress]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP TABLE IF EXISTS [dbo].[tbl_ShippingAddress]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP TABLE IF EXISTS [dbo].[tbl_Product]
GO
/****** Object:  Table [dbo].[tbl_OrderStatus]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP TABLE IF EXISTS [dbo].[tbl_OrderStatus]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP TABLE IF EXISTS [dbo].[tbl_Order]
GO
/****** Object:  Table [dbo].[tbl_BuyerInfo]    Script Date: 2/3/2020 3:12:02 PM ******/
DROP TABLE IF EXISTS [dbo].[tbl_BuyerInfo]
GO
/****** Object:  Table [dbo].[tbl_BuyerInfo]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BuyerInfo](
	[BuyerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[ContactNo] [varchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_BuyerInfo] PRIMARY KEY CLUSTERED 
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[DateOfOrder] [datetime] NULL,
	[ShippingAddressId] [int] NULL,
	[OrderStatusId] [int] NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OrderStatus]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderStatus](
	[OrderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[Height] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[SKU] [int] NULL,
	[Barcode] [varchar](50) NULL,
	[AvailQuantity] [int] NULL,
	[CostPrice] [float] NULL,
	[SellingPrice] [float] NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ShippingAddress]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ShippingAddress](
	[ShippingAddressId] [int] IDENTITY(1,1) NOT NULL,
	[ContactPerson] [varchar](50) NULL,
	[DoorNo] [varchar](50) NULL,
	[Colony] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Pin] [varchar](50) NULL,
	[BuyerId] [int] NULL,
 CONSTRAINT [PK_tbl_ShippingAddress] PRIMARY KEY CLUSTERED 
(
	[ShippingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_OrderStatus] ON 

INSERT [dbo].[tbl_OrderStatus] ([OrderStatusId], [OrderStatus]) VALUES (1, N'Placed')
INSERT [dbo].[tbl_OrderStatus] ([OrderStatusId], [OrderStatus]) VALUES (2, N'Approved')
INSERT [dbo].[tbl_OrderStatus] ([OrderStatusId], [OrderStatus]) VALUES (3, N'Canceled')
INSERT [dbo].[tbl_OrderStatus] ([OrderStatusId], [OrderStatus]) VALUES (4, N'In Delivery')
INSERT [dbo].[tbl_OrderStatus] ([OrderStatusId], [OrderStatus]) VALUES (5, N'Completed')
SET IDENTITY_INSERT [dbo].[tbl_OrderStatus] OFF
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_BuyerInfo] FOREIGN KEY([BuyerId])
REFERENCES [dbo].[tbl_BuyerInfo] ([BuyerId])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_BuyerInfo]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[tbl_OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_OrderStatus]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tbl_Product] ([ProductId])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Product]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_ShippingAddress] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[tbl_ShippingAddress] ([ShippingAddressId])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_ShippingAddress]
GO
ALTER TABLE [dbo].[tbl_ShippingAddress]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ShippingAddress_tbl_BuyerInfo] FOREIGN KEY([BuyerId])
REFERENCES [dbo].[tbl_BuyerInfo] ([BuyerId])
GO
ALTER TABLE [dbo].[tbl_ShippingAddress] CHECK CONSTRAINT [FK_tbl_ShippingAddress_tbl_BuyerInfo]
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_BuyerInfoDelete]
		@BuyerId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tbl_BuyerInfo
		WHERE (BuyerId = @BuyerId OR @BuyerId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_BuyerInfoInsert]
	(
		@Name [varchar](50),
		@Address [nvarchar](max),
		@ContactNo [varchar](50),
		@Email [nvarchar](50),
		@Role [varchar](50)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tbl_BuyerInfo
	(
		Name, Address, ContactNo, Email, Role
	)
	VALUES
	(
		@Name,
		@Address,
		@ContactNo,
		@Email,
		@Role

	)
	SELECT BuyerId, Name, Address, ContactNo, Email, Role
	FROM dbo.tbl_BuyerInfo
	WHERE (BuyerId = SCOPE_IDENTITY())

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_BuyerInfoSelect]
		@BuyerId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT BuyerId, [Name], [Address], ContactNo, Email, [Role]
	FROM dbo.tbl_BuyerInfo
	WHERE (BuyerId = @BuyerId OR @BuyerId IS NULL)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_BuyerInfoUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_BuyerInfoUpdate]
	(
		@BuyerId [int],
		@Name [varchar](50),
		@Address [nvarchar](max),
		@ContactNo [varchar](50),
		@Email [nvarchar](50),
		@Role [varchar](50)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tbl_BuyerInfo
		SET  Name = @Name, Address = @Address, ContactNo = @ContactNo, Email = @Email, Role = @Role
		WHERE (BuyerId = @BuyerId OR @BuyerId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderDelete]
		@OrderId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tbl_Order
		WHERE (OrderId = @OrderId OR @OrderId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderInsert]
	(
		@BuyerId [int],
		@ProductId [int],
		@Quantity [int],
		@DateOfOrder [datetime],
		@ShippingAddressId [int],
		@OrderStatusId [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tbl_Order
	(
		BuyerId, ProductId, Quantity, DateOfOrder, ShippingAddressId, OrderStatusId
	)
	VALUES
	(
		@BuyerId,
		@ProductId,
		@Quantity,
		@DateOfOrder,
		@ShippingAddressId,
		@OrderStatusId

	)
	SELECT OrderId, BuyerId, ProductId, Quantity, DateOfOrder, ShippingAddressId, OrderStatusId
	FROM dbo.tbl_Order
	WHERE (OrderId = SCOPE_IDENTITY())

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderSelect]
		@OrderId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT OrderId, B.[Name] AS BuyerName, p.ProductName, Quantity, DateOfOrder, 
	tsa.ContactPerson, tsa.DoorNo, tsa.Colony, tsa.City, tsa.[State], tsa.Country, tsa.Pin,
	os.OrderStatus
	FROM dbo.tbl_Order o 
	JOIN dbo.tbl_BuyerInfo B ON o.BuyerId=b.BuyerId
	JOIN dbo.tbl_Product p ON o.ProductId = p.ProductId
	JOIN dbo.tbl_ShippingAddress tsa ON o.ShippingAddressId = tsa.ShippingAddressId
	JOIN tbl_OrderStatus os ON o.OrderStatusId=os.OrderStatusId
	WHERE (OrderId = @OrderId OR @OrderId IS NULL)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderStatusDelete]
		@OrderStatusId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tbl_OrderStatus
		WHERE (OrderStatusId = @OrderStatusId OR @OrderStatusId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderStatusInsert]
	(
		@OrderStatus [varchar](50)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tbl_OrderStatus
	(
		OrderStatus
	)
	VALUES
	(
		@OrderStatus

	)
	SELECT OrderStatusId, OrderStatus
	FROM dbo.tbl_OrderStatus
	WHERE (OrderStatusId = SCOPE_IDENTITY())

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderStatusSelect]
		@OrderStatusId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT OrderStatusId, OrderStatus
	FROM dbo.tbl_OrderStatus
	WHERE (OrderStatusId = @OrderStatusId OR @OrderStatusId IS NULL)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderStatusUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderStatusUpdate]
	(
		@OrderStatusId [int],
		@OrderStatus [varchar](50)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tbl_OrderStatus
		SET  OrderStatus = @OrderStatus
		WHERE (OrderStatusId = @OrderStatusId OR @OrderStatusId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_OrderUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_OrderUpdate]
	(
		@OrderId [int],
		@BuyerId [int],
		@ProductId [int],
		@Quantity [int],
		@DateOfOrder [datetime],
		@ShippingAddressId [int],
		@OrderStatusId [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tbl_Order
		SET  BuyerId = @BuyerId, ProductId = @ProductId, Quantity = @Quantity, DateOfOrder = @DateOfOrder, ShippingAddressId = @ShippingAddressId, OrderStatusId = @OrderStatusId
		WHERE (OrderId = @OrderId OR @OrderId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ProductDelete]
		@ProductId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tbl_Product
		WHERE (ProductId = @ProductId OR @ProductId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ProductInsert]
	(
		@ProductName [varchar](50),
		@Weight [varchar](50),
		@Height [varchar](50),
		@Image [varchar](50),
		@SKU [int],
		@Barcode [varchar](50),
		@AvailQuantity [int],
		@CostPrice [float],
		@SellingPrice [float]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tbl_Product
	(
		ProductName, [Weight], Height, [Image], SKU, Barcode, AvailQuantity, CostPrice, SellingPrice
	)
	VALUES
	(
		@ProductName,
		@Weight,
		@Height,
		@Image,
		@SKU,
		@Barcode,
		@AvailQuantity,
		@CostPrice,
		@SellingPrice

	)
	SELECT ProductId, ProductName, [Weight], Height, [Image], SKU, Barcode, AvailQuantity, CostPrice, SellingPrice
	FROM dbo.tbl_Product
	WHERE (ProductId = SCOPE_IDENTITY())

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ProductSelect]
		@ProductId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT ProductId, ProductName, [Weight], Height, [Image], SKU, Barcode, AvailQuantity, CostPrice, SellingPrice
	FROM dbo.tbl_Product
	WHERE (ProductId = @ProductId OR @ProductId IS NULL)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ProductUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ProductUpdate]
	(
		@ProductId [int],
		@ProductName [varchar](50),
		@Weight [varchar](50),
		@Height [varchar](50),
		@Image [varchar](50),
		@SKU [int],
		@Barcode [varchar](50),
		@AvailQuantity [int],
		@CostPrice [float],
		@SellingPrice [float]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tbl_Product
		SET  ProductName = @ProductName, Weight = @Weight, Height = @Height, Image = @Image, SKU = @SKU, Barcode = @Barcode, AvailQuantity = @AvailQuantity, CostPrice = @CostPrice, SellingPrice = @SellingPrice
		WHERE (ProductId = @ProductId OR @ProductId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressDelete]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ShippingAddressDelete]
		@ShippingAddressId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tbl_ShippingAddress
		WHERE (ShippingAddressId = @ShippingAddressId OR @ShippingAddressId IS NULL)
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressInsert]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ShippingAddressInsert]
	(
		@ContactPerson [varchar](50),
		@DoorNo [varchar](50),
		@Colony [varchar](50),
		@City [varchar](50),
		@State [varchar](50),
		@Country [varchar](50),
		@Pin [varchar](50),
		@BuyerId [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tbl_ShippingAddress
	(
		ContactPerson, DoorNo, Colony, City, [State], Country, Pin, BuyerId
	)
	VALUES
	(
		@ContactPerson,
		@DoorNo,
		@Colony,
		@City,
		@State,
		@Country,
		@Pin,
		@BuyerId

	)
	SELECT ShippingAddressId, ContactPerson, DoorNo, Colony, City, [State], Country, Pin, BuyerId
	FROM dbo.tbl_ShippingAddress
	WHERE (ShippingAddressId = SCOPE_IDENTITY())

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressSelect]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ShippingAddressSelect]
		@ShippingAddressId [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT ShippingAddressId, ContactPerson, DoorNo, Colony, City, [State], Country, Pin,
	tbi.[Name] AS BuyerName
	FROM dbo.tbl_ShippingAddress tsa
	JOIN dbo.tbl_BuyerInfo tbi ON tsa.BuyerId=tbi.BuyerId
	WHERE (ShippingAddressId = @ShippingAddressId OR @ShippingAddressId IS NULL)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ShippingAddressUpdate]    Script Date: 2/3/2020 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tbl_ShippingAddressUpdate]
	(
		@ShippingAddressId [int],
		@ContactPerson [varchar](50),
		@DoorNo [varchar](50),
		@Colony [varchar](50),
		@City [varchar](50),
		@State [varchar](50),
		@Country [varchar](50),
		@Pin [varchar](50),
		@BuyerId [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tbl_ShippingAddress
		SET  ContactPerson = @ContactPerson, DoorNo = @DoorNo, Colony = @Colony, City = @City, State = @State, Country = @Country, Pin = @Pin, BuyerId = @BuyerId
		WHERE (ShippingAddressId = @ShippingAddressId OR @ShippingAddressId IS NULL)
	COMMIT
GO
