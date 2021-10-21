create table admins(
adName varchar(50) Not null primary key,
adPassword varchar(50) Not null)
create table users(
userPhone varchar(11) primary key not null,
userPassword varchar(50) NOT NULL,
userName nvarchar(50) Not null,
userCMND varchar(50) NOT NULL,
userNgaySinh date,
userGioiTinh nvarchar(10),
userHuyen nvarchar(50),
userXa nvarchar(50),
userDiaChi nvarchar(50),
TrangThai nvarchar(50),
statuss nvarchar(50),
)
create table TinhTrangHangNgay(
idKhaiBao int identity(1,1) primary key,
userPhone varchar(11) Not null,
NgayTheoDoi datetime,
Sot int default 0,
Ho int default 0,
KhoTho int default 0,
DauNguoi int default 0,
TieuChay int  default 0,
Suckhoebt int default 0,
FOREIGN KEY (userPhone) REFERENCES users(userPhone)
)
create table QuanHeGiaDinh(
idTV int identity(1,1) primary key,
userPhone varchar(11) not null,
NTPhone varchar(11),
NTName nvarchar(50),
NTNgaySinh date,
NTGioiTinh nvarchar(10),
NTHuyen nvarchar(50),
NTXa nvarchar(50),
NTDiaChi nvarchar(50),
QuanHe nvarchar(50),
FOREIGN KEY (userPhone) REFERENCES users(userPhone))
create table DanhSachNhiemBenh(
idNhiemBenh int identity(1,1) primary key,
userPhone varchar(11) not null,
NgayThongBao date,
NoiDungThongBao nvarchar(200))
create table CauHoiTuVan(
idTinNhan int identity(1,1) primary key,
userPhone varchar(11) not null,
NgayGui Date,
NoiDungTN nvarchar(2000),
TrangThai nvarchar(50) default 'Chưa trả lời',
FOREIGN KEY (userPhone) REFERENCES users(userPhone))