CREATE TABLE if not EXISTS Road (
	id int primary key,
	point1 char,
	point2 char,
	price int
);

INSERT INTO road (id, point1, point2, price)
VALUES
	(0,'A','B', 10),
	(1,'A','D', 20),
	(2,'A','C', 15),
	(3,'B','A', 10),
	(4,'B','D', 25),
	(5,'B','C', 35),
	(6,'C','B', 35),
	(7,'C','D', 30),
	(8,'C','A', 15),
	(9,'D','A', 20),
	(10,'D','B', 25),
	(11,'D','C', 30);
