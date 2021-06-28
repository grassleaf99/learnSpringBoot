use tacocloudrest;
create table if not exists Ingredient (
id varchar(4) not null,
name varchar(25) not null,
type varchar(10) not null,
PRIMARY KEY (id)
);
create table if not exists Taco (
id int NOT NULL,
name varchar(50) not null,
createdAt timestamp not null,
PRIMARY KEY (id)
);
create table if not exists Taco_Ingredients (
taco int not null,
ingredient varchar(4) not null,
FOREIGN KEY (taco) REFERENCES Taco(id),
FOREIGN KEY (ingredient) REFERENCES Ingredient(id)
);
create table if not exists Taco_Order (
id int NOT NULL,
deliveryName varchar(50) not null,
deliveryStreet varchar(50) not null,
deliveryCity varchar(50) not null,
deliveryState varchar(2) not null,
deliveryZip varchar(10) not null,
ccNumber varchar(16) not null,
ccExpiration varchar(5) not null,
ccCVV varchar(3) not null,
placedAt timestamp not null,
PRIMARY KEY (id)
);
create table if not exists Taco_Order_Tacos (
tacoOrder int not null,
taco int not null,
FOREIGN KEY (tacoOrder) REFERENCES Taco_Order(id),
FOREIGN KEY (taco) REFERENCES Taco(id)
);
/*
set sql_safe_updates = 0;
delete from Taco_Order_Tacos;
delete from Taco_Ingredients;
delete from Taco;
delete from Taco_Order;
delete from Ingredient;
set sql_safe_updates = 1;
insert into Ingredient (id, name, type)
values ('FLTO', 'Flour Tortilla', 'WRAP');
insert into Ingredient (id, name, type)
values ('COTO', 'Corn Tortilla', 'WRAP');
insert into Ingredient (id, name, type)
values ('GRBF', 'Ground Beef', 'PROTEIN');
insert into Ingredient (id, name, type)
values ('CARN', 'Carnitas', 'PROTEIN');
insert into Ingredient (id, name, type)
values ('TMTO', 'Diced Tomatoes', 'VEGGIES');
insert into Ingredient (id, name, type)
values ('LETC', 'Lettuce', 'VEGGIES');
insert into Ingredient (id, name, type)
values ('CHED', 'Cheddar', 'CHEESE');
insert into Ingredient (id, name, type)
values ('JACK', 'Monterrey Jack', 'CHEESE');
insert into Ingredient (id, name, type)
values ('SLSA', 'Salsa', 'SAUCE');
insert into Ingredient (id, name, type)
values ('SRCR', 'Sour Cream', 'SAUCE');
*/