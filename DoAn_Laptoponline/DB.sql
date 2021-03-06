USE [master]
GO
/****** Object:  Database [Shoplaptop]    Script Date: 05/15/2021 19:44:42 ******/
CREATE DATABASE [Shoplaptop] ON  PRIMARY 
( NAME = N'Shoplaptop', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Shoplaptop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shoplaptop_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Shoplaptop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shoplaptop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shoplaptop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shoplaptop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Shoplaptop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Shoplaptop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Shoplaptop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Shoplaptop] SET ARITHABORT OFF
GO
ALTER DATABASE [Shoplaptop] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Shoplaptop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Shoplaptop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Shoplaptop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Shoplaptop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Shoplaptop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Shoplaptop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Shoplaptop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Shoplaptop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Shoplaptop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Shoplaptop] SET  DISABLE_BROKER
GO
ALTER DATABASE [Shoplaptop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Shoplaptop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Shoplaptop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Shoplaptop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Shoplaptop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Shoplaptop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Shoplaptop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Shoplaptop] SET  READ_WRITE
GO
ALTER DATABASE [Shoplaptop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Shoplaptop] SET  MULTI_USER
GO
ALTER DATABASE [Shoplaptop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Shoplaptop] SET DB_CHAINING OFF
GO
USE [Shoplaptop]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 05/15/2021 19:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNSX] [nchar](10) NULL,
	[TenSP] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01     ', N'IPHONE9', N'Chua xd', N'1.png', NULL, NULL, NULL, NULL, 8000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX01     ', N'IPHONE10', N'Chua xd', N'2.png', NULL, NULL, NULL, NULL, 9000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP02', N'NSX01     ', N'IPHONE7', N'Chua xd', N'3.png', NULL, NULL, NULL, NULL, 5000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP03', N'NSX01     ', N'IPHONE12', N'Chua xd', N'4.png', NULL, NULL, NULL, NULL, 11000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX02     ', N'SAMSUNG1', N'Chua xd', N'5.png', NULL, NULL, NULL, NULL, 8500000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP01', N'NSX02     ', N'SAMSUNG2', N'Chua xd', N'6.png', NULL, NULL, NULL, NULL, 7000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP02', N'NSX02     ', N'SAMSUNG3', N'Chua xd', N'7.png', NULL, NULL, NULL, NULL, 4000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP03', N'NSX02     ', N'SAMSUNG4', N'Chua xd', N'8.png', NULL, NULL, NULL, NULL, 8000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP01', N'NSX03     ', N'VIVO', N'Chua xd', N'9.png', NULL, NULL, NULL, NULL, 8000000, NULL, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'LSP01', N'NSX03     ', N'VIVO PRO', N'Chua xd', N'10.png', NULL, NULL, NULL, NULL, 8000000, NULL, 0, N'0         ')
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 05/15/2021 19:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [nvarchar](10) NULL,
	[TenNSX] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NSX01', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NSX02', N'Samsung')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NSX03', N'Oppo')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NSX04', N'Vivo')
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 05/15/2021 19:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP02', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP03', N'Trung Bình')
