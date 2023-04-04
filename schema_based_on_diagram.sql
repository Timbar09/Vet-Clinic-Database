-- Create medical_histories table

CREATE TABLE medical_histories(
    id INT,
    admitted_at TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    patient_id INT NOT NULL,
    status VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
);

-- Create treatments table

CREATE TABLE treatments(
    id INTEGER NOT NULL,
    type VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
);

-- Create medical_histories_treatments JOIN table

CREATE TABLE medical_histories_treatments(
    medical_history_id INT NOT NULL,
    treatment_id INT NOT NULL,
    CONSTRAINT fk_medical_histories_treatments_medical_histories 
    FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id),
    CONSTRAINT fk_medical_histories_treatments_treatments 
    FOREIGN KEY (treatment_id) REFERENCES treatments (id)
);