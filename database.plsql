/*create table*/
/*Nhan vien*/
CREATE TABLE NHANVIEN(
	maNV char(5) primary key, 
	hoTen varchar2(30), 
	diaChi varchar2(50), 
	dienThoai varchar2(11), 
	email varchar2(30), 
	maPhong char(5), 
	chiNhanh char(5), 
	luong raw(100)
	);

/*Phan cong*/
CREATE TABLE PHANCONG(
	maNV char(5),
	duAn char(5),
	vaiTro varchar2(30),
	phuCap float,
	primary key(maNV, duAn)
	); 

/*Phong ban*/
CREATE TABLE PHONGBAN(
	maPhong char(5) primary key,
	tenPhong varchar2(30),
	truongPhong char(5),
	ngayNhanChuc date,
	soNhanVien int,
	chiNhanh char(5)
	);

/*Du an*/
CREATE TABLE DUAN(
	maDA char(5) primary key,
	tenDA varchar2(30),
	kinhPhi float,
	phongChuTri char(5),
	truongDA char(5)
	);

/*Chi nhanh*/
CREATE TABLE CHINHANH(
	maCN char(5) primary key,
	tenCN nvarchar2(30),
	truongChiNhanh char(5)
	);

/*Chi tieu*/
CREATE TABLE CHITIEU(
	maChiTieu char(5) primary key,
	tenChitieu varchar2(30),
	soTien float,
	duAn char(5)
	);

/*foreign key*/
/*Nhan Vien*/
ALTER  TABLE NHANVIEN ADD CONSTRAINT FK_NhanVien_ChiNhanh FOREIGN KEY(chiNhanh) REFERENCES CHINHANH(maCN);
ALTER  TABLE NHANVIEN ADD CONSTRAINT FK_NhanVien_PhongBan FOREIGN KEY(maPhong) REFERENCES PHONGBAN(maPhong);
	
/*Phan Cong*/
ALTER  TABLE PHANCONG ADD CONSTRAINT FK_PhanCong_NhanVien FOREIGN KEY(maNV) REFERENCES NHANVIEN(maNV);
ALTER  TABLE PHANCONG ADD CONSTRAINT FK_PhanCong_DuAn FOREIGN KEY(duAn) REFERENCES DUAN(maDA);

/*Phong Ban*/
ALTER  TABLE PHONGBAN ADD CONSTRAINT FK_PhongBan_ChiNhanh FOREIGN KEY(chiNhanh) REFERENCES CHINHANH(maCN);

/*Du An*/
ALTER  TABLE DUAN ADD CONSTRAINT FK_DuAn_NhanVien FOREIGN KEY(truongDA) REFERENCES NHANVIEN(maNV);
ALTER  TABLE DUAN ADD CONSTRAINT FK_DuAn_PhongBan FOREIGN KEY(phongChuTri) REFERENCES PHONGBAN(maPhong);

/*Chi Nhanh*/
ALTER  TABLE CHINHANH ADD CONSTRAINT FK_ChiNhanh_NhanVien FOREIGN KEY(truongChiNhanh) REFERENCES NHANVIEN(maNV);

/*Chi Tieu*/
ALTER  TABLE CHITIEU ADD CONSTRAINT FK_ChiTieu_DuAn FOREIGN KEY(duAn) REFERENCES DUAN(maDA);



