
/*script them du lieu*/
/*Nhan vien*/
INSERT INTO NHANVIEN VALUES('NV001', 'Nguyen Van A', 'Long An', '098888123', 'loveinair@yahoo.com', '', '', 20000000);
INSERT INTO NHANVIEN VALUES('NV002', 'Tran Thi B', 'Gia Lai', '098821111', 'sharkiloveu@yahoo.com', '', '', 20000000);
INSERT INTO NHANVIEN VALUES('NV003', 'Bui Van A', 'Dak Lak', '098864545', 'longernight@yahoo.com', '', '', 40000000);
INSERT INTO NHANVIEN VALUES('NV004', 'Nguyen Ha Hai C', 'Vung Tau', '092288967', 'thebeset@yahoo.com', '', '', 50000000);
INSERT INTO NHANVIEN VALUES('NV005', 'Pham Viet A', 'Can Tho', '0985566123', 'huggmid@yahoo.com', '', '', 25000000);

/*Chi nhanh*/
INSERT INTO CHINHANH VALUES('CN001', 'Chi nhanh Ha Noi', 'NV002');
INSERT INTO CHINHANH VALUES('CN002', 'Chi nhanh tp Ho Chi Minh', 'NV001');
INSERT INTO CHINHANH VALUES('CN003', 'Chi nhanh Da Nang', 'NV007');

/*Phong ban*/
INSERT INTO PHONGBAN VALUES('PB001', 'Phong ke hoach', 'NV001', TO_DATE('03/22/2015', 'MM/DD/YYYY'), 5, 'CN001');
INSERT INTO PHONGBAN VALUES('PB002', 'Phong kinh doanh', 'NV002', TO_DATE('03/14/2014', 'MM/DD/YYYY'), 7, 'CN003');
INSERT INTO PHONGBAN VALUES('PB003', 'Phong nhan su', 'NV003', TO_DATE('07/02/2015', 'MM/DD/YYYY'), 5, 'CN001');
INSERT INTO PHONGBAN VALUES('PB004', 'Phong quan li', 'NV004', TO_DATE('03/28/2014', 'MM/DD/YYYY'), 8, 'CN002');
INSERT INTO PHONGBAN VALUES('PB005', 'Phong truyen thong', 'NV005', TO_DATE('12/17/2015', 'MM/DD/YYYY'), 8, 'CN002');

/*Du an*/
INSERT INTO DUAN VALUES('DA001', 'Phu xanh Ha Noi', 200, 'PB005', 'NV005');   
INSERT INTO DUAN VALUES('DA002', 'Xay cong vien Cong Phuong', 18000, 'PB003', 'NV002');
INSERT INTO DUAN VALUES('DA003', 'Cap thoat nuoc II', 5000, 'PB003', 'NV003');
INSERT INTO DUAN VALUES('DA004', 'Tai cau truc pho Trang Tien', 85000, 'PB005', 'NV002');
INSERT INTO DUAN VALUES('DA005', 'Xay lai truong KHTN', 200000, 'PB001', 'NV005');

/*Phan cong*/
INSERT INTO PHANCONG VALUES('NV001', 'DA002', 'Bao ve', 3);
INSERT INTO PHANCONG VALUES('NV002', 'DA004', 'Thiet ke', 22);
INSERT INTO PHANCONG VALUES('NV003', 'DA002', 'Thiet ke', 15);
INSERT INTO PHANCONG VALUES('NV004', 'DA002', 'Bao ve', 3);
INSERT INTO PHANCONG VALUES('NV005', 'DA003', 'Len ke hoach', 32);

/*Chi tieu*/
INSERT INTO CHITIEU VALUES('CT001', 'Mua xi mang', 1000000, 'DA005');
INSERT INTO CHITIEU VALUES('CT002', 'Mua sat', 500000, 'DA005');
INSERT INTO CHITIEU VALUES('CT003', 'Xang xe', 500000, 'DA001');
INSERT INTO CHITIEU VALUES('CT004', 'Luong nhan vien', 5000000, 'DA003');
INSERT INTO CHITIEU VALUES('CT005', 'Phi di lai', 1000000, 'DA004');

/*Cap nhat phong ban va chi nhanh*/
UPDATE NHANVIEN 
SET maPhong='PB001', chiNhanh='CN001' where maNV='NV004'; 
UPDATE NHANVIEN 
SET maPhong='PB003', chiNhanh='CN003' where maNV='NV003'; 
UPDATE NHANVIEN 
SET maPhong='PB002', chiNhanh='CN003' where maNV='NV002'; 
UPDATE NHANVIEN 
SET maPhong='PB004', chiNhanh='CN001' where maNV='NV001'; 
UPDATE NHANVIEN 
SET maPhong='PB005', chiNhanh='CN002' where maNV='NV005'; 

