---1.Создать таблицу employees
---  id. serial,  primary key,
---  employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

--- 2.Наполнить таблицу employee 70 строками
insert into employees (employee_name)
values	('Andrei'),
		('Anna'),
		('Alexandr'),
		('Igor'),
		('Semyon'),
		('Alexei'),
		('Kirill'),
		('Mikhail'),
		('Yuri'),
		('Vitaliy'),
		('Yulia'),
		('Alexandra'),
		('Anastasia'),
		('Polina'),
		('Viktoria'),
		('Eva'),
		('Artyom'),
		('Vadim'),
		('Zhanna'),
		('Ivan'),
		('Valeriy'),
		('Timur'),
		('Matvei'),
		('Varvara'),
		('Ksenia'),
		('Denis'),
		('Fyodor'),
		('Dmitriy'),
		('Lyudmila'),
		('Vlad'),
		('Mark'),
		('Pavel'),
		('Oleg'),
		('Karina'),
		('Anzhelika'),
		('Elena'),
		('Taras'),
		('Inna'),
		('Natalia'),
		('Boris'),
		('Stepan'),
		('Leomid'),
		('Georgiy'),
		('Alla'),
		('Konstantin'),
		('Pyotr'),
		('Karolina'),
		('Daria'),
		('Tatiana'),
		('Larisa'),
		('Anatoliy'),
		('Nikolai'),
		('Artur'),
		('Alina'),
		('Zoya'),
		('Vasiliy'),
		('Filipp'),
		('Nikita'),
		('Snezhanna'),
		('Timofei'),
		('Svetlana'),
		('Sergei'),
		('Ilya'),
		('Viktor'),
		('Regina'),
		('Olga'),
		('Gennadiy'),
		('Vyacheslav'),
		('Ruslan'),
		('Irina');

---3.Создать таблицу salary
---  id. Serial  primary key,
---  monthly_salary. Int, not null
create table salary (
	id serial primary key,
	monthly_salary int not null
);

--- 4.Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);

---5.Создать таблицу employee_salary
---  id. Serial  primary key,
---  employee_id. Int, not null, unique
---  salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--- 6.Наполнить таблицу employee_salary 40 строками:
---   в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values	(1, 15),
		(2, 7),
		(3, 11),
		(4, 8),
		(5, 3),
		(6, 9),
		(7, 9),
		(8, 1),
		(9, 13),
		(10, 3),
		(11, 7),
		(12, 7),
		(13, 2),
		(14, 6),
		(15, 11),
		(16, 13),
		(17, 4),
		(18, 8),
		(19, 5),
		(20, 13),
		(21, 7),
		(22, 4),
		(23, 8),
		(24, 10),
		(25, 7),
		(26, 9),
		(27, 12),
		(28, 2),
		(29, 6),
		(30, 14),
		(71, 9),
		(72, 6),
		(73, 12),
		(74, 1),
		(75, 4),
		(76, 8),
		(77, 8),
		(78, 11),
		(79, 4),
		(80, 7);

---7.Создать таблицу roles
---  id. Serial  primary key,
---  role_name. int, not null, unique
create table roles (
	id serial primary key,
	role_name int not null unique
);

---8.Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);

---9.Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

---10.Создать roles_employee
---  id. Serial  primary key,
---  employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
---  role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

---11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values	(1, 13),
		(2, 5),
		(3, 15),
		(4, 11),
		(5, 5),
		(6, 4),
		(7, 16),
		(8, 5),
		(9, 18),
		(10, 3),
		(11, 10),
		(12, 17),
		(13, 6),
		(14, 12),
		(15, 4),
		(16, 1),
		(17, 19),
		(18, 1),
		(19, 8),
		(20, 17),
		(21, 11),
		(22, 18),
		(23, 9),
		(24, 16),
		(25, 9),
		(26, 7),
		(27, 9),
		(28, 12),
		(29, 2),
		(30, 7),
		(31, 10),
		(32, 2),
		(33, 6),
		(34, 20),
		(35, 17),
		(36, 14),
		(37, 15),
		(38, 20),
		(39, 7),
		(40, 13);

---  Для проверки
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;