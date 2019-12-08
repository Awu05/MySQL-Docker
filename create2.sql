drop database if exists JoinDemo;

create database JoinDemo;

use JoinDemo;

create table names (
  ID mediumint not null auto_increment primary key,
  name varchar(20)
);

create table colors (
  ID mediumint not null auto_increment primary key,
  nameID mediumint,
  color varchar(20)
);

insert into names (name)
  values ('John'), ('Bill'), ('Mary'), ('Jane'), ('Ted'), ('Nora');

insert into colors (color)
  values ('red'), ('blue'), ('yellow'), ('green'), ('purple'), ('orange');

update colors set nameID = 3 where color = 'red';

update colors set nameID = 2 where color = 'blue';

update colors set nameID = 5 where color = 'green';

update colors set nameID = 1 where color = 'purple';
