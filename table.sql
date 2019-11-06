CREATE TABLE students (
	studentid VARCHAR(10),
	lastname VARCHAR(10),
	firstname VARCHAR(10),
	dob DATE,
	PRIMARY KEY	(studentid)
);

CREATE TABLE courses (
	courseid VARCHAR(10),
	coursename VARCHAR(10),
	credits INTEGER,
	PRIMARY KEY (courseid)
);

CREATE TABLE grades (
	courseid VARCHAR(10),
	studentid VARCHAR(10),
	term VARCHAR(10),
	grade VARCHAR(2),
	PRIMARY KEY (courseid, studentid, term),
	FOREIGN KEY (courseid) REFERENCES courses(courseid),
	FOREIGN KEY (studentid) REFERENCES students(studentid)
);