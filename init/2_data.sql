load data infile '/var/lib/mysql-files/syokuzai_data.csv' into table SyokuzaiTB fields terminated by ',' lines terminated by '\r\n' (SyokuzaiKana,Syokuzaimei,Tanni);
load data infile '/var/lib/mysql-files/ryouri_data.csv' into table RyouriTB fields terminated by ',' lines terminated by '\r\n' (RyouriKana,Ryourimei,Tukurikata,Syoukai);
load data infile '/var/lib/mysql-files/bunryou_data.csv' into table BunryouTB fields terminated by ',' lines terminated by '\r\n';
load data infile '/var/lib/mysql-files/user_data.csv' into table UserTB fields terminated by ',' lines terminated by '\r\n' (UserName,Password);
