
----------------------------------------------------------------------------------
create or replace procedure insert_encrypt_salary(p_maNV varchar2, p_hoten nvarchar2, p_diachi nvarchar2, p_dienthoai varchar2,
p_email varchar2, p_maphong varchar2, p_chinhanh varchar2, p_luong varchar2)
is

encrypted_raw RAW (2000); -- stores encrypted binary text


encryption_type PLS_INTEGER := -- total encryption type

DBMS_CRYPTO.ENCRYPT_AES256

+ DBMS_CRYPTO.CHAIN_CBC

+ DBMS_CRYPTO.PAD_PKCS5;

begin

DBMS_OUTPUT.PUT_LINE ('Original string: ' || p_luong);

encrypted_raw := DBMS_CRYPTO.ENCRYPT

( src => utl_raw.cast_to_raw(p_luong),

typ => encryption_type,

key =>hextoraw('000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F')

);
insert into NHANVIEN values(p_maNV,p_hoten,p_diachi,p_dienthoai,p_email,p_maphong,p_chinhanh,encrypted_raw);

DBMS_OUTPUT.PUT_LINE ('Decrypted string: ' || encrypted_raw);

end;
------------------------------------------------------
create or replace procedure select_decrypt_salary(maNV char)
is

input_string raw (100);

output_string VARCHAR2 (200);

decrypted_raw RAW (2000); -- stores decrypted binary text

encryption_type PLS_INTEGER := -- total encryption type

DBMS_CRYPTO.ENCRYPT_AES256

+ DBMS_CRYPTO.CHAIN_CBC

+ DBMS_CRYPTO.PAD_PKCS5;

begin
--------------------------------------------------------------
select nhanvien.luong into input_string from nhanvien where nhanvien.maNV=maNV;

decrypted_raw := DBMS_CRYPTO.DECRYPT

(

src => input_string,

typ => encryption_type,

key => hextoraw('000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F')

);

output_string := UTL_I18N.RAW_TO_CHAR (decrypted_raw, 'AL32UTF8');

DBMS_OUTPUT.PUT_LINE ('Luong cua ban la: ' || output_string);

end;

----------------------------------------------------------------


execute INSERT_ENCRYPT_SALARY('NV001', 'Nguyen Van A', 'Long An', '098888123', 'loveinair@yahoo.com', '', '', 20000000);
execute INSERT_ENCRYPT_SALARY('NV002', 'Tran Thi B', 'Gia Lai', '098821111', 'sharkiloveu@yahoo.com', '', '', 20000000);
execute INSERT_ENCRYPT_SALARY('NV003', 'Bui Van A', 'Dak Lak', '098864545', 'longernight@yahoo.com', '', '', 40000000);
execute INSERT_ENCRYPT_SALARY('NV004', 'Nguyen Ha Hai C', 'Vung Tau', '092288967', 'thebeset@yahoo.com', '', '', 50000000);
execute INSERT_ENCRYPT_SALARY('NV005', 'Pham Viet A', 'Can Tho', '0985566123', 'huggmid@yahoo.com', '', '', 25000000);

---------------------------------------------------------------------------------------------------

   