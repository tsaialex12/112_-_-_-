CREATE TABLE Employee_old (
    Em_id CHAR(5),
    Em_name NVARCHAR(10) NOT NULL,
    Em_dep NVARCHAR(10) NULL,
    Gender NCHAR(1),
    PRIMARY KEY(Em_id)
);

INSERT INTO Employee_old VALUES
('S0006', '���X', '�P�ⳡ', '�k'),
('S0007', '�C��', '�P�ⳡ', '�k'),
('S0008', '�K�w', '�Ͳ���', '�k'),
('S0009', '�E�p', '�Ͳ���', '�k'),
('S0010', '�Q��', '�Ͳ���', '�k');



ALTER TABLE Employee
ADD Gender NCHAR(1) Default '�k' WITH VALUES;


UPDATE Employee 
SET Gender = '�k'
WHERE Em_name = '�T�h' OR Em_name = '����';


INSERT INTO Employee
SELECT * FROM Employee_old;