drop database if exists contacts;

create database contacts;

use contacts;

create table names (
  ID mediumint not null auto_increment primary key,
  firstName varchar(20),
  lastName varchar(20)
);

create table addresses (
  ID mediumint not null auto_increment primary key,
  nameID mediumint not null,
  addr1 varchar(30),
  addr2 varchar(30),
  city varchar(30),
  state varchar(10),
  postal_code varchar(10)
);

insert into names (firstName, lastName)
values ('John','Doe'), ('Mary','Smith'), ('Bill','Jones'), ('Dave','White'), ('Jane','Tate');

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '123 4th Street', '', 'Anytown', 'OH', '12345' from names where firstName='John' and lastName='Doe';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '12 7th Street', 'Apt. 9', 'Small Town', 'MI', '31456' from names where firstName='Mary' and lastName='Smith';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '23 Rose Street', 'Number 3', 'Big Town', 'NY', '23456' from names where firstName='Dave' and lastName='White';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '123 42nd Street', 'Apt. 3', 'Townburg', 'VT', '98765' from names where firstName='Bill' and lastName='Jones';

insert into addresses (nameID, addr1, addr2, city, state, postal_code)
select ID, '468 Desert Dr', '', 'Pheonix', 'AZ', '24689' from names where firstName='Jane' and lastName='Tate';

