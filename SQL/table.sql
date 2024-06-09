SELECT * FROM date;

SELECT * FROM districts;

SELECT * FROM stamps;

SELECT * FROM tspass;



CREATE TABLE transport(
    dist_code VARCHAR,
	month DATE,
	petrol INT,
	diesel INT,
	electric INT,
	other_fuel INT,
	Motorcycle INT,
	Motorcar INT,
	Autorickshaw INT,
	Agriculture INT,
	others_class INT,
	seatCapacity_1_to_3 INT,
	seatCapacity_4_to_6 INT,
	seatCapacity_above_6 INT,
	Brand_new_vehicles INT,
	Pre_owned_vehicles INT,
	non_transport INT,
	category_transport INT
	);
	
SELECT * FROM transport;
	
	