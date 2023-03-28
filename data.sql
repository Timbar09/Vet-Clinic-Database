-- Add animals to the table

-- INSERT Aguemon
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Agumon', '2020-02-03', 0, TRUE, 10.23);

-- INSERT Gabumon
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Gabumon', '2018-11-15', 2, TRUE, 8);

-- INSERT Pikachu
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Pikachu', '2021-01-07', 1, FALSE, 15.04);

-- INSERT Devimon
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Devimon', '2017-05-12', 5, TRUE, 11);

-- INSERT Charmander
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander', '2020-02-08', 0, FALSE, 11);

-- INSERT Plantmon
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon', '2021-11-15', 2, TRUE, 5.7);

-- INSERT Squirtle
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle', '1993-04-02', 3, FALSE, 12.13);

-- INSERT Angemon
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon', '2005-06-12', 1, TRUE, 45);

-- INSERT Boarmon
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon', '2005-06-07', 7, TRUE, 20.4);

-- INSERT Blossom
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom', '1998-10-13', 3, TRUE, 17);

-- INSERT Ditto
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto', '2022-05-14', 4, TRUE, 22);


-- Insert data into the owners table

-- Sam Smith
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);

-- Jennifer Orwell
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);

-- Bob
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);

-- Melody Pond
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);

-- Dean Winchester
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);

-- Jodie Whittaker
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);


-- Insert data into the species table:

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');


-- Modify inserted animal records so they include the 'species_id' value:

-- Digimon species_id = 2
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

-- Pokemon species_id = 1
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;


-- Modify inserted animals to include 'owner_id' value:

-- Sam Smith owns Agumon.
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';

-- Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';

-- Bob owns Devimon and Plantmon.
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';

-- Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

-- Dean Winchester owns Angemon and Boarmon.
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';
