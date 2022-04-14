CREATE DATABASE covid19;
use covid19;
CREATE TABLE covid(
states_affected VARCHAR(255),
lab_confirmed_cases INT NOT NULL,
on_admission_cases INT NOT NULL,
no_discharged INT NOT NULL,
no_of_deaths INT NOT NULL);

#INSERT VALUES INTO THE TABLE CREATED
INSERT INTO COVID (states_affected,lab_confirmed_cases,on_admission_cases,no_discharged,no_of_deaths)
 VALUES
 ("Lagos", 99306, 475, 98062, 769),
("FCT",	28641,	53,	28340,	248),
("Rivers",	16657,	42,	16461,	154),
("Kaduna",	11259,	5,	11166,	88),
("Plateau",	10252,	1,	10176,	75),
("Oyo",	10220,	1,	10017,	202),
("Edo",	7694,	0,	7373,	321),
("Ogun",	5810,	11,	5717,	82),
("Delta",	5374,	93,	5170,	111),
("Ondo",	5173,	315,	4749,	109),
("Kano",	4985,	1,	4857,	127),
("Akwa Ibom",	4657,	27,	4586,	44),
("Kwara",	4630,	391,	4175,	64),
("Osun",	3311,	36,	3183,	92),
("Gombe",	3307,	83,	3158,	66),
("Enugu",	2952,	13,	2910,	29),
("Anambra",	2825,	46,	2760,	19),
("Nasarawa",	2720,	336,	2345,	39),
("Imo",	2560,	22,	2480,	58),
("Katsina",	2418,	0,	2381,	37),
("Abia",	2176,	8,	2134,	34),
("Benue",	2129,	340,	1764,	25),
("Ebonyi",	2064,	28,	2004,	32),
("Ekiti",	2004,	50,	1926,	28),
("Bauchi",	1957,	10,	1923,	24),
("Borno",	1629,	5,	1580,	44),
("Taraba",	1473,	62,	1377,	34),
("Bayelsa",	1315,	0,	1287,	28),
("Adamawa",	1203,	68,	1103,	32),
("Niger",	1148,	130,	998,	20),
("Cross River",	829,	7,	797,	25),
("Sokoto",	817,	0,	789,	28),
("Jigawa",	669,	2,	649,	18),
("Yobe",	609,	0,	600,	9),
("Kebbi",	480,	10,	454,	16),
("Zamfara",	375,	0,	366,	9),
("Kogi",	5,	0,	3,	2);

#VIEW THE TABLE CREATED
SELECT * FROM COVID;

#List of all the states affected 
SELECT states_affected from covid;

#total no of discharged persons
select sum(no_discharged) from covid;

#total no of cases(lab confirmed)
select sum(lab_confirmed_cases) from covid;

#total no of cases(on admission)
select sum(on_admission_cases) from covid;

#total no of deaths
select sum(no_of_deaths) from covid;

#states affected by no of deaths
select states_affected,no_of_deaths from covid;

#states affected mostly (lab confirmed) by no of cases
select states_affected, max(lab_confirmed_cases) from covid;





