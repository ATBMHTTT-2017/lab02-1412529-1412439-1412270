
--Chi truong du an moi duoc phep xem va cap nhat thong tin chi tieu du an do minh quan li

--tao function
CREATE OR REPLACE FUNCTION truongduan_chitieu(schema_name varchar2, object_name varchar2)
RETURN varchar2
As
  currentuser varchar2(5);
  maDuAn char;
Begin
  Currentuser := Sys_Context('USERENV', 'SESSION_USER');
  Select mada Into maDuAn From System.Duan Where To_Char(Truongda) = User;
  RETURN 'duAn = ' || maDuAn;
END;

--Drop Function truongduan_chitieu

-- Gan policy vao bang chi tieu
Begin
Dbms_Rls.Add_Policy(Object_Schema => 'nv001',
                    Object_Name => 'ChiTieu',
                    Policy_Name => 'p_truongduan_ChiTieu',
                    Policy_Function => 'truongduan_chitieu',
                    Statement_Types => 'SELECT, UPDATE');
END;


--drop
/*
Begin
Dbms_Rls.drop_Policy(Object_Schema => 'nv001',
                    Object_Name => 'ChiTieu',
                    Policy_Name => 'p_truongduan_ChiTieu',
                    Function_Schema => 'truongduan_ChiTieu'
                    End;
*/