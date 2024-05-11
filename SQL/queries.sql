-- How does the distribution of vehicles vary by fuel type
--  across Fiscal yerar?
-- across distrcts

SELECT EXTRACT(YEAR FROM month) AS Year ,
       SUM(petrol) AS Petrol_type,
       SUM(electric) AS Electric_type,
       SUM(diesel) AS Diesel_type
FROM transport
GROUP BY Year
ORDER BY Year;

-- How does the distribution of vehicles vary by vehicle class
-- (MotorCycle, MotorCar, AutoRickshaw, Agriculture) across different
-- districts?

SELECT 
    d.district AS District, 
    SUM(t.motorcycle) AS MotorCycle, 
    SUM(t.motorcar) AS MotorCar,
    SUM(t.autorickshaw) AS AutoRickshaw, 
    SUM(t.agriculture) AS Agriculture
FROM 
    transport AS t 
JOIN 
    districts AS d 
ON 
    d.dist_code = t.dist_code
GROUP BY 
    d.district;
