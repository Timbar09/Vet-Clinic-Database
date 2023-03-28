-- Animals whose name ends with "mon"
SELECT * from animals WHERE name LIKE '%mon';

-- Names of animals born between 2016 and 2019
SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

-- Names of animals that are neutered and have less than 3 escape attempts
SELECT name from animals WHERE neutered = true AND escape_attempts < 3;

-- Date of birth of animals named either "Agumon" or "Pikachu"
SELECT date_of_birth from animals WHERE name = 'Agumon' OR name = 'Pikachu';

-- Names and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;

-- Animals that are neutered
SELECT * from animals WHERE neutered = true;

-- Animals not named Gabumon
SELECT * from animals WHERE name != 'Gabumon';

-- Animals that weigh 10.4 kg to 17.3 kg
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- Update the species column to 'unspecified' inside a transaction.
BEGIN;
UPDATE animals SET species = 'unspecified';

-- Verify that changes were made.
SELECT * FROM animals;

-- Roll back the changes.
ROLLBACK;

-- Verify that changes were rolled back.
SELECT * FROM animals;