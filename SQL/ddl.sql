-- Table definition for Member
CREATE TABLE Member (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

-- Table definition for Trainer
CREATE TABLE Trainer (
    trainer_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    certification VARCHAR(255)
);

-- Table definition for TrainerAvailability
CREATE TABLE TrainerAvailability (
    availability_id SERIAL PRIMARY KEY,
    trainer_id INT,
    pricing DECIMAL(10, 2),
    date_time TIMESTAMP,
    duration INTERVAL,
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);

-- Table definition for PersonalTrainingSession
CREATE TABLE PersonalTrainingSession (
    session_id SERIAL PRIMARY KEY,
    trainer_id INT,
    member_id INT,
    date DATE,
    time TIME,
    duration INTERVAL,
    pricing DECIMAL(10, 2),
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

-- Table definition for GroupFitnessClass
CREATE TABLE GroupFitnessClass (
    class_id SERIAL PRIMARY KEY,
    trainer_id INT,
    date DATE,
    time TIME,
    duration INTERVAL,
    pricing DECIMAL(10, 2),
    max_capacity INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);

-- Table definition for REGISTRATION
CREATE TABLE REGISTRATION (
    registration_id SERIAL PRIMARY KEY,
    class_id INT,
    member_id INT,
    date DATE,
    time TIME,
    FOREIGN KEY (class_id) REFERENCES GroupFitnessClass(class_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

-- Table definition for RoomBooking
CREATE TABLE RoomBooking (
    booking_id SERIAL PRIMARY KEY,
    room_number VARCHAR(50),
    date DATE,
    time TIME,
    duration INTERVAL
);

-- Table definition for Fitness
CREATE TABLE Fitness (
    fitness_id SERIAL PRIMARY KEY,
    member_id INT,
    weight DECIMAL(10, 2),
    time TIME,
    health_metrics VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

-- Table definition for Equipment
CREATE TABLE Equipment (
    equipment_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    status VARCHAR(50)
);

-- Table definition for Billing
CREATE TABLE Billing (
    bill_id SERIAL PRIMARY KEY,
    member_id INT,
    amount DECIMAL(10, 2),
    date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

-- Table definition for Payment
CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    bill_id INT,
    amount DECIMAL(10, 2),
    date DATE,
    FOREIGN KEY (bill_id) REFERENCES Billing(bill_id),
    status VARCHAR(50)
);

-- Table definition for ExerciseRoutines
CREATE TABLE ExerciseRoutines (
    routine_id SERIAL PRIMARY KEY,
    member_id INT,
    exercise_name VARCHAR(255),
    sets INT,
    reps INT,
    weight DECIMAL(10, 2),
    duration INTERVAL,
    date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

-- Table definition for Admin
CREATE TABLE Admin (
    admin_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);
