USE [master]
GO
/****** Object:  Database [ShopLinhKien]    Script Date: 3/20/2021 7:58:38 PM ******/
CREATE DATABASE [ShopLinhKien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopLinhKien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopLinhKien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopLinhKien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopLinhKien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopLinhKien] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopLinhKien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopLinhKien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopLinhKien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopLinhKien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopLinhKien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopLinhKien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopLinhKien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShopLinhKien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopLinhKien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopLinhKien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopLinhKien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopLinhKien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopLinhKien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopLinhKien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopLinhKien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopLinhKien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopLinhKien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopLinhKien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopLinhKien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopLinhKien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopLinhKien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopLinhKien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopLinhKien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopLinhKien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopLinhKien] SET  MULTI_USER 
GO
ALTER DATABASE [ShopLinhKien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopLinhKien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopLinhKien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopLinhKien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopLinhKien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopLinhKien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopLinhKien] SET QUERY_STORE = OFF
GO
USE [ShopLinhKien]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAdmin] [char](10) NOT NULL,
	[UserAd] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangKhuyenMai]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangKhuyenMai](
	[MaKM] [char](10) NOT NULL,
	[TienKM] [int] NULL,
	[TiLeKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [char](10) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [date] NULL,
	[LuotThich] [int] NULL,
	[MaSP] [char](10) NULL,
	[MaND] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTGioHang]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTGioHang](
	[MaGH] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuXuat]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuXuat](
	[MaPX] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGH] [char](10) NOT NULL,
	[MaND] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiND]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiND](
	[MaLoaiND] [char](10) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
	[SoDinhDanh] [int] NULL,
	[MaKM] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [char](10) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[URLAnh] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [char](10) NOT NULL,
	[SDT] [varchar](50) NULL,
	[GioiTinh] [char](10) NULL,
	[Tuoi] [int] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[UserName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[MaLoaiND] [char](10) NULL,
	[TenND] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [char](10) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [varchar](50) NULL,
	[Email] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNCC] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPX] [char](10) NOT NULL,
	[NgayDat] [date] NULL,
	[NgayShip] [date] NULL,
	[MaND] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Code] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](10) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[GiaKM] [int] NULL,
	[URLAnh] [varchar](max) NULL,
	[MaLoaiSP] [char](10) NULL,
	[MaKM] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleId] [uniqueidentifier] NOT NULL,
	[UserId] [char](10) NOT NULL,
	[Note] [nvarchar](250) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([MaAdmin], [UserAd], [Email], [Pass]) VALUES (N'ad1       ', N'lam', N'buihoanglam99@gmail.com', N'123456')
INSERT [dbo].[Admin] ([MaAdmin], [UserAd], [Email], [Pass]) VALUES (N'ad2       ', N'linh', N'linh@gmail.com', N'123456')
INSERT [dbo].[Admin] ([MaAdmin], [UserAd], [Email], [Pass]) VALUES (N'ad3       ', N'dat', N'dat@gmail.com', N'123456')
GO
INSERT [dbo].[BangKhuyenMai] ([MaKM], [TienKM], [TiLeKM]) VALUES (N'mkm1      ', 100000, 0)
INSERT [dbo].[BangKhuyenMai] ([MaKM], [TienKM], [TiLeKM]) VALUES (N'mkm2      ', 0, 5)
GO
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [NgayDang], [LuotThich], [MaSP], [MaND]) VALUES (N'bl1       ', N'Sản phẩm tốt', CAST(N'2020-01-01' AS Date), 2, N'sp1       ', N'nd1       ')
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [NgayDang], [LuotThich], [MaSP], [MaND]) VALUES (N'bl2       ', N'Sản phẩm tốt lắm!', CAST(N'2020-01-02' AS Date), 3, N'sp1       ', N'nd2       ')
GO
INSERT [dbo].[CTGioHang] ([MaGH], [MaSP], [SoLuong]) VALUES (N'gh1       ', N'sp1       ', 1)
INSERT [dbo].[CTGioHang] ([MaGH], [MaSP], [SoLuong]) VALUES (N'gh2       ', N'sp2       ', 2)
GO
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN00000001', N'sp10      ', 10, 1500000)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN00000001', N'sp24      ', 15, 1500000)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN00000002', N'sp10      ', 20, 1500000)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN00000002', N'sp12      ', 20, 1200000)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN00000002', N'sp25      ', 20, 1000000)
GO
INSERT [dbo].[CTPhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'PX00000001', N'sp1       ', 10)
INSERT [dbo].[CTPhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'PX00000001', N'sp11      ', 15)
INSERT [dbo].[CTPhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'px1       ', N'sp1       ', 1)
INSERT [dbo].[CTPhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'px2       ', N'sp1       ', 10)
INSERT [dbo].[CTPhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'px2       ', N'sp10      ', 15)
INSERT [dbo].[CTPhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'px2       ', N'sp2       ', 5)
GO
INSERT [dbo].[GioHang] ([MaGH], [MaND]) VALUES (N'gh1       ', N'nd1       ')
INSERT [dbo].[GioHang] ([MaGH], [MaND]) VALUES (N'gh2       ', N'nd2       ')
GO
INSERT [dbo].[LoaiND] ([MaLoaiND], [TenLoai], [SoDinhDanh], [MaKM]) VALUES (N'lnd1      ', N'Khách vãng lai', 1, NULL)
INSERT [dbo].[LoaiND] ([MaLoaiND], [TenLoai], [SoDinhDanh], [MaKM]) VALUES (N'lnd2      ', N'Khách quen', 2, NULL)
INSERT [dbo].[LoaiND] ([MaLoaiND], [TenLoai], [SoDinhDanh], [MaKM]) VALUES (N'lnd3      ', N'Khách vip', 3, N'mkm1      ')
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp001    ', N'CPU ', N'Bộ vi xử lý', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp002    ', N'Mainboard', N'Bo mạch chủ ', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp003    ', N'RAM', N'Bộ nhớ trong', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp004    ', N'Ổ cứng HDD', N'', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp005    ', N'Ổ cứng SSD', N'', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp006    ', N'ODD', N'Ổ đĩa quang', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp007    ', N'VGA', N'Card Màn Hình', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp008    ', N'Case', N'Vỏ máy tính', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoai], [MoTa], [URLAnh]) VALUES (N'lsp009    ', N'PSU', N'Nguồn máy tính', N'')
GO
INSERT [dbo].[NguoiDung] ([MaND], [SDT], [GioiTinh], [Tuoi], [DiaChi], [UserName], [Email], [Pass], [MaLoaiND], [TenND], [MatKhau]) VALUES (N'ND00000001', N'0825646631', NULL, NULL, N'Hà Nội', N'nguyenvana', N'nguyenvana@gmail.com', NULL, NULL, N'Nguyễn Văn A', N'kgVyzILwJchzhJVW35KKCPLhZelKCAC+cUEmNRuFzhxHgRru8A8=')
INSERT [dbo].[NguoiDung] ([MaND], [SDT], [GioiTinh], [Tuoi], [DiaChi], [UserName], [Email], [Pass], [MaLoaiND], [TenND], [MatKhau]) VALUES (N'nd1       ', N'0367035548', N'Nam       ', 22, N'Ngãi Cầu - An ndánh - Hoài Đức - Hà Nội', N'buihoanglam', N'buihoanglam99@gmail.com', N'123456', N'lnd1      ', N'Bùi Hoàng Lam', N'kgVyzILwJchzhJVW35KKCPLhZelKCAC+cUEmNRuFzhxHgRru8A8=')
INSERT [dbo].[NguoiDung] ([MaND], [SDT], [GioiTinh], [Tuoi], [DiaChi], [UserName], [Email], [Pass], [MaLoaiND], [TenND], [MatKhau]) VALUES (N'nd2       ', N'', N'Nam       ', 22, N'', N'leduydat', N'dat@gmail.com', N'123456', N'lnd2      ', N'Nguyễn Duy Đạt', N'kgVyzILwJchzhJVW35KKCPLhZelKCAC+cUEmNRuFzhxHgRru8A8=')
GO
INSERT [dbo].[NhaCC] ([MaNCC], [Ten], [DiaChi], [SDT], [Email]) VALUES (N'ncc1      ', N'Le Duong Electronics', N'số 56 Hoàng Hoa Thám, Tây Hồ, Hà Nội (Mặt đường, đối diện trường tiểu học Ba Đình)', N'024 2421 882', N'')
INSERT [dbo].[NhaCC] ([MaNCC], [Ten], [DiaChi], [SDT], [Email]) VALUES (N'ncc2      ', N'Cửa hàng linh kiện điện tử Hoàng Phát', N'Số 9-B1-Thủ lệ 1-Ngọc khánh-Ba đình-HN (đi ngõ 113 Đào tấn)', N'0834.661158 ', N'dientuhoangphat@gmail.com')
INSERT [dbo].[NhaCC] ([MaNCC], [Ten], [DiaChi], [SDT], [Email]) VALUES (N'ncc3      ', N'Công ty TNHH điện tử công nghiệp Ritech', N'Số 43, Ngõ 467 Phạm Văn Đồng, Cổ Nhuế, Từ Liêm, Hà Nội', N'0902 187 499', N'ritech.vn@gmail.com')
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNCC]) VALUES (N'PN00000001', CAST(N'2021-03-20' AS Date), N'ncc2      ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNCC]) VALUES (N'PN00000002', CAST(N'2021-03-20' AS Date), N'ncc2      ')
GO
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayDat], [NgayShip], [MaND]) VALUES (N'PX00000001', CAST(N'2021-03-20' AS Date), CAST(N'2021-01-07' AS Date), N'nd1       ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayDat], [NgayShip], [MaND]) VALUES (N'px1       ', CAST(N'2021-01-01' AS Date), CAST(N'2021-01-07' AS Date), N'nd1       ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayDat], [NgayShip], [MaND]) VALUES (N'px2       ', CAST(N'2021-01-01' AS Date), CAST(N'2021-03-20' AS Date), N'nd2       ')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'c49277f1-6044-4b15-39e3-08d8e8256f3d', N'Admin', N'admin')
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'39ee3fb7-2690-4cd9-4973-08d8e85face2', N'Member', N'member')
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'7967650b-fdb9-4204-a932-3517092acd79', N'Employee', N'employee')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp1       ', N'CPU Intel Xeon Silver 4110', 60, 12999000, N'Dòng sản phẩm chuyên biệt dành cho server/máy trạm 8 nhân & 16 luồng Xung nhịp: 2.1GHz (Cơ bản) / 3.0GHz (Boost) Socket: LGA 3647 Hỗ trợ RAM ECC Không kèm quạt tản nhiệt từ hãng Không tích hợp sẵn iGPU', 11999000, N'/images/sanphams/2021/03/20/132606964955043275.png', N'lsp001    ', N'mkm1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp10      ', N'Mainboard ASUS ROG STRIX Z490-I GAMING', 67, 7299000, N'Chuẩn mainboard: Mini ITXSocket: 1200, Chipset: Z490Hỗ trợ RAM: 2 khe DDR4, tối đa 64GBLưu trữ: 2 x M.2 NVMe, 4 x SATA 3 6Gb/sCổng xuất hình: 1 x HDMI, 1 x DisplayPort', 7299000, N'/images/sanphams/2021/03/20/132607092013242970.png', N'lsp002    ', N'mkm1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp11      ', N'DDRam 4 Kingston ECC 16GB 2400Mhz', 0, 2999000, N' KSM24ED8/16ME', 2900000, N'/images/sanphams/2021/03/20/132607092075085834.png', N'lsp003    ', N'mkm1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp12      ', N'Ram Desktop ANTECMEMORY 1S', 93, 799000, N'Dòng RAM cơ bản nhất của AntecmemoryDung lượng: 8GBKiểu: DDRam 4Bus: 2666 MHzĐóng gói: 1 x 8GB', 799000, N'/images/sanphams/2021/03/20/132607092199065728.png', N'lsp003    ', N'mkm1      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp13      ', N'Ram Desktop ANTECMEMORY 1S ', 32, 799000, N'Dòng RAM cơ bản nhất của Antecmemory
Dung lượng: 8GB
Kiểu: DDRam 4
Bus: 2666 MHz
Đóng gói: 1 x 8GB', 799000, N'/images/sp13.jpg', N'lsp003    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp14      ', N'RAM Desktop ANTECMEMORY 1S 8GB', 32, 779000, N'Kiểu Ram: DDR4
Dung lượng: 8GB
Bus: 2400MHz', 779000, N'/images/sp14.jpg', N'lsp003    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp15      ', N'RAM Desktop Gskill Trident Z Neo', 12, 3000000, N'Dòng sản phẩm Gskill Trident Z Neo mới nhất của Gskill
Phù hợp với nền tảng AMD
Dung lượng: 2 x 8GB
Thế hệ: DDR4
Bus: 3600MHz', 3000000, N'/images/sp15.jpg', N'lsp003    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp16      ', N'Ổ cứng HDD Western Caviar Red 1TB 3.5 inch 5400RPM, SATA3 6Gb/s, 64MB Cache', 31, 1500000, N'Được thiết kế đặc biệt để sử dụng trong các hệ thống NAS tối đa 8 khay
Hỗ trợ tốc độ tải công việc lên tới 180 TB / năm.
Hệ thống NAS phù hợp cho văn phòng nhỏ và sử dụng tại nhà liên tục 24/7', 1500000, N'/images/sp16.jpg', N'lsp004    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp17      ', N'HDD WD Gold', 32, 5990000, N'Ổ cứng WD Gold 6TB chuyên dụng cho server -datacenter quy mô lớn.
Dòng gắn trong 3.5 inch tốc độ quay 7200RPM,
bộ đệm 128MB cache, tốc độ max 201 MB/s.', 5990000, N'/images/sp17.jpg', N'lsp004    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp18      ', N'Ổ cứng HDD Western Purple 8TB 3.5 inch 7200RPM, Sata 3 ,256Mb Cache', 43, 6000000, N'Ổ cứng gắn trong Western Purple 8TB - WD8 chuyên dụng cho thiết bị giám sát, đầu ghi camera, thích hợp sử dụng cho các cá nhân, văn phòng hoặc các doanh nghiệp với hệ thống lên đến 64 camera FullHD. Thông số kỹ thuật: dung lượng 8TB; giao tiếp SATA 3 (6Gb/s max); 256MB Cache, tốc độ quay 7200RPM. Công nghệ AllFrame tối ưu hóa, cải thiện hiệu suất, giảm tỉ lệ lỗi/khung.
HDD WD PURPLE 8TB WD là dòng ổ cứng sản xuất ra để chuyên dùng cho thiết bị ghi hình Camera giám sát, chạy rất êm, giải nhiệt tốt hơn 70% so với ổ cứng PC thông thường, thích hợp trong hệ thống camera giám sát tại nhà và doanh nghiệp vừa và nhỏ.
', 6000000, N'/images/sp18.jpg', N'lsp004    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp19      ', N'Ổ cứng HDD Nas Seagate Ironwolf Pro 12TB', 32, 6000000, N'Seagate Ironwolf Pro hỗ trợ hệ thống NAS 1-16 bay
Dung lượng 12TB
Thiết kế đi kèm tính năng AgileArray tối ưu Tốc độ và độ bền cho ổ cứng.
Cảm biến rung (RV) được tích hợp với mọi phiên bản giúp cho hệ thống NAS nhiều khay đĩa hoạt động êm ái nhất một cách có thể
Cho phép khối lượng công việc người dùng sử dụng lên đến 300TB/ năm
Quản lí điện năng tiên tiến giúp cho hệ thống của bạn hoạt động tốt mà vẫn tiết kiệm năng lượng.
Hỗ trợ phần mềm Health Management IronWolf giúp quản lý ổ cứng trong hệ thống NAS để quản lý và phục hồi dữ liệu.', 5999000, N'/images/sp19.jpg', N'lsp004    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp2       ', N'CPU Intel Core i9-10940X', 6, 23999000, N'CPU Core i thế hệ thứ 10 của Intel
 14 nhân & 28 luồng
 Xung cơ bản: 3.3 GHz
 Xung tối đa (boost): 4.6 GHz
 Chạy tốt trên các mainboard socket 2066
 Phù hợp cho những nhà sáng tạo nội dung ', 23199000, N'/images/sp2.jpg', N'lsp001    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp20      ', N'Ổ cứng HDD Seagate SkyHawk 1TB 3.5 inch 5900RPM, SATA3 6GB/s, 64MB Cache', 33, 1099000, N'Ổ cứng chuyên dụng cho các hệ thống Camera
Hỗ trợ hệ thống giám sát tối ưu 24/7
Trang bị bộ cảm biến duy trì hiệu năng hoạt động
Hỗ trợ phát dẫn ATA
Tiêu thụ điện năng rất thấp', 1099000, N'/images/sp20.jpg', N'lsp004    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp21      ', N'Ổ cứng SSD Samsung 860 EVO 250GB 2.5 inch SATA3', 32, 1500000, N'Loại SSD: Giao tiếp Sata III
Kích thước: 2.5 inch
Dung lượng: 250GB
Tốc độ đọc: 550MBps
Tốc độ ghi: 520MBps
Tổng dung lượng đã ghi (TBW): 150TB', 1499000, N'/images/sp21.jpg', N'lsp005    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp22      ', N'Ổ cứng SSD Plextor PX 256M8VC 256GB 2.5 inch SATA3', 11, 999000, N'Tốc độ đọc: 560MB/s
Tốc độ ghi: 520MB/s
Chương trình cơ sở PlexNitro độc quyền tối ưu hóa hiệu suất trong chế độ SLC mà không chiếm dung lượng SSD
Mã hóa toàn bộ ổ đĩa AES 256-bit dựa trên phần cứng đảm bảo bảo mật dữ liệu cao
Công nghệ LDPC mới nhất đảm bảo độ chính xác của dữ liệu & độ tin cậy của SSD
Tuổi thọ trung bình (MTBF) là 1,5 triệu giờ
ECC 128 bit và Thuật toán giữ dữ liệu mạnh mẽ được sử dụng để đảm bảo dữ liệu được lưu trữ và truy xuất mà không gặp lỗi', 999000, N'/images/sp22.jpg', N'lsp005    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp23      ', N'Ổ cứng SSD Samsung 860 EVO 500GB M.2 2280', 11, 2000000, N'Loại SSD: Giao tiếp Sata III
Kích thước: M.2 2280
Dung lượng: 500GB
Tốc độ đọc: 550MBps
Tốc độ ghi: 520MBps
Tổng dung lượng đã ghi (TBW): 150TB', 2000000, N'/images/sp23.jpg', N'lsp005    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp24      ', N'Ổ cứng SSD Adata SU650SN38 120G M.2 2280', 26, 599000, N'Dung lượng: 120GB
Tốc độ đọc: 550 MB/s
Tốc độ ghi: 510 MB/s', 599000, N'/images/sp24.jpg', N'lsp005    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp25      ', N'Ổ cứng SSD Kingston UV500 240G M.2 2280', 61, 400000, N'', 400000, N'/images/sp25.jpg', N'lsp005    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp26      ', N'DVD Rewrite Asus SDRW-08D2S-U Ext USB', 11, 779000, N'DVD Rewrite Asus SDRW-08D2S-U Ext USB, Disc Encryption tăng gấp đôi sự bảo mật bằng mật khẩu điều khiển và chức năng ẩn tập tin. Thiết kế thẩm mỹ, công nghệ vượt trội', 779000, N'/images/sp26.jpg', N'lsp006    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp27      ', N'DVD Rewrite Asus SDRW-08D2S-U Ext USB 2.0', 11, 700000, N'', 700000, N'/images/sp27.jpg', N'lsp006    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp28      ', N'DVDRw Asus 24D5MT P2G', 11, 449000, N'', 449000, N'/images/sp28.jpg', N'lsp006    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp29      ', N'DVDRw Asus 24D5MT P', 12, 500000, N'', 500000, N'/images/sp29.jpg', N'lsp006    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp3       ', N'CPU Intel Core i9-9900KF ', 9, 11999000, N'Phiên bản cắt giảm đi nhân đồ họa tích hợp của 9900K
 Số nhân: 8
 Số luồng: 16
 Tốc độ cơ bản: 3.6 GHz
 Tốc độ tối đa: 5.0 GHz
 Cache: 16MB
 Tiến trình sản xuất: 14nm ', 11199000, N'/images/sp3.jpg', N'lsp001    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp30      ', N'DVD Asus 18X E818A9T Sata Đen Tray', 21, 329000, N'', 329000, N'/images/sp30.jpg', N'lsp006    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp31      ', N'Card màn hình Asus ROG STRIX RTX3090-O24G-GAMING', 23, 55000000, N'Dung lượng bộ nhớ: 24Gb GDDR6X
10496 CUDA Cores
Core Clock: 1890 MHz (Boost Clock)
Kết nối: DisplayPort 1.4a, HDMI 2.1
Nguồn yêu cầu: 850W', 55000000, N'/images/sp31.jpg', N'lsp007    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp32      ', N'Vỏ Case Cooler Master MasterBox MB511 ARGB', 32, 2000000, N'Hỗ trợ mainboard:ATX, Micro ATX, Mini ITX
Radiator lắp đặt tối đa: 1x360/1x240/1x120mm
Chiều cao tản nhiệt CPU tối đa: 165mm
Chiều dài VGA: 410mm', 1900000, N'/images/sp32.jpg', N'lsp008    ', N'mkm2      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp33      ', N'Nguồn FSP Power Supply HEXA 85+ Series Model HA450 Active PF', 12, 1100000, N'Đạt tiêu chuẩn ATX12 v2.4 & EPS12 v2.92
Hiệu suất cao ≧ 85%
Active PFC ≧ 90%
Tuân thủ chứng nhận 80 PLUS® Bronze
Thiết kế đường 12V Single Rail
Tụ điện hoàn toàn của Nhật Bản
Quạt siêu êm 120mm
Bảo vệ hoàn toàn: OCP, OVP, SCP, OPP, OTP
An toàn toàn cầu được phê duyệt', 1100000, N'/images/sp33.jpg', N'lsp009    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp4       ', N'CPU Intel Core i9-9900X', 7, 14399000, N'Socket: FCLGA2066
Số lõi/luồng: 10/20-Tần số cơ bản/turbo: 3.5/4.4 GHz
Bộ nhớ đệm: 19,5 MB
Mức tiêu thụ điện: 165 W', 14199000, N'/images/sp4.jpg', N'lsp001    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp5       ', N'CPU Intel Core i9-9900KF', 14, 11999000, N'Phiên bản cắt giảm đi nhân đồ họa tích hợp của 9900K
Số nhân: 8
Số luồng: 16
Tốc độ cơ bản: 3.6 GHz
Tốc độ tối đa: 5.0 GHz
Cache: 16MB
Tiến trình sản xuất: 14nm', 11199000, N'/images/sp5.jpg', N'lsp001    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp6       ', N'Mainboard ASUS ProArt Z490-CREATOR 10G', 12, 8899000, N'Chuẩn mainboard: ATX
Socket: 1200, Chipset: Z490
Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
Lưu trữ: 3 x M.2 NVMe, 6 x SATA 3 6Gb/s
Cổng xuất hình: Không', 8899000, N'/images/sp6.jpg', N'lsp002    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp7       ', N'Mainboard ASUS ProArt Z490-CREATOR 10G', 12, 8899000, N'Chuẩn mainboard: ATX
Socket: 1200, Chipset: Z490
Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
Lưu trữ: 2 x M.2 NVMe, 6 x SATA 3 6Gb/s
Cổng xuất hình: 1 x HDMI, 1 x DP', 8199000, N'/images/sp7.jpg', N'lsp002    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp8       ', N'Mainboard ASUS ROG STRIX Z490-I GAMING', 23, 7299000, N'Chuẩn mainboard: Mini ITX
Socket: 1200, Chipset: Z490
Hỗ trợ RAM: 2 khe DDR4, tối đa 64GB
Lưu trữ: 2 x M.2 NVMe, 4 x SATA 3 6Gb/s
Cổng xuất hình: 1 x HDMI, 1 x DisplayPort', 7099000, N'/images/sp8.jpg', N'lsp002    ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuong], [DonGia], [MoTa], [GiaKM], [URLAnh], [MaLoaiSP], [MaKM]) VALUES (N'sp9       ', N'Mainboard ASUS ROG STRIX Z490-A GAMING', 32, 6299000, N'Chuẩn mainboard: ATX
Socket: 1200, Chipset: Z490
Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
Lưu trữ: 2 x M.2 NVMe, 6 x SATA 3 6Gb/s
Cổng xuất hình: 1 x HDMI, 1 x DisplayPort', 6299000, N'/images/sp9.jpg', N'lsp002    ', NULL)
GO
INSERT [dbo].[UserRole] ([RoleId], [UserId], [Note]) VALUES (N'c49277f1-6044-4b15-39e3-08d8e8256f3d', N'ND00000001', NULL)
INSERT [dbo].[UserRole] ([RoleId], [UserId], [Note]) VALUES (N'c49277f1-6044-4b15-39e3-08d8e8256f3d', N'nd1       ', NULL)
INSERT [dbo].[UserRole] ([RoleId], [UserId], [Note]) VALUES (N'39ee3fb7-2690-4cd9-4973-08d8e85face2', N'ND00000001', NULL)
INSERT [dbo].[UserRole] ([RoleId], [UserId], [Note]) VALUES (N'39ee3fb7-2690-4cd9-4973-08d8e85face2', N'nd2       ', NULL)
INSERT [dbo].[UserRole] ([RoleId], [UserId], [Note]) VALUES (N'7967650b-fdb9-4204-a932-3517092acd79', N'ND00000001', NULL)
INSERT [dbo].[UserRole] ([RoleId], [UserId], [Note]) VALUES (N'7967650b-fdb9-4204-a932-3517092acd79', N'nd1       ', NULL)
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTGioHang]  WITH CHECK ADD FOREIGN KEY([MaGH])
REFERENCES [dbo].[GioHang] ([MaGH])
GO
ALTER TABLE [dbo].[CTGioHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaPX])
REFERENCES [dbo].[PhieuXuat] ([MaPX])
GO
ALTER TABLE [dbo].[CTPhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[LoaiND]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[BangKhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD FOREIGN KEY([MaLoaiND])
REFERENCES [dbo].[LoaiND] ([MaLoaiND])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[BangKhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_NguoiDung] FOREIGN KEY([UserId])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_NguoiDung]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Nhap]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Nhap]
AS
BEGIN
	SELECT pn.MaPN, pn.MaNCC, ncc.Ten AS TenNCC, SUM(SoLuong) AS  TotalQuantities, SUM(DonGia) AS TotalPrices
	FROM PhieuNhap pn
	INNER JOIN CTPhieuNhap ct ON ct.MaPN = pn.MaPN
	INNER JOIN dbo.NhaCC ncc ON ncc.MaNCC = pn.MaNCC
	GROUP BY pn.MaPN, pn.MaNCC, ncc.Ten
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Nhap_Khoang_Thoi_gian]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Nhap_Khoang_Thoi_gian] @startDate DATETIME, @endDate DATETIME
AS
BEGIN
	SELECT pn.MaPN, pn.MaNCC, ncc.Ten AS TenNCC, SUM(SoLuong) AS  TotalQuantities, SUM(DonGia) AS TotalPrices
	FROM PhieuNhap pn
	INNER JOIN CTPhieuNhap ct ON ct.MaPN = pn.MaPN
	INNER JOIN dbo.NhaCC ncc ON ncc.MaNCC = pn.MaNCC
	WHERE pn.NgayNhap BETWEEN @startDate AND @endDate
	GROUP BY pn.MaPN, pn.MaNCC, ncc.Ten
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Top_10SP_BanChay]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Top_10SP_BanChay]
AS
BEGIN
	SELECT TOP(10) sp.MaSP, sp.TenSP, SUM(ct.SoLuong) AS TotalQuantities, SUM(ct.SoLuong*sp.DonGia) AS TotalPrices
	FROM dbo.SanPham AS sp
	INNER JOIN dbo.CTPhieuXuat AS ct ON ct.MaSP = sp.MaSP
	GROUP BY sp.MaSP, sp.TenSP
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Top_10SP_BanChay_Trong_Khoang_Thoi_gian]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Top_10SP_BanChay_Trong_Khoang_Thoi_gian] @startDate DATETIME, @endDate DATETIME
AS
BEGIN
	SELECT TOP(10) sp.MaSP, sp.TenSP, SUM(ct.SoLuong) AS TotalQuantities, SUM(ct.SoLuong*sp.DonGia) AS TotalPrices
	FROM dbo.SanPham AS sp
	INNER JOIN dbo.CTPhieuXuat AS ct ON ct.MaSP = sp.MaSP
	INNER JOIN dbo.PhieuXuat AS px ON px.MaPX = ct.MaPX
	WHERE px.NgayDat BETWEEN @startDate AND @endDate
	GROUP BY sp.MaSP, sp.TenSP
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Xuat]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Xuat]
AS
BEGIN
	SELECT px.MaPX, nd.TenND , px.NgayDat, px.NgayShip, SUM(ct.SoLuong) AS  TotalQuantities, SUM(ct.SoLuong*sp.DonGia) AS TotalPrices
	FROM dbo.PhieuXuat AS px
	INNER JOIN dbo.CTPhieuXuat ct ON ct.MaPX = px.MaPX
	INNER JOIN dbo.SanPham AS sp ON sp.MaSP = ct.MaSP
	INNER JOIN dbo.NguoiDung AS nd ON nd.MaND = px.MaND
	GROUP BY px.MaPX, nd.TenND , px.NgayDat, px.NgayShip
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Xuat_Khoang_Thoi_gian]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Xuat_Khoang_Thoi_gian] @startDate DATETIME, @endDate DATETIME
AS
BEGIN
	SELECT px.MaPX, nd.TenND , px.NgayDat, px.NgayShip, SUM(ct.SoLuong) AS  TotalQuantities, SUM(ct.SoLuong*sp.DonGia) AS TotalPrices
	FROM dbo.PhieuXuat AS px
	INNER JOIN dbo.CTPhieuXuat ct ON ct.MaPX = px.MaPX
	INNER JOIN dbo.SanPham AS sp ON sp.MaSP = ct.MaSP
	INNER JOIN dbo.NguoiDung AS nd ON nd.MaND = px.MaND
	WHERE px.NgayDat BETWEEN @startDate AND @endDate
	GROUP BY px.MaPX, nd.TenND , px.NgayDat, px.NgayShip
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Xuat_Theo_Nguoi_Dung]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Xuat_Theo_Nguoi_Dung]
AS
BEGIN
	SELECT nd.TenND, nd.SDT, nd.DiaChi, SUM(ct.SoLuong) AS  TotalQuantities, SUM(ct.SoLuong*sp.DonGia) AS TotalPrices
	FROM dbo.PhieuXuat AS px
	INNER JOIN dbo.CTPhieuXuat ct ON ct.MaPX = px.MaPX
	INNER JOIN dbo.SanPham AS sp ON sp.MaSP = ct.MaSP
	INNER JOIN dbo.NguoiDung AS nd ON nd.MaND = px.MaND
	GROUP BY nd.TenND, nd.SDT, nd.DiaChi
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Xuat_Theo_Nguoi_Dung_Khoang_Thoi_gian]    Script Date: 3/20/2021 7:58:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Xuat_Theo_Nguoi_Dung_Khoang_Thoi_gian] @startDate DATETIME, @endDate DATETIME
AS
BEGIN
	SELECT nd.TenND, nd.SDT, nd.DiaChi, SUM(ct.SoLuong) AS  TotalQuantities, SUM(ct.SoLuong*sp.DonGia) AS TotalPrices
	FROM dbo.PhieuXuat AS px
	INNER JOIN dbo.CTPhieuXuat ct ON ct.MaPX = px.MaPX
	INNER JOIN dbo.SanPham AS sp ON sp.MaSP = ct.MaSP
	INNER JOIN dbo.NguoiDung AS nd ON nd.MaND = px.MaND
	WHERE px.NgayDat BETWEEN @startDate AND @endDate
	GROUP BY nd.TenND, nd.SDT, nd.DiaChi
END
GO
USE [master]
GO
ALTER DATABASE [ShopLinhKien] SET  READ_WRITE 
GO
