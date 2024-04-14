-- Insert statements for Member table
INSERT INTO Member (name, email, password) VALUES ('John', 'john@example.com', 'password123');
INSERT INTO Member (name, email, password) VALUES ('Jane', 'jane@example.com', 'password456');

-- Insert statements for Trainer table
INSERT INTO Trainer (name, email, password, certification) VALUES ('Lucy', 'Lucy@example.com', 'trainerpass', 'fitness coach');
INSERT INTO Trainer (name, email, password, certification) VALUES ('Bob', 'Bob@example.com', 'trainerpass', 'Yoga coach');

-- Insert statements for TrainerAvailability table
INSERT INTO TrainerAvailability (trainer_id, pricing, date_time, duration) VALUES (1, 50.00, '2024-04-13 10:00:00', '1 hour');
INSERT INTO TrainerAvailability (trainer_id, pricing, date_time, duration) VALUES (2, 60.00, '2024-04-14 15:00:00', '45 minutes');
INSERT INTO TrainerAvailability (trainer_id, pricing, date_time, duration) VALUES (1, 59.00, '2024-04-15 10:00:00', '1 hour');

-- Insert statements for PersonalTrainingSession table
INSERT INTO PersonalTrainingSession (trainer_id, member_id, date, time, duration, pricing) VALUES (1, 1, '2024-04-15', '14:00:00', '1 hour', 70.00);
INSERT INTO PersonalTrainingSession (trainer_id, member_id, date, time, duration, pricing) VALUES (2, 2, '2024-04-16', '16:00:00', '45 minutes', 60.00);

-- Insert statements for GroupFitnessClass table
INSERT INTO GroupFitnessClass (trainer_id, date, time, duration, pricing, max_capacity) VALUES (1, '2024-04-17', '09:00:00', '1 hour', 20.00, 3);
INSERT INTO GroupFitnessClass (trainer_id, date, time, duration, pricing, max_capacity) VALUES (2, '2024-04-18', '17:00:00', '1 hour', 25.00, 20);

-- Insert statements for REGISTRATION table
INSERT INTO REGISTRATION (class_id, member_id, date, time) VALUES (1, 1, '2024-04-17', '09:00:00');
INSERT INTO REGISTRATION (class_id, member_id, date, time) VALUES (2, 2, '2024-04-18', '17:00:00');

-- Insert statements for RoomBooking table
INSERT INTO RoomBooking (room_number, date, time, duration) VALUES ('Room 1', '2024-04-19', '10:00:00', '2 hours');
INSERT INTO RoomBooking (room_number, date, time, duration) VALUES ('Room 2', '2024-04-20', '11:00:00', '3 hours');

-- Insert statements for Fitness table
INSERT INTO Fitness (member_id, weight, time, health_metrics) VALUES (1, 70.5, '10:00:00', 'Metrics A');
INSERT INTO Fitness (member_id, weight, time, health_metrics) VALUES (2, 65.2, '11:00:00', 'Metrics B');

-- Insert statements for Equipment table
INSERT INTO Equipment (name, status) VALUES ('Treadmill', 'Available');
INSERT INTO Equipment (name, status) VALUES ('Dumbbells', 'In Use');
INSERT INTO Equipment (name, status) VALUES ('Dumbbells', 'Avaliable');
INSERT INTO Equipment (name, status) VALUES ('Barbell', 'Avaliable');
INSERT INTO Equipment (name, status) VALUES ('Treadmill', 'Maintain required');

-- Insert statements for Billing table
INSERT INTO Billing (member_id, amount, date) VALUES (1, 100.00, '2024-04-10');
INSERT INTO Billing (member_id, amount, date) VALUES (2, 120.00, '2024-04-10');

-- Insert statements for Payment table
INSERT INTO Payment (bill_id, amount, date, status) VALUES (1, 100.00, '2024-04-09', 'Paid');
INSERT INTO Payment (bill_id, amount, date, status) VALUES (2, 120.00, '2024-04-09', 'Paid');

-- Insert statements for ExerciseRoutines table
INSERT INTO ExerciseRoutines (member_id, exercise_name, sets, reps, weight, duration, date) VALUES (1, 'Push-ups', 3, 10, 0, '30 minutes', '2024-04-13');
INSERT INTO ExerciseRoutines (member_id, exercise_name, sets, reps, weight, duration, date) VALUES (2, 'Squats', 4, 12, 10, '45 minutes', '2024-04-14');

-- Insert statements for Admin table
INSERT INTO Admin (name, email, password) VALUES ('Admin User', 'admin@example.com', 'adminpass');
