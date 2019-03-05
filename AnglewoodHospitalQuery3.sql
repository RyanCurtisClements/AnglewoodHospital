USE db_Hospital;

INSERT INTO Patients ([FirstName], [LastName], [Age], [Weight], [Sex], [Address], [PhoneNum], [DiagCode], [DocID])
VALUES ('Jaime', 'Young', 23, 174, 'X', '6 Forest St. 
Fresno, CA 93706', 202-555-0169, 7203, 1),
('Jill', 'Newman', 53, 145, 'F', '4 Williams Drive 
Fresno, CA 93706', 202-542-2873, 1256, 3),
('Leilani', 'Burke', 94, 102, 'F', '268 Winchester Court 
Fresno, CA 93706', 202-983-1973, 9286, 7),
('Gladys', 'Cartwright', 36, 204, 'F', '809 Mayfield Ave.
Fresno, CA 93706', 202-508-1658, 7203, 1),
('Alejandro', 'Bernard', 42, 165, 'M', '7605 Temple Road
Fresno, CA 93706', 202-513-9623, 3428, 2),
('Mara', 'Dunne', 62, 138, 'F', '94 Somerset Rd. 
Fresno, CA 93706', 202-524-8215, 4684, 4),
('Johnathon', 'Callahan', 19, 152, 'M', '8883 West Washington Ave.
 Fresno, CA 93706', 202-196-9562, 9186, 6),
('Michelle', 'Kidd', 12, 87, 'F', '558 Hill Field Ave
Fresno, CA 93706', 202-397-9176, 7412, 10),
('Robert Gardner','Student Nurse'),
('Trent Parker','Student Nurse'),
('Lian Chang','Student Nurse'),
('Garfield Evans','Student Nurse'),
('Faith Woodward','Student Nurse');

INSERT INTO Doctors ([FirstName], [LastName], [Dept])
VALUES ('Edward', 'Sanderson', 'Burn Center'),
('Emmett', 'Iles','Coronary Care'),
('Sabina', 'Dennis','Coronary Care'),
('Zakariyah', 'Mcdonnell','Emergency Ward'),
('Faisal', 'Doherty','Endoscopy'),
('Genevieve', 'Acevedo','Geriatric Intensive-Care'),
('Jean-Luc', 'Maynard','Intensive Care'),
('Surayya', 'Khalid','Neonatal Care'),
('Isidore', 'Salomon','Surgery'),
('Jeff', 'Wong','Pediatric Care'),
('Keziah', 'Hayden','Pharmacy'),
('Xander', 'Greer','Psychiatric');