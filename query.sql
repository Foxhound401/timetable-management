DROP DATABASE TimeManagement;
CREATE DATABASE TimeManagement;
GO
USE TimeManagement;
GO

CREATE TABLE teacher (
	id int PRIMARY KEY IDENTITY(1, 1),
	first_name text NOT NULL,
	last_name text NOT NULL,
);

CREATE TABLE student (
	id int PRIMARY KEY IDENTITY(1, 1),
	first_name text NOT NULL,
	last_name text NOT NULL,
);

CREATE TABLE semester (
	id int PRIMARY KEY IDENTITY(1, 1),
	semester_code text NOT NULL,
);

CREATE TABLE [subject] (
	id int PRIMARY KEY IDENTITY(1, 1),
	subject_name text NOT NULL,
);

CREATE TABLE course (
	id int PRIMARY KEY IDENTITY(1, 1),
	course_name nvarchar(50),
	semester_id int FOREIGN KEY REFERENCES semester(id),
	subject_id int FOREIGN KEY REFERENCES [subject](id)
);

CREATE TABLE slot (
	id int PRIMARY KEY IDENTITY(1, 1),
	[date] date,
	slot_number int,
	course_id int REFERENCES course(id)
);

CREATE TABLE room (
	id int PRIMARY KEY IDENTITY(1, 1),
	room_name varchar(50)
);

CREATE TABLE course_teacher (
	course_id int FOREIGN KEY REFERENCES course(id),
	teacher_id int FOREIGN KEY REFERENCES teacher(id),
	PRIMARY KEY (course_id, teacher_id),
);

CREATE TABLE course_student (
	course_id int FOREIGN KEY REFERENCES course(id),
	student_id int FOREIGN KEY REFERENCES student(id),
	PRIMARY KEY (course_id, student_id),
);

CREATE TABLE slot_room (
	slot_id int FOREIGN KEY REFERENCES slot(id),
	room_id int FOREIGN KEY REFERENCES room(id),
	PRIMARY KEY (slot_id, room_id),
);


-- Query timetable of student
SELECT student.first_name as 'Student firstname', student.last_name as 'Student Lastname', course_name as 'Course', slot.[date] as 'Date', slot.slot_number as 'Slot', room.room_name as 'Room'
FROM slot 
INNER JOIN slot_room ON slot.id = slot_room.slot_id
INNER JOIN room ON slot_room.room_id = room.id
INNER JOIN course ON slot.course_id = course.id
INNER JOIN [subject] ON course.subject_id = [subject].id
INNER JOIN course_student ON course.id = course_student.course_id
INNER JOIN student ON course_student.student_id = student.id
WHERE (slot.[date] BETWEEN '2018-05-27' AND '2018-05-31') AND (student.id = 3) 

-- Query timetable of teacher
SELECT teacher.first_name as 'Teacher firstname', teacher.last_name as 'Teacher Lastname', [subject].subject_name as 'Subject', course_name as 'Course', slot.[date] as 'Date', slot.slot_number as 'Slot', room.room_name as 'Room'
FROM slot 
INNER JOIN slot_room ON Slot.ID = slot_room.slot_id
INNER JOIN room ON slot_room.room_id = room.id
INNER JOIN course ON slot.course_id = course.id
INNER JOIN [subject] ON course.subject_id = [subject].id
INNER JOIN course_teacher ON course.id = course_teacher.course_id
INNER JOIN teacher ON course_teacher.teacher_id = teacher.id
WHERE (slot.[date] BETWEEN '2018-05-27' AND '2018-05-31') AND (teacher.id = 2 OR teacher.id = 3) 

-- Query timetable of room
SELECT [subject].subject_name as 'Subject', course_name as 'Course', slot.[date] as 'Date', slot.slot_number as 'Slot', room.room_name as 'Room'
FROM slot 
INNER JOIN slot_room ON slot.id = slot_room.slot_id
INNER JOIN room ON slot_room.room_id = room.id
INNER JOIN course ON slot.course_id = course.id	
INNER JOIN [subject] ON course.subject_id = [subject].id
WHERE (slot.[date] BETWEEN '2018-05-27' AND '2018-05-31') AND (room.id = 1 OR room.id = 2) 