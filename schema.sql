-- Create database
CREATE DATABASE vet_clinic;

-- Create table
CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL,
    PRIMARY KEY (id)
);

-- Add 'species' column of type string to animals table
ALTER TABLE animals ADD COLUMN species VARCHAR(100);


-- Create owners table
CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (id)
);


-- Create species table
CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


-- Inside a transaction, modify animals table:
BEGIN;

-- Remove column species.
ALTER TABLE animals DROP COLUMN species;

-- Add column species_id as a foreign key referencing species table.
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_animals_species FOREIGN KEY (species_id) REFERENCES species (id);

-- Add column owner_id which is a foreign key referencing the owners table.
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_animals_owners FOREIGN KEY (owner_id) REFERENCES owners (id);

-- Commit the transaction.
COMMIT;


-- Create vets table
CREATE TABLE vets (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);


-- Create a "join table" called specializations for vets and species tables.
CREATE TABLE specializations (
    vet_id INT,
    species_id INT,
    CONSTRAINT fk_specializations_vets FOREIGN KEY (vet_id) REFERENCES vets (id),
    CONSTRAINT fk_specializations_species FOREIGN KEY (species_id) REFERENCES species (id)
);


--  Create a "join table" called visits for vets and animals tables.
CREATE TABLE visits (
    id INT GENERATED ALWAYS AS IDENTITY,
    animal_id INT,
    vet_id INT,
    date_of_visit DATE,
    CONSTRAINT fk_visits_animals FOREIGN KEY (animal_id) REFERENCES animals (id),
    CONSTRAINT fk_visits_vets FOREIGN KEY (vet_id) REFERENCES vets (id),
    PRIMARY KEY (id)
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);