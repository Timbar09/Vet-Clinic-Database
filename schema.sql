CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    escape_attempts INT DEFAULT 0,
    neutered BOOLEAN DEFAULT FALSE,
    weight_kg DECIMAL,
    PRIMARY KEY (id)
);
