USE [master]
GO

CREATE DATABASE [quanlysieuthimini]
GO

USE [quanlysieuthimini]
GO


CREATE TABLE [dbo].[DonViTinh](
	[MaDVT] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [nvarchar](9) NOT NULL,
	[MaKhachHang] [nvarchar](7) NOT NULL,
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[TongSoLuong] [int] NOT NULL,
	[ChietKhau] [decimal](12, 3) NOT NULL,
	[VAT] [decimal](3, 1) NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
	[TienKhachTra] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHDCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [nvarchar](9) NOT NULL,
	[MaSanPham] [nvarchar](7) NOT NULL,
	[DonGia] [decimal](12, 3) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nvarchar](7) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiemThuong] [int] NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NVQuanLy] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[NguoiDung](
	[TenDangNhap] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[VaiTro] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](7) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[NhomHang](
	[MaNhomHang] [nvarchar](5) NOT NULL,
	[TenNhomHang] [nvarchar](20) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomHang] PRIMARY KEY CLUSTERED 
(
	[MaNhomHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuHuyChiTiet](
	[MaPHCT] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuHuy] [nvarchar](9) NOT NULL,
	[MaSanPham] [nvarchar](7) NOT NULL,
	[DVT] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaVon] [decimal](12, 3) NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_PhieuHuyChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaPHCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuHuyHang](
	[MaPhieuHuy] [nvarchar](9) NOT NULL,
	[LoaiPhieuHuy] [bit] NOT NULL,
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[NgayHuy] [date] NOT NULL,
	[SoLuongHuy] [int] NOT NULL,
	[GiaTriHuy] [decimal](12, 3) NOT NULL,
	[GhiChu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuHuyHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuHuy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuKiemChiTiet](
	[MaPKCT] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuKiem] [nvarchar](9) NOT NULL,
	[MaSanPham] [nvarchar](7) NOT NULL,
	[DonGia] [decimal](12, 3) NOT NULL,
	[DVT] [nvarchar](20) NOT NULL,
	[TonKho] [int] NOT NULL,
	[ThucTe] [int] NOT NULL,
	[SoLuongLech] [int] NOT NULL,
	[GiaTriLech] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_PhieuKiemChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaPKCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuKiemKe](
	[MaPhieuKiemKe] [nvarchar](9) NOT NULL,
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[NgayCanBang] [date] NULL,
	[GiaTriLech] [decimal](12, 3) NOT NULL,
	[GhiChu] [nvarchar](50) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_PhieuKiemKe] PRIMARY KEY CLUSTERED 
(
	[MaPhieuKiemKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuNhapChiTiet](
	[MaPNCT] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuNhap] [nvarchar](9) NOT NULL,
	[MaSanPham] [nvarchar](7) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [decimal](12, 3) NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
	[HSDMoiNhat] [date] NULL,
 CONSTRAINT [PK_PhieuNhapChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaPNCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuNhapHang](
	[MaPhieuNhap] [nvarchar](9) NOT NULL,
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNCC] [nvarchar](7) NOT NULL,
	[TongSoLuong] [int] NOT NULL,
	[ChietKhau] [decimal](3, 1) NOT NULL,
	[VAT] [decimal](3, 1) NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuTraChiTiet](
	[MaPTCT] [int] NOT NULL,
	[MaPhieuTra] [nvarchar](9) NOT NULL,
	[MaSanPham] [nvarchar](7) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaTra] [decimal](12, 3) NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_PhieuTraChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaPTCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PhieuTraHang](
	[MaPhieuTra] [nvarchar](9) NOT NULL,
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[NgayTra] [date] NOT NULL,
	[MaNCC] [nvarchar](7) NOT NULL,
	[TongSoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](12, 3) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuTraHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](7) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaVach] [nvarchar](50) NULL,
	[MaNhomHang] [nvarchar](5) NOT NULL,
	[MaNCC] [nvarchar](7) NOT NULL,
	[MaDVT] [int] NOT NULL,
	[TonKho] [int] NOT NULL,
	[DinhMucNhoNhat] [int] NOT NULL,
	[DinhMucLonNhat] [int] NULL,
	[GiaVon] [decimal](12, 3) NOT NULL,
	[GiaBan] [decimal](9, 0) NOT NULL,
	[HSDTruoc] [date] NULL,
	[HSDMoiNhat] [date] NULL,
	[HinhAnh] [nvarchar](30) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (1, N'Cái')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (2, N'Chai')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (3, N'Gói')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (4, N'Chiếc')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (5, N'Hộp')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (6, N'Lon')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (7, N'Lốc')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (8, N'Thùng')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (9, N'Cây')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (10, N'Tuýp')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (11, N'Lọ')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (12, N'Quyển')
INSERT [dbo].[DonViTinh] ([MaDVT], [MoTa]) VALUES (13, N'Cuộn')
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD1', N'KH12', N'admin', CAST(0x74400B00 AS Date), 6, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(68500.000 AS Decimal(12, 3)), CAST(70000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD10', N'KH6', N'admin', CAST(0x7C400B00 AS Date), 10, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(40000.000 AS Decimal(12, 3)), CAST(50000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD11', N'KH2', N'admin', CAST(0x7C400B00 AS Date), 1, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(4000.000 AS Decimal(12, 3)), CAST(50000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD12', N'KH18', N'admin', CAST(0x7C400B00 AS Date), 1, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(4000.000 AS Decimal(12, 3)), CAST(5000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD13', N'KH5', N'admin', CAST(0x7C400B00 AS Date), 1, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(4000.000 AS Decimal(12, 3)), CAST(50000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD14', N'KH0', N'admin', CAST(0x7F400B00 AS Date), 3, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(10500.000 AS Decimal(12, 3)), CAST(12000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD15', N'KH29', N'admin', CAST(0x84400B00 AS Date), 6, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(36000.000 AS Decimal(12, 3)), CAST(37000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD2', N'KH6', N'admin', CAST(0x74400B00 AS Date), 10, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(130000.000 AS Decimal(12, 3)), CAST(150000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD3', N'KH5', N'admin', CAST(0x74400B00 AS Date), 1, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(26500.000 AS Decimal(12, 3)), CAST(30000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD4', N'KH3', N'admin', CAST(0x74400B00 AS Date), 7, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(156000.000 AS Decimal(12, 3)), CAST(160000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD5', N'KH1', N'admin', CAST(0x74400B00 AS Date), 40, CAST(0.000 AS Decimal(12, 3)), CAST(10.0 AS Decimal(3, 1)), CAST(176000.000 AS Decimal(12, 3)), CAST(200000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD6', N'KH1', N'admin', CAST(0x74400B00 AS Date), 3, CAST(0.000 AS Decimal(12, 3)), CAST(10.0 AS Decimal(3, 1)), CAST(1138500.000 AS Decimal(12, 3)), CAST(1200000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD7', N'KH1', N'admin', CAST(0x74400B00 AS Date), 10, CAST(70000.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(195000.000 AS Decimal(12, 3)), CAST(200000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD8', N'KH1', N'admin', CAST(0x77400B00 AS Date), 10, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(420000.000 AS Decimal(12, 3)), CAST(450000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayBan], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [TienKhachTra]) VALUES (N'HD9', N'KH2', N'admin', CAST(0x7C400B00 AS Date), 15, CAST(0.000 AS Decimal(12, 3)), CAST(0.0 AS Decimal(3, 1)), CAST(52500.000 AS Decimal(12, 3)), CAST(55000.000 AS Decimal(12, 3)))
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (9, N'HD1', N'SP2', CAST(4000.000 AS Decimal(12, 3)), 1, CAST(4000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (10, N'HD1', N'SP6', CAST(26500.000 AS Decimal(12, 3)), 1, CAST(26500.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (11, N'HD1', N'SP8', CAST(9000.000 AS Decimal(12, 3)), 3, CAST(27000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (12, N'HD1', N'SP11', CAST(11000.000 AS Decimal(12, 3)), 1, CAST(11000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1009, N'HD2', N'SP7', CAST(13000.000 AS Decimal(12, 3)), 10, CAST(130000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1010, N'HD3', N'SP6', CAST(26500.000 AS Decimal(12, 3)), 1, CAST(26500.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1011, N'HD4', N'SP42', CAST(49000.000 AS Decimal(12, 3)), 1, CAST(49000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1012, N'HD4', N'SP77', CAST(19000.000 AS Decimal(12, 3)), 4, CAST(76000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1013, N'HD4', N'SP83', CAST(21000.000 AS Decimal(12, 3)), 1, CAST(21000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1014, N'HD4', N'SP88', CAST(10000.000 AS Decimal(12, 3)), 1, CAST(10000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1015, N'HD5', N'SP3', CAST(4000.000 AS Decimal(12, 3)), 40, CAST(160000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1016, N'HD6', N'SP33', CAST(345000.000 AS Decimal(12, 3)), 3, CAST(1035000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1017, N'HD7', N'SP6', CAST(26500.000 AS Decimal(12, 3)), 10, CAST(265000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1018, N'HD8', N'SP14', CAST(42000.000 AS Decimal(12, 3)), 10, CAST(420000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1032, N'HD9', N'SP1', CAST(3500.000 AS Decimal(12, 3)), 15, CAST(52500.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1033, N'HD10', N'SP2', CAST(4000.000 AS Decimal(12, 3)), 10, CAST(40000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1034, N'HD11', N'SP2', CAST(4000.000 AS Decimal(12, 3)), 1, CAST(4000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1035, N'HD12', N'SP2', CAST(4000.000 AS Decimal(12, 3)), 1, CAST(4000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1036, N'HD13', N'SP2', CAST(4000.000 AS Decimal(12, 3)), 1, CAST(4000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1037, N'HD14', N'SP1', CAST(3500.000 AS Decimal(12, 3)), 3, CAST(10500.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1038, N'HD15', N'SP1', CAST(3500.000 AS Decimal(12, 3)), 4, CAST(14000.000 AS Decimal(12, 3)))
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHoaDon], [MaSanPham], [DonGia], [SoLuong], [ThanhTien]) VALUES (1039, N'HD15', N'SP11', CAST(11000.000 AS Decimal(12, 3)), 2, CAST(22000.000 AS Decimal(12, 3)))
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH0', N'Khách lẻ', 9, N'0', 1, CAST(0x233F0B00 AS Date), N'admin', N'admin@admin', N'0', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH1', N'Trương Công Kha', 10, N'0378929201', 1, CAST(0x4C0C0B00 AS Date), N'phupv', N'congkha83@gmail.com', N'401/54 Cây Trâm, Gò Vấp, HCM
', N'', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH10', N'Dương Gia Quyền
', 0, N'0965279083', 1, CAST(0x24250B00 AS Date), N'khanhnq', N'dgiaquyen40@gmail.com
', N'36/31 Trịnh Đình Thảo, Tân Phú , HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH11', N'Phạm Quốc Thái
', 0, N'0930319076', 1, CAST(0x0F150B00 AS Date), N'khanhnq', N'phamquocthai0507@gmail.com
', N'21/18 Đông Bắc, Quận 12, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH12', N'Du Diệu Phi', 0, N'0903130195', 0, CAST(0xCF1F0B00 AS Date), N'khanhnq', N'phidieu385@gmail.com
', N'57/7 Trần Quý, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH13', N'Vương Thuận Hưng
', 0, N'0769977839', 1, CAST(0x95040B00 AS Date), N'phupv', N'thuanhunglol331@gmail.com
', N'331 Minh Phụng, Q11, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH14', N'Nguyễn Tấn Đạt
', 0, N'0933003589', 1, CAST(0x5C190B00 AS Date), N'thongnn', N'nguyentandat123@gmail.com
', N'115B Lạc Long Quân, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH15', N'Phan Phương Hoàng Châu
', 0, N'0770374798', 0, CAST(0x4E240B00 AS Date), N'khanhnq', N'chaupph1203@gmail.com
', N'21/13 Lê Văn Quới, Bình Tân, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH16', N'Lưu Trịnh Đình
', 0, N'0637548781', 0, CAST(0xB0080B00 AS Date), N'thongnn', N'luutrinhdinh@gmail.com
', N'103 Miếu Bình Đông, Bình Tân, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH17', N'Lin Gia Hoàn
', 0, N'0933054892', 0, CAST(0x56250B00 AS Date), N'khanhnq', N'lingiahoandl@gmail.com
', N'B25/32 Cây Cám, Bình Chánh, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH18', N'Lê Nguyễn Phương Linh
', 0, N'0122702489', 0, CAST(0x30210B00 AS Date), N'khanhnq', N'lenguyenphuonglinh@gmail.com
', N'Lô A Chung Cư Lý Thường Kiệt, Q10, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH19', N'Kiều Thanh Ly', 0, N'0963598466', 0, CAST(0x65130B00 AS Date), N'thongnn', N'kieuthanhly@gmail.com
', N'220 Hàn Hải Nguyên, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH2', N'Trương Tuấn Kiệt
', 0, N'0938615883
', 1, CAST(0xC7240B00 AS Date), N'phupv', N'ttkiet72@gmail.com', N'105 Miếu Bình Đông, Bình Tân, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH20', N'Lâm Trung Hiếu
', 0, N'0770445133', 1, CAST(0xAC1F0B00 AS Date), N'phupv', N'lamtrunghieu@gmail.com
', N'130 Ông Ích Khiêm, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH21', N'Nguyễn Gia Lương
', 0, N'0933722712', 1, CAST(0x830C0B00 AS Date), N'phupv', N'nguyengialuong@gmail.com
', N'119/3 đường 3/2, Q10, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH22', N'Nguyễn Thanh Ngân
', 0, N'0673525223', 0, CAST(0xE8060B00 AS Date), N'phupv', N'nguyenthanhngan@gmail.com
', N'130 Nguyễn Trãi, Q5, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH23', N'Sầm Yến Nhi
', 0, N'0367533632', 0, CAST(0x5E250B00 AS Date), N'thongnn', N'samyennhi@gmail.com
', N'529 Minh Phụng, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH24', N'Nguyễn Thanh Như 
', 0, N'0777849853', 0, CAST(0x8E060B00 AS Date), N'thongnn', N'nguyenthanhnhu@gmail.com
', N'278 Hàn Hải Nguyên, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH25', N'Phạm Thái Hồng Nghĩa
', 0, N'0906977495', 1, CAST(0x93140B00 AS Date), N'thongnn', N'phamthaihongnghia@gmail.com
', N'44 Hòa Bình , Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH26', N'Nguyễn Thị Trúc Phương
', 0, N'0126433408', 0, CAST(0x78F80A00 AS Date), N'khanhnq', N'nguyenthitrucphuong@gmail.com
', N'134 Tạ Uyên, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH27', N'Huỳnh Chí Quyền
', 0, N'0776304589', 1, CAST(0x57030B00 AS Date), N'khanhnq', N'huynhchiquyen@gmail.com
', N'1106 Võ Văn Kiệt, Q1, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH28', N'Nguyễn Tấn Tài
', 0, N'0377461547', 1, CAST(0x6DF80A00 AS Date), N'thongnn', N'nguyentantai@gmail.com
', N'875 CMT8, Tân Bình, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH29', N'Trần Thiên Tiên
', 0, N'0769635866', 0, CAST(0xA7160B00 AS Date), N'khanhnq', N'tranthientien@gmail.com
', N'06 Bà Hom, Q6, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH3', N'Lê Nguyễn Thúy Hằng
', 0, N'0818309639', 0, CAST(0x6F130B00 AS Date), N'thongnn', N'thuyhang16.05@gmail.com
', N'72 Trần Chánh Chiếu, Q5, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH30', N'Võ Minh Tốt
', 0, N'0632210556', 1, CAST(0x75150B00 AS Date), N'thongnn', N'vominhtot@gmail.com
', N'197 Hà Tôn Quyền, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH31', N'Từ Mỹ Tuyết
', 0, N'0776435125', 0, CAST(0xFA200B00 AS Date), N'phupv', N'tumytuyet@gmail.com
', N'231 Cộng Hòa, Tân Bình, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH32', N'Quan Văn Văn
', 0, N'0907763548', 0, CAST(0xE2270B00 AS Date), N'phupv', N'quanvanvan@gmail.com
', N'105 Lò Siêu, Q11, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH33', N'Cát Tường Vinh
', 0, N'0933641235', 1, CAST(0x9A220B00 AS Date), N'khanhnq', N'cattuongvinh@gmail.com
', N'190 Phan Xích Long, Phú Nhuận, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH34', N'Nguyễn Tường Vy
', 0, N'0371596633', 0, CAST(0x3B250B00 AS Date), N'khanhnq', N'nguyentuongvy@gmail.com
', N'789 Trần Hưng Đạo, Q5, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH35', N'Lư Thu Yến
', 0, N'0906130500', 0, CAST(0x79FA0A00 AS Date), N'thongnn', N'luthuyen@gmail.com
', N'60A Tản Đà, Q5, HCM
', NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH36', N'Lê Anh Thơ', 0, N'0369524291', 0, CAST(0x47240B00 AS Date), N'admin', N'tracy2000@hotmail.com', N'1021/34/2 Trường Sa, Quận 3, HCM', N'', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH4', N'Lý Chung Kiệt', 1, N'0786900681', 1, CAST(0x08260B00 AS Date), N'phupv', N'lychungkiet@gmail.com', N'173/23/117 Khuông Việt, Tân Phú, HCM
', N'', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH5', N'Võ Nguyễn Thúy An', 3, N'0917257091', 0, CAST(0x24210B00 AS Date), N'khanhnq', N'thuyanvo352@gmail.com', N'100/3 số 3, Gò Vấp, HCM
', N'', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH6', N'Bùi Văn Thanh Lân', 0, N'0968224450', 1, CAST(0x58170B00 AS Date), N'khanhnq', N'lanbui1510@gmail.com', N'358/5/9 CMT8, Q3, HCM
', N'', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH7', N'Nguyễn Minh Tân
', 0, N'0369512490', 1, CAST(0xA21B0B00 AS Date), N'thongnn', N'tannkox@gmail.com
', N'18 Huỳnh Văn Chính, Tân Phú, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH8', N'Trần Quốc Khánh
', 0, N'0703401012', 1, CAST(0x2F180B00 AS Date), N'thongnn', N'qkhanh123@gmail.com
', N'304/14 Phạm Thế Hiển, Q8, HCM
', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiemThuong], [DienThoai], [GioiTinh], [NgaySinh], [NVQuanLy], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'KH9', N'Phạm Thị Thu Trang
', 0, N'0702013985', 0, CAST(0x66070B00 AS Date), N'phupv', N'tp2112201717@gmail.com
', N'35 Nguyễn Văn Yến, Tân Phú, HCM
', NULL, 0)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [MatKhau], [HoTen], [DienThoai], [GioiTinh], [NgaySinh], [Email], [DiaChi], [VaiTro], [TrangThai]) VALUES (N'admin', N'123', N'Nguyễn Trần Duy', N'0988696746', 1, CAST(0x471C0B00 AS Date), N'nguyentranduy94@gmail.com', N'401 Cây Trâm, Gò Vấp, HCM', 1, 1)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [MatKhau], [HoTen], [DienThoai], [GioiTinh], [NgaySinh], [Email], [DiaChi], [VaiTro], [TrangThai]) VALUES (N'khanhnq', N'khanhnq', N'Nguyễn Quốc Khánh', N'0911353526', 1, CAST(0x521E0B00 AS Date), N'quockhanh@gmail.com', N'21/18 Đông Bắc, Quận 12, HCM', 1, 1)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [MatKhau], [HoTen], [DienThoai], [GioiTinh], [NgaySinh], [Email], [DiaChi], [VaiTro], [TrangThai]) VALUES (N'phupv', N'phupv', N'Phan Văn Phú', N'0777027478', 1, CAST(0x07240B00 AS Date), N'phanvanphu@gmail.com', N'B25/32 Cây Cám, Bình Chánh, HCM', 0, 1)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [MatKhau], [HoTen], [DienThoai], [GioiTinh], [NgaySinh], [Email], [DiaChi], [VaiTro], [TrangThai]) VALUES (N'thaopt', N'abc', N'Phạm Thu Thảo', N'0987654321', 0, CAST(0xEB230B00 AS Date), N'thaopt98@fpt.com.vn', N'ahahahaa', 2, 0)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [MatKhau], [HoTen], [DienThoai], [GioiTinh], [NgaySinh], [Email], [DiaChi], [VaiTro], [TrangThai]) VALUES (N'thongnn', N'thongnn', N'Nguyễn Nhật Thông', N'0362978984', 1, CAST(0x08240B00 AS Date), N'thongnguyen@gmail.com', N'105 Miếu Bình Đông, Bình Tân, HCM', 0, 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC1', N'Công ty Sang Hà', N'02854484448', N'sangha@sangha.vn', N'154 đường Kênh 19/5, Tây Thạnh, Tân Phú, HCM', N'Cung cấp văn phòng phẩm', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC10', N'Anh Kha Bình Tân', N'02837245275', N'congkha83@gmail.com', N'141/10 Đường Số 11, P. Bình Hưng Hòa, Q. Bình Tân, HCM', N'Cung cấp thuốc lá, cà phê, trà đóng gói', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC11', N'Công ty Gia Phú Cường', N'02838120594', N'gpccorp@gpccorp.com.vn', N'16 Hoa Bằng, Phường Tân Sơn Nhì, Q. Tân Phú, HCM', N'Cung cấp đồ gia dụng nhà bếp', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC2', N'Công ty Mai Kim', N'02838298280', N'sales@boniva.com.vn', N'60K Lê Thị Riêng, Phường Bến Thành, Quận 1, HCM', N'Cung cấp bánh kẹo', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC3', N'Công ty Humana', N'02839492529', N'lienhe@humana.com.vn', N'62/36 Trương Công Định, P. 14, Q. Tân Bình, HCM', N'Cung cấp sữa, đồ dùng trẻ em, trẻ sơ sinh', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC4', N'Công ty IWATER', N'02838479806', N'nam@iwater.vn', N'48 Nguyễn Thị Huỳnh, P. 11, Q. Phú Nhuận, HCM', N'Nước đóng chai, nước giải khát, nước ngọt', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC5', N'Công ty Trường Đức Thịnh', N'02837177671', N'sales@truongducthinh.com.vn', N'78/2 Đường TA 18, KP. 2, P. Thới An, Q. 12, HCM', N'Cung cấp nước giải khát đóng chai, lon', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC6', N'Chị Hồng Thủ Đức', N'0704879309', N'honghoafood@gmail.com', N'Vựa B9-28 Chợ Đầu Mối Nông Sản Thủ Đức, P. Tam Bình, Q. Thủ Đức, HCM', N'Cung cấp các loại thực phẩm khô, nông sản', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC7', N'Công ty Hoàng Phúc Thịnh', N'02839840606', N'ctyhoangphucthinh@gmail.com', N'114/90 Tô Ngọc Vân, P. 15, Q. Gò Vấp, HCM', N'Mỹ phẩm, bột giặt, dầu gội, nước hoá chất gia dụng', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC8', N'Công ty Nam Việt', N'02837100840', N'navico@navivn.com', N'31/2C Phan Văn Hớn, ấp 7, X. Xuân Thới Thượng, H. Hóc Môn, HCM', N'Hóa mỹ phẩm, chất tẩy rửa gia dụng và công nghiệp', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DienThoai], [Email], [DiaChi], [GhiChu], [TrangThai]) VALUES (N'NCC9', N'Chị Nga Thủ Đức', N'02862842356', N'ngaphan@gmail.com', N'D7 Đường F, Khu Nhà ở Chợ Đầu Mối Nông sản Thực phẩm Thủ Đức, P. Tam Bình, Q. Thủ Đức, HCM', N'Cung cấp thực phẩm chay, phụ gia, gạo', 1)
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH1', N'Tổng hợp', N'Các sản phẩm không thuộc nhóm nào')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH2', N'Văn phòng phẩm', N'Nhóm hàng phục vụ văn phòng, học tập')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH3', N'Bánh kẹo', N'Nhóm hàng bánh kẹo')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH4', N'Sản phẩm sữa', N'Các sản phẩm sữa: sữa tươi, sữa chua...')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH5', N'Đồ uống', N'Các loại đồ uống: nước, nước ngọt, bia, rượu,...')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH6', N'Thực phẩm', N'Các loại thực phẩm, gia vị phổ thông')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH7', N'Mỹ phẩm', N'Nhóm hàng chăm sóc tóc, da, răng miệng,...')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH8', N'Hoá phẩm', N'Các loại hoá chất bột giặt, tẩy rửa,...')
INSERT [dbo].[NhomHang] ([MaNhomHang], [TenNhomHang], [GhiChu]) VALUES (N'NH9', N'Nhà bếp', N'Các loại đồ gia dụng nhà bếp')
SET IDENTITY_INSERT [dbo].[PhieuHuyChiTiet] ON 

INSERT [dbo].[PhieuHuyChiTiet] ([MaPHCT], [MaPhieuHuy], [MaSanPham], [DVT], [SoLuong], [GiaVon], [ThanhTien]) VALUES (1, N'PH1', N'SP20', N'Gói', 10, CAST(15500.000 AS Decimal(12, 3)), CAST(155000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuHuyChiTiet] ([MaPHCT], [MaPhieuHuy], [MaSanPham], [DVT], [SoLuong], [GiaVon], [ThanhTien]) VALUES (2, N'PH2', N'SP2', N'Chiếc', 10, CAST(3000.000 AS Decimal(12, 3)), CAST(30000.000 AS Decimal(12, 3)))
SET IDENTITY_INSERT [dbo].[PhieuHuyChiTiet] OFF
INSERT [dbo].[PhieuHuyHang] ([MaPhieuHuy], [LoaiPhieuHuy], [MaNhanVien], [NgayHuy], [SoLuongHuy], [GiaTriHuy], [GhiChu]) VALUES (N'PH1', 0, N'admin', CAST(0x7F400B00 AS Date), 10, CAST(155000.000 AS Decimal(12, 3)), N'huỷ hết hạn sd')
INSERT [dbo].[PhieuHuyHang] ([MaPhieuHuy], [LoaiPhieuHuy], [MaNhanVien], [NgayHuy], [SoLuongHuy], [GiaTriHuy], [GhiChu]) VALUES (N'PH2', 1, N'admin', CAST(0x7F400B00 AS Date), 10, CAST(30000.000 AS Decimal(12, 3)), N'Hàng lỗi nên huỷ')
SET IDENTITY_INSERT [dbo].[PhieuKiemChiTiet] ON 

INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (1, N'PK1', N'SP1', CAST(2800.000 AS Decimal(12, 3)), N'Chiếc', 200, 200, 0, CAST(0.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (2, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 100, 0, CAST(0.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (3, N'PK3', N'SP23', CAST(23000.000 AS Decimal(12, 3)), N'Lốc', 48, 48, 0, CAST(0.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (4, N'PK6', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 97, -3, CAST(-9000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (5, N'PK6', N'SP5', CAST(4500.000 AS Decimal(12, 3)), N'Chiếc', 50, 50, 0, CAST(0.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (6, N'PK6', N'SP8', CAST(7200.000 AS Decimal(12, 3)), N'Quyển', 50, 49, -1, CAST(-7200.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (7, N'PK6', N'SP9', CAST(2200.000 AS Decimal(12, 3)), N'Cuộn', 50, 50, 0, CAST(0.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (8, N'PK6', N'SP1', CAST(2800.000 AS Decimal(12, 3)), N'Chiếc', 200, -1, -1, CAST(-1.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (9, N'PK6', N'SP4', CAST(4700.000 AS Decimal(12, 3)), N'Chiếc', 100, -1, -1, CAST(-1.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (14, N'PK7', N'SP1', CAST(2800.000 AS Decimal(12, 3)), N'Chiếc', 200, 189, -11, CAST(-30800.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (15, N'PK8', N'SP6', CAST(22000.000 AS Decimal(12, 3)), N'Cái', 50, 53, 3, CAST(66000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (16, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 97, -3, CAST(-9000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (17, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 102, 2, CAST(6000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (18, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 92, -8, CAST(-24000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (19, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 95, -5, CAST(-15000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (20, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 95, -5, CAST(-15000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (21, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 95, -5, CAST(-15000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (22, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 100, 95, -5, CAST(-15000.000 AS Decimal(12, 3)))
INSERT [dbo].[PhieuKiemChiTiet] ([MaPKCT], [MaPhieuKiem], [MaSanPham], [DonGia], [DVT], [TonKho], [ThucTe], [SoLuongLech], [GiaTriLech]) VALUES (23, N'PK2', N'SP2', CAST(3000.000 AS Decimal(12, 3)), N'Chiếc', 95, 97, 2, CAST(6000.000 AS Decimal(12, 3)))
SET IDENTITY_INSERT [dbo].[PhieuKiemChiTiet] OFF
INSERT [dbo].[PhieuKiemKe] ([MaPhieuKiemKe], [MaNhanVien], [NgayTao], [NgayCanBang], [GiaTriLech], [GhiChu], [TrangThai]) VALUES (N'PK1', N'admin', CAST(0x7D400B00 AS Date), NULL, CAST(0.000 AS Decimal(12, 3)), N'đang test thử', 0)
INSERT [dbo].[PhieuKiemKe] ([MaPhieuKiemKe], [MaNhanVien], [NgayTao], [NgayCanBang], [GiaTriLech], [GhiChu], [TrangThai]) VALUES (N'PK2', N'admin', CAST(0x7D400B00 AS Date), CAST(0x7F400B00 AS Date), CAST(6000.000 AS Decimal(12, 3)), N'test lần 8 - cân bằng', 1)
INSERT [dbo].[PhieuKiemKe] ([MaPhieuKiemKe], [MaNhanVien], [NgayTao], [NgayCanBang], [GiaTriLech], [GhiChu], [TrangThai]) VALUES (N'PK3', N'admin', CAST(0x7D400B00 AS Date), NULL, CAST(0.000 AS Decimal(12, 3)), N'abc', 2)
INSERT [dbo].[PhieuKiemKe] ([MaPhieuKiemKe], [MaNhanVien], [NgayTao], [NgayCanBang], [GiaTriLech], [GhiChu], [TrangThai]) VALUES (N'PK6', N'admin', CAST(0x7E400B00 AS Date), NULL, CAST(-16200.000 AS Decimal(12, 3)), N'', 2)
INSERT [dbo].[PhieuKiemKe] ([MaPhieuKiemKe], [MaNhanVien], [NgayTao], [NgayCanBang], [GiaTriLech], [GhiChu], [TrangThai]) VALUES (N'PK7', N'admin', CAST(0x7E400B00 AS Date), NULL, CAST(-30800.000 AS Decimal(12, 3)), N'abc dfdf', 2)
INSERT [dbo].[PhieuKiemKe] ([MaPhieuKiemKe], [MaNhanVien], [NgayTao], [NgayCanBang], [GiaTriLech], [GhiChu], [TrangThai]) VALUES (N'PK8', N'admin', CAST(0x7E400B00 AS Date), NULL, CAST(66000.000 AS Decimal(12, 3)), N'thử lần cuối', 0)
SET IDENTITY_INSERT [dbo].[PhieuNhapChiTiet] ON 

INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (1, N'PN1', N'SP1', 200, CAST(2800.000 AS Decimal(12, 3)), CAST(560000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (2, N'PN1', N'SP2', 100, CAST(3000.000 AS Decimal(12, 3)), CAST(300000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (4, N'PN1', N'SP3', 100, CAST(3300.000 AS Decimal(12, 3)), CAST(330000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (5, N'PN1', N'SP4', 100, CAST(4700.000 AS Decimal(12, 3)), CAST(470000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (6, N'PN1', N'SP5', 50, CAST(4500.000 AS Decimal(12, 3)), CAST(225000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (7, N'PN1', N'SP6', 50, CAST(22000.000 AS Decimal(12, 3)), CAST(1100000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (8, N'PN1', N'SP7', 50, CAST(10500.000 AS Decimal(12, 3)), CAST(525000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (9, N'PN1', N'SP8', 50, CAST(7200.000 AS Decimal(12, 3)), CAST(360000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (10, N'PN1', N'SP9', 50, CAST(2200.000 AS Decimal(12, 3)), CAST(110000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (11, N'PN1', N'SP10', 50, CAST(17800.000 AS Decimal(12, 3)), CAST(890000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (12, N'PN2', N'SP11', 45, CAST(8800.000 AS Decimal(12, 3)), CAST(396000.000 AS Decimal(12, 3)), CAST(0x17410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (13, N'PN2', N'SP12', 45, CAST(9800.000 AS Decimal(12, 3)), CAST(441000.000 AS Decimal(12, 3)), CAST(0x3B420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (14, N'PN2', N'SP13', 10, CAST(75000.000 AS Decimal(12, 3)), CAST(750000.000 AS Decimal(12, 3)), CAST(0xA5400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (15, N'PN2', N'SP14', 20, CAST(35000.000 AS Decimal(12, 3)), CAST(700000.000 AS Decimal(12, 3)), CAST(0xC9400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (16, N'PN2', N'SP15', 30, CAST(25000.000 AS Decimal(12, 3)), CAST(750000.000 AS Decimal(12, 3)), CAST(0xE9400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (17, N'PN2', N'SP16', 30, CAST(35000.000 AS Decimal(12, 3)), CAST(1050000.000 AS Decimal(12, 3)), CAST(0xD3410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (18, N'PN2', N'SP17', 48, CAST(12500.000 AS Decimal(12, 3)), CAST(600000.000 AS Decimal(12, 3)), CAST(0x2A410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (19, N'PN2', N'SP18', 48, CAST(21000.000 AS Decimal(12, 3)), CAST(1008000.000 AS Decimal(12, 3)), CAST(0x08410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (20, N'PN2', N'SP19', 60, CAST(4500.000 AS Decimal(12, 3)), CAST(270000.000 AS Decimal(12, 3)), CAST(0xCC400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (21, N'PN2', N'SP20', 60, CAST(15500.000 AS Decimal(12, 3)), CAST(930000.000 AS Decimal(12, 3)), CAST(0x54410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (22, N'PN3', N'SP21', 6, CAST(240000.000 AS Decimal(12, 3)), CAST(1440000.000 AS Decimal(12, 3)), CAST(0x6C420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (23, N'PN3', N'SP22', 6, CAST(310000.000 AS Decimal(12, 3)), CAST(1860000.000 AS Decimal(12, 3)), CAST(0xED420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (24, N'PN3', N'SP23', 48, CAST(23000.000 AS Decimal(12, 3)), CAST(1104000.000 AS Decimal(12, 3)), CAST(0xB3420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (25, N'PN3', N'SP24', 48, CAST(27000.000 AS Decimal(12, 3)), CAST(1296000.000 AS Decimal(12, 3)), CAST(0x78410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (26, N'PN3', N'SP25', 24, CAST(40000.000 AS Decimal(12, 3)), CAST(960000.000 AS Decimal(12, 3)), CAST(0x37430B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (27, N'PN3', N'SP26', 32, CAST(55000.000 AS Decimal(12, 3)), CAST(1760000.000 AS Decimal(12, 3)), CAST(0x7A400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (28, N'PN4', N'SP27', 72, CAST(2200.000 AS Decimal(12, 3)), CAST(158400.000 AS Decimal(12, 3)), CAST(0x63410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (29, N'PN4', N'SP28', 72, CAST(1000.000 AS Decimal(12, 3)), CAST(72000.000 AS Decimal(12, 3)), CAST(0x6F410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (30, N'PN4', N'SP29', 72, CAST(6400.000 AS Decimal(12, 3)), CAST(460800.000 AS Decimal(12, 3)), CAST(0x3D410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (31, N'PN4', N'SP30', 48, CAST(7800.000 AS Decimal(12, 3)), CAST(374000.000 AS Decimal(12, 3)), CAST(0xA3410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (32, N'PN4', N'SP31', 48, CAST(8000.000 AS Decimal(12, 3)), CAST(384000.000 AS Decimal(12, 3)), CAST(0xB6400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (33, N'PN5', N'SP32', 48, CAST(8000.000 AS Decimal(12, 3)), CAST(384000.000 AS Decimal(12, 3)), CAST(0xD6410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (34, N'PN5', N'SP33', 10, CAST(330000.000 AS Decimal(12, 3)), CAST(3300000.000 AS Decimal(12, 3)), CAST(0x37410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (35, N'PN5', N'SP34', 10, CAST(170000.000 AS Decimal(12, 3)), CAST(1700000.000 AS Decimal(12, 3)), CAST(0xE1400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (36, N'PN5', N'SP35', 48, CAST(32000.000 AS Decimal(12, 3)), CAST(1536000.000 AS Decimal(12, 3)), CAST(0x46410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (37, N'PN5', N'SP36', 48, CAST(5000.000 AS Decimal(12, 3)), CAST(240000.000 AS Decimal(12, 3)), CAST(0xDE400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (38, N'PN5', N'SP37', 48, CAST(14000.000 AS Decimal(12, 3)), CAST(672000.000 AS Decimal(12, 3)), CAST(0xEC400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (39, N'PN5', N'SP38', 48, CAST(12000.000 AS Decimal(12, 3)), CAST(576000.000 AS Decimal(12, 3)), CAST(0x08410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (40, N'PN5', N'SP39', 48, CAST(8000.000 AS Decimal(12, 3)), CAST(384000.000 AS Decimal(12, 3)), CAST(0x8A410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (41, N'PN5', N'SP40', 48, CAST(8000.000 AS Decimal(12, 3)), CAST(384000.000 AS Decimal(12, 3)), CAST(0xC7410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (42, N'PN5', N'SP41', 48, CAST(6000.000 AS Decimal(12, 3)), CAST(288000.000 AS Decimal(12, 3)), CAST(0xF7400B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (43, N'PN6', N'SP42', 48, CAST(40000.000 AS Decimal(12, 3)), CAST(1920000.000 AS Decimal(12, 3)), CAST(0xB4430B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (44, N'PN6', N'SP43', 48, CAST(21000.000 AS Decimal(12, 3)), CAST(1008000.000 AS Decimal(12, 3)), CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (45, N'PN6', N'SP44', 40, CAST(15000.000 AS Decimal(12, 3)), CAST(600000.000 AS Decimal(12, 3)), CAST(0x03420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (46, N'PN6', N'SP45', 48, CAST(4900.000 AS Decimal(12, 3)), CAST(235200.000 AS Decimal(12, 3)), CAST(0x1A410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (47, N'PN6', N'SP46', 48, CAST(4000.000 AS Decimal(12, 3)), CAST(192000.000 AS Decimal(12, 3)), CAST(0xD4410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (48, N'PN6', N'SP47', 48, CAST(13500.000 AS Decimal(12, 3)), CAST(648000.000 AS Decimal(12, 3)), CAST(0x0B420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (49, N'PN6', N'SP48', 40, CAST(14000.000 AS Decimal(12, 3)), CAST(560000.000 AS Decimal(12, 3)), CAST(0x3F430B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (50, N'PN6', N'SP49', 40, CAST(190000.000 AS Decimal(12, 3)), CAST(7600000.000 AS Decimal(12, 3)), CAST(0xC8420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (51, N'PN6', N'SP50', 48, CAST(12000.000 AS Decimal(12, 3)), CAST(576000.000 AS Decimal(12, 3)), CAST(0x46420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (52, N'PN6', N'SP51', 48, CAST(9000.000 AS Decimal(12, 3)), CAST(432000.000 AS Decimal(12, 3)), CAST(0x5B410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (53, N'PN6', N'SP52', 40, CAST(34000.000 AS Decimal(12, 3)), CAST(1360000.000 AS Decimal(12, 3)), CAST(0x9F420B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (54, N'PN6', N'SP53', 24, CAST(47000.000 AS Decimal(12, 3)), CAST(1128000.000 AS Decimal(12, 3)), CAST(0xD3410B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (55, N'PN7', N'SP54', 24, CAST(95000.000 AS Decimal(12, 3)), CAST(2280000.000 AS Decimal(12, 3)), CAST(0x51440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (56, N'PN7', N'SP55', 24, CAST(150000.000 AS Decimal(12, 3)), CAST(3600000.000 AS Decimal(12, 3)), CAST(0x85440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (57, N'PN7', N'SP56', 24, CAST(43000.000 AS Decimal(12, 3)), CAST(1032000.000 AS Decimal(12, 3)), CAST(0xA3440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (58, N'PN7', N'SP57', 24, CAST(83000.000 AS Decimal(12, 3)), CAST(1992000.000 AS Decimal(12, 3)), CAST(0x5C440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (59, N'PN7', N'SP58', 24, CAST(55000.000 AS Decimal(12, 3)), CAST(1320000.000 AS Decimal(12, 3)), CAST(0xB4430B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (60, N'PN7', N'SP59', 24, CAST(74000.000 AS Decimal(12, 3)), CAST(1776000.000 AS Decimal(12, 3)), CAST(0xC5430B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (61, N'PN7', N'SP60', 24, CAST(46000.000 AS Decimal(12, 3)), CAST(1104000.000 AS Decimal(12, 3)), CAST(0x97430B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (62, N'PN7', N'SP61', 36, CAST(42000.000 AS Decimal(12, 3)), CAST(1512000.000 AS Decimal(12, 3)), CAST(0x8F440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (63, N'PN7', N'SP62', 36, CAST(26000.000 AS Decimal(12, 3)), CAST(936000.000 AS Decimal(12, 3)), CAST(0xAC440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (64, N'PN7', N'SP63', 36, CAST(90000.000 AS Decimal(12, 3)), CAST(3240000.000 AS Decimal(12, 3)), CAST(0x5C440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (65, N'PN7', N'SP64', 15, CAST(90000.000 AS Decimal(12, 3)), CAST(1350000.000 AS Decimal(12, 3)), CAST(0x9B440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (66, N'PN7', N'SP65', 15, CAST(52000.000 AS Decimal(12, 3)), CAST(780000.000 AS Decimal(12, 3)), CAST(0x7B440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (67, N'PN7', N'SP66', 15, CAST(205000.000 AS Decimal(12, 3)), CAST(3075000.000 AS Decimal(12, 3)), CAST(0x9F440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (68, N'PN7', N'SP67', 15, CAST(150000.000 AS Decimal(12, 3)), CAST(2250000.000 AS Decimal(12, 3)), CAST(0x99440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (69, N'PN7', N'SP68', 18, CAST(78000.000 AS Decimal(12, 3)), CAST(1404000.000 AS Decimal(12, 3)), CAST(0xAB440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (70, N'PN8', N'SP70', 24, CAST(14000.000 AS Decimal(12, 3)), CAST(336000.000 AS Decimal(12, 3)), CAST(0xAD440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (71, N'PN8', N'SP71', 24, CAST(22000.000 AS Decimal(12, 3)), CAST(528000.000 AS Decimal(12, 3)), CAST(0x7C440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (72, N'PN8', N'SP72', 24, CAST(26000.000 AS Decimal(12, 3)), CAST(624000.000 AS Decimal(12, 3)), CAST(0x66440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (73, N'PN8', N'SP73', 24, CAST(21000.000 AS Decimal(12, 3)), CAST(504000.000 AS Decimal(12, 3)), CAST(0x65440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (74, N'PN8', N'SP74', 24, CAST(20000.000 AS Decimal(12, 3)), CAST(480000.000 AS Decimal(12, 3)), CAST(0x9D440B00 AS Date))
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (75, N'PN9', N'SP75', 12, CAST(70.000 AS Decimal(12, 3)), CAST(840000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (76, N'PN9', N'SP76', 20, CAST(5000.000 AS Decimal(12, 3)), CAST(100000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (77, N'PN9', N'SP77', 15, CAST(14000.000 AS Decimal(12, 3)), CAST(210000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (80, N'PN9', N'SP78', 15, CAST(90000.000 AS Decimal(12, 3)), CAST(1350000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (81, N'PN9', N'SP79', 15, CAST(75000.000 AS Decimal(12, 3)), CAST(1125000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (82, N'PN9', N'SP80', 15, CAST(240000.000 AS Decimal(12, 3)), CAST(3600000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (83, N'PN9', N'SP81', 30, CAST(15000.000 AS Decimal(12, 3)), CAST(450000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (84, N'PN9', N'SP82', 24, CAST(10000.000 AS Decimal(12, 3)), CAST(240000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (85, N'PN9', N'SP83', 24, CAST(17000.000 AS Decimal(12, 3)), CAST(408000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (86, N'PN9', N'SP84', 24, CAST(24000.000 AS Decimal(12, 3)), CAST(576000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (87, N'PN10', N'SP85', 20, CAST(45000.000 AS Decimal(12, 3)), CAST(900000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (88, N'PN10', N'SP86', 40, CAST(40000.000 AS Decimal(12, 3)), CAST(1600000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (89, N'PN10', N'SP87', 40, CAST(31500.000 AS Decimal(12, 3)), CAST(1260000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (91, N'PN10', N'SP88', 20, CAST(8000.000 AS Decimal(12, 3)), CAST(160000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (92, N'PN10', N'SP89', 40, CAST(15000.000 AS Decimal(12, 3)), CAST(600000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (93, N'PN10', N'SP90', 240, CAST(14000.000 AS Decimal(12, 3)), CAST(3360000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapChiTiet] ([MaPNCT], [MaPhieuNhap], [MaSanPham], [SoLuong], [GiaNhap], [ThanhTien], [HSDMoiNhat]) VALUES (94, N'PN11', N'SP11', 40, CAST(10000.000 AS Decimal(12, 3)), CAST(400000.000 AS Decimal(12, 3)), CAST(0x1C410B00 AS Date))
SET IDENTITY_INSERT [dbo].[PhieuNhapChiTiet] OFF
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN1', N'khanhnq', CAST(0x3E400B00 AS Date), N'NCC1', 800, CAST(2.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(5249860.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN10', N'khanhnq', CAST(0x4C400B00 AS Date), N'NCC7', 400, CAST(3.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(8407960.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN11', N'admin', CAST(0x80400B00 AS Date), N'NCC1', 40, CAST(0.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(440000.000 AS Decimal(12, 3)), N'ghi chú nè')
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN2', N'khanhnq', CAST(0x47400B00 AS Date), N'NCC2', 396, CAST(3.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(7356965.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN3', N'khanhnq', CAST(0x47400B00 AS Date), N'NCC3', 164, CAST(3.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(8984140.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN4', N'khanhnq', CAST(0x48400B00 AS Date), N'NCC4', 312, CAST(2.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(1562669.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN5', N'khanhnq', CAST(0x48400B00 AS Date), N'NCC5', 404, CAST(3.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(10098088.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN6', N'khanhnq', CAST(0x49400B00 AS Date), N'NCC9', 520, CAST(4.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(17169715.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN7', N'khanhnq', CAST(0x4A400B00 AS Date), N'NCC7', 354, CAST(5.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(28895295.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN8', N'khanhnq', CAST(0x4A400B00 AS Date), N'NCC8', 120, CAST(2.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(2664816.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuNhapHang] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongSoLuong], [ChietKhau], [VAT], [ThanhTien], [GhiChu]) VALUES (N'PN9', N'khanhnq', CAST(0x4B400B00 AS Date), N'NCC11', 194, CAST(3.0 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(9495233.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[PhieuTraHang] ([MaPhieuTra], [MaNhanVien], [NgayTra], [MaNCC], [TongSoLuong], [ThanhTien], [GhiChu]) VALUES (N'PT1', N'admin', CAST(0x79400B00 AS Date), N'NCC7', 300, CAST(12000000.000 AS Decimal(12, 3)), NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP1', N'Bút bi Thiên Long TL27', N'', N'NH2', N'NCC1', 4, 182, 20, 200, CAST(2800.000 AS Decimal(12, 3)), CAST(3500 AS Decimal(9, 0)), CAST(0x7F400B00 AS Date), NULL, N'sp1.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP10', N'Băng dính 5F', NULL, N'NH2', N'NCC1', 13, 50, 10, 50, CAST(17800.000 AS Decimal(12, 3)), CAST(20000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP11', N'Kẹo Mềm Alpenliebe Dâu & Nho (Gói 25 viên)', NULL, N'NH3', N'NCC2', 3, 83, 5, 45, CAST(9470.588 AS Decimal(12, 3)), CAST(11000 AS Decimal(9, 0)), CAST(0x17410B00 AS Date), CAST(0x1C410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP12', N'Kẹo Golia Activ Plus (Gói 45 viên)', NULL, N'NH3', N'NCC2', 3, 45, 5, 45, CAST(9800.000 AS Decimal(12, 3)), CAST(12500 AS Decimal(9, 0)), CAST(0x3B420B00 AS Date), CAST(0x3B420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP13', N'Bánh Chocopie (Hộp 20 Cái)', NULL, N'NH3', N'NCC2', 5, 10, 2, 10, CAST(75000.000 AS Decimal(12, 3)), CAST(88000 AS Decimal(9, 0)), CAST(0xA5400B00 AS Date), CAST(0xA5400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP14', N'Khoai Tây Chiên Slide Kinh Đô', NULL, N'NH3', N'NCC2', 6, 20, 5, 20, CAST(35000.000 AS Decimal(12, 3)), CAST(42000 AS Decimal(9, 0)), CAST(0xC9400B00 AS Date), CAST(0xC9400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP15', N'Kẹo Singum Lotte Xylitol Cool', NULL, N'NH3', N'NCC2', 5, 30, 6, 30, CAST(25000.000 AS Decimal(12, 3)), CAST(33000 AS Decimal(9, 0)), CAST(0xE9400B00 AS Date), CAST(0xE9400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP16', N'Bánh Bông Lan Kinh Đô Solite Vị Cappuccino (276g)', NULL, N'NH3', N'NCC2', 5, 30, 5, 30, CAST(35000.000 AS Decimal(12, 3)), CAST(45000 AS Decimal(9, 0)), CAST(0xD3410B00 AS Date), CAST(0xD3410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP17', N'Bánh Oreo Chocolate 133g', NULL, N'NH3', N'NCC2', 3, 48, 10, 48, CAST(12500.000 AS Decimal(12, 3)), CAST(15000 AS Decimal(9, 0)), CAST(0x2A410B00 AS Date), CAST(0x2A410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP18', N'Bánh Kinh Đô AFC Vị Tảo Biển (Hộp 200g)', NULL, N'NH3', N'NCC2', 5, 48, 10, 48, CAST(21000.000 AS Decimal(12, 3)), CAST(25000 AS Decimal(9, 0)), CAST(0x08410B00 AS Date), CAST(0x08410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP19', N'Bánh Xốp Richeese Nabati 52g', NULL, N'NH3', N'NCC2', 3, 60, 10, 60, CAST(4500.000 AS Decimal(12, 3)), CAST(7000 AS Decimal(9, 0)), CAST(0xCC400B00 AS Date), CAST(0xCC400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP2', N'Bút nước Mini', NULL, N'NH2', N'NCC1', 4, 87, 20, 100, CAST(3000.000 AS Decimal(12, 3)), CAST(4000 AS Decimal(9, 0)), NULL, NULL, N'sp2.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP20', N'Snack Lay''s Khoai Tây Tự Nhiên 95g', NULL, N'NH3', N'NCC2', 3, 60, 10, 60, CAST(15500.000 AS Decimal(12, 3)), CAST(21000 AS Decimal(9, 0)), CAST(0x54410B00 AS Date), CAST(0x54410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP21', N'Sữa bột Ensure Original Nutrition Powder (400g)', NULL, N'NH4', N'NCC3', 5, 6, 1, 6, CAST(240000.000 AS Decimal(12, 3)), CAST(290000 AS Decimal(9, 0)), CAST(0x6C420B00 AS Date), CAST(0x6C420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP22', N'Sữa bột Abbott Grow Gold 6+', NULL, N'NH4', N'NCC3', 6, 6, 1, 6, CAST(310000.000 AS Decimal(12, 3)), CAST(370000 AS Decimal(9, 0)), CAST(0xED420B00 AS Date), CAST(0xED420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP23', N'Lốc 4 Sữa Tươi Tiệt Trùng Vinamilk 100% Có Đường', N'8934673573344', N'NH4', N'NCC3', 7, 48, 10, 48, CAST(23000.000 AS Decimal(12, 3)), CAST(27000 AS Decimal(9, 0)), CAST(0xB3420B00 AS Date), CAST(0xB3420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP24', N'Lốc 4 Sữa Tươi Tiệt Trùng TH True Milk Có đường', N'8935217400157', N'NH4', N'NCC3', 7, 48, 10, 48, CAST(27000.000 AS Decimal(12, 3)), CAST(32000 AS Decimal(9, 0)), CAST(0x78410B00 AS Date), CAST(0x78410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP25', N'Sữa chua uống SuSu IQ Hương Cam', NULL, N'NH4', N'NCC3', 2, 24, 4, 24, CAST(40000.000 AS Decimal(12, 3)), CAST(46000 AS Decimal(9, 0)), CAST(0x37430B00 AS Date), CAST(0x37430B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP26', N'Sữa chua Vinamilk có đường hộp 100g', NULL, N'NH4', N'NCC3', 5, 32, 8, 32, CAST(55000.000 AS Decimal(12, 3)), CAST(7000 AS Decimal(9, 0)), CAST(0x7A400B00 AS Date), CAST(0x7A400B00 AS Date), N'default.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP27', N'Nước tinh khiết Aquafina chai 500ml', NULL, N'NH5', N'NCC4', 2, 72, 15, 72, CAST(2200.000 AS Decimal(12, 3)), CAST(4000 AS Decimal(9, 0)), CAST(0x63410B00 AS Date), CAST(0x63410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP28', N'Nước tinh khiết Aquafina chai 330ml', NULL, N'NH5', N'NCC4', 2, 72, 15, 72, CAST(1000.000 AS Decimal(12, 3)), CAST(2500 AS Decimal(9, 0)), CAST(0x6F410B00 AS Date), CAST(0x6F410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP29', N'Nước khoáng thiên nhiên Aquafina 1.5L', N'8934588063060', N'NH5', N'NCC4', 2, 72, 12, 72, CAST(6400.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), CAST(0x3D410B00 AS Date), CAST(0x3D410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP3', N'Bút chì 132 - HB/2B', NULL, N'NH2', N'NCC1', 4, 100, 20, 100, CAST(3300.000 AS Decimal(12, 3)), CAST(4000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP30', N'Nước ngọt có gas Pepsi 330ml (Lon)', N'8934588012228', N'NH5', N'NCC4', 6, 48, 10, 48, CAST(7800.000 AS Decimal(12, 3)), CAST(9000 AS Decimal(9, 0)), CAST(0xA3410B00 AS Date), CAST(0xA3410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP31', N'Nước tăng lực Sting Espresso chai 330ml', N'8934588593024', N'NH5', N'NCC4', 2, 48, 12, 48, CAST(8000.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), CAST(0xB6400B00 AS Date), CAST(0xB6400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP32', N'Trà thảo mộc thanh nhiệt Dr Thanh có đường (500ml)', NULL, N'NH5', N'NCC5', 2, 48, 12, 48, CAST(8000.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), CAST(0xD6410B00 AS Date), CAST(0xD6410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP33', N'Bia Tiger thùng 24 lon (330ml)', N'8934822101336', N'NH5', N'NCC5', 8, 10, 2, 10, CAST(330000.000 AS Decimal(12, 3)), CAST(345000 AS Decimal(9, 0)), CAST(0x37410B00 AS Date), CAST(0x37410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP34', N'Bia Sư tử Trắng thùng 24 lon 330ml', NULL, N'NH5', N'NCC5', 8, 10, 2, 10, CAST(170000.000 AS Decimal(12, 3)), CAST(200000 AS Decimal(9, 0)), CAST(0xE1400B00 AS Date), CAST(0xE1400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP35', N'Nước Gạo Rang Woongjin Hàn Quốc (500ml)', NULL, N'NH5', N'NCC5', 2, 48, 10, 48, CAST(32000.000 AS Decimal(12, 3)), CAST(38000 AS Decimal(9, 0)), CAST(0x46410B00 AS Date), CAST(0x46410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP36', N'Trà xanh C2 hương Chanh (360ml)', NULL, N'NH5', N'NCC5', 2, 48, 12, 48, CAST(5000.000 AS Decimal(12, 3)), CAST(7000 AS Decimal(9, 0)), CAST(0xDE400B00 AS Date), CAST(0xDE400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP37', N'Nước ép lên men Strongbow (330ml)', NULL, N'NH5', N'NCC5', 2, 48, 12, 48, CAST(14000.000 AS Decimal(12, 3)), CAST(18000 AS Decimal(9, 0)), CAST(0xEC400B00 AS Date), CAST(0xEC400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP38', N'Nước ngọt Fanta vị cam 1.5L', NULL, N'NH5', N'NCC5', 2, 48, 12, 48, CAST(12000.000 AS Decimal(12, 3)), CAST(16000 AS Decimal(9, 0)), CAST(0x08410B00 AS Date), CAST(0x08410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP39', N'Nước Uống Tinh Khiết Good Mood Vị Sữa Chua (455ml)', NULL, N'NH5', N'NCC5', 2, 48, 12, 48, CAST(8000.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), CAST(0x8A410B00 AS Date), CAST(0x8A410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP4', N'Gọt bút chì Maped', NULL, N'NH2', N'NCC1', 4, 100, 20, 100, CAST(4700.000 AS Decimal(12, 3)), CAST(6000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP40', N'Nước ngọt Coca Cola (Lon 330ml)', NULL, N'NH5', N'NCC5', 6, 48, 12, 48, CAST(8000.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), CAST(0xC7410B00 AS Date), CAST(0xC7410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP41', N'Nước Nho Nha Đam V-Fresh (Lon 350ml)', NULL, N'NH5', N'NCC5', 6, 48, 12, 48, CAST(6000.000 AS Decimal(12, 3)), CAST(8000 AS Decimal(9, 0)), CAST(0xF7400B00 AS Date), CAST(0xF7400B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP42', N'Bột ngọt Vedan gói 1kg', NULL, N'NH6', N'NCC9', 3, 48, 12, 48, CAST(40000.000 AS Decimal(12, 3)), CAST(49000 AS Decimal(9, 0)), CAST(0xB4430B00 AS Date), CAST(0xB4430B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP43', N'Hạt nêm tôm thanh ngọt Chinsu gói 400g', NULL, N'NH6', N'NCC9', 3, 48, 6, 48, CAST(21000.000 AS Decimal(12, 3)), CAST(25000 AS Decimal(9, 0)), CAST(0xB7410B00 AS Date), CAST(0xB7410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP44', N'Muối tôm Tây Ninh Dh Foods Natural  lọ 110g', NULL, N'NH6', N'NCC9', 11, 40, 10, 40, CAST(15000.000 AS Decimal(12, 3)), CAST(19000 AS Decimal(9, 0)), CAST(0x03420B00 AS Date), CAST(0x03420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP45', N'Bột canh Vifon gói 200g', NULL, N'NH6', N'NCC9', 3, 48, 6, 48, CAST(4900.000 AS Decimal(12, 3)), CAST(5500 AS Decimal(9, 0)), CAST(0x1A410B00 AS Date), CAST(0x1A410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP46', N'Bột canh nấm hương Cholimex gói 180g', NULL, N'NH6', N'NCC9', 3, 48, 6, 48, CAST(4000.000 AS Decimal(12, 3)), CAST(5000 AS Decimal(9, 0)), CAST(0xD4410B00 AS Date), CAST(0xD4410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP47', N'Đường phèn hạt Hoàng Hải gói 500g', NULL, N'NH6', N'NCC9', 3, 48, 6, 48, CAST(13500.000 AS Decimal(12, 3)), CAST(17000 AS Decimal(9, 0)), CAST(0x0B420B00 AS Date), CAST(0x0B420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP48', N'Đường tinh luyện thượng hạng La Ngà gói 1kg', NULL, N'NH6', N'NCC9', 3, 40, 5, 40, CAST(14000.000 AS Decimal(12, 3)), CAST(17500 AS Decimal(9, 0)), CAST(0x3F430B00 AS Date), CAST(0x3F430B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP49', N'Dầu ăn cao cấp Neptune Gold bình 5L', NULL, N'NH6', N'NCC9', 2, 40, 4, 40, CAST(190000.000 AS Decimal(12, 3)), CAST(219000 AS Decimal(9, 0)), CAST(0xC8420B00 AS Date), CAST(0xC8420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP5', N'Tẩy bút chì Lancer ES-107', NULL, N'NH2', N'NCC1', 4, 50, 10, 50, CAST(4500.000 AS Decimal(12, 3)), CAST(5500 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP50', N'Nước tương đậu nành đậm đặc Maggi chai 300ml', NULL, N'NH6', N'NCC9', 2, 48, 6, 48, CAST(12000.000 AS Decimal(12, 3)), CAST(14500 AS Decimal(9, 0)), CAST(0x46420B00 AS Date), CAST(0x46420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP51', N'Tương ớt Chinsu chai 250g', NULL, N'NH6', N'NCC9', 2, 48, 6, 48, CAST(9000.000 AS Decimal(12, 3)), CAST(11500 AS Decimal(9, 0)), CAST(0x5B410B00 AS Date), CAST(0x5B410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP52', N'Tương trộn ăn liền Haechandle hộp 500g', NULL, N'NH6', N'NCC9', 5, 40, 5, 40, CAST(34000.000 AS Decimal(12, 3)), CAST(38000 AS Decimal(9, 0)), CAST(0x9F420B00 AS Date), CAST(0x9F420B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP53', N'Dầu hào Chung Jung One chai 260g', NULL, N'NH6', N'NCC9', 2, 24, 6, 24, CAST(47000.000 AS Decimal(12, 3)), CAST(52000 AS Decimal(9, 0)), CAST(0xD3410B00 AS Date), CAST(0xD3410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP54', N'Dầu gội nước hoa X-Men For Boss Intense 380g', NULL, N'NH7', N'NCC7', 2, 24, 6, 24, CAST(95000.000 AS Decimal(12, 3)), CAST(112000 AS Decimal(9, 0)), CAST(0x51440B00 AS Date), CAST(0x51440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP55', N'Dầu gội sạch gàu Clear mát lạnh bạc hà 874ml', NULL, N'NH7', N'NCC7', 2, 24, 6, 24, CAST(150000.000 AS Decimal(12, 3)), CAST(177000 AS Decimal(9, 0)), CAST(0x85440B00 AS Date), CAST(0x85440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP56', N'Dầu gội Lifebuoy tóc dày óng ả 311ml', NULL, N'NH7', N'NCC7', 2, 24, 6, 24, CAST(43000.000 AS Decimal(12, 3)), CAST(51000 AS Decimal(9, 0)), CAST(0xA3440B00 AS Date), CAST(0xA3440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP57', N'Sữa tắm gội cho bé Wesser Powder 500ml', NULL, N'NH7', N'NCC7', 2, 24, 6, 24, CAST(83000.000 AS Decimal(12, 3)), CAST(90000 AS Decimal(9, 0)), CAST(0x5C440B00 AS Date), CAST(0x5C440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP58', N'Kem rửa mặt Oxy sạch khuẩn mụn kiểm soát nhờn 100g', NULL, N'NH7', N'NCC7', 10, 24, 6, 24, CAST(55000.000 AS Decimal(12, 3)), CAST(61500 AS Decimal(9, 0)), CAST(0xB4430B00 AS Date), CAST(0xB4430B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP59', N'Sữa rửa mặt sáng da kiểm soát nhờn Nivea Men 100g', NULL, N'NH7', N'NCC7', 10, 24, 6, 24, CAST(74000.000 AS Decimal(12, 3)), CAST(78000 AS Decimal(9, 0)), CAST(0xC5430B00 AS Date), CAST(0xC5430B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP6', N'Kéo to Deli A6010', NULL, N'NH2', N'NCC1', 1, 50, 10, 50, CAST(22000.000 AS Decimal(12, 3)), CAST(26500 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP60', N'Kem rửa mặt Vitamin Acnes sáng da mờ sẹo 100g', NULL, N'NH7', N'NCC7', 10, 24, 6, 24, CAST(46000.000 AS Decimal(12, 3)), CAST(50500 AS Decimal(9, 0)), CAST(0x97430B00 AS Date), CAST(0x97430B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP61', N'Kem đánh răng Closeup dầu quất và thảo dược 230g', NULL, N'NH7', N'NCC7', 10, 36, 6, 36, CAST(42000.000 AS Decimal(12, 3)), CAST(46000 AS Decimal(9, 0)), CAST(0x8F440B00 AS Date), CAST(0x8F440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP62', N'Kem đánh răng Colgate ngừa sâu răng tối đa 250g', NULL, N'NH7', N'NCC7', 10, 36, 6, 36, CAST(26000.000 AS Decimal(12, 3)), CAST(30000 AS Decimal(9, 0)), CAST(0xAC440B00 AS Date), CAST(0xAC440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP63', N'Nước súc miệng Listerine Cool Mint bạc hà 750ml', NULL, N'NH7', N'NCC7', 2, 36, 6, 36, CAST(90000.000 AS Decimal(12, 3)), CAST(102000 AS Decimal(9, 0)), CAST(0x5C440B00 AS Date), CAST(0x5C440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP64', N'Nước giặt NET Matic hương nước hoa chai 3.6kg', NULL, N'NH7', N'NCC7', 8, 15, 3, 15, CAST(90000.000 AS Decimal(12, 3)), CAST(103000 AS Decimal(9, 0)), CAST(0x9B440B00 AS Date), CAST(0x9B440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP65', N'Nước rửa chén NET  VitaE hương trà xanh can 4kg', NULL, N'NH8', N'NCC7', 8, 15, 3, 15, CAST(52000.000 AS Decimal(12, 3)), CAST(58000 AS Decimal(9, 0)), CAST(0x7B440B00 AS Date), CAST(0x7B440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP66', N'Bột giặt OMO hệ bọt thông minh 6kg', NULL, N'NH8', N'NCC7', 3, 15, 3, 15, CAST(205000.000 AS Decimal(12, 3)), CAST(214000 AS Decimal(9, 0)), CAST(0x9F440B00 AS Date), CAST(0x9F440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP67', N'Bột giặt Surf hương nước hoa duyên dáng 5.5kg', NULL, N'NH8', N'NCC7', 3, 15, 3, 15, CAST(150000.000 AS Decimal(12, 3)), CAST(167000 AS Decimal(9, 0)), CAST(0x99440B00 AS Date), CAST(0x99440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP68', N'Nước xả vải Downy Parfum Collection túi 1.5 lít', NULL, N'NH8', N'NCC7', 3, 18, 3, 18, CAST(78000.000 AS Decimal(12, 3)), CAST(84000 AS Decimal(9, 0)), CAST(0xAB440B00 AS Date), CAST(0xAB440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP69', N'Nước tăng lực Number One chai 330mL', N'8936142250060', N'NH5', N'NCC5', 2, 0, 10, 72, CAST(8000.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), CAST(0x9F410B00 AS Date), CAST(0x9F410B00 AS Date), N'default.jpg', 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP7', N'Vở kẻ ngang 120 trang', NULL, N'NH2', N'NCC1', 12, 50, 10, 50, CAST(10500.000 AS Decimal(12, 3)), CAST(13000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP70', N'Nước tẩy bồn cầu NET tẩy siêu mạnh 500g', NULL, N'NH8', N'NCC8', 2, 24, 6, 24, CAST(14000.000 AS Decimal(12, 3)), CAST(18000 AS Decimal(9, 0)), CAST(0xAD440B00 AS Date), CAST(0xAD440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP71', N'Nước tẩy nhà tắm NET Power Clean 900g', NULL, N'NH8', N'NCC8', 2, 24, 6, 24, CAST(22000.000 AS Decimal(12, 3)), CAST(26000 AS Decimal(9, 0)), CAST(0x7C440B00 AS Date), CAST(0x7C440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP72', N'Nước lau sàn Sunlight hương hoa Diên Vỹ chai 1kg', NULL, N'NH8', N'NCC8', 2, 24, 3, 24, CAST(26000.000 AS Decimal(12, 3)), CAST(31000 AS Decimal(9, 0)), CAST(0x66440B00 AS Date), CAST(0x66440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP73', N'Nước lau sàn Sunlight hương hoa Lily túi 1kg', NULL, N'NH8', N'NCC8', 3, 24, 3, 24, CAST(21000.000 AS Decimal(12, 3)), CAST(25000 AS Decimal(9, 0)), CAST(0x65440B00 AS Date), CAST(0x65440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP74', N'Nước lau kính CIF 520ml', NULL, N'NH8', N'NCC8', 2, 24, 6, 24, CAST(20000.000 AS Decimal(12, 3)), CAST(24000 AS Decimal(9, 0)), CAST(0x9D440B00 AS Date), CAST(0x9D440B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP75', N'Cây lăn bột trung gỗ xà cừ tự nhiên Ichigo IG-5550', NULL, N'NH9', N'NCC11', 9, 12, 3, 12, CAST(70000.000 AS Decimal(12, 3)), CAST(82000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP76', N'Rổ nhựa 27cm Tý Liên R-300', NULL, N'NH9', N'NCC11', 1, 20, 3, 20, CAST(5000.000 AS Decimal(12, 3)), CAST(9000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP77', N'Túi rác đen có quai Inochi 60x90cm (19 túi)', NULL, N'NH9', N'NCC11', 13, 15, 3, 15, CAST(14000.000 AS Decimal(12, 3)), CAST(19000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP78', N'Hũ đựng gia vị thủy tinh Glasslock 500ml', NULL, N'NH9', N'NCC11', 11, 15, 3, 15, CAST(90000.000 AS Decimal(12, 3)), CAST(98000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP79', N'Dao gọt Shika SK-2061 thép không gỉ 12.7cm', NULL, N'NH9', N'NCC11', 1, 15, 5, 15, CAST(75000.000 AS Decimal(12, 3)), CAST(79000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP8', N'Vở kẻ ngang 72 trang', NULL, N'NH2', N'NCC1', 12, 50, 10, 50, CAST(7200.000 AS Decimal(12, 3)), CAST(9000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP80', N'Hộp thủy tinh 390 ml Glasslock', NULL, N'NH9', N'NCC11', 5, 15, 3, 15, CAST(240000.000 AS Decimal(12, 3)), CAST(259000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP81', N'Miếng rửa chén 3M Scotch Brite KTM1S', NULL, N'NH9', N'NCC11', 1, 30, 5, 30, CAST(15000.000 AS Decimal(12, 3)), CAST(19000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP82', N'10 dĩa giấy phủ bạc Hunufa 16cm', NULL, N'NH9', N'NCC11', 3, 24, 3, 24, CAST(10000.000 AS Decimal(12, 3)), CAST(13500 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP83', N'10 ly giấy in hình Hunufa 360ml', NULL, N'NH9', N'NCC11', 3, 24, 3, 24, CAST(17000.000 AS Decimal(12, 3)), CAST(21000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP84', N'10 dĩa nhựa PS Oval Hunufa 31.5cm', NULL, N'NH9', N'NCC11', 3, 24, 3, 24, CAST(24000.000 AS Decimal(12, 3)), CAST(27000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP85', N'Tăm nhựa nha khoa cao cấp Nhật gói 140 que', NULL, N'NH1', N'NCC7', 3, 20, 3, 20, CAST(45000.000 AS Decimal(12, 3)), CAST(50000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP86', N'Khăn ướt Wonder Care phấn thơm gói 100 miếng', NULL, N'NH1', N'NCC7', 5, 40, 10, 40, CAST(40000.000 AS Decimal(12, 3)), CAST(45000 AS Decimal(9, 0)), CAST(0x8C410B00 AS Date), CAST(0x8C410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP87', N'Khăn ướt em bé Agi không mùi gói 100 miếng', NULL, N'NH1', N'NCC7', 5, 40, 10, 40, CAST(31500.000 AS Decimal(12, 3)), CAST(36500 AS Decimal(9, 0)), CAST(0x8C410B00 AS Date), CAST(0x8C410B00 AS Date), N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP88', N'Hộp 5 cái lưỡi lam Gillette Super Thin', N'', N'NH1', N'NCC7', 5, 20, 5, 20, CAST(8000.000 AS Decimal(12, 3)), CAST(10000 AS Decimal(9, 0)), NULL, NULL, N'sp88.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP89', N'Bông ráy tai Lovely hộp nhựa 200 cây', NULL, N'NH1', N'NCC7', 5, 40, 5, 40, CAST(15000.000 AS Decimal(12, 3)), CAST(19000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP9', N'Băng dính 2 mặt 1.5F', NULL, N'NH2', N'NCC1', 13, 50, 10, 50, CAST(2200.000 AS Decimal(12, 3)), CAST(3000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVach], [MaNhomHang], [MaNCC], [MaDVT], [TonKho], [DinhMucNhoNhat], [DinhMucLonNhat], [GiaVon], [GiaBan], [HSDTruoc], [HSDMoiNhat], [HinhAnh], [TrangThai]) VALUES (N'SP90', N'Giấy vệ sinh đa năng Let-green gói 180 tờ 2 lớp', NULL, N'NH1', N'NCC7', 3, 240, 24, 240, CAST(14000.000 AS Decimal(12, 3)), CAST(18000 AS Decimal(9, 0)), NULL, NULL, N'default.jpg', 1)
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_VaiTro]  DEFAULT ((0)) FOR [VaiTro]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  CONSTRAINT [DF_NhaCungCap_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([TenDangNhap])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPham]
GO
ALTER TABLE [dbo].[PhieuHuyChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuHuyChiTiet_PhieuHuyHang] FOREIGN KEY([MaPhieuHuy])
REFERENCES [dbo].[PhieuHuyHang] ([MaPhieuHuy])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuHuyChiTiet] CHECK CONSTRAINT [FK_PhieuHuyChiTiet_PhieuHuyHang]
GO
ALTER TABLE [dbo].[PhieuHuyChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuHuyChiTiet_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuHuyChiTiet] CHECK CONSTRAINT [FK_PhieuHuyChiTiet_SanPham]
GO
ALTER TABLE [dbo].[PhieuHuyHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuHuyHang_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([TenDangNhap])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuHuyHang] CHECK CONSTRAINT [FK_PhieuHuyHang_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuKiemChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKiemChiTiet_PhieuKiemKe] FOREIGN KEY([MaPhieuKiem])
REFERENCES [dbo].[PhieuKiemKe] ([MaPhieuKiemKe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuKiemChiTiet] CHECK CONSTRAINT [FK_PhieuKiemChiTiet_PhieuKiemKe]
GO
ALTER TABLE [dbo].[PhieuKiemChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKiemChiTiet_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuKiemChiTiet] CHECK CONSTRAINT [FK_PhieuKiemChiTiet_SanPham]
GO
ALTER TABLE [dbo].[PhieuKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKiemKe_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([TenDangNhap])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuKiemKe] CHECK CONSTRAINT [FK_PhieuKiemKe_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_PhieuNhapHang] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhapHang] ([MaPhieuNhap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_PhieuNhapHang]
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapChiTiet_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet] CHECK CONSTRAINT [FK_PhieuNhapChiTiet_SanPham]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([TenDangNhap])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_PhieuTraHang] FOREIGN KEY([MaPhieuTra])
REFERENCES [dbo].[PhieuTraHang] ([MaPhieuTra])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_PhieuTraHang]
GO
ALTER TABLE [dbo].[PhieuTraChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraChiTiet_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuTraChiTiet] CHECK CONSTRAINT [FK_PhieuTraChiTiet_SanPham]
GO
ALTER TABLE [dbo].[PhieuTraHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuTraHang_NguoiDung] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NguoiDung] ([TenDangNhap])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuTraHang] CHECK CONSTRAINT [FK_PhieuTraHang_NguoiDung]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DonViTinh] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DonViTinh] ([MaDVT])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DonViTinh]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomHang] FOREIGN KEY([MaNhomHang])
REFERENCES [dbo].[NhomHang] ([MaNhomHang])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomHang]
GO
USE [master]
GO
ALTER DATABASE [quanlysieuthimini] SET  READ_WRITE 
GO


CREATE PROC [dbo].[sp_bc_doanhthu7ngay]
AS BEGIN
	select 
		(select sum(thanhtien) from hoadon where ngayban = format(getdate()-6,'yyyy-MM-dd')) as 'ngay6',
		(select sum(thanhtien) from hoadon where ngayban = format(getdate()-5,'yyyy-MM-dd')) as 'ngay5',
		(select sum(thanhtien) from hoadon where ngayban = format(getdate()-4,'yyyy-MM-dd')) as 'ngay4',
		(select sum(thanhtien) from hoadon where ngayban = format(getdate()-3,'yyyy-MM-dd')) as 'ngay3',
		(select sum(thanhtien) from hoadon where ngayban = format(getdate()-2,'yyyy-MM-dd')) as 'ngay2',
		(select sum(thanhtien) from hoadon where ngayban = format(getdate()-1,'yyyy-MM-dd')) as 'ngay1',
		(select sum(thanhtien) from hoadon where ngayban = format(getdate(),'yyyy-MM-dd')) as 'ngay0'
END
GO

CREATE PROC [dbo].[sp_giavonhangban](@tungay date, @denngay date)
AS BEGIN
	select sum([tam]) 
		from (select 
				sum(soluong)*(select giavon from sanpham where sanpham.masanpham = hoadonchitiet.masanpham) as [tam]
				from hoadonchitiet 
				where mahoadon in 
					(select mahoadon from hoadon where ngayban >= @tungay and ngayban <= @denngay)
		group by masanpham) as [bangtam]
END
GO

CREATE PROC [dbo].[sp_insert_hoadon]
	@MaKhachHang	nvarchar(7) = null,
	@MaNhanVien		nvarchar(20) = null,
	@NgayBan		date = null,
	@TongSoLuong	int = null,
	@ChietKhau		decimal(12,3) = null,
	@VAT			decimal(3,1) = null,
	@ThanhTien		decimal(12,3) = null,
	@TienKhachTra	decimal(12,3) = null
	AS
	BEGIN TRY
		BEGIN TRAN
			DECLARE @MaHoaDon nvarchar(9)
			SET @MaHoaDon = 'HD'+CAST((dbo.fn_demsohoadon()+1) AS varchar)
			INSERT INTO HoaDon(MaHoaDon, MaKhachHang, MaNhanVien, NgayBan, TongSoLuong, ChietKhau, VAT, ThanhTien, TienKhachTra)
				VALUES
				(@MaHoaDon, @MaKhachHang, @MaNhanVien, @NgayBan, @TongSoLuong, @ChietKhau, @VAT, @ThanhTien, @TienKhachTra)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
	END CATCH
GO

CREATE PROC [dbo].[sp_tk_hangbanchay](@tungay date, @denngay date)
AS BEGIN
	select top(10) hdct.masanpham, 
		(select tensanpham from sanpham where sanpham.masanpham = hdct.masanpham) as 'tensp',
		(select mota from (select masanpham, mota 
			from sanpham join donvitinh on sanpham.madvt = donvitinh.madvt 
				where exists (select masanpham from hoadonchitiet where hoadonchitiet.masanpham = sanpham.masanpham)) as [bang1]
			where hdct.masanpham = [bang1].masanpham),
		count(hdct.masanpham)
		from hoadonchitiet hdct
		where hdct.mahoadon in (select mahoadon from hoadonchitiet 
					where exists 
						(select * from hoadon 
							where ngayban >= @tungay 
							and ngayban <= @denngay
							and hoadonchitiet.mahoadon = hoadon.mahoadon))
		group by hdct.masanpham
		order by count(hdct.masanpham) desc
END
GO

CREATE PROC [dbo].[sp_tk_hangbanchay_toantg]
AS BEGIN
	select top(10) 
		hdct.masanpham, 
		(select tensanpham from sanpham where sanpham.masanpham = hdct.masanpham) as 'tensp',
		(select mota from (select masanpham, mota 
			from sanpham join donvitinh on sanpham.madvt = donvitinh.madvt 
				where exists 
					(select masanpham from hoadonchitiet where hoadonchitiet.masanpham = sanpham.masanpham)) 
				as [bang1] where hdct.masanpham = [bang1].masanpham),
		count(hdct.masanpham)
		from hoadonchitiet hdct
		group by hdct.masanpham
		order by count(hdct.masanpham) desc
END
GO

CREATE PROC [dbo].[sp_tk_tonghophangnhap]
AS BEGIN
	select pnct.masanpham, 
		(select tensanpham from sanpham where sanpham.masanpham = pnct.masanpham) as 'tensp',
		(select mota from donvitinh where madvt in (select madvt from sanpham where sanpham.masanpham = pnct.masanpham)) as 'dvt',
		sum(pnct.soluong),
		sum(pnct.thanhtien)
		from phieunhapchitiet pnct
		group by pnct.masanpham
		ORDER BY CAST(RIGHT(MaSanPham,LEN(MaSanPham)-2) AS int)
END
GO

CREATE PROC [dbo].[sp_tk_tonghophangnhap_theotg](@tungay date, @denngay date)
AS BEGIN
	select pnct.masanpham, 
		(select tensanpham from sanpham where sanpham.masanpham = pnct.masanpham) as 'tensp',
		(select mota from donvitinh where madvt in (select madvt from sanpham where sanpham.masanpham = pnct.masanpham)) as 'dvt',
		sum(pnct.soluong),
		sum(pnct.thanhtien)
		from phieunhapchitiet pnct
		where pnct.maphieunhap in (select maphieunhap from phieunhaphang where ngaynhap >= @tungay and ngaynhap <= @denngay)
		group by pnct.masanpham
		ORDER BY CAST(RIGHT(MaSanPham,LEN(MaSanPham)-2) AS int)
END
GO

CREATE PROC [dbo].[sp_tongketcuoingay] (
	@MaNhanVien nvarchar(20),
	@NgayBan	nvarchar(10)
	)
	AS BEGIN
		SELECT NH.TenNhomHang AS 'TenNhomHang', SUM(['Bang2'].TongSL) AS 'TongSL', SUM(['Bang2'].TongTT) AS 'TongTT'
		FROM 
			(SELECT ['Bang1'].MaSP AS 'MaSP', SP.MaNhomHang AS 'MaNH', ['Bang1'].TongSL AS 'TongSL', ['Bang1'].TongTT AS 'TongTT'
				FROM 
					(SELECT HDCT.MaSanPham AS 'MaSP', SUM(HDCT.SoLuong) AS 'TongSL', SUM(HDCT.ThanhTien) AS 'TongTT'
						FROM HoaDonChiTiet HDCT LEFT JOIN HoaDon HD ON HDCT.MaHoaDon = HD.MaHoaDon
						WHERE HD.MaNhanVien = @MaNhanVien AND HD.NgayBan = @NgayBan
						GROUP BY HDCT.MaSanPham) AS ['Bang1']
					JOIN SanPham SP ON SP.MaSanPham = ['Bang1'].MaSP) AS ['Bang2']
			JOIN NhomHang NH ON NH.MaNhomHang = ['Bang2'].MaNH
		GROUP BY NH.TenNhomHang
	END

GO

CREATE PROC [dbo].[sp_update_phieukiemke] (
	@GiaTriLech decimal(12,3),
	@GhiChu nvarchar(50),
	@TrangThai int,
	@MaPhieuKiem nvarchar(9)
	)
	AS BEGIN
		-- nếu trạng thái cập nhật mới là TẠM thì không cập nhật ngày cân bằng
		IF (@TrangThai = 0) 
			BEGIN
				UPDATE PhieuKiemKe SET GiaTriLech = @GiaTriLech, 
						GhiChu = @GhiChu, TrangThai = @TrangThai
					WHERE MaPhieuKiemKe = @MaPhieuKiem
			END
		-- nếu trạng thái cập nhật mới là CÂN BẰNG thì cập nhật ngày cân bằng
		IF (@TrangThai = 1)
			BEGIN
				DECLARE @NgayCanBang date
				SET @NgayCanBang = (SELECT FORMAT(getdate(), 'yyyy-MM-dd'))
				UPDATE PhieuKiemKe SET GiaTriLech = @GiaTriLech, GhiChu = @GhiChu, TrangThai = @TrangThai,
						NgayCanBang = @NgayCanBang
					WHERE MaPhieuKiemKe = @MaPhieuKiem
			END
	END
GO

CREATE FUNCTION [dbo].[fn_demsohoadon]()
	RETURNS int
	AS
	BEGIN
		DECLARE @sohoadon int
		SELECT @sohoadon = COUNT(*) FROM HoaDon
		RETURN @sohoadon
	END

GO