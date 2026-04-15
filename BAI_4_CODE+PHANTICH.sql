CREATE DATABASE phonenum_mang;
USE phonenum_mang;

CREATE TABLE IF NOT EXISTS phoneNumbers(
	TelNumber INT NOT NULL UNIQUE,
    FullName VARCHAR(50) NOT NULL
);


ALTER TABLE phoneNumbers
MODIFY COLUMN TelNumber VARCHAR(15) NOT NULL;


-- có 2 cách để làm 

-- cách  1 là giải pháp hiện nay e đang làm , thì chỉ cần 1 lệnh thôi  , modify trực tiếp
-- thời gian thực hiện rất nhanh 
-- sau đó sẽ dùng một lệnh nào đấy để ép kiểu số không vào từng sdt 
-- tuy nhiên người dùng sẽ vẫn bị lock ra ngoài một khoảng thời gian



-- cách 2 
-- có độ phức tạp , do phải copy dữ liệu nên thời gian lâu 
-- lâu do phải copy dũ liệu và có thể chạy ngầm không gây gián 
-- đoạn dữ liệu