USE [master]
GO
/****** Object:  Database [PRJ301_SP22_SP1]    Script Date: 3/22/2022 11:56:25 PM ******/
CREATE DATABASE [PRJ301_SP22_SP1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SP22_SP1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_SP22_SP1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SP22_SP1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_SP22_SP1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SP22_SP1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_SP22_SP1', N'ON'
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET QUERY_STORE = OFF
GO
USE [PRJ301_SP22_SP1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/22/2022 11:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_email] [nvarchar](50) NOT NULL,
	[account_password] [nvarchar](30) NOT NULL,
	[account_name] [nvarchar](30) NOT NULL,
	[account_phone] [nvarchar](10) NOT NULL,
	[account_address] [nvarchar](100) NOT NULL,
	[account_role] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/22/2022 11:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/22/2022 11:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[phone_number] [varchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[note] [nvarchar](50) NULL,
	[status] [varchar](1) NOT NULL,
	[total_money] [float] NOT NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 3/22/2022 11:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[num] [int] NULL,
	[total_money] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/22/2022 11:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [nvarchar](50) NOT NULL,
	[Product_price] [float] NOT NULL,
	[Product_quantity] [int] NOT NULL,
	[Product_image] [nvarchar](50) NOT NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (1, N'anhtu@gmail.com', N'anhtu', N'anhtu99', N'0329139333', N'Ha Noi', 0)
INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (2, N'admin@gmail.com', N'admin', N'admin', N'0329999999', N'Ha Noi', 1)
INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (3, N'phong@gmail.com', N'12345', N'phongtran', N'0321111111', N'Hai Duong', 0)
INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (4, N'haiba@gmail.com', N'1234', N'haiba', N'0913333333', N'Hai Phong', 0)
INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (9, N'vanquy@gmail.com', N'12345', N'vanquy', N'0329139332', N'Hai Phong', 0)
INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (10, N'tung@gmail.com', N'12345', N'tung', N'032123412', N'Ha Noi', 0)
INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_role]) VALUES (13, N'admin2@gmail.com', N'admin2', N'admin2', N'0329139555', N'Ha Noi', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'T-Shirt')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Pants')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Short')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Accessory')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (1, N'Ba Hai', N'0329139333', N'Hai Duong', N'Ship trong tuan
', N'1', 290000, CAST(N'2022-03-21' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (2, N'Le Hai Phong', N'098312312', N'Cau giay HA Noi', N'Ship gio hanh chinh', N'2', 900000, CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (3, N'anhtu99', N'0329139333', N'Ha Noi', N'ship tat ca cac ngay trong tuan', N'1', 445000, CAST(N'2022-03-19' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (4, N'tung', N'032123412', N'Ha Noi', N'ship trong ngay', N'1', 630000, CAST(N'2022-03-18' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (5, N'haiba', N'0913333333', N'Hai Phong', N'Ship gio hanh chinh', N'1', 670000, CAST(N'2022-03-18' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (6, N'haiba', N'0913333333', N'Hai Phong', N'Ship trong tuan', N'1', 630000, CAST(N'2022-03-17' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (7, N'phongtran', N'0321111111', N'Hai Duong', N'Ship cac ngay trong tuan', N'1', 655000, CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (8, N'Minh Duc', N'0932123123', N'Ho Chi Minh', N' Ship trong tuan', N'0', 250000, CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (9, N'Van Phu', N'0923151111', N'Hai Duong', N'Ship trong tuan      ', N'0', 530000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (10, N'Le VAn Duc', N'0329139999', N'Cau giay Ha noi', N'Ship trong gio hanh chinh         ', N'0', 2050000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (11, N'Phong', N'0329139333', N'Ho Chi Minh', N'ship trong tuan
                               ', N'0', 1350000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (12, N'Long ', N'0329881231', N'Keangnam Ha Noi', N'Ship trong ngay                                   ', N'0', 250000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (13, N'anhtu99', N'0329139333', N'Ha Noi', N'Ship trong ngay 24/03', N'0', 700000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (14, N'Bui Lam', N'092312348', N'Ha Nam', N'Ship trong tuan                                   ', N'0', 2030000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (15, N'thu ha', N'092312453', N'Hung yen', N'ship trong tuan                                   ', N'0', 700000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (16, N'Phan Hai', N'032912312', N'Dai hoc FPT', N'Ship trong tuan                                   ', N'0', 1010000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (17, N'Huu Dat', N'0329139999', N'Dai hoc FPT', N'ship nhanh                                        ', N'0', 290000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (18, N'Tuan Anh', N'0888127512', N'Duy Tan Cau Giay Ha Noi', N'Ship trong ngay                                   ', N'0', 640000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (19, N'Le Tai', N'0129241248', N'Xuan Thuy Ha Noi', N'ship som                                          ', N'0', 190000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (20, N'Tran Nga', N'0928312411', N'Truong Chinh Ha Noi', N'ship trong ngay                                   ', N'0', 300000, CAST(N'2022-03-22' AS Date))
INSERT [dbo].[Order] ([id], [fullname], [phone_number], [address], [note], [status], [total_money], [Date]) VALUES (21, N'BUi thu ha', N'092318241', N'An Thi Hung Yen', N'Ship trong gio hanh chinh                         ', N'0', 800000, CAST(N'2022-03-22' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (2, 1, 2, 290000, 1, 290000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (3, 2, 3, 300000, 3, 900000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (4, 3, 4, 190000, 1, 190000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (5, 3, 5, 255000, 1, 255000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (6, 4, 8, 400000, 1, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (7, 4, 6, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (8, 5, 4, 190000, 1, 190000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (9, 5, 16, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (10, 5, 1, 250000, 1, 250000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (11, 6, 6, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (12, 6, 7, 400000, 1, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (13, 7, 8, 400000, 1, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (14, 7, 5, 255000, 1, 255000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (15, 8, 1, 250000, 1, 250000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (16, 9, 3, 300000, 1, 300000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (17, 9, 6, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (18, 10, 1, 250000, 2, 500000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (19, 10, 10, 350000, 1, 350000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (20, 10, 8, 400000, 1, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (21, 10, 7, 400000, 2, 800000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (22, 11, 9, 350000, 1, 350000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (23, 11, 1, 250000, 4, 1000000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (24, 12, 15, 250000, 1, 250000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (25, 13, 11, 470000, 1, 470000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (26, 13, 17, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (27, 14, 2, 290000, 2, 580000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (28, 14, 1, 250000, 1, 250000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (29, 14, 3, 300000, 4, 1200000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (30, 15, 11, 470000, 1, 470000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (31, 15, 6, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (32, 16, 2, 290000, 1, 290000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (33, 16, 3, 300000, 1, 300000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (34, 16, 4, 190000, 1, 190000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (35, 16, 6, 230000, 1, 230000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (36, 17, 2, 290000, 1, 290000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (37, 18, 2, 290000, 1, 290000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (38, 18, 9, 350000, 1, 350000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (39, 19, 4, 190000, 1, 190000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (40, 20, 3, 300000, 1, 300000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [num], [total_money]) VALUES (41, 21, 13, 400000, 2, 800000)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (1, N'Bariss Tshirt', 250000, 99, N'img1.jpg', 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (2, N'Essential Tshirt Logo
', 290000, 90, N'img2.jpg', 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (3, N'Goodvibe Tshirt
', 300000, 99, N'img3.jpg', 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (4, N'Sea Cuban Shirt
', 190000, 100, N'img4.jpg', 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (5, N'Race Track Shirt
', 255000, 100, N'img5.jpg', 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (6, N'Dusk Cuban Shirt', 230000, 100, N'img6.jpg', 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (7, N'Utility Short
', 400000, 100, N'img7.jpg', 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (8, N'Utility Short
Black', 400000, 100, N'img8.jpg', 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (9, N'Utility Pod Short Black
', 350000, 100, N'img9.jpg', 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (10, N'Utility Pod Short
', 350000, 100, N'img10.jpg', 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (11, N'Essential Sweatpant
', 470000, 90, N'img14.jpg', 2)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (12, N'Essential Sweatpant
Black', 470000, 80, N'img15.jpg', 2)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (13, N'Pocket Cargo Pant
', 400000, 78, N'img16.jpg', 2)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (14, N'Cargo Pants', 490000, 70, N'img17.jpg', 2)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (15, N'Fishing Hat
', 250000, 70, N'img11.jpg', 4)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (16, N'Fishing Hat
 Black', 230000, 100, N'img12.jpg', 4)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Product_price], [Product_quantity], [Product_image], [category_id]) VALUES (17, N'Flame Cap
', 230000, 90, N'img13.jpg', 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([Product_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SP22_SP1] SET  READ_WRITE 
GO
