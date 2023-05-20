-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 02:13 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airportdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aircraft_ID` int(11) NOT NULL,
  `airline_ID` int(11) DEFAULT NULL,
  `manufacturer_ID` int(11) DEFAULT NULL,
  `aircraft_type` varchar(15) DEFAULT NULL,
  `aircraft_model` varchar(15) DEFAULT NULL,
  `seating_capacity` int(11) DEFAULT NULL,
  `cargo_capacity_kg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aircraft_ID`, `airline_ID`, `manufacturer_ID`, `aircraft_type`, `aircraft_model`, `seating_capacity`, `cargo_capacity_kg`) VALUES
(1, 3, 2, 'Wide-body jet', '787', 259, 24700),
(2, 3, 1, 'Wide-body jet', 'A350', 325, 28000),
(3, 6, 3, 'feederliner', '72', 78, 23000),
(4, 6, 1, 'Narrow-body jet', 'A321', 236, 97000),
(5, 5, 2, 'Narrow-body ', '737-800', 189, 20000),
(6, 4, 1, 'Narrow-body jet', 'A320', 230, 37200),
(7, 1, 3, 'feederliner', '72', 78, 23000),
(8, 2, 4, 'Calgary, Albert', 'Dash 8', 78, 30500),
(9, 7, 2, 'Wide-body jet', '787', 259, 24700);

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_ID` int(11) NOT NULL,
  `airline_name` varchar(20) DEFAULT NULL,
  `headquarters` varchar(20) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_ID`, `airline_name`, `headquarters`, `contact_number`, `email`) VALUES
(1, 'Air Serbia', 'Belgrade', '+38160666999', 'airserbia@gmail.com'),
(2, 'Croatia Airlines', 'Buzin', '+38564365963', 'croatia.airlines@gmail.com'),
(3, 'Turkish Airlines', 'Istanbul', '+38868756321', 'turkish.airlines@gmail.com'),
(4, 'Wizz Air', 'Budapest', '+36686236548', 'wizz.air@gmail.com'),
(5, 'Norwegian Air Shuttl', 'Fornebu', '+33364598765', 'norwegian.air.shuttle@gmail.com'),
(6, 'DHL Aviation', 'Bonn', '+44469854753', 'dhl.aviation@gmail.com'),
(7, 'Ryanair', 'Dublin', '+96378456231', 'ryanair@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `airline_employee`
--

CREATE TABLE `airline_employee` (
  `airline_employee_ID` int(11) NOT NULL,
  `airline_ID` int(11) DEFAULT NULL,
  `duty_ID` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airline_employee`
--

INSERT INTO `airline_employee` (`airline_employee_ID`, `airline_ID`, `duty_ID`, `first_name`, `last_name`, `date_of_birth`, `gender`, `contact_number`, `email`) VALUES
(1, 3, 1, 'Mehmet', 'Ogul', '1988-08-08', 'M', '+34496852741', 'mehmet.ogul@gmail.com'),
(2, 3, 5, 'Fatma', 'Turk', '1996-12-01', 'Z', '+34469785741', 'fatma.turk@gmail.com'),
(3, 3, 6, 'Ajse', 'Togluk', '1994-02-02', 'Z', '+34478369852', 'ajse.togluk@gmail.com'),
(4, 1, 1, 'Ivan', 'Ivanković', '1989-10-03', 'M', '+33396385241', 'ivan.ivankovic@gmail.com'),
(5, 1, 2, 'Matea', 'Matijević', '1990-07-23', 'M', '+33385269753', 'matea.matijevic@gmail.com'),
(6, 1, 5, 'Jelena', 'Pavlović', '1991-11-27', 'Ž', '+33378945623', 'jelena.pavlovic@gmail.com'),
(7, 2, 1, 'Igor', 'Zagorak', '1988-01-11', 'M', '+34478963258', 'igor.zagorak@gmail.com'),
(8, 4, 5, 'Maja', 'Bajrić', '1990-09-13', 'Ž', '+387609876543', 'maja.bajric@gmail.com'),
(9, 5, 3, 'Maid', 'Tupkovć', '1996-03-19', 'M', '+96345612378', 'maid.tupkovic@gmail.com'),
(10, 6, 1, 'Jorg', 'Schwarz', '1990-07-07', 'M', '+44475698756', 'jorg.schwarz@gmail.com'),
(11, 7, 1, 'Franz', 'Munich', '1980-05-21', 'M', '+36912369854', 'franz.munich@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_ID` int(11) NOT NULL,
  `airport_name` varchar(50) DEFAULT NULL,
  `city_name` varchar(20) DEFAULT NULL,
  `country_name` varchar(20) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `IATA` varchar(3) DEFAULT NULL,
  `ICAO` varchar(4) DEFAULT NULL,
  `timezone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_ID`, `airport_name`, `city_name`, `country_name`, `latitude`, `longitude`, `IATA`, `ICAO`, `timezone`) VALUES
(1, 'Zagreb Franjo Tuđman Airport', 'Zagreb', 'Croatia', '45 44 35 N', '16 04 08 E', 'ZAG', 'LDZA', 'CET/CEST'),
(2, 'Istanbul Airport', 'Istanbul', 'Turkey', '41 15 44 N', '28 43 40 E', 'IST', 'LTFM', 'TRT'),
(3, 'Dortmund Airport', 'Dortmund', 'Germany', '51 31 06 N', '07 36 44 E', 'DTM', 'EDLW', 'CET/CEST'),
(4, 'Oslo Gardermoen Airport', 'Oslo', 'Norway', '60 12 10 N', '11 05 02 E', 'OSL', 'ENGM', 'CET/CEST'),
(5, 'Vienna International Airport', 'Vienna', 'Austria', '48 06 39 N', '16 34 15 E', 'VIE', 'LOWW', 'CET/CEST'),
(6, 'Munich Airport', 'Munich', 'Germany', '48 21 14 N', '11 47 10 E', 'MUC', 'EDDM', 'CET/CEST'),
(7, 'Belgrade Nikola Tesla Airport', 'Belgrade', 'Serbia', '44 49 10 N', '20 18 25 E', 'BEG', 'LYBE', 'CET/CEST');

-- --------------------------------------------------------

--
-- Table structure for table `airport_employees`
--

CREATE TABLE `airport_employees` (
  `employee_ID` int(11) NOT NULL,
  `duty_ID` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport_employees`
--

INSERT INTO `airport_employees` (`employee_ID`, `duty_ID`, `first_name`, `last_name`, `date_of_birth`, `gender`, `contact_number`, `email`) VALUES
(1, 4, 'Ivanka', 'Iković', '1994-04-04', 'Z', '+38762741852', 'ivanka.ikovic@gmail.com'),
(2, 7, 'Amar', 'Burek', '2000-02-02', 'M', '+387604896325', 'amar.burek@gmail.com'),
(3, 8, 'Marko', 'Petrović', '1978-11-25', 'M', '+38764563214', 'marko.petrovic@gmail.com'),
(4, 9, 'Munira', 'Malkić', '1975-06-18', 'Z', '+38762456789', 'munira.malkic@gmail.com'),
(5, 10, 'Nermin', 'Redžić', '1979-08-23', 'M', '+387604123654', 'nermin.redzic@gmail.com'),
(6, 11, 'Marija', 'Marić', '1994-06-21', 'Z', '+38762123456', 'marija.maric@gmail.com'),
(7, 12, 'Emina', 'Alić', '1999-09-03', 'Z', '+38766123789', 'emina.alic@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `duty`
--

CREATE TABLE `duty` (
  `duty_ID` int(11) NOT NULL,
  `duty_name` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `duty`
--

INSERT INTO `duty` (`duty_ID`, `duty_name`, `salary`) VALUES
(1, 'pilot', 7000),
(2, 'co-pilot', 6000),
(3, 'flight engineer', 7000),
(4, 'navigator', 5500),
(5, 'flight attendant', 5000),
(6, 'flight medic', 6000),
(7, 'loadmaster', 4000),
(8, 'de-icing operatives', 3500),
(9, 'interior cabin clean', 3000),
(10, 'firefighters', 4500),
(11, 'ramp agents', 4500),
(12, 'flight dispatchers', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_ID` int(11) NOT NULL,
  `airline_ID` int(11) DEFAULT NULL,
  `destination_airport_ID` int(11) DEFAULT NULL,
  `scheduled_departure_time` time DEFAULT NULL,
  `scheduled_arrival_time` time DEFAULT NULL,
  `flight_duration` varchar(6) DEFAULT NULL,
  `flight_distance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_ID`, `airline_ID`, `destination_airport_ID`, `scheduled_departure_time`, `scheduled_arrival_time`, `flight_duration`, `flight_distance`) VALUES
(1, 1, 7, '10:00:00', '10:40:00', '00:30', 300),
(2, 2, 1, '08:00:00', '08:35:00', '00:25', 250),
(3, 3, 2, '07:00:00', '08:40:00', '01:30', 700),
(4, 3, 4, '11:00:00', '13:00:00', '01:50', 1000),
(5, 4, 4, '17:00:00', '19:00:00', '01:50', 1000),
(6, 4, 3, '14:00:00', '15:00:00', '00:50', 500),
(7, 6, 6, '15:00:00', '16:00:00', '00:50', 500),
(8, 7, 5, '09:00:00', '09:45:00', '00:35', 350),
(9, 5, 3, '05:00:00', '06:00:00', '00:50', 500);

-- --------------------------------------------------------

--
-- Table structure for table `flight_personnel`
--

CREATE TABLE `flight_personnel` (
  `flight_ID` int(11) NOT NULL,
  `airline_employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_personnel`
--

INSERT INTO `flight_personnel` (`flight_ID`, `airline_employee_ID`) VALUES
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(3, 1),
(3, 2),
(4, 1),
(4, 3),
(5, 8),
(6, 8),
(7, 10),
(8, 11),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `luggage`
--

CREATE TABLE `luggage` (
  `luggage_ID` int(11) NOT NULL,
  `passenger_ID` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luggage`
--

INSERT INTO `luggage` (`luggage_ID`, `passenger_ID`, `weight`) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 10),
(4, 3, 30),
(5, 4, 12),
(6, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_ID` int(11) NOT NULL,
  `manufacturer_name` varchar(30) DEFAULT NULL,
  `headquarters` varchar(30) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_ID`, `manufacturer_name`, `headquarters`, `contact_number`, `email`) VALUES
(1, 'Airbus', 'Leiden, Netherlands', '+34496345628', 'airbus@gmail.com'),
(2, 'Boeing', 'Arlington County, Virginia', '+96365987123', 'boeing@gmail.com'),
(3, 'ATR', 'Blagnac, France', '+99945612378', 'atr@gmail.com'),
(4, 'De Havilland Canada', 'Calgary, Alberta, Canada', '+88863258741', 'de.havilland.canada@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_ID` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_ID`, `first_name`, `last_name`, `gender`, `contact_number`, `email`) VALUES
(1, 'Amina', 'Mujčić', 'Z', '+38762459357', 'amina.mujcic@gmail.com'),
(2, 'Luka', 'Dorič', 'M', '+38764789369', 'luka.doric@gmail.com'),
(3, 'Mersiha', 'Šehić', 'Z', '+38762456159', 'mersiha.sehic@gmail.com'),
(4, 'Sanja', 'Alić', 'Z', '+38766945782', 'sanja.alic@gmail.com'),
(5, 'Amir', 'Mustafić', 'M', '+38762893591', 'amir.mustafic@gmail.com'),
(6, 'Nikola', 'Nikoli', 'M', '+38766385221', 'nikola.nikoli@gmail.com'),
(7, 'Omer', 'Omerčić', 'M', '+38762458761', 'omer.omercic@gmail.com'),
(8, 'Belmin', 'Omerčić', 'M', '+38762111753', 'belmin.omercic@gmail.com'),
(9, 'Ajla', 'Terzić', 'Z', '+3876012456789', 'ajla.terzic@gmail.com'),
(10, 'Anja', 'Bulić', 'Z', '+38766569845', 'anja.bulic@gmail.com'),
(11, 'Fatima', 'Džafić', 'Z', '+38761456987', 'fatima.dzafic@gmail.com'),
(12, 'Aleksa', 'Aleksić', 'M', '+38762789632', 'aleksa.aleksic@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_ID` int(11) NOT NULL,
  `flight_ID` int(11) DEFAULT NULL,
  `passenger_ID` int(11) DEFAULT NULL,
  `seat` varchar(6) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_ID`, `flight_ID`, `passenger_ID`, `seat`, `price`) VALUES
(1, 1, 12, 'A001', 45),
(2, 2, 3, 'B003', 35),
(3, 3, 1, 'A001', 50),
(4, 4, 2, '03', 80),
(5, 5, 4, 'A002', 60),
(6, 6, 7, 'B01', 30),
(7, 6, 8, 'B02', 30),
(8, 7, 5, '12', 35),
(9, 8, 6, '001', 20),
(10, 8, 9, '056', 20),
(11, 9, 10, '01', 0),
(12, 3, 11, 'A002', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aircraft_ID`),
  ADD KEY `manufacturer_ID` (`manufacturer_ID`),
  ADD KEY `airline_ID` (`airline_ID`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_ID`);

--
-- Indexes for table `airline_employee`
--
ALTER TABLE `airline_employee`
  ADD PRIMARY KEY (`airline_employee_ID`),
  ADD KEY `airline_ID` (`airline_ID`),
  ADD KEY `duty_ID` (`duty_ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_ID`);

--
-- Indexes for table `airport_employees`
--
ALTER TABLE `airport_employees`
  ADD PRIMARY KEY (`employee_ID`),
  ADD KEY `duty_ID` (`duty_ID`);

--
-- Indexes for table `duty`
--
ALTER TABLE `duty`
  ADD PRIMARY KEY (`duty_ID`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_ID`),
  ADD KEY `airline_ID` (`airline_ID`),
  ADD KEY `destination_airport_ID` (`destination_airport_ID`);

--
-- Indexes for table `flight_personnel`
--
ALTER TABLE `flight_personnel`
  ADD PRIMARY KEY (`flight_ID`,`airline_employee_ID`),
  ADD KEY `airline_employee_ID` (`airline_employee_ID`);

--
-- Indexes for table `luggage`
--
ALTER TABLE `luggage`
  ADD PRIMARY KEY (`luggage_ID`),
  ADD KEY `passenger_ID` (`passenger_ID`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_ID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_ID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_ID`),
  ADD KEY `flight_ID` (`flight_ID`),
  ADD KEY `passenger_ID` (`passenger_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD CONSTRAINT `aircraft_ibfk_1` FOREIGN KEY (`manufacturer_ID`) REFERENCES `manufacturer` (`manufacturer_ID`),
  ADD CONSTRAINT `aircraft_ibfk_2` FOREIGN KEY (`airline_ID`) REFERENCES `airline` (`airline_ID`);

--
-- Constraints for table `airline_employee`
--
ALTER TABLE `airline_employee`
  ADD CONSTRAINT `airline_employee_ibfk_1` FOREIGN KEY (`airline_ID`) REFERENCES `airline` (`airline_ID`),
  ADD CONSTRAINT `airline_employee_ibfk_2` FOREIGN KEY (`duty_ID`) REFERENCES `duty` (`duty_ID`);

--
-- Constraints for table `airport_employees`
--
ALTER TABLE `airport_employees`
  ADD CONSTRAINT `airport_employees_ibfk_1` FOREIGN KEY (`duty_ID`) REFERENCES `duty` (`duty_ID`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`airline_ID`) REFERENCES `airline` (`airline_ID`),
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`destination_airport_ID`) REFERENCES `airport` (`airport_ID`);

--
-- Constraints for table `flight_personnel`
--
ALTER TABLE `flight_personnel`
  ADD CONSTRAINT `flight_personnel_1` FOREIGN KEY (`airline_employee_ID`) REFERENCES `airline_employee` (`airline_employee_ID`),
  ADD CONSTRAINT `flight_personnel_2` FOREIGN KEY (`flight_ID`) REFERENCES `flight` (`flight_ID`);

--
-- Constraints for table `luggage`
--
ALTER TABLE `luggage`
  ADD CONSTRAINT `luggage_ibfk_1` FOREIGN KEY (`passenger_ID`) REFERENCES `passenger` (`passenger_ID`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`flight_ID`) REFERENCES `flight` (`flight_ID`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`passenger_ID`) REFERENCES `passenger` (`passenger_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
