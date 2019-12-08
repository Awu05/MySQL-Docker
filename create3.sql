/*
  Create a database of names and items tables,
  where each person may own many items and each
  item may be owned by many people.
*/

drop database if exists ManyManyDemo;

create database ManyManyDemo;

use ManyManyDemo;

-- Create the names table and insert data:
create table names (
  ID mediumint not null auto_increment primary key,
  name varchar(20)
);

insert into names (name)
  values ('John'), ('Mary'), ('Jane');

-- Create the items table and insert data:
create table items (
  ID mediumint not null auto_increment primary key,
  name varchar(20)
);

insert into items (name)
  values ('homephone'), ('cellphone'), ('pet');

-- Create the join table and insert data:
create table namesItems (
  nameID mediumint not null,
  itemID mediumint not null
);

insert into namesItems (nameID, itemID)
  values
  (1,2),    -- John has a cellphone
  (1,3),    -- John has a pet
  (2,1),    -- Mary has a homephone
  (2,2),    -- Mary has a cellphone
  (3,1),    -- Jane has all three:
  (3,2),
  (3,3);
