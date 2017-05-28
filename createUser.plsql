Alter Session Set "_ORACLE_SCRIPT"=True;


--create user

--truong du an
Create User NV001 Identified By 111;
Create User Nv002 Identified By 111;
Create User Nv003 Identified By 111;
Create User Nv004 Identified By 111;
Create User Nv005 Identified By 111;

--truong phong
Create User Nv006 Identified By 111;
Create User Nv007 Identified By 111;
Create User Nv008 Identified By 111;
Create User Nv009 Identified By 111;
Create User Nv010 Identified By 111;

--truong chi nhanh
Create User Nv011 Identified By 111;
Create User Nv012 Identified By 111;
Create User Nv013 Identified By 111;
Create User Nv014 Identified By 111;
Create User Nv015 Identified By 111;

--nhan vien
Create User Nv016 Identified By 111;
Create User Nv017 Identified By 111;
Create User Nv018 Identified By 111;
Create User Nv019 Identified By 111;
Create User Nv020 Identified By 111;

--giam doc
Create User Nv021 Identified By 111;
Create User Nv022 Identified By 111;
Create User Nv023 Identified By 111;
Create User Nv024 Identified By 111;
Create User Nv025 Identified By 111;

--giup cac user login thanh cong
Grant Create Session, Resource, Connect To Nv001, Nv002, Nv003, Nv004, Nv005, Nv006, Nv007, Nv008, Nv009, Nv010, Nv011, Nv012, Nv013, Nv014, Nv015, Nv016, Nv017,
nv018, nv019, nv020, nv021, nv022, nv023, nv024, nv025;
