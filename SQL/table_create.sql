CREATE TABLE "date" (
  "month" date,
  "Mmm" varchar,
  "quarter" varchar,
  "fiscal_year" int
);

CREATE TABLE "districts" (
  "dist_code" varchar,
  "district" varchar
);

CREATE TABLE "stamps" (
  "dist_code" varchar,
  "month" date,
  "documents_registered_cnt" int,
  "documents_registered_rev" int,
  "estamps_challans_cnt" int,
  "estamps_challans_rev" int
);

CREATE TABLE "tspass" (
  "dist_code" varchar,
  "month" date,
  "sector" varchar,
  "investment" int,
  "number_of_employees" int
);

CREATE TABLE "transport" (
  "dist_code" varchar,
  "month" date,
  "fuel_type_petrol" int,
  "fuel_type_diesel" int,
  "fuel_type_electric" int,
  "fuel_type_others" int,
  "vehicleClass_MotorCycle" int,
  "vehicleClass_MotorCar" int,
  "vehicleClass_AutoRickshaw" int,
  "vehicleClass_Agriculture" int,
  "vehicleClass_others" int,
  "seatCapacity_1_to_3" int,
  "seatCapacity_4_to_6" int,
  "seatCapacity_above_6" int,
  "Brand_new_vehicles" int,
  "Pre_owned_vehicles" int,
  "category_Non_Transport" int,
  "category_Transport" int
);

ALTER TABLE "transport" ADD FOREIGN KEY ("dist_code") REFERENCES "districts" ("dist_code");

ALTER TABLE "transport" ADD FOREIGN KEY ("dist_code") REFERENCES "stamps" ("dist_code");

ALTER TABLE "transport" ADD FOREIGN KEY ("month") REFERENCES "tspass" ("month");

ALTER TABLE "transport" ADD FOREIGN KEY ("month") REFERENCES "date" ("month");
