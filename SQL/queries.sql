-- How does the distribution of vehicles vary by fuel type
--  across Fiscal yerar?
-- across distrcts


		SELECT d.fiscal_year, SUM(t.fuel_type_petrol) AS Petrol_type , SUM(t.fuel_type_electric) AS Electric_type , SUM(t.fuel_type_diesel) AS Diesel_type 
		FROM transport AS t
		JOIN date AS d
		ON d.month = t.month
		GROUP BY d.fiscal_year;


-- How does the distribution of vehicles vary by vehicle class
-- (MotorCycle, MotorCar, AutoRickshaw, Agriculture) across different
-- districts?

SELECT 
    d.district AS District, 
    SUM(t.vehicleClass_MotorCycle) AS MotorCycle, 
    SUM(t.vehicleClass_MotorCar) AS MotorCar,
    SUM(t.vehicleClass_AutoRickshaw) AS AutoRickshaw, 
    SUM(t.vehicleClass_Agriculture) AS Agriculture
FROM 
    transport AS t 
JOIN 
    districts AS d 
ON 
    d.dist_code = t.dist_code
GROUP BY 
    d.district;

