use FlightSchedulerDB;

-- insert values to airports 
INSERT INTO airports (airport_code, city, country, airport_name) VALUES
    ('IST', 'Istanbul', 'Turkey', 'Istanbul Airport'),
    ('SAW', 'Istanbul', 'Turkey', 'Sabiha Gökçen International Airport'),
    ('AYT', 'Antalya', 'Turkey', 'Antalya Airport'),
    ('ADB', 'Izmir', 'Turkey', 'Izmir Adnan Menderes Airport'),
    ('ESB', 'Ankara', 'Turkey', 'Esenboğa International Airport'),
    ('DLM', 'Muğla', 'Turkey', 'Dalaman Airport'),
    ('GZT', 'Gaziantep', 'Turkey', 'Gaziantep Airport'),
    ('TZX', 'Trabzon', 'Turkey', 'Trabzon Airport'),
    ('NAV', 'Nevşehir', 'Turkey', 'Nevşehir Kapadokya Airport'),
    ('ASR', 'Kayseri', 'Turkey', 'Kayseri Erkilet Airport'),
    ('VAS', 'Sivas', 'Turkey', 'Sivas Nuri Demirağ Airport'),
    ('SZF', 'Sakarya', 'Turkey', 'Sakarya Çukurova Regional Airport'),
    ('BZI', 'Bingöl', 'Turkey', 'Bingöl Airport'),
    ('HTY', 'Hatay', 'Turkey', 'Hatay Airport'),
    ('ADA', 'Adana', 'Turkey', 'Adana Airport'),
    ('BJV', 'Muğla', 'Turkey', 'Milas–Bodrum Airport');


-- insert values to admins 
INSERT INTO admins (admin_id, first_name, surname, email, password) VALUES
    (1, 'Elena', 'Garcia', 'elena.garcia@example.com', 'p@ssw0rd!'),
    (2, 'Mateo', 'Silva', 'mateo.silva@example.com', 'secure123'),
    (3, 'Ananya', 'Patel', 'ananya.patel@example.com', 'admin@123'),
    (4, 'Yusuf', 'Abdullahi', 'yusuf.abdullahi@example.com', 'pwd@adm1n'),
    (5, 'Li', 'Chen', 'li.chen@example.com', 'qwerty789');



-- insert values to vehicle types
INSERT INTO vehicle_types (vehicle_type, business_capacity, economy_capacity, senior_pilot_capacity, junior_pilot_capacity, trainee_pilot_capacity, senior_attendee_capacity, junior_attendee_capacity, chef_attendee_capacity, seating_plan) VALUES
    ('Boeing 747', 50, 300, 4, 2, 0, 20, 30, 2, '4-5-4 seating arrangement'),
    ('Airbus A380', 75, 400, 5, 7, 3, 25, 35, 3, '4-4-4-4 seating arrangement'),
    ('Boeing 787', 40, 250, 3, 5, 1, 15, 25, 2, '3-3-3 seating arrangement'),
    ('Airbus A320', 20, 150, 2, 3, 1, 10, 15, 1, '3-3 seating arrangement'),
    ('Embraer E190', 10, 70, 1, 2, 0, 5, 10, 1, '2-2 seating arrangement');

-- insert into planes
INSERT INTO planes (plane_id, vehicle_type) VALUES
    (1, 'Boeing 747'),
    (2, 'Airbus A380'),
    (3, 'Boeing 787'),
    (4, 'Airbus A320'),
    (5, 'Embraer E190'),
    (6, 'Boeing 747'),
    (7, 'Airbus A380'),
    (8, 'Boeing 787'),
    (9, 'Airbus A320'),
    (10, 'Embraer E190'),
    (11, 'Boeing 747'),
    (12, 'Airbus A380'),
    (13, 'Boeing 787'),
    (14, 'Airbus A320'),
    (15, 'Embraer E190');

-- insert into companies
INSERT INTO companies (company_name, additional_info) VALUES
    ('SkyHigh Airlines', 'Established in 1998, based in London.'),
    ('JetStream Aviation', 'Specializes in luxury travel services.'),
    ('AirConnect', 'Known for its extensive domestic flight network.'),
    ('Global Wings', 'Operates in over 50 countries worldwide.'),
    ('FlyFirst', 'Winner of multiple awards for customer service.');

-- insert into flights
INSERT INTO flights (
    flight_number, flight_info, source_airport_code, destination_airport_code, plane_id,
    flight_range, departure_datetime, landing_datetime, shared_flight, shared_flight_company,
    admin_id, standard_menu
) VALUES
    ('CS1034', 'Flight from Istanbul to Antalya', 'IST', 'AYT', 1,
    4000, '2024-05-25 08:00:00', '2024-05-25 10:30:00', FALSE, NULL,
    1, 'Standard menu'),
    ('CS1503', 'Flight from Antalya to Izmir', 'AYT', 'ADB', 2,
    3000, '2024-05-26 10:00:00', '2024-05-26 13:00:00', FALSE, NULL,
    2, 'Vegetarian menu'),
    ('CS1643', 'Flight from Izmir to Ankara', 'ADB', 'ESB', 3,
    3500, '2024-05-27 12:00:00', '2024-05-27 14:30:00', FALSE, NULL,
    3, 'Vegan menu'),
    ('CS1232', 'Shared flight from Istanbul to Izmir', 'IST', 'ADB', 4,
    3800, '2024-05-28 14:00:00', '2024-05-28 17:30:00', TRUE, 'Global Wings',
    4, 'Gluten-free menu'),
    ('CS2121', 'Flight from Ankara to Antalya', 'ESB', 'AYT', 5,
    3200, '2024-05-29 16:00:00', '2024-05-29 19:00:00', FALSE, NULL,
    5, 'Halal menu');

-- insert values to pilots 

INSERT INTO pilots (pilot_id, email, password, first_name, surname, age, gender, allowed_range, nationality, seniority) VALUES 
    (1, "bob.plane@gmail.com", "password1234", "Bob", "Plane", 40, "male", 10000, "American", "senior"), 
    (2, "josh_flight@gmail.com", "pswrd4321", "Josh", "Flight", 30, "male", 5000, "British", "junior"), 
    (3, "jane_craft@gmail.com", "pswrdpswrd", "Jane", "Craft", 30, "female", 5000, "American", "junior"),
    (4, "john_high@gmail.com", "pswpsw123", "John", "High", 35, "male", 5000, "British", "junior"),
    (5, "mary_wings@gmail.com", "mrywngs", "Mary", "Wings", 25, "female", 2500, "American", "attendee"),
    (6, "alex.jet@gmail.com", "alexjet1", "Alex", "Jet", 45, "male", 12000, "Canadian", "senior"),
    (7, "emma.cloud@gmail.com", "cloudpass", "Emma", "Cloud", 28, "female", 4500, "Canadian", "junior"),
    (8, "chris.wind@gmail.com", "wind1234", "Chris", "Wind", 38, "male", 7000, "Australian", "senior"),
    (9, "lucy.sky@gmail.com", "lucySky5", "Lucy", "Sky", 33, "female", 6000, "American", "junior"),
    (10, "mike.bird@gmail.com", "mikeBird", "Mike", "Bird", 29, "male", 4000, "British", "junior"),
    (11, "dave.cloud@gmail.com", "davecloud", "Dave", "Cloud", 50, "male", 13000, "American", "senior"),
    (12, "susan.air@gmail.com", "susan123", "Susan", "Air", 26, "female", 3500, "American", "attendee"),
    (13, "tom.jet@gmail.com", "tomJet567", "Tom", "Jet", 41, "male", 10000, "Canadian", "senior"),
    (14, "nina.breeze@gmail.com", "breeze789", "Nina", "Breeze", 32, "female", 5500, "Australian", "junior"),
    (15, "jake.plane@gmail.com", "jakePlane", "Jake", "Plane", 37, "male", 6500, "British", "junior"),
    (16, "lisa.craft@gmail.com", "lisaCraft1", "Lisa", "Craft", 34, "female", 5000, "Canadian", "junior"),
    (17, "mark.flight@gmail.com", "flightmark", "Mark", "Flight", 39, "male", 9000, "American", "senior"),
    (18, "anna.high@gmail.com", "annaHigh", "Anna", "High", 27, "female", 4200, "British", "junior"),
    (19, "peter.wings@gmail.com", "peterWings", "Peter", "Wings", 31, "male", 4800, "Australian", "junior"),
    (20, "maria.jet@gmail.com", "mariaJet", "Maria", "Jet", 36, "female", 7000, "Canadian", "senior"),
    (21, "johnny.air@gmail.com", "johnnyAir", "Johnny", "Air", 43, "male", 11000, "American", "senior"),
    (22, "kate.cloud@gmail.com", "kateCloud", "Kate", "Cloud", 29, "female", 4000, "British", "junior"),
    (23, "paul.wind@gmail.com", "paulWind", "Paul", "Wind", 45, "male", 12000, "Canadian", "senior"),
    (24, "sarah.sky@gmail.com", "sarahSky", "Sarah", "Sky", 30, "female", 5000, "Australian", "junior"),
    (25, "dan.bird@gmail.com", "danBird", "Dan", "Bird", 38, "male", 8000, "American", "junior"),
    (26, "linda.cloud@gmail.com", "lindaCloud", "Linda", "Cloud", 25, "female", 3000, "Canadian", "attendee"),
    (27, "gary.jet@gmail.com", "garyJet", "Gary", "Jet", 44, "male", 10000, "British", "senior"),
    (28, "rita.breeze@gmail.com", "ritaBreeze", "Rita", "Breeze", 33, "female", 5500, "American", "junior"),
    (29, "george.plane@gmail.com", "georgePlane", "George", "Plane", 37, "male", 6500, "Canadian", "junior"),
    (30, "helen.craft@gmail.com", "helenCraft", "Helen", "Craft", 32, "female", 5000, "Australian", "junior"),
    (31, "simon.flight@gmail.com", "simonFlight", "Simon", "Flight", 40, "male", 10000, "American", "senior"),
    (32, "amy.high@gmail.com", "amyHigh", "Amy", "High", 27, "female", 4200, "Canadian", "junior"),
    (33, "matt.wings@gmail.com", "mattWings", "Matt", "Wings", 30, "male", 4500, "British", "junior"),
    (34, "julia.jet@gmail.com", "juliaJet", "Julia", "Jet", 34, "female", 5000, "American", "junior"),
    (35, "henry.air@gmail.com", "henryAir", "Henry", "Air", 41, "male", 10000, "Australian", "senior"),
    (36, "anna.cloud@gmail.com", "annaCloud", "Anna", "Cloud", 29, "female", 4000, "British", "junior"),
    (37, "jack.wind@gmail.com", "jackWind", "Jack", "Wind", 44, "male", 12000, "Canadian", "senior"),
    (38, "lucas.sky@gmail.com", "lucasSky", "Lucas", "Sky", 30, "male", 5000, "American", "junior"),
    (39, "sara.bird@gmail.com", "saraBird", "Sara", "Bird", 28, "female", 4500, "Australian", "junior"),
    (40, "steve.cloud@gmail.com", "steveCloud", "Steve", "Cloud", 35, "male", 7000, "British", "senior"),
    (41, "diana.jet@gmail.com", "dianaJet", "Diana", "Jet", 25, "female", 3500, "American", "attendee"),
    (42, "charlie.plane@gmail.com", "charliePlane", "Charlie", "Plane", 42, "male", 11000, "Canadian", "senior"),
    (43, "lily.craft@gmail.com", "lilyCraft", "Lily", "Craft", 33, "female", 5000, "Australian", "junior"),
    (44, "harry.flight@gmail.com", "harryFlight", "Harry", "Flight", 37, "male", 6500, "British", "junior"),
    (45, "ella.high@gmail.com", "ellaHigh", "Ella", "High", 29, "female", 4000, "American", "junior"),
    (46, "peter.wings@gmail.com", "peterWings", "Peter", "Wings", 40, "male", 10000, "Canadian", "senior"),
    (47, "nancy.cloud@gmail.com", "nancyCloud", "Nancy", "Cloud", 27, "female", 4200, "British", "junior"),
    (48, "bruce.jet@gmail.com", "bruceJet", "Bruce", "Jet", 43, "male", 11000, "American", "senior"),
    (49, "amy.sky@gmail.com", "amySky", "Amy", "Sky", 32, "female", 5500, "Australian", "junior"),
    (50, "ryan.bird@gmail.com", "ryanBird", "Ryan", "Bird", 35, "male", 7000, "Canadian", "senior");
    
-- insert values to pilot_languages 
INSERT INTO pilot_languages (pilot_id, language) VALUES
    (1, "english"),
    (1, "german"),
    (2, "english"),
    (2, "french"),
    (3, "english"),
    (4, "english"),
    (4, "turkish"),
    (4, "german"),
    (5, "english"),
    (6, "english"),
    (6, "french"),
    (7, "english"),
    (7, "spanish"),
    (8, "english"),
    (9, "english"),
    (9, "italian"),
    (10, "english"),
    (11, "english"),
    (11, "german"),
    (12, "english"),
    (13, "english"),
    (13, "spanish"),
    (14, "english"),
    (15, "english"),
    (15, "german"),
    (16, "english"),
    (16, "french"),
    (17, "english"),
    (18, "english"),
    (18, "spanish"),
    (19, "english"),
    (20, "english"),
    (20, "italian"),
    (21, "english"),
    (21, "german"),
    (22, "english"),
    (23, "english"),
    (23, "spanish"),
    (24, "english"),
    (25, "english"),
    (26, "english"),
    (27, "english"),
    (27, "french"),
    (28, "english"),
    (29, "english"),
    (30, "english"),
    (30, "german"),
    (31, "english"),
    (31, "spanish"),
    (32, "english"),
    (33, "english"),
    (33, "italian"),
    (34, "english"),
    (35, "english"),
    (35, "german"),
    (36, "english"),
    (37, "english"),
    (37, "spanish"),
    (38, "english"),
    (39, "english"),
    (39, "french"),
    (40, "english"),
    (41, "english"),
    (41, "german"),
    (42, "english"),
    (42, "spanish"),
    (43, "english"),
    (44, "english"),
    (44, "italian"),
    (45, "english"),
    (46, "english"),
    (46, "german"),
    (47, "english"),
    (48, "english"),
    (48, "spanish"),
    (49, "english"),
    (50, "english"),
    (50, "french");

-- insert into pilot assignments 
INSERT INTO pilot_assignments (pilot_id, flight_number, assignment_role, seat_number, accepted_assignment) VALUES
    (1, 'CS1034', 'Senior', '0A', 1),
    (2, 'CS1034', 'Junior', '2B', 1),
    (3, 'CS1034', 'Junior', '2B', 1),
    (4, 'CS1034', 'Senior', '0B', 1),
    (6, 'CS1034', 'Senior', '1A', 1),
    (11, 'CS1034', 'Senior', '1B',1);


-- insert values to passengers

INSERT INTO passengers(passenger_id, first_name, surname, email, password, age, gender, nationality) VALUES 
    (1, "John", "Doe", "john.doe@gmail.com", "password1", 40, "male", "American"), 
    (2, "Jane", "Done", "jane.done@gmail.com", "password2", 35, "female", "American"), 
    (3, "Jason", "Martin", "jason.martin@gmail.com", "password3", 30, "male", "Portuguese"),
    (4, "Ricardo", "James", "ricardo.james@gmail.com", "password4", 25, "male", "Spanish"),
    (5, "Camilla", "Caso", "camilla.caso@gmail.com", "password5", 20, "female", "American"),
    (6, "Laura", "Smith", "laura.smith@gmail.com", "password6", 28, "female", "British"),
    (7, "Michael", "Johnson", "michael.johnson@gmail.com", "password7", 45, "male", "Canadian"),
    (8, "Emily", "Brown", "emily.brown@gmail.com", "password8", 32, "female", "Australian"),
    (9, "David", "Jones", "david.jones@gmail.com", "password9", 38, "male", "American"),
    (10, "Anna", "Garcia", "anna.garcia@gmail.com", "password10", 27, "female", "Spanish"),
    (11, "James", "Miller", "james.miller@gmail.com", "password11", 33, "male", "Canadian"),
    (12, "Emma", "Davis", "emma.davis@gmail.com", "password12", 29, "female", "American"),
    (13, "Robert", "Martinez", "robert.martinez@gmail.com", "password13", 50, "male", "British"),
    (14, "Sophia", "Hernandez", "sophia.hernandez@gmail.com", "password14", 23, "female", "American"),
    (15, "Daniel", "Lopez", "daniel.lopez@gmail.com", "password15", 41, "male", "Mexican"),
    (16, "Olivia", "Gonzalez", "olivia.gonzalez@gmail.com", "password16", 26, "female", "American"),
    (17, "Matthew", "Wilson", "matthew.wilson@gmail.com", "password17", 36, "male", "British"),
    (18, "Chloe", "Anderson", "chloe.anderson@gmail.com", "password18", 30, "female", "Australian"),
    (19, "Joshua", "Thomas", "joshua.thomas@gmail.com", "password19", 34, "male", "American"),
    (20, "Grace", "Taylor", "grace.taylor@gmail.com", "password20", 31, "female", "British"),
    (21, "William", "Moore", "william.moore@gmail.com", "password21", 37, "male", "Canadian"),
    (22, "Ava", "Jackson", "ava.jackson@gmail.com", "password22", 24, "female", "American"),
    (23, "Ethan", "Martin", "ethan.martin@gmail.com", "password23", 28, "male", "Portuguese"),
    (24, "Sophia", "Lee", "sophia.lee@gmail.com", "password24", 29, "female", "American"),
    (25, "Alexander", "Perez", "alexander.perez@gmail.com", "password25", 35, "male", "Spanish"),
    (26, "Lily", "Thompson", "lily.thompson@gmail.com", "password26", 27, "female", "Canadian"),
    (27, "Christopher", "White", "christopher.white@gmail.com", "password27", 39, "male", "British"),
    (28, "Isabella", "Harris", "isabella.harris@gmail.com", "password28", 33, "female", "American"),
    (29, "Andrew", "Sanchez", "andrew.sanchez@gmail.com", "password29", 40, "male", "Mexican"),
    (30, "Mia", "Clark", "mia.clark@gmail.com", "password30", 25, "female", "American"),
    (31, "Ryan", "Rodriguez", "ryan.rodriguez@gmail.com", "password31", 45, "male", "Canadian"),
    (32, "Zoe", "Lewis", "zoe.lewis@gmail.com", "password32", 28, "female", "British"),
    (33, "Jack", "Walker", "jack.walker@gmail.com", "password33", 37, "male", "Australian"),
    (34, "Megan", "Hall", "megan.hall@gmail.com", "password34", 29, "female", "American"),
    (35, "Henry", "Allen", "henry.allen@gmail.com", "password35", 31, "male", "British"),
    (36, "Ella", "Young", "ella.young@gmail.com", "password36", 26, "female", "Canadian"),
    (37, "Isaac", "King", "isaac.king@gmail.com", "password37", 34, "male", "American"),
    (38, "Samantha", "Wright", "samantha.wright@gmail.com", "password38", 33, "female", "British"),
    (39, "Luke", "Scott", "luke.scott@gmail.com", "password39", 38, "male", "American"),
    (40, "Victoria", "Green", "victoria.green@gmail.com", "password40", 32, "female", "Australian"),
    (41, "Nathan", "Baker", "nathan.baker@gmail.com", "password41", 36, "male", "British"),
    (42, "Hannah", "Adams", "hannah.adams@gmail.com", "password42", 29, "female", "American"),
    (43, "Dylan", "Nelson", "dylan.nelson@gmail.com", "password43", 30, "male", "Canadian"),
    (44, "Sofia", "Mitchell", "sofia.mitchell@gmail.com", "password44", 27, "female", "American"),
    (45, "Sebastian", "Roberts", "sebastian.roberts@gmail.com", "password45", 35, "male", "British"),
    (46, "Mia", "Carter", "mia.carter@gmail.com", "password46", 31, "female", "American"),
    (47, "Benjamin", "Phillips", "benjamin.phillips@gmail.com", "password47", 42, "male", "British"),
    (48, "Abigail", "Evans", "abigail.evans@gmail.com", "password48", 28, "female", "Canadian"),
    (49, "Oliver", "Turner", "oliver.turner@gmail.com", "password49", 39, "male", "American"),
    (50, "Charlotte", "Parker", "charlotte.parker@gmail.com", "password50", 30, "female", "British");


-- insert valuues to cabincrew
INSERT INTO crew_members (attendant_id, email, password, first_name, surname, age, gender, nationality, seniority) VALUES
    (1, 'john.cena@gmail.com', 'password325', 'John', 'Cena', 32, 'Male', 'USA', 'Senior'),
    (2, 'jane.brand@gmail.com', 'password564', 'Jane', 'Brand', 28, 'Female', 'Canada', 'Junior'),
    (3, 'alice.punk@gmail.com', 'password869', 'Alice', 'Punk', 29, 'Female', 'UK', 'Chef'),
    (4, 'Brad.brown@gmail.com', 'password7455', 'Brad', 'Brown', 35, 'Male', 'Australia', 'Senior'),
    (5, 'carol.pitt@gmail.com', 'password432', 'Carol', 'Pitt', 26, 'Female', 'New Zealand', 'Junior'),
    (6, 'michael.smith@gmail.com', 'password100', 'Michael', 'Smith', 30, 'Male', 'USA', 'Senior'),
    (7, 'laura.king@gmail.com', 'password200', 'Laura', 'King', 27, 'Female', 'Canada', 'Junior'),
    (8, 'daniel.jones@gmail.com', 'password300', 'Daniel', 'Jones', 33, 'Male', 'UK', 'Chef'),
    (9, 'lisa.white@gmail.com', 'password400', 'Lisa', 'White', 29, 'Female', 'Australia', 'Senior'),
    (10, 'paul.wilson@gmail.com', 'password500', 'Paul', 'Wilson', 34, 'Male', 'New Zealand', 'Junior'),
    (11, 'karen.davis@gmail.com', 'password600', 'Karen', 'Davis', 28, 'Female', 'USA', 'Senior'),
    (12, 'john.martin@gmail.com', 'password700', 'John', 'Martin', 32, 'Male', 'Canada', 'Junior'),
    (13, 'anna.thomas@gmail.com', 'password800', 'Anna', 'Thomas', 26, 'Female', 'UK', 'Chef'),
    (14, 'steve.moore@gmail.com', 'password900', 'Steve', 'Moore', 31, 'Male', 'Australia', 'Senior'),
    (15, 'susan.jackson@gmail.com', 'password1000', 'Susan', 'Jackson', 27, 'Female', 'New Zealand', 'Junior'),
    (16, 'david.lee@gmail.com', 'password1100', 'David', 'Lee', 35, 'Male', 'USA', 'Senior'),
    (17, 'emily.harris@gmail.com', 'password1200', 'Emily', 'Harris', 30, 'Female', 'Canada', 'Junior'),
    (18, 'richard.clark@gmail.com', 'password1300', 'Richard', 'Clark', 29, 'Male', 'UK', 'Chef'),
    (19, 'laura.allen@gmail.com', 'password1400', 'Laura', 'Allen', 32, 'Female', 'Australia', 'Senior'),
    (20, 'james.young@gmail.com', 'password1500', 'James', 'Young', 28, 'Male', 'New Zealand', 'Junior'),
    (21, 'patricia.king@gmail.com', 'password1600', 'Patricia', 'King', 31, 'Female', 'USA', 'Senior'),
    (22, 'charles.wright@gmail.com', 'password1700', 'Charles', 'Wright', 33, 'Male', 'Canada', 'Junior'),
    (23, 'linda.hill@gmail.com', 'password1800', 'Linda', 'Hill', 30, 'Female', 'UK', 'Chef'),
    (24, 'george.scott@gmail.com', 'password1900', 'George', 'Scott', 29, 'Male', 'Australia', 'Senior'),
    (25, 'barbara.green@gmail.com', 'password2000', 'Barbara', 'Green', 32, 'Female', 'New Zealand', 'Junior'),
    (26, 'thomas.adams@gmail.com', 'password2100', 'Thomas', 'Adams', 35, 'Male', 'USA', 'Senior'),
    (27, 'nancy.baker@gmail.com', 'password2200', 'Nancy', 'Baker', 28, 'Female', 'Canada', 'Junior'),
    (28, 'kenneth.hall@gmail.com', 'password2300', 'Kenneth', 'Hall', 34, 'Male', 'UK', 'Chef'),
    (29, 'jessica.harris@gmail.com', 'password2400', 'Jessica', 'Harris', 27, 'Female', 'Australia', 'Senior'),
    (30, 'matthew.wright@gmail.com', 'password2500', 'Matthew', 'Wright', 31, 'Male', 'New Zealand', 'Junior'),
    (31, 'dorothy.walker@gmail.com', 'password2600', 'Dorothy', 'Walker', 29, 'Female', 'USA', 'Senior'),
    (32, 'larry.lopez@gmail.com', 'password2700', 'Larry', 'Lopez', 32, 'Male', 'Canada', 'Junior'),
    (33, 'sandra.martin@gmail.com', 'password2800', 'Sandra', 'Martin', 28, 'Female', 'UK', 'Chef'),
    (34, 'ronald.hill@gmail.com', 'password2900', 'Ronald', 'Hill', 34, 'Male', 'Australia', 'Senior'),
    (35, 'carol.turner@gmail.com', 'password3000', 'Carol', 'Turner', 27, 'Female', 'New Zealand', 'Junior'),
    (36, 'donald.phillips@gmail.com', 'password3100', 'Donald', 'Phillips', 35, 'Male', 'USA', 'Senior'),
    (37, 'betty.campbell@gmail.com', 'password3200', 'Betty', 'Campbell', 28, 'Female', 'Canada', 'Junior'),
    (38, 'edward.parker@gmail.com', 'password3300', 'Edward', 'Parker', 31, 'Male', 'UK', 'Chef'),
    (39, 'helen.evans@gmail.com', 'password3400', 'Helen', 'Evans', 30, 'Female', 'Australia', 'Senior'),
    (40, 'paul.ward@gmail.com', 'password3500', 'Paul', 'Ward', 32, 'Male', 'New Zealand', 'Junior'),
    (41, 'ruby.cox@gmail.com', 'password3600', 'Ruby', 'Cox', 28, 'Female', 'USA', 'Senior'),
    (42, 'frank.russell@gmail.com', 'password3700', 'Frank', 'Russell', 34, 'Male', 'Canada', 'Junior'),
    (43, 'grace.graham@gmail.com', 'password3800', 'Grace', 'Graham', 30, 'Female', 'UK', 'Chef'),
    (44, 'arthur.reed@gmail.com', 'password3900', 'Arthur', 'Reed', 31, 'Male', 'Australia', 'Senior'),
    (45, 'edith.cook@gmail.com', 'password4000', 'Edith', 'Cook', 29, 'Female', 'New Zealand', 'Junior'),
    (46, 'harry.bell@gmail.com', 'password4100', 'Harry', 'Bell', 32, 'Male', 'USA', 'Senior'),
    (47, 'mildred.bailey@gmail.com', 'password4200', 'Mildred', 'Bailey', 28, 'Female', 'Canada', 'Junior'),
    (48, 'carl.cooper@gmail.com', 'password4300', 'Carl', 'Cooper', 33, 'Male', 'UK', 'Chef'),
    (49, 'martha.richardson@gmail.com', 'password4400', 'Martha', 'Richardson', 31, 'Female', 'Australia', 'Senior'),
    (50, 'ralph.wright@gmail.com', 'password4500', 'Ralph', 'Wright', 34, 'Male', 'New Zealand', 'Junior');

-- insert values to attendant languages 
INSERT INTO attendant_languages (attendant_id, language) VALUES
    (1, "english"),
    (1, "german"),
    (2, "english"),
    (2, "french"),
    (3, "english"),
    (4, "english"),
    (4, "turkish"),
    (4, "german"),
    (5, "english"),
    (6, "english"),
    (6, "french"),
    (7, "english"),
    (7, "spanish"),
    (8, "english"),
    (9, "english"),
    (9, "italian"),
    (10, "english"),
    (11, "english"),
    (11, "german"),
    (12, "english"),
    (13, "english"),
    (13, "spanish"),
    (14, "english"),
    (15, "english"),
    (15, "german"),
    (16, "english"),
    (16, "french"),
    (17, "english"),
    (18, "english"),
    (18, "spanish"),
    (19, "english"),
    (20, "english"),
    (20, "italian"),
    (21, "english"),
    (21, "german"),
    (22, "english"),
    (23, "english"),
    (23, "spanish"),
    (24, "english"),
    (25, "english"),
    (26, "english"),
    (27, "english"),
    (27, "french"),
    (28, "english"),
    (29, "english"),
    (30, "english"),
    (30, "german"),
    (31, "english"),
    (31, "spanish"),
    (32, "english"),
    (33, "english"),
    (33, "italian"),
    (34, "english"),
    (35, "english"),
    (35, "german"),
    (36, "english"),
    (37, "english"),
    (37, "spanish"),
    (38, "english"),
    (39, "english"),
    (39, "french"),
    (40, "english"),
    (41, "english"),
    (41, "german"),
    (42, "english"),
    (42, "spanish"),
    (43, "english"),
    (44, "english"),
    (44, "italian"),
    (45, "english"),
    (46, "english"),
    (46, "german"),
    (47, "english"),
    (48, "english"),
    (48, "spanish"),
    (49, "english"),
    (50, "english"),
    (50, "french");

-- Insert values into cabin_crew_assignments
INSERT INTO cabin_crew_assignments (flight_number, attendant_id, assignment_role, seat_number, accepted_assignment) VALUES
    ('CS1034', 1, 'Senior', 'A1', 1),
    ('CS1034', 2, 'Junior', 'A2', 1),
    ('CS1034', 3, 'Chef', 'A3', 1),
    ('CS1034', 4, 'Senior', 'A4', 1),
    ('CS1034', 5, 'Junior', 'A5', 1),
    ('CS1503', 6, 'Senior', 'B1', 1),
    ('CS1503', 7, 'Junior', 'B2', 1),
    ('CS1503', 8, 'Chef', 'B3', 1),
    ('CS1503', 9, 'Senior', 'B4', 1),
    ('CS1503', 10, 'Junior', 'B5', 1),
    ('CS1643', 11, 'Senior', 'C1', 1),
    ('CS1643', 12, 'Junior', 'C2', 1),
    ('CS1643', 13, 'Chef', 'C3', 1),
    ('CS1643', 14, 'Senior', 'C4', 1),
    ('CS1643', 15, 'Junior', 'C5', 1),
    ('CS1232', 16, 'Senior', 'D1', 1),
    ('CS1232', 17, 'Junior', 'D2', 1),
    ('CS1232', 18, 'Chef', 'D3', 1),
    ('CS1232', 19, 'Senior', 'D4', 1),
    ('CS1232', 20, 'Junior', 'D5', 1),
    ('CS2121', 21, 'Senior', 'E1', 1),
    ('CS2121', 22, 'Junior', 'E2', 1),
    ('CS2121', 23, 'Chef', 'E3', 1),
    ('CS2121', 24, 'Senior', 'E4', 1),
    ('CS2121', 25, 'Junior', 'E5', 1),
    ('CS1034', 26, 'Senior', 'A6', 1),
    ('CS1034', 27, 'Junior', 'A7', 1),
    ('CS1034', 28, 'Chef', 'A8', 1),
    ('CS1034', 29, 'Senior', 'A9', 1),
    ('CS1034', 30, 'Junior', 'A10', 1),
    ('CS1503', 31, 'Senior', 'B6', 1),
    ('CS1503', 32, 'Junior', 'B7', 1),
    ('CS1503', 33, 'Chef', 'B8', 1),
    ('CS1503', 34, 'Senior', 'B9', 1),
    ('CS1503', 35, 'Junior', 'B10', 1),
    ('CS1643', 36, 'Senior', 'C6', 1),
    ('CS1643', 37, 'Junior', 'C7', 1),
    ('CS1643', 38, 'Chef', 'C8', 1),
    ('CS1643', 39, 'Senior', 'C9', 1),
    ('CS1643', 40, 'Junior', 'C10', 1),
    ('CS1232', 41, 'Senior', 'D6', 1),
    ('CS1232', 42, 'Junior', 'D7', 1),
    ('CS1232', 43, 'Chef', 'D8', 1),
    ('CS1232', 44, 'Senior', 'D9', 1),
    ('CS1232', 45, 'Junior', 'D10', 1),
    ('CS2121', 46, 'Senior', 'E6', 1),
    ('CS2121', 47, 'Junior', 'E7', 1),
    ('CS2121', 48, 'Chef', 'E8', 1),
    ('CS2121', 49, 'Senior', 'E9', 1),
    ('CS2121', 50, 'Junior', 'E10', 1);

-- Insert values into attendant_vehicle_types
INSERT INTO attendant_vehicle_types (attendant_id, vehicle_type) VALUES
    (1, 'Boeing 747'),
    (2, 'Airbus A380'),
    (3, 'Boeing 787'),
    (4, 'Airbus A320'),
    (5, 'Embraer E190'),
    (6, 'Boeing 747'),
    (7, 'Airbus A380'),
    (8, 'Boeing 787'),
    (9, 'Airbus A320'),
    (10, 'Embraer E190'),
    (11, 'Boeing 747'),
    (12, 'Airbus A380'),
    (13, 'Boeing 787'),
    (14, 'Airbus A320'),
    (15, 'Embraer E190'),
    (16, 'Boeing 747'),
    (17, 'Airbus A380'),
    (18, 'Boeing 787'),
    (19, 'Airbus A320'),
    (20, 'Embraer E190'),
    (21, 'Boeing 747'),
    (22, 'Airbus A380'),
    (23, 'Boeing 787'),
    (24, 'Airbus A320'),
    (25, 'Embraer E190'),
    (26, 'Boeing 747'),
    (27, 'Airbus A380'),
    (28, 'Boeing 787'),
    (29, 'Airbus A320'),
    (30, 'Embraer E190'),
    (31, 'Boeing 747'),
    (32, 'Airbus A380'),
    (33, 'Boeing 787'),
    (34, 'Airbus A320'),
    (35, 'Embraer E190'),
    (36, 'Boeing 747'),
    (37, 'Airbus A380'),
    (38, 'Boeing 787'),
    (39, 'Airbus A320'),
    (40, 'Embraer E190'),
    (41, 'Boeing 747'),
    (42, 'Airbus A380'),
    (43, 'Boeing 787'),
    (44, 'Airbus A320'),
    (45, 'Embraer E190'),
    (46, 'Boeing 747'),
    (47, 'Airbus A380'),
    (48, 'Boeing 787'),
    (49, 'Airbus A320'),
    (50, 'Embraer E190');

-- Insert values into dish_recipes
INSERT INTO dish_recipes (attendant_id, recipe) VALUES
    (1, 'Chicken Alfredo'),
    (2, 'Beef Stroganoff'),
    (3, 'Vegetable Stir Fry'),
    (4, 'Grilled Salmon'),
    (5, 'Shrimp Scampi'),
    (6, 'Chicken Alfredo'),
    (7, 'Beef Stroganoff'),
    (8, 'Vegetable Stir Fry'),
    (9, 'Grilled Salmon'),
    (10, 'Shrimp Scampi'),
    (11, 'Chicken Alfredo'),
    (12, 'Beef Stroganoff'),
    (13, 'Vegetable Stir Fry'),
    (14, 'Grilled Salmon'),
    (15, 'Shrimp Scampi'),
    (16, 'Chicken Alfredo'),
    (17, 'Beef Stroganoff'),
    (18, 'Vegetable Stir Fry'),
    (19, 'Grilled Salmon'),
    (20, 'Shrimp Scampi'),
    (21, 'Chicken Alfredo'),
    (22, 'Beef Stroganoff'),
    (23, 'Vegetable Stir Fry'),
    (24, 'Grilled Salmon'),
    (25, 'Shrimp Scampi'),
    (26, 'Chicken Alfredo'),
    (27, 'Beef Stroganoff'),
    (28, 'Vegetable Stir Fry'),
    (29, 'Grilled Salmon'),
    (30, 'Shrimp Scampi'),
    (31, 'Chicken Alfredo'),
    (32, 'Beef Stroganoff'),
    (33, 'Vegetable Stir Fry'),
    (34, 'Grilled Salmon'),
    (35, 'Shrimp Scampi'),
    (36, 'Chicken Alfredo'),
    (37, 'Beef Stroganoff'),
    (38, 'Vegetable Stir Fry'),
    (39, 'Grilled Salmon'),
    (40, 'Shrimp Scampi'),
    (41, 'Chicken Alfredo'),
    (42, 'Beef Stroganoff'),
    (43, 'Vegetable Stir Fry'),
    (44, 'Grilled Salmon'),
    (45, 'Shrimp Scampi'),
    (46, 'Chicken Alfredo'),
    (47, 'Beef Stroganoff'),
    (48, 'Vegetable Stir Fry'),
    (49, 'Grilled Salmon'),
    (50, 'Shrimp Scampi');
