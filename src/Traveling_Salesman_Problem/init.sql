CREATE TABLE if NOT EXISTS Road (
	id int primary key,
	point1 char,
	point2 char,
	cost int
);

INSERT INTO road (id, point1, point2, cost)
VALUES
	(0,'a','b', 10),
	(1,'a','d', 20),
	(2,'a','c', 15),
	(3,'b','a', 10),
	(4,'b','d', 25),
	(5,'b','c', 35),
	(6,'c','b', 35),
	(7,'c','d', 30),
	(8,'c','a', 15),
	(9,'d','a', 20),
	(10,'d','b', 25),
	(11,'d','c', 30);

