USE db_Hospital;

INSERT INTO Patients ([FirstName], [LastName], [Age], [Weight], [Sex], [Address], [PhoneNum], [DiagCode], [DocID])
VALUES ('Jaime', 'Young', 23, 174, 'X', '6 Forest St. 
Fresno, CA 93706', 202-555-0169),
('Jill', 'Newman', 53, 145, 'F', '4 Williams Drive 
Fresno, CA 93706', 202-542-2873),
('Leilani', 'Burke', 94, 102, 'F', '268 Winchester Court 
Fresno, CA 93706', 202-983-1973),
('Gladys', 'Cartwright', 36, 204, 'F', '809 Mayfield Ave.
Fresno, CA 93706', 202-508-1658),
('Alejandro', 'Bernard', 42, 165, 'M', '7605 Temple Road
Fresno, CA 93706', 202-513-9623),
('Mara', 'Dunne', 62, 138, 'F', '94 Somerset Rd. 
Fresno, CA 93706', 202-524-8215),
('Johnathon', 'Callahan', 19, 152, 'M', '8883 West Washington Ave.
 Fresno, CA 93706', 202-196-9562),
('Michelle', 'Kidd', 12, 87, 'F', '558 Hill Field Ave
Fresno, CA 93706', 202-397-9176),
('Robert', 'Gardner', 48, 247, 'M', '75 East Street
Fresno, CA 93706', 202-197-9383),
('Trent', 'Parker', 26, 184, 'M', '942 SE. Birchwood St.
Fresno, CA 93706', 202-533-0812),
('Lian', 'Chang', 36, 143, 'X', '8245 Schoolhouse Street
Fresno, CA 93706', 202-538-9174),
('Garfield', 'Evans', 54, 163, 'M', '989 East Brickell St. 
Fresno, CA 93706', 205-108-2863),
('Faith', 'Woodward', 49, 186, 'F', '45 NE. James Dr. 
Fresno, CA 93706', 202-190-3916);

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

INSERT INTO Diagnoses ([DiagCode], [DiagName], [DiagDept], [DocCharge], [MedCharge], [LabCharge], [OprtnCharge], [RestDaysNeeded])
VALUES('A16', 'Tuberculosis', 'Pharmacy', 500, 200, 50, '', '',),
('S42', 'Fracture of shoulder and upper arm', 'Surgery', 500, 100, 50, 3000, 3),
('T23', 'Burn and corrosion of wrist and hand', 'Burn Center', 500, 100, 50, 1000, ''),
('J00', 'Acute nasopharyngitis', 'Pediatric Care', 300, 20, 50, '', '');

