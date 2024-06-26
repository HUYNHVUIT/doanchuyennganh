USE [master]
GO
/****** Object:  Database [ShopPhuKien]    Script Date: 07/04/2024 11:15:55 CH ******/
CREATE DATABASE [ShopPhuKien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopPhuKien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopPhuKien.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopPhuKien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopPhuKien_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopPhuKien] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopPhuKien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopPhuKien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopPhuKien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopPhuKien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopPhuKien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopPhuKien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopPhuKien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopPhuKien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopPhuKien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopPhuKien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopPhuKien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopPhuKien] SET  MULTI_USER 
GO
ALTER DATABASE [ShopPhuKien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopPhuKien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopPhuKien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopPhuKien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopPhuKien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopPhuKien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopPhuKien', N'ON'
GO
ALTER DATABASE [ShopPhuKien] SET QUERY_STORE = OFF
GO
USE [ShopPhuKien]
GO
/****** Object:  Table [dbo].[AccessTimesCount]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessTimesCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[AccessTimes] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AccessTimesCount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Ages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decentralization]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decentralization](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[UserTypeID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Decentralization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[NumberDiscount] [int] NULL,
	[UserID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCodeDetail]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCodeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCodeID] [int] NULL,
	[Code] [nvarchar](20) NULL,
	[IsUsed] [bit] NULL,
	[IsOwned] [bit] NULL,
 CONSTRAINT [PK_DiscountCodeDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCoupon]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCoupon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[UserID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCoupon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCouponDetail]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCouponDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportCouponID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCouponDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCart]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Sent] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateOrder] [datetime] NOT NULL,
	[DateShip] [datetime] NOT NULL,
	[Offer] [int] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsCancel] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsDelivere] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[IsReceived] [bit] NOT NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsRating] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Producer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[ParentID] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryParent]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryParent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SeoKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategoryParent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image1] [nvarchar](256) NULL,
	[Image2] [nvarchar](256) NULL,
	[Image3] [nvarchar](256) NULL,
	[Image4] [nvarchar](256) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[PurchasedCount] [int] NULL,
	[ProducerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[AgeID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductViewed]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductViewed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ProductViewed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QA]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserAskID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Question] [nvarchar](1000) NULL,
	[Answer] [nvarchar](1000) NULL,
	[DateQuestion] [datetime] NULL,
	[DateAnswer] [datetime] NULL,
	[UserAnswerID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.QA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Rating] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameDisplay] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Capcha] [nvarchar](max) NULL,
	[AmountPurchased] [decimal](18, 0) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDiscountCode]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DiscountCodeDetailID] [int] NULL,
 CONSTRAINT [PK_UserDiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSpin]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSpin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NumberOfSpins] [int] NULL,
 CONSTRAINT [PK_UsersSpin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Decentralization] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [UserID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [SupplierID]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsDelivere]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsReceived]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [IsRating]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__AgeID__0D7A0286]  DEFAULT ((0)) FOR [AgeID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Gender__1AD3FDA4]  DEFAULT ((0)) FOR [GenderID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Discou__1CBC4616]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ProductViewed] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Date]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_Decentralization_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_Decentralization_UserType]
GO
ALTER TABLE [dbo].[DiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[DiscountCode] CHECK CONSTRAINT [FK_DiscountCode_User]
GO
ALTER TABLE [dbo].[DiscountCodeDetail]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCodeDetail_DiscountCode] FOREIGN KEY([DiscountCodeID])
REFERENCES [dbo].[DiscountCode] ([ID])
GO
ALTER TABLE [dbo].[DiscountCodeDetail] CHECK CONSTRAINT [FK_DiscountCodeDetail_DiscountCode]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID] FOREIGN KEY([ImportCouponID])
REFERENCES [dbo].[ImportCoupon] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.User_UserID]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([FromUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([ToUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ProductCategoryParent] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Ages_AgeID] FOREIGN KEY([AgeID])
REFERENCES [dbo].[Age] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Ages_AgeID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Gender_GenderID] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Gender_GenderID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.User_UserID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail] FOREIGN KEY([DiscountCodeDetailID])
REFERENCES [dbo].[DiscountCodeDetail] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_User]
GO
ALTER TABLE [dbo].[UsersSpin]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver') DROP SERVICE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') DROP SERVICE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver') DROP QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') DROP QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65') DROP CONTRACT [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/EndMessage') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver') DROP SERVICE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') DROP SERVICE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver') DROP QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') DROP QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b') DROP CONTRACT [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/EndMessage') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc') DROP CONTRACT [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8') DROP CONTRACT [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver') DROP SERVICE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') DROP SERVICE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver') DROP QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') DROP QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1') DROP CONTRACT [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/EndMessage') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver') DROP SERVICE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') DROP SERVICE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver') DROP QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') DROP QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0') DROP CONTRACT [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/EndMessage') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver') DROP SERVICE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') DROP SERVICE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver') DROP QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') DROP QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2') DROP CONTRACT [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/EndMessage') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver') DROP SERVICE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') DROP SERVICE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver') DROP QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') DROP QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac') DROP CONTRACT [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/EndMessage') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e') DROP CONTRACT [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender]    Script Date: 07/04/2024 11:15:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver') DROP SERVICE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') DROP SERVICE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver') DROP QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') DROP QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6') DROP CONTRACT [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/EndMessage') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver') DROP SERVICE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') DROP SERVICE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver') DROP QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') DROP QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a') DROP CONTRACT [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/EndMessage') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver') DROP SERVICE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') DROP SERVICE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver') DROP QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') DROP QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8') DROP CONTRACT [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/EndMessage') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver') DROP SERVICE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') DROP SERVICE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver') DROP QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') DROP QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504') DROP CONTRACT [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/EndMessage') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver') DROP SERVICE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') DROP SERVICE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver') DROP QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') DROP QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340') DROP CONTRACT [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/EndMessage') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver') DROP SERVICE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') DROP SERVICE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver') DROP QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') DROP QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363') DROP CONTRACT [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/EndMessage') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver') DROP SERVICE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') DROP SERVICE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver') DROP QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') DROP QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33') DROP CONTRACT [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/EndMessage') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver') DROP SERVICE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') DROP SERVICE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver') DROP QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') DROP QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5') DROP CONTRACT [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/EndMessage') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver') DROP SERVICE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') DROP SERVICE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver') DROP QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') DROP QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712') DROP CONTRACT [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/EndMessage') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver') DROP SERVICE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') DROP SERVICE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver') DROP QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') DROP QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a') DROP CONTRACT [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/EndMessage') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver') DROP SERVICE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') DROP SERVICE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver') DROP QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') DROP QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090') DROP CONTRACT [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/EndMessage') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver') DROP SERVICE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') DROP SERVICE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver') DROP QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') DROP QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59') DROP CONTRACT [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/EndMessage') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver') DROP SERVICE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') DROP SERVICE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver') DROP QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') DROP QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca') DROP CONTRACT [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/EndMessage') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver') DROP SERVICE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') DROP SERVICE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver') DROP QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') DROP QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459') DROP CONTRACT [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/EndMessage') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver') DROP SERVICE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') DROP SERVICE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver') DROP QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') DROP QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a') DROP CONTRACT [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/EndMessage') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39') DROP CONTRACT [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a') DROP CONTRACT [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver') DROP SERVICE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') DROP SERVICE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver') DROP QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') DROP QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70') DROP CONTRACT [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/EndMessage') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Receiver') DROP SERVICE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender') DROP SERVICE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Receiver') DROP QUEUE [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender') DROP QUEUE [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c') DROP CONTRACT [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ID') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ID/old') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/FromUserID') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ToUserID') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Content') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Content/old') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/CreatedDate') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Sent') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Sent/old') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/EndMessage') DROP MESSAGE TYPE [dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_d6af962f-1d2b-4a85-a238-c835287b600c_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Receiver') DROP SERVICE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender') DROP SERVICE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Receiver') DROP QUEUE [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender') DROP QUEUE [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa') DROP CONTRACT [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ID') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ID/old') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/FromUserID') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ToUserID') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Content') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Content/old') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/CreatedDate') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Sent') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Sent/old') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/EndMessage') DROP MESSAGE TYPE [dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_eb08a48c-aeb1-4d3b-be5a-5f634d04fefa_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver') DROP SERVICE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') DROP SERVICE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver') DROP QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') DROP QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e') DROP CONTRACT [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/EndMessage') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver') DROP SERVICE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') DROP SERVICE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver') DROP QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') DROP QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827') DROP CONTRACT [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/EndMessage') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver') DROP SERVICE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') DROP SERVICE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver') DROP QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') DROP QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9') DROP CONTRACT [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/EndMessage') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver') DROP SERVICE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') DROP SERVICE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver') DROP QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') DROP QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138') DROP CONTRACT [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/EndMessage') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver') DROP SERVICE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') DROP SERVICE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver') DROP QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') DROP QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393') DROP CONTRACT [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/EndMessage') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver') DROP SERVICE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') DROP SERVICE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver') DROP QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') DROP QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f') DROP CONTRACT [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/EndMessage') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver') DROP SERVICE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') DROP SERVICE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver') DROP QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') DROP QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b') DROP CONTRACT [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/EndMessage') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver') DROP SERVICE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') DROP SERVICE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver') DROP QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') DROP QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b') DROP CONTRACT [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/EndMessage') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver') DROP SERVICE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') DROP SERVICE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver') DROP QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') DROP QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d') DROP CONTRACT [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/EndMessage') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver') DROP SERVICE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') DROP SERVICE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver') DROP QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') DROP QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63') DROP CONTRACT [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/EndMessage') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver') DROP SERVICE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') DROP SERVICE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver') DROP QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') DROP QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0') DROP CONTRACT [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/EndMessage') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender];

        
    END
END

GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender]    Script Date: 07/04/2024 11:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver') DROP SERVICE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') DROP SERVICE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver') DROP QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') DROP QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789') DROP CONTRACT [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/EndMessage') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender];

        
    END
END

GO
USE [master]
GO
ALTER DATABASE [ShopPhuKien] SET  READ_WRITE 
GO
