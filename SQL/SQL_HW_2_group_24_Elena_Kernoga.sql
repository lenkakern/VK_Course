/* ������� employees
 1) ������� ������� employees
 - id. serial,  primary key,
 - employee_name. Varchar(50), not null*/
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2) ��������� ������� employee 70 ��������.
insert into employees (employee_name)
values ('Herbert Rankin'),
	('Zander Johnson'),
	('Jess Iles'),
	('Sukhmani Bradford'),
	('Kamila Rocha'),
	('Shyla Kumar'),
	('Josiah Guy'),
	('Jesse Noel'),
	('Daisie Bernal'),
	('Giulia Dillard'),
	('Aneesah Horne'),
	('Ishan Kearney'),
	('Boris Terry'),
	('Sumayyah Tierney'),
	('Elisa Randall'),
	('Dominic Mcnally'),
	('Poppy Moore'),
	('Alysia Simons'),
	('Luka Odom'),
	('Jamila Bob'),
	('Chyna Battle'),
	('Mica Simmonds'),
	('Aurelia Mcnamara'),
	('Arsalan Coulson'),
	('Tariq Rawlings'),
	('Brittney Wolf'),
	('Cinar Gillespie'),
	('Aliyah Estrada'),
	('Bradley Mcdaniel'),
	('Asher Guzman'),
	('Leon Ridley'),
	('Norma Nguyen'),
	('Emerson Moon'),
	('Corrie Ahmed'),
	('Janine Emerson'),
	('Maryam Ortega'),
	('Kamile Barber'),
	('Ishaq Bouvet'),
	('Sorcha Osborn'),
	('Jennifer Talbot'),
	('Sarah-Jane Kendall'),
	('Gurleen Rollins'),
	('Alishba Esparza'),
	('Emanuel Lucas'),
	('Elyas Zhang'),
	('Grant Vinson'),
	('Lucinda Faulkner'),
	('Tara Woodley'),
	('Ihsan Hutchings'),
	('Ann-Marie Page'),
	('Hussain Stokes'),
	('Leonie Solis'),
	('Nile Riggs'),
	('Doris Knox'),
	('Riaan Patel'),
	('Nancie Melendez'),
	('Felicia Ferreira'),
	('Zain Whitley'),
	('Shakeel Ramirez'),
	('Roseanna Doherty'),
	('Carwyn Sharples'),
	('Heather Mackie'),
	('Arianna Glover'),
	('Dahlia Gallegos'),
	('Aidan Andrews'),
	('Mamie Fellows'),
	('Isra Hunter'),
	('Bryony Forrest'),
	('Ace Morse'),
	('Elise Hastings');

select * from employees;

/* ������� salary
3) ������� ������� salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/
create table salary (
	id serial primary key,
	monthly_salary int not null
);

/*4) ��������� ������� salary 15 ��������:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500*/
insert into salary (monthly_salary)
values ('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400');

select * from salary;

/*������� employee_salary

5) ������� ������� employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/*��������� ������� employee_salary 40 ��������:
6) - � 10 ����� �� 40 �������� �������������� employee_id*/
insert into employee_salary (employee_id, salary_id)
values (43, 7),
(13, 8),
(56, 13),
(26, 5),
(10, 3),
(57, 1),
(30, 12),
(45, 13),
(18, 1),
(37, 6),
(6, 14),
(34, 3),
(51, 7),
(70, 11),
(72, 12),
(59, 11),
(79, 15),
(74, 13),
(38, 1),
(71, 6),
(19, 2),
(80, 11),
(73, 7),
(47, 4),
(27, 5),
(65, 10),
(76, 14),
(77, 4),
(35, 9),
(7, 2),
(75, 12),
(11, 10),
(50, 9),
(4, 8),
(32, 10),
(36, 8),
(62, 6),
(78, 9),
(39, 15),
(44, 2);

select * from employee_salary;

	

/*������� roles

7) ������� ������� roles
- id. Serial  primary key,
- role_name. int, not null, unique*/
create table roles (
	id serial primary key,
	role_name int not null unique
);

/*8) �������� ��� ������ role_name � int �� varchar(30)*/
alter table roles alter 
column role_name type varchar(30);

/*9) ��������� ������� roles 20 ��������:*/
insert into roles (role_name)
values ('Junior Python developer'),
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
	
select * from roles;

/*������� roles_employee

10) ������� ������� roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)*/
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);


/*11) ��������� ������� roles_employee 40 ��������:*/
insert into roles_employee (employee_id, role_id)
values (24, 20),
(10, 19),
(49, 10),
(63, 7),
(8, 18),
(40, 12),
(4, 8),
(39, 16),
(6, 19),
(17, 11),
(18, 2),
(61, 8),
(60, 1),
(68, 5),
(34, 11),
(29, 17),
(16, 1),
(11, 14),
(70, 7),
(23, 3),
(26, 2),
(51, 18),
(42, 3),
(57, 12),
(32, 9),
(13, 15),
(65, 17),
(31, 6),
(35, 15),
(22, 4),
(43, 20),
(46, 14),
(52, 13),
(56, 13),
(67, 6),
(64, 5),
(69, 4),
(12, 9),
(21, 10),
(7, 16);

select * from roles_employee;