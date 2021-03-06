set names utf8;
drop database if exists platSql;
create database platSql charset=utf8;
use platSql;
create table account (
    uid int primary key auto_increment,
    uname varchar(16) not null unique,
    upwd varchar(10) not null,
    uemail varchar(64),
    utype varchar(16),
    avatarName varchar(128)                
);
create table avatar (
    ava_id int primary key auto_increment,
    uid int,
    originalname varchar(64),
    filename varchar(128),
    path varchar(128),
    size BigInt
);
insert into account (uid,uname,upwd,uemail,utype,avatarName) values(null,"rootLY","08161239LY","12138@163.com",'root',''),(null,"hapi","12138","kong@163.com",'user','')