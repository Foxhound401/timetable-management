USE [TimeManagement]
GO

INSERT INTO [dbo].[semester] ([semester_code]) VALUES ('Spring2018')
INSERT INTO [dbo].[semester] ([semester_code]) VALUES ('Summer2018')
INSERT INTO [dbo].[semester] ([semester_code]) VALUES ('Fall2018')
INSERT INTO [dbo].[semester] ([semester_code]) VALUES ('Spring2019')
INSERT INTO [dbo].[semester] ([semester_code]) VALUES ('Summer2019')
GO

INSERT INTO [dbo].[teacher] ([first_name], [last_name]) VALUES ('Steven', 'Hawking')
INSERT INTO [dbo].[teacher] ([first_name], [last_name]) VALUES ('Daniel', 'Shiffman')
INSERT INTO [dbo].[teacher] ([first_name], [last_name]) VALUES ('Linus', 'Torvalds')
INSERT INTO [dbo].[teacher] ([first_name], [last_name]) VALUES ('Alan', 'Turing')
INSERT INTO [dbo].[teacher] ([first_name], [last_name]) VALUES ('Vint', 'Cerf')
GO

INSERT INTO [dbo].[student] ([first_name], [last_name]) VALUES ('Do', 'Dat')
INSERT INTO [dbo].[student] ([first_name], [last_name]) VALUES ('Nguyen', 'Quoc')
INSERT INTO [dbo].[student] ([first_name], [last_name]) VALUES ('Phung', 'Phuc')
INSERT INTO [dbo].[student] ([first_name], [last_name]) VALUES ('Bruce', 'Lee')
INSERT INTO [dbo].[student] ([first_name], [last_name]) VALUES ('Albert', 'Einstein')
GO 

INSERT INTO [dbo].[subject] ([subject_name]) VALUES ('SWD391')
INSERT INTO [dbo].[subject] ([subject_name]) VALUES ('HCI101')
INSERT INTO [dbo].[subject] ([subject_name]) VALUES ('ACC101')
INSERT INTO [dbo].[subject] ([subject_name]) VALUES ('PRM301')
INSERT INTO [dbo].[subject] ([subject_name]) VALUES ('ITC101')
GO

INSERT INTO [dbo].[course] ([course_name], [semester_id], [subject_id]) VALUES ('SWD391', 1, 1)
INSERT INTO [dbo].[course] ([course_name], [semester_id], [subject_id]) VALUES ('HCI101', 2, 2)
INSERT INTO [dbo].[course] ([course_name], [semester_id], [subject_id]) VALUES ('ACC101', 3, 3)
INSERT INTO [dbo].[course] ([course_name], [semester_id], [subject_id]) VALUES ('PRM301', 4, 4)
INSERT INTO [dbo].[course] ([course_name], [semester_id], [subject_id]) VALUES ('ITC101', 5, 5)
GO 

INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-27', 1, 1)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-28', 1, 2)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-29', 1, 3)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-30', 1, 4)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-31', 1, 5)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-27', 2, 5)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-28', 2, 4)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-29', 2, 3)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-30', 2, 2)
INSERT INTO [dbo].[slot] ([date], [slot_number], [course_id]) VALUES ('2018-05-31', 2, 1)
GO

INSERT INTO [dbo].[room] ([room_name]) VALUES ('101')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('102')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('103')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('104')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('105')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('106')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('201')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('202')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('203')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('204')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('205')
INSERT INTO [dbo].[room] ([room_name]) VALUES ('206')
GO

INSERT INTO [dbo].[course_teacher] ([course_id], [teacher_id]) VALUES ( 1, 1)
INSERT INTO [dbo].[course_teacher] ([course_id], [teacher_id]) VALUES ( 2, 2)
INSERT INTO [dbo].[course_teacher] ([course_id], [teacher_id]) VALUES ( 3, 3)
INSERT INTO [dbo].[course_teacher] ([course_id], [teacher_id]) VALUES ( 4, 3)
INSERT INTO [dbo].[course_teacher] ([course_id], [teacher_id]) VALUES ( 5, 1)
GO

INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (1, 1)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (1, 2)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (1, 3)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (1, 4)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (1, 5)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (2, 4)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (2, 5)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (3, 1)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (3, 3)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (3, 5)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (4, 3)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (5, 1)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (5, 2)
INSERT INTO [dbo].[course_student] ([course_id], [student_id]) VALUES (4, 4)
GO 

INSERT INTO [dbo].[slot_room] ([slot_id], [room_id]) VALUES (1, 1)
INSERT INTO [dbo].[slot_room] ([slot_id], [room_id]) VALUES (2, 6)
INSERT INTO [dbo].[slot_room] ([slot_id], [room_id]) VALUES (3, 7)
INSERT INTO [dbo].[slot_room] ([slot_id], [room_id]) VALUES (4, 2)
INSERT INTO [dbo].[slot_room] ([slot_id], [room_id]) VALUES (5, 4)
INSERT INTO [dbo].[slot_room] ([slot_id], [room_id]) VALUES (6, 5)




