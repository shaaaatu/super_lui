SET SQL_MODE = "NO_AUTE_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `dummy` (
	`id` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
	`value` varchar(50),
	`created_at` timestamp NULL DEFAULT NULL,
	`updated_at` timestamp NULL DEFAULT NULL
);

INSERT INTO `dummy` (value, created_at, updated_at)
VALUES
('Sample Value 1', NOW(), NOW()),
('Sample Value 2', NOW(), NOW()),
('Sample Value 3', NOW(), NOW()),
('Sample Value 4', NOW(), NOW()),
('Sample Value 5', NOW(), NOW()),
('Sample Value 6', NOW(), NOW()),
('Sample Value 7', NOW(), NOW()),
('Sample Value 8', NOW(), NOW()),
('Sample Value 9', NOW(), NOW()),
('Sample Value 10', NOW(), NOW()),
('Sample Value 11', NOW(), NOW()),
('Sample Value 12', NOW(), NOW()),
('Sample Value 13', NOW(), NOW()),
('Sample Value 14', NOW(), NOW()),
('Sample Value 15', NOW(), NOW()),
('Sample Value 16', NOW(), NOW()),
('Sample Value 17', NOW(), NOW()),
('Sample Value 18', NOW(), NOW()),
('Sample Value 19', NOW(), NOW()),
('Sample Value 20', NOW(), NOW()),
('Sample Value 21', NOW(), NOW()),
('Sample Value 22', NOW(), NOW()),
('Sample Value 23', NOW(), NOW()),
('Sample Value 24', NOW(), NOW()),
('Sample Value 25', NOW(), NOW()),
('Sample Value 26', NOW(), NOW()),
('Sample Value 27', NOW(), NOW()),
('Sample Value 28', NOW(), NOW()),
('Sample Value 29', NOW(), NOW()),
('Sample Value 30', NOW(), NOW()),
('Sample Value 31', NOW(), NOW()),
('Sample Value 32', NOW(), NOW()),
('Sample Value 33', NOW(), NOW()),
('Sample Value 34', NOW(), NOW()),
('Sample Value 35', NOW(), NOW()),
('Sample Value 36', NOW(), NOW()),
('Sample Value 37', NOW(), NOW()),
('Sample Value 38', NOW(), NOW()),
('Sample Value 39', NOW(), NOW()),
('Sample Value 40', NOW(), NOW()),
('Sample Value 41', NOW(), NOW()),
('Sample Value 42', NOW(), NOW()),
('Sample Value 43', NOW(), NOW()),
('Sample Value 44', NOW(), NOW()),
('Sample Value 45', NOW(), NOW()),
('Sample Value 46', NOW(), NOW()),
('Sample Value 47', NOW(), NOW()),
('Sample Value 48', NOW(), NOW()),
('Sample Value 49', NOW(), NOW()),
('Sample Value 50', NOW(), NOW()),
('Sample Value 51', NOW(), NOW()),
('Sample Value 52', NOW(), NOW()),
('Sample Value 53', NOW(), NOW()),
('Sample Value 54', NOW(), NOW()),
('Sample Value 55', NOW(), NOW()),
('Sample Value 56', NOW(), NOW()),
('Sample Value 57', NOW(), NOW()),
('Sample Value 58', NOW(), NOW()),
('Sample Value 59', NOW(), NOW()),
('Sample Value 60', NOW(), NOW()),
('Sample Value 61', NOW(), NOW()),
('Sample Value 62', NOW(), NOW()),
('Sample Value 63', NOW(), NOW()),
('Sample Value 64', NOW(), NOW()),
('Sample Value 65', NOW(), NOW()),
('Sample Value 66', NOW(), NOW()),
('Sample Value 67', NOW(), NOW()),
('Sample Value 68', NOW(), NOW()),
('Sample Value 69', NOW(), NOW()),
('Sample Value 70', NOW(), NOW()),
('Sample Value 71', NOW(), NOW()),
('Sample Value 72', NOW(), NOW()),
('Sample Value 73', NOW(), NOW()),
('Sample Value 74', NOW(), NOW()),
('Sample Value 75', NOW(), NOW()),
('Sample Value 76', NOW(), NOW()),
('Sample Value 77', NOW(), NOW()),
('Sample Value 78', NOW(), NOW()),
('Sample Value 79', NOW(), NOW()),
('Sample Value 80', NOW(), NOW()),
('Sample Value 81', NOW(), NOW()),
('Sample Value 82', NOW(), NOW()),
('Sample Value 83', NOW(), NOW()),
('Sample Value 84', NOW(), NOW()),
('Sample Value 85', NOW(), NOW()),
('Sample Value 86', NOW(), NOW()),
('Sample Value 87', NOW(), NOW()),
('Sample Value 88', NOW(), NOW()),
('Sample Value 89', NOW(), NOW()),
('Sample Value 90', NOW(), NOW()),
('Sample Value 91', NOW(), NOW()),
('Sample Value 92', NOW(), NOW()),
('Sample Value 93', NOW(), NOW()),
('Sample Value 94', NOW(), NOW()),
('Sample Value 95', NOW(), NOW()),
('Sample Value 96', NOW(), NOW()),
('Sample Value 97', NOW(), NOW()),
('Sample Value 98', NOW(), NOW()),
('Sample Value 99', NOW(), NOW()),
('Sample Value 100', NOW(), NOW());

COMMIT;
