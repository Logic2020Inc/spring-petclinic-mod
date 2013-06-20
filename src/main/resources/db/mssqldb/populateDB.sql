--Michael Ashby, added to bootstrap tables for SQL Database. 
 
	SET IDENTITY_INSERT vets ON;
	INSERT INTO vets (id, first_name, last_name) VALUES (1, 'James', 'Carter');
	INSERT INTO vets (id, first_name, last_name) VALUES (2, 'Helen', 'Leary');
	INSERT INTO vets (id, first_name, last_name) VALUES (3, 'Linda', 'Douglas');
	INSERT INTO vets (id, first_name, last_name) VALUES (4, 'Rafael', 'Ortega');
	INSERT INTO vets (id, first_name, last_name) VALUES (5, 'Henry', 'Stevens');
	INSERT INTO vets (id, first_name, last_name) VALUES (6, 'Sharon', 'Jenkins');
	SET IDENTITY_INSERT vets OFF;
	
	SET IDENTITY_INSERT specialties ON;
	INSERT INTO specialties (id, name) VALUES (1, 'radiology');
	INSERT INTO specialties (id, name) VALUES (2, 'surgery');
	INSERT INTO specialties (id, name) VALUES (3, 'dentistry');
	SET IDENTITY_INSERT specialties OFF;
	
	INSERT INTO vet_specialties VALUES (2, 1);
	INSERT INTO vet_specialties VALUES (3, 2);
	INSERT INTO vet_specialties VALUES (3, 3);
	INSERT INTO vet_specialties VALUES (4, 2);
	INSERT INTO vet_specialties VALUES (5, 1);
	
	SET IDENTITY_INSERT types ON;
	INSERT INTO types (id, name) VALUES (1, 'cat');
	INSERT INTO types (id, name) VALUES (2, 'dog');
	INSERT INTO types (id, name) VALUES (3, 'lizard');
	INSERT INTO types (id, name) VALUES (4, 'snake');
	INSERT INTO types (id, name) VALUES (5, 'bird');
	INSERT INTO types (id, name) VALUES (6, 'hamster');
	SET IDENTITY_INSERT types OFF;
	
	SET IDENTITY_INSERT owners ON;
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (1, 'George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (2, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (3, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (4, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (6, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (8, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435');
	INSERT INTO owners (id,first_name ,last_name ,address ,city ,telephone) VALUES (10, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487');
	SET IDENTITY_INSERT owners OFF;
	
	SET IDENTITY_INSERT pets ON;
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (1, 'Leo', '2000-09-07', 1, 1);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (2, 'Basil', '2002-08-06', 6, 2);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (3, 'Rosy', '2001-04-17', 2, 3);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (4, 'Jewel', '2000-03-07', 2, 3);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (5, 'Iggy', '2000-11-30', 3, 4);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (6, 'George', '2000-01-20', 4, 5);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (7, 'Samantha', '1995-09-04', 1, 6);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (8, 'Max', '1995-09-04', 1, 6);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (9, 'Lucky', '1999-08-06', 5, 7);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (10, 'Mulligan', '1997-02-24', 2, 8);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (11, 'Freddy', '2000-03-09', 5, 9);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (12, 'Lucky', '2000-06-24', 2, 10);
	INSERT INTO pets (id, name  ,birth_date  ,type_id  ,owner_id) VALUES (13, 'Sly', '2002-06-08', 1, 10);
	SET IDENTITY_INSERT pets OFF;
	
	SET IDENTITY_INSERT visits ON;
	INSERT INTO visits (id, pet_id  ,visit_date  ,description ) VALUES (1, 7, '1996-03-04', 'rabies shot');
	INSERT INTO visits (id, pet_id  ,visit_date  ,description ) VALUES (2, 8, '1996-03-04', 'rabies shot');
	INSERT INTO visits (id, pet_id  ,visit_date  ,description ) VALUES (3, 8, '1996-06-04', 'neutered');
	INSERT INTO visits (id, pet_id  ,visit_date  ,description ) VALUES (4, 7, '1996-09-04', 'spayed');
	SET IDENTITY_INSERT visits OFF;
 
