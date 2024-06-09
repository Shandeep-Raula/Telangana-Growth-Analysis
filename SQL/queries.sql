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
	
-- How does the revenue generated from document registration vary
-- across districts in Telangana? List down the top 5 districts that showed
-- the highest revenue 
 SELECT D.district , SUM(S.documents_registered_rev) AS tatal_Doc_Revenue 
 FROM
      stamps AS S 
 JOIN
      districts AS D
ON S.dist_code = D.dist_code 
GROUP BY D.district
LIMIT 5;

-- How does the revenue generated from document registration compare
-- to the revenue generated from e-stamp challans across districts? List
-- down the top 5 districts where e-stamps revenue contributes
-- significantly more to the revenue than the documents


SELECT  D.district ,  (SUM(S.documents_registered_rev) - SUM(S.estamps_challans_rev)) AS comparison_Doc_Estam_rev
FROM stamps AS S
JOIN districts AS D
ON S.dist_code = D.dist_code
GROUP BY D.district 
LIMIT 5;

