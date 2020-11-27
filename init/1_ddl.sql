use mystok;

create table RyouriTB (
    RyouriID int not null auto_increment,
    RyouriKana varchar(255) not null,
    Ryourimei varchar(255) not null,
    Tukurikata varchar(8000) not null,
    Syoukai varchar(100) not null,
    primary key (RyouriID)
);


create table SyokuzaiTB (
    SyokuzaiID int not null auto_increment,
    SyokuzaiKana varchar(255) not null,
    Syokuzaimei varchar(255) not null,
    Tanni varchar(255) not null,
    primary key (SyokuzaiID)
);


create table BunryouTB (
    RyouriID int not null,
    SyokuzaiID int not null,
    Bunryou float(5,3) not null,
    primary key (RyouriID,SyokuzaiID),
    foreign key (RyouriID) references RyouriTB(RyouriID),
    foreign key (SyokuzaiID) references SyokuzaiTB(SyokuzaiID)
);


create table UserTB (
    UserID int not null auto_increment,
    UserName varchar(50) not null,
    Password varchar(30) not null,
    primary key (UserID)
);
