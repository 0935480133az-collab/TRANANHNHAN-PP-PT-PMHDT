IF OBJECT_ID('dbo.NhaXuatBan', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.NhaXuatBan(
        MaXB   NVARCHAR(10)  NOT NULL PRIMARY KEY,
        TenXB  NVARCHAR(100) NOT NULL,
        DiaChi NVARCHAR(200) NULL
    );
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.NhaXuatBan)
BEGIN
    INSERT dbo.NhaXuatBan(MaXB, TenXB, DiaChi) VALUES
    (N'XB01', N'NXB Trẻ', N'161B Lý Chính Thắng, Q3'),
    (N'XB02', N'NXB Kim Đồng', N'55 Quang Trung, Gò Vấp'),
    (N'XB03', N'NXB Giáo Dục', N'81 Trần Hưng Đạo, Q1');
END
GO