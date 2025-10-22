start transaction;

drop table if exists textbook, course, mathmatics, science;

create table textbook (
	id int primary key auto_increment,
    title varchar(50),
    subject varchar(50),
    is_available boolean
);

create table course (
	id int primary key auto_increment,
    subject varchar(50) ,
    professor varchar(50),
    foreign key (id) references textbook.id,
    foreign key (subject) references textbook.subject
    
);

insert into textbook (title, subject, is_available)
values ("Biology 101", "Biology", 1), 
("Calculus 201", "Calculus", 1), 
("Psychology 101", "Psychology", 1),
("American History", "History", 1);

insert into course (subject, professor) values ("Biology 101", "Dr. Cornelieus"),
("Calculus 201", "Dr. Morris"), ("Psychology 101", "Dr. Flynn"), 
("American History", "Dr. Wallace");





