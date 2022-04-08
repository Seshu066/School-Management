CREATE TABLE IF NOT EXISTS students (
  id varchar(20) NOT NULL,
  name varchar(20) NOT NULL,
  phone varchar(13) NOT NULL,
  email varchar(20) NOT NULL,
  sex varchar(7) NOT NULL,
  dob date NOT NULL,
  addmissiondate date NOT NULL,
  address varchar(50) NOT NULL,
  parentid varchar(20) NOT NULL,
  classid varchar(20) NOT NULL,
  primary key(id)
);



CREATE TABLE IF NOT EXISTS users (
  userid varchar(20) NOT NULL,
  name varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  usertype varchar(10) NOT NULL,
  primary key(userid)
);


CREATE TABLE IF NOT EXISTS teachers (
  teacherid varchar(20) NOT NULL,
  name varchar(20) NOT NULL,
  phone varchar(13) NOT NULL,
  email varchar(20) NOT NULL,
  address varchar(30) NOT NULL,
  sex varchar(7) NOT NULL,
  dob date NOT NULL,
  hiredate date NOT NULL,
  salary int NOT NULL,
  primary key(teacherid)
);

CREATE TABLE IF NOT EXISTS subjects (
  subjectid varchar(20) NOT NULL,
  name varchar(20) NOT NULL,
  teacherid varchar(20) NOT NULL,
  classid varchar(20) NOT NULL,
  primary key(subjectid)
);


CREATE TABLE IF NOT EXISTS attendance(
id varchar(20) NOT NULL ,
subjectid varchar(20) NOT NULL,
percentage int,
foreign key(subjectid) references subjects(subjectid),
foreign key(id) references students(id),
primary key(id, subjectid)
);