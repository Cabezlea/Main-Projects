drop schema if exists BloodBankManagementSystems;
CREATE DATABASE BloodBankManagementSystems;
use BloodBankManagementSystems;
SHOW TABLES;

-- Table structure for table `Employee`
DROP TABLE IF EXISTS `Employee`;
CREATE TABLE `bloodbankmanagementsystems`.`Employee` (
                                                         `EmpID` VARCHAR(6) NOT NULL,
                                                         `EmpName` CHAR(25) NOT NULL,
                                                         `EmpRole` CHAR(15) NULL,
                                                         `EmpDepartment` CHAR(15) NULL,
                                                         `EmpLocation` CHAR(15) NULL,
                                                         `EmpAge` INT NULL,
                                                         `EmpGender` CHAR(12) NULL,
                                                         `EmpContactNumber` VARCHAR(12) NULL,
                                                         `EmpEmailID` VARCHAR(28) NULL,
                                                         PRIMARY KEY (`EmpID`));

-- Inserting into Employee
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('111111', 'Rim', 'Surgeon', 'Critical Care', 'Los Angeles', '34', 'M', '9873457892', 'rim123@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('222222', 'Tan', 'Surgeon', 'Care', 'Pittsburgh', '25', 'M', '7485963486', 'tan333@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('333333', 'Mimmi', 'Nurse', 'HealthService', 'Portland', '45', 'F', '8765652349', 'mimmi45@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('444444', 'Kate', 'Physician', 'Elderly', 'Wichita', '35', 'F', '7654397682', 'kate6@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('555555', 'louie', 'Therapist', 'GeneralService', 'Miami', '55', 'M', '6782346789', 'louie12@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('666666', 'Susan', 'Nurse', 'Services', 'Wilmington', '26', 'M', '8975432789', 'susan@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('777777', 'Momu', 'Therapist', 'General', 'Saint Paul', '57', 'M', '9876345787', 'momu666@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('888888', 'Flue', 'Physician', 'Pediatric', 'Burlington', '56', 'M', '7896456792', 'flue32@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('999999', 'Tessa', 'Surgicaltech', 'Diagnostic', 'Detroit', '34', 'F', '9767894589', 'tessa10@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('123456', 'Quin', 'Surgicaltech', 'DiagnosticDep', 'Dallas', '22', 'M', '7896456785', 'quin98@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('123457', 'Haily', 'Receptionist', 'General', 'Detroit', '23', 'F', '7806454785', 'haily00@gmail.com');
INSERT INTO `BloodBankManagementSystems`.`Employee`(EmpID, EmpName, EmpRole, EmpDepartment, EmpLocation, EmpAge, EmpGender, EmpContactNumber, EmpEmailID)
VALUES ('123458', 'Mark', 'Receptionist', 'General', 'Dallas', '21', 'M', '8706454790', 'mark00@gmail.com');

-- Table structure for table `Location`
DROP TABLE IF EXISTS `Location`;
CREATE TABLE `BloodBankManagementSystems`.`Location` (
                                                         `LocationID` VARCHAR(6) NOT NULL,
                                                         `LocationName` CHAR(15) NULL,
                                                         `City` CHAR(15) NULL,
                                                         `State` CHAR(15) NULL,
                                                         `Item` CHAR(15) NULL,
                                                         `BloodType` CHAR(4) NULL,
                                                         `AvailableQuantity` INT NULL,
                                                         PRIMARY KEY (`LocationID`));

-- Intserting into Location
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('1B2A', 'Santa', 'Los Angeles', 'California', 'BloodBag', 'B+', '9');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('3C5E', 'Cranberry', 'Pittsburgh', 'Pennsylvania', 'BloodBag', 'O+', '2');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('5E7F', 'Burnside', 'Portland', 'Oregon', 'BloodBag', 'AB+', '10');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('7K5I', 'Brookhollow.', 'Wichita', 'Kansas', 'BloodBag', 'A+', '1');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('4H6K', 'Homestead', 'Miami', 'Florida', 'BloodBag', 'B+', '3');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('8M9O', 'The Cape', 'Wilmington', 'Delaware', 'BloodBag', 'B-', '9');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('8HLP', 'West Side', 'Saint Paul', 'Minnesota', 'BloodBag', 'A-', '6');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('7T4D', 'Arlton Village', 'Burlington', 'Vermont', 'BloodBag', 'AB-', '4');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('5Y3S', 'Troy', 'Detroit', 'Michigan', 'BloodBag', 'O-', '7');
INSERT INTO `BloodBankManagementSystems`.`Location`(LocationID, LocationName, City, State, Item, BloodType, AvailableQuantity)
VALUES ('6Z3H', 'Carrollton', 'Dallas', 'Texas', 'BloodBag', 'O+', '8');

-- Table structure for table `Accounts`
DROP TABLE IF EXISTS `Accounts`;
CREATE TABLE `BloodBankManagementSystems`.`Accounts` (
                                                         `AccountID` INT NOT NULL,
                                                         `EmpID` VARCHAR(6) NOT NULL,
                                                         `BasePay` INT NULL,
                                                         `Incentive` INT NULL,
                                                         `Month` INT NULL,
                                                         `Year` INT NULL,
                                                         PRIMARY KEY (`AccountID`),
                                                         INDEX `EmpID_idx` (`EmpID` ASC) VISIBLE,
                                                         CONSTRAINT `EmpID`
                                                             FOREIGN KEY (`EmpID`)
                                                                 REFERENCES `BloodBankManagementSystems`.`Employee` (`EmpID`)
                                                                 ON DELETE NO ACTION
                                                                 ON UPDATE NO ACTION);

-- Inserting into Accounts
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500101', '111111', '60000', '35000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500102', '222222', '56000', '32000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500103', '333333', '29000', '12000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500104', '444444', '52000', '28000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500105', '555555', '50000', '30000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500106', '666666', '32000', '14000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500107', '777777', '45000', '28000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500108', '888888', '48000', '31000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500109', '999999', '34000', '18000', 08, 2021);
INSERT INTO `BloodBankManagementSystems`.`accounts` (`AccountID`, `EmpID`, `BasePay`, `Incentive`, `Month`, `Year`)
VALUES ('500110', '123456', '33000', '19000', 08, 2021);

-- Table structure for table `Donor`
DROP TABLE IF EXISTS `Donor`;
CREATE TABLE `bloodbankmanagementsystems`.`Donor` (
                                                      `DonorID` VARCHAR(6) NOT NULL,
                                                      `DonorName` CHAR(25) NOT NULL,
                                                      `DonorAge` INT NULL,
                                                      `DonorGender` CHAR(12) NULL,
                                                      `DonorContactNumber` VARCHAR(12) NULL,
                                                      `DonatedItem` CHAR(15) NULL,
                                                      `BloodGroup` CHAR(4) NULL,
                                                      `LocationID` VARCHAR(6) NULL,
                                                      `DonationQuantity` INT NULL,
                                                      `DonorCity` CHAR(15) NULL,
                                                      `DonationAdministeredBy` VARCHAR(6) NULL,
                                                      PRIMARY KEY (`DonorID`),
                                                      INDEX `LocationID_idx` (`LocationID` ASC) VISIBLE,
                                                      CONSTRAINT `LocationID`
                                                          FOREIGN KEY (`LocationID`)
                                                              REFERENCES `bloodbankmanagementsystems`.`Location` (`LocationID`)
                                                              ON DELETE NO ACTION
                                                              ON UPDATE NO ACTION);

-- Inserting into Donor
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('111111', 'Rim', '25', 'F', '9873457892', 'Blood', 'A+', '3C5E', '3', 'Los Angeles', 'Jim');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('222222', 'Tan', '28', 'M', '7485963486', 'Blood', 'B+', '1B2A', '5', 'Pittsburgh', 'Bob');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('333333', 'Mimmi', '23', 'F', '8765652349', 'Blood', 'O+', '5E7F', '4', 'Portland', 'Jim');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('444444', 'Kate', '25', 'M', '7654397682', 'Blood', 'A+', '7K5I', '7', 'Wichita', 'Kob');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('555555', 'louie', '27', 'M', '6782346789', 'Blood', 'AB+', '4H6K', '9', 'Miami', 'Jim');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('666666', 'Susan', '30', 'F', '8975432789', 'Blood', 'B+', '8M9O', '2', 'Wilmington', 'Pop');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('777777', 'Momu', '28', 'M', '9876345787', 'Blood', 'AB+', '8HLP', '3', 'Saint Paul', 'Berry');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('888888', 'Flue', '27', 'F', '7896456792', 'Blood', 'A+', '7T4D', '3', 'Burlington', 'Jerry');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('999999', 'Tessa', '45', 'F', '9767894589', 'Blood', 'AB+', '5Y3S', '3', 'Michigan', 'Tom');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('123456', 'Quin', '55', 'F', '7896456785', 'Blood', 'B+', '6Z3H', '3', 'Dallas', 'Peri');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('324354', 'Chandler', '32', 'M', '8887778889', 'StemCell', 'A+', '6Z3H', '1', 'Dallas', 'Peri'),
       ('324351', 'Davidson', '35', 'M', '8887770000', 'StemCell', 'B+', '5Y3S', '1', 'Michigan', 'Tom'),
       ('329452', 'Michael', '27', 'M', '8885558889', 'StemCell', 'O+', '7T4D', '1', 'Burlington', 'Jerry'),
       ('302114', 'Monica', '25', 'F', '8457778889', 'StemCell', 'AB+', '1B2A', '1', 'Pittsburgh', 'Bob'),
       ('312305', 'Ulisses ', '33', 'M', '8887778989', 'StemCell', 'O+', '4H6K', '1', 'Miami', 'Jim');
INSERT INTO `BloodBankManagementSystems`.`Donor`(DonorID, DonorName, DonorAge, DonorGender, DonorContactNumber, DonatedItem, BloodGroup, LocationID, DonationQuantity, DonorCity, DonationAdministeredBy )
VALUES ('111222', 'Ross', '31', 'M', '8998878889', 'Plasma', 'A+', '7K5I', '1', 'Wichita', 'Kob'),
       ('222333', 'Stella', '32', 'M', '8000888749', 'Plasma', 'B+', '4H6K', '1', 'Miami', 'Jim'),
       ('333444', 'Joey', '32', 'M', '8008877559', 'Plasma', 'B-', '5E7F', '1', 'Portland', 'Jim'),
       ('444555', 'Rishab', '32', 'M', '9900887766', 'Plasma', 'AB-', '3C5E', '1', 'Los Angeles', 'Jim'),
       ('555666', 'Clint', '32', 'M', '8855223344', 'Plasma', 'O+', '6Z3H', '2', 'Dallas', 'Peri'),
       ('666777', 'Natasha', '29', 'F', '8009998700', 'Plasma', 'O-', '8HLP', '1', 'Saint Paul', 'Berry');

-- Table structure for table `PlasmaDonation`
DROP TABLE IF EXISTS `PlasmaDonation`;
CREATE TABLE `BloodBankManagementSystems`.`PlasmaDonation` (
                                                               `DonorID` varchar(6) NOT NULL,
                                                               `DonorName` char(25) DEFAULT NULL,
                                                               `DonationID` varchar(6) DEFAULT NULL,
                                                               `BloodGroup` char(4) DEFAULT NULL,
                                                               `LocationID` varchar(6) NOT NULL,
                                                               `DonationQuantity` int DEFAULT NULL,
                                                               `DonationAdministeredBy` varchar(6) DEFAULT NULL,
                                                               PRIMARY KEY (`DonorID`),
                                                               CONSTRAINT `DonorID_FK00` FOREIGN KEY (`DonorID`) REFERENCES `Donor` (`DonorID`),
                                                               CONSTRAINT `LocationID_FK04` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`),
                                                               UNIQUE INDEX `DonationID_UNIQUE` (`DonationID` ASC) VISIBLE);

-- Inserting into PlasmaDonation
INSERT INTO `BloodBankManagementSystems`.`PlasmaDonation` (`DonorID`, `DonorName`, `DonationID`, `BloodGroup`, `LocationID`, `DonationQuantity`, `DonationAdministeredBy`)
VALUES ('111222', 'Ross', '185823', 'A+', '7K5I', '1','Kob');
INSERT INTO `BloodBankManagementSystems`.`PlasmaDonation` (`DonorID`, `DonorName`, `DonationID`, `BloodGroup`, `LocationID`, `DonationQuantity`, `DonationAdministeredBy`)
VALUES ('222333', 'Stella', '215501', 'B+', '4H6K', '1','Jim');
INSERT INTO `BloodBankManagementSystems`.`PlasmaDonation` (`DonorID`, `DonorName`, `DonationID`, `BloodGroup`, `LocationID`, `DonationQuantity`, `DonationAdministeredBy`)
VALUES ('333444', 'Joey', '349721', 'B-', '5E7F', '1','Jim');
INSERT INTO `BloodBankManagementSystems`.`PlasmaDonation` (`DonorID`, `DonorName`, `DonationID`, `BloodGroup`, `LocationID`, `DonationQuantity`, `DonationAdministeredBy`)
VALUES ('444555', 'Rishab', '423097', 'AB-', '3C5E', '1','Jim');
INSERT INTO `BloodBankManagementSystems`.`PlasmaDonation` (`DonorID`, `DonorName`, `DonationID`, `BloodGroup`, `LocationID`, `DonationQuantity`, `DonationAdministeredBy`)
VALUES ('555666', 'Clint', '185845', 'O+', '6Z3H', '2','Peri');
INSERT INTO `BloodBankManagementSystems`.`PlasmaDonation` (`DonorID`, `DonorName`, `DonationID`, `BloodGroup`, `LocationID`, `DonationQuantity`, `DonationAdministeredBy`)
VALUES ('666777', 'Natasha', '185834', 'O-', '8HLP', '1','Berry');

-- Table structure for table `StemCellDonation`
DROP TABLE IF EXISTS `StemCellDonation`;
CREATE TABLE `BloodBankManagementSystems`.`StemCellDonation` (
                                                                 `DonorID` VARCHAR(6) NOT NULL,
                                                                 `DonorName` VARCHAR(25) NULL,
                                                                 `DonationID` VARCHAR(6) NULL,
                                                                 `DonatedCellName` VARCHAR(20) NULL,
                                                                 `DonatedCellType` VARCHAR(15) NULL,
                                                                 `DonatedCellGrade` VARCHAR(10) NULL,
                                                                 `LocationID` VARCHAR(6) NULL,
                                                                 `DonationQuantity` INT NULL,
                                                                 `DonationAdministeredBy` VARCHAR(20) NULL,
                                                                 PRIMARY KEY (`DonorID`),
                                                                 UNIQUE INDEX `DonationID_UNIQUE` (`DonationID` ASC) VISIBLE,
                                                                 INDEX `LocationID_idx` (`LocationID` ASC) VISIBLE,
                                                                 CONSTRAINT `DonerID_FK01`
                                                                     FOREIGN KEY (`DonorID`)
                                                                         REFERENCES `BloodBankManagementSystems`.`Donor` (`DonorID`)
                                                                         ON DELETE NO ACTION
                                                                         ON UPDATE NO ACTION,
                                                                 CONSTRAINT `LocationID_FK03`
                                                                     FOREIGN KEY (`LocationID`)
                                                                         REFERENCES `BloodBankManagementSystems`.`Location` (`LocationID`)
                                                                         ON DELETE NO ACTION
                                                                         ON UPDATE NO ACTION);

-- Inserting into StemCellDonation
INSERT INTO `BloodBankManagementSystems`.`StemCellDonation` (`DonorID`, `DonorName`, `DonationID`, `DonatedCellName`, `DonatedCellType`, `DonatedCellGrade`,`LocationID`, `DonationQuantity`,`DonationAdministeredBy`)
VALUES ('324354', 'Chandler', '253658', 'Stem Cell', 'Hematopoietic','Grade01', '6Z3H','1','Peri');
INSERT INTO `BloodBankManagementSystems`.`StemCellDonation` (`DonorID`, `DonorName`, `DonationID`, `DonatedCellName`, `DonatedCellType`, `DonatedCellGrade`,`LocationID`, `DonationQuantity`,`DonationAdministeredBy`)
VALUES ('324351', 'Davidson', '352818', 'Stem Cell', 'Tissue-specific','Grade02', '5Y3S','1','Tom');
INSERT INTO `BloodBankManagementSystems`.`StemCellDonation` (`DonorID`, `DonorName`, `DonationID`, `DonatedCellName`, `DonatedCellType`, `DonatedCellGrade`,`LocationID`, `DonationQuantity`,`DonationAdministeredBy`)
VALUES ('329452', 'Michael', '378921', 'Stem Cell', 'Mesenchymal','Grade01', '7T4D','1','Jerry');
INSERT INTO `BloodBankManagementSystems`.`StemCellDonation` (`DonorID`, `DonorName`, `DonationID`, `DonatedCellName`, `DonatedCellType`, `DonatedCellGrade`,`LocationID`, `DonationQuantity`,`DonationAdministeredBy`)
VALUES ('302114', 'Monica', '829320', 'Stem Cell', 'Hematopoietic','Grade01', '1B2A','1','Bob');
INSERT INTO `BloodBankManagementSystems`.`StemCellDonation` (`DonorID`, `DonorName`, `DonationID`, `DonatedCellName`, `DonatedCellType`, `DonatedCellGrade`,`LocationID`, `DonationQuantity`,`DonationAdministeredBy`)
VALUES ('312305', 'Ulisses', '731042', 'Stem Cell', 'Neural','Grade02', '4H6K','1','Jim');

-- Table structure for table `BloodGroup`
DROP TABLE IF EXISTS `BloodGroup`;
CREATE TABLE `BloodBankManagementSystems`.`BloodGroup` (
                                                           `BloodGroupID` VARCHAR(6) NOT NULL,
                                                           `BloodGroupName` VARCHAR(10) NOT NULL,
                                                           `Description` VARCHAR(200) NULL,
                                                           PRIMARY KEY (`BloodGroupID`));

-- Inserting into BloodGroup
INSERT INTO `BloodBankManagementSystems`.`BloodGroup`(BloodGroupID, BloodGroupName, Description)
VALUES ('101', 'A+', 'Can donate to A+,AB+ | Can receive from A+,A-,O+,O-'),
       ('102', 'A-', 'Can donate to A+,A-,AB+,AB- | Can receive from A-,O-'),
       ('103', 'B+', 'Can donate to B+,AB+ | Can receive from B+,B-,O+,O-'),
       ('104', 'B-', 'Can donate to B+,B-,AB+,AB- | Can receive from B-,O-'),
       ('105', 'AB+', 'Can donate to AB+ | Can receive from A+,A-,B+,B-,AB+,AB-,O+,O-'),
       ('106', 'AB-', 'Can donate to AB+,AB- | Can receive from A-,B-,AB-,O-'),
       ('107', 'O+', 'Can donate to A+,B+,AB+,O+ | Can receive from O+,O-'),
       ('108', 'O-', 'Can donate to A+,A-,B+,B-,AB+,AB-,O+,O- | Can receive from O-');

-- Table structure for table `Request`
DROP TABLE IF EXISTS `Request`;
CREATE TABLE `BloodBankManagementSystems`.`Request` (
                                                        `RequestID` VARCHAR(6) NOT NULL,
                                                        `LocationID` VARCHAR(6) NOT NULL,
                                                        `RequestBy` CHAR(25) NULL,
                                                        `RequestDate` DATETIME NULL,
                                                        `RequestedItem` CHAR(15) NULL,
                                                        `BloodGroup` CHAR(4) NULL,
                                                        `NoofBags` INT NULL,
                                                        `Purpose` CHAR(15) NULL,
                                                        `RequestStatus` CHAR(10) NULL,
                                                        `EmpID` VARCHAR(6) NOT NULL,
                                                        PRIMARY KEY (`RequestID`),
                                                        KEY `LocationID` (`LocationID`),
                                                        KEY `EmpID` (`EmpID`),
                                                        CONSTRAINT `Location_FK00` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`),
                                                        CONSTRAINT `Employee_FK01` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`EmpID`)
);

-- Inserting into `Request`
INSERT INTO `BloodBankManagementSystems`.`Request`(RequestID, LocationID, RequestBy, RequestDate, RequestedItem, BloodGroup, NoofBags, Purpose, RequestStatus, EmpID)
VALUES ('983497', '1B2A', 'Molly', '2022-03-02', 'BloodBag', 'A+','3', 'Surgery', 'Approved','111111'),
       ('837304', '3C5E', 'Anderson', '2022-06-12', 'BloodBag', 'B+', '4', 'Surgery ', 'Approved','222222'),
       ('289475', '5E7F', 'Molly', '2022-08-13', 'BloodBag', 'AB+', '5', 'Surgery', 'Approved','333333'),
       ('983573', '7K5I', 'Ram', '2022-04-07', 'BloodBag',  'B+','3', 'Surgery', 'Approved','444444'),
       ('473748', '4H6K', 'Kristen', '2022-05-01', 'BloodBag',  'AB+', '6', 'Surgery', 'Approved','555555'),
       ('234578', '8M9O', 'Carmen', '2022-09-22', 'BloodBag', 'O+', '7', 'Surgery', 'Approved','666666'),
       ('345787', '8HLP', 'Charlie', '2022-07-03', 'BloodBag', 'B+', '8', 'Surgery', 'Approved','777777'),
       ('894667', '7T4D', 'Justin', '2022-11-15', 'BloodBag','AB+', '4', 'Surgery', 'Approved', '888888'),
       ('784767', '5Y3S', 'Ariana', '2022-06-19', 'BloodBag', 'AB-', '3', 'Surgery', 'Approved', '999999'),
       ('947289', '6Z3H', 'Cynthia', '2022-03-01', 'BloodBag', 'O+', '2', 'Surgery', 'Approved', '123456');

-- Table structure for table `Recipient`
DROP TABLE IF EXISTS `Recipient`;
CREATE TABLE `BloodBankManagementSystems`.`Recipient` (
                                                          `RecipientID` VARCHAR(6) NOT NULL,
                                                          `BloodGroup` CHAR(4) NULL,
                                                          `RecipientName` CHAR(25) NULL,
                                                          `RecipientAge` INT NULL,
                                                          `RecipientGender` CHAR(12) NULL,
                                                          `RecipientContactNumber` VARCHAR(12) NULL,
                                                          `RequestedItem` CHAR(15) NULL,
                                                          `RequestedQuantity` INT NULL,
                                                          `EmpID` VARCHAR(6) NOT NULL,
                                                          PRIMARY KEY (`RecipientID`),
                                                          KEY `EmpID` (`EmpID`),
                                                          CONSTRAINT `Employee_FK03` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`EmpID`)
);

-- Inserting into Recipient
INSERT INTO `BloodBankManagementSystems`.`Recipient`(RecipientID, BloodGroup, RecipientName, RecipientAge, RecipientGender, RecipientContactNumber, RequestedItem, RequestedQuantity, EmpID)
VALUES ('300101', 'A+', 'Molly', 25, 'F', '4567894390', 'A+ NoofBag', 2, '123458'),
       ('300102', 'B+', 'Anderson', 43, 'M', '4577858390', 'A- NoofBag', 2, '123456'),
       ('300103', 'A+', 'Molly', 25, 'F', '4567894390', 'A+ NoofBag', 2, '123457'),
       ('300104', 'A-', 'Ram', 26, 'M', '5676845392', 'B- NoofBag', 3, '123458'),
       ('300105', 'O-', 'Kristen', 22, 'F', '4563464393', 'A+ Plasma', 2, '123458'),
       ('300106', 'AB+', 'Carmen', 30, 'M', '6521894224', 'B+ NoofBag', 4, '123456'),
       ('300107', 'O+', 'Charlie', 40, 'M', '436554943898', 'O- NoofBag', 3, '123457'),
       ('300108', 'O+', 'Justin', 23, 'M', '5679943000', 'O+ Plasma', 1, '123456'),
       ('300109', 'AB-', 'Ariana', 24, 'F', '4767323445', 'AB+ NoofBag', 2, '123458'),
       ('300110', 'A+', 'Cynthia', 26, 'F', '4667994312', 'O+ NoofBag', 3, '123457');


-- Table structure for table `Feedback`
DROP TABLE IF EXISTS `Feedback`;
CREATE TABLE `BloodBankManagementSystems`.`Feedback` (
                                                         `FeedbackID` VARCHAR(6) NOT NULL,
                                                         `RecipientID` VARCHAR(45) NOT NULL,
                                                         `Feedback_Comments` VARCHAR(45) NOT NULL,
                                                         PRIMARY KEY (`FeedbackID`),
                                                         INDEX `RecipientID_idx` (`RecipientID` ASC) VISIBLE,
                                                         CONSTRAINT `RecipientID`
                                                             FOREIGN KEY (`RecipientID`)
                                                                 REFERENCES `BloodBankManagementSystems`.`Recipient` (`RecipientID`)
                                                                 ON DELETE NO ACTION
                                                                 ON UPDATE NO ACTION);

-- Inserting into Feedback
INSERT INTO `BloodBankManagementSystems`.`feedback` (`FeedbackID`, `RecipientID`, `Feedback_Comments`)
VALUES ('201', '300101', 'Great experience as a first timer'),
       ('202', '300102', 'Genuine Service'),
       ('203', '300103', 'Excellent surgeon'),
       ('204', '300104', 'Sincere Response'),
       ('205', '300105', 'Good Environment and great service'),
       ('206', '300106', 'Great experience'),
       ('207', '300107', 'Personalized and specialized Care'),
       ('208', '300108', 'Slow response'),
       ('209', '300109', 'Good Service'),
       ('210', '300110', 'longer waiting time');

-- Table structure for table `BloodInventory`
DROP TABLE IF EXISTS `BloodInventory`;
CREATE TABLE `BloodBankManagementSystems`.`BloodInventory` (
                                                               `LocationID` varchar(6) NOT NULL,
                                                               `BloodGroup` char(4) NOT NULL,
                                                               `Type` char(10) DEFAULT NULL,
                                                               `NumberOfBags` int DEFAULT NULL,
                                                               `InventoryStatus` varchar(12) DEFAULT NULL,
                                                               PRIMARY KEY (`LocationID`,`BloodGroup`),
                                                               CONSTRAINT `LocationID_FK00` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`)
);

-- Inserting into BloodInventory
INSERT INTO `BloodBankManagementSystems`.`BloodInventory` (`LocationID`, `BloodGroup`, `Type`, `NumberOfBags`, `InventoryStatus`)
VALUES ('1B2A', 'O+', 'Blood', '15', 'Available');
INSERT INTO `BloodBankManagementSystems`.`BloodInventory` (`LocationID`, `BloodGroup`, `Type`, `NumberOfBags`, `InventoryStatus`)
VALUES ('5E7F', 'AB+', 'Blood', '3', 'Available');
INSERT INTO `BloodBankManagementSystems`.`BloodInventory` (`LocationID`, `BloodGroup`, `Type`, `NumberOfBags`, `InventoryStatus`)
VALUES ('7K5I', 'A+', 'Blood', '6', 'Available');
INSERT INTO `BloodBankManagementSystems`.`BloodInventory` (`LocationID`, `BloodGroup`, `Type`, `NumberOfBags`, `InventoryStatus`)
VALUES ('4H6K', 'B+', 'Blood', '0', 'Unavailable');
INSERT INTO `BloodBankManagementSystems`.`BloodInventory` (`LocationID`, `BloodGroup`, `Type`, `NumberOfBags`, `InventoryStatus`)
VALUES ('8M9O', 'B-', 'Blood', '0', 'Unavailable');
INSERT INTO `BloodBankManagementSystems`.`BloodInventory` (`LocationID`, `BloodGroup`, `Type`, `NumberOfBags`, `InventoryStatus`)
VALUES ('8HLP', 'A-', 'Blood', '5', 'Available');

-- Table structure for table `Donor_Health`
DROP TABLE IF EXISTS `Donor_Health`;
CREATE TABLE `Donor_Health` (
                                `DonorID` varchar(6) NOT NULL,
                                `Temperature` varchar(10) DEFAULT NULL,
                                `PulseRate` varchar(10) DEFAULT NULL,
                                `BloodPressure` varchar(15) DEFAULT NULL,
                                `DonorHeight` varchar(10) DEFAULT NULL,
                                `DonorWeight` varchar(10) DEFAULT NULL,
                                PRIMARY KEY (`DonorID`),
                                CONSTRAINT `DonorID_FK02` FOREIGN KEY (`DonorID`) REFERENCES `Donor` (`DonorID`)
);

-- Inserting into Donor_Health
INSERT INTO `BloodBankManagementSystems`.`Donor_Health` (`DonorID`, `Temperature`, `PulseRate`, `BloodPressure`, `DonorHeight`, `DonorWeight`)
VALUES ('111111', '97.9 F','170 BPM','120/80 mmHg','5F6I', '68kgs'),
       ('222222', '94.3 F', '180 BPM', '125/85 mmHg','6F1I', '55kgs'),
       ('333333', '93.9 F', '175 BPM','130/75 mmHg','5F8I', '65kgs'),
       ('444444', '97.7 F', '185 BPM', '140/80 mmHg','5F6I', '67kgs'),
       ('555555', '99.6 F', '160 BPM', '135/70 mmHg','6F2I', '56kgs'),
       ('666666', '95.9 F', '170 BPM', '145/80 mmHg','5F7I', '80kgs'),
       ('777777', '96.8 F', '165 BPM','135/70 mmHg','5F5I', '68kgs'),
       ('888888', '92.8 F', '150 BPM','120/80 mmHg','6F2I', '54kgs'),
       ('999999', '97.9 F', '155 BPM','125/75 mmHg','6F', '78kgs'),
       ('123456', '96.2 F', '180 BPM','130/80 mmHg','5F6I', '87kgs');

-- Table structure for table `Hospital_Details`
DROP TABLE IF EXISTS `Hospital_Details`;
CREATE TABLE `BloodBankManagementSystems`.`Hospital_Details` (
                                                                 `HospID` VARCHAR(6) NOT NULL,
                                                                 `LocationID` VARCHAR(6) NOT NULL,
                                                                 `HospContact` VARCHAR(12) NULL,
                                                                 `HospName` CHAR(30) NULL,
                                                                 `Needed_BloodGroup` VARCHAR(4) NULL,
                                                                 `Needed_BloodQuantity` INT NULL,
                                                                 PRIMARY KEY (`HospID`),
                                                                 INDEX `LocationID_idx` (`LocationID` ASC) VISIBLE,
                                                                 CONSTRAINT `LocationID_FK02`
                                                                     FOREIGN KEY (`LocationID`)
                                                                         REFERENCES `BloodBankManagementSystems`.`Location` (`LocationID`)
                                                                         ON DELETE NO ACTION
                                                                         ON UPDATE NO ACTION);

-- Inserting into Hospital_Details
INSERT INTO `BloodBankManagementSystems`.`Hospital_Details` (`HospID`, `LocationID`, `HospContact`, `HospName`,`Needed_BloodGroup`,`Needed_BloodQuantity`)
VALUES ('10011', '1B2A', '1899000567', 'LA Community Hospital','O+','2'),
       ('10012', '1B2A', '1899000568', 'Dignity Health','B+','2'),
       ('10013', '7K5I', '1899006565', 'KU Hospital','A+','1'),
       ('10014', '7K5I', '1899006565', 'Kansas Medical Center','B+','3'),
       ('10015', '4H6K', '1808006564', 'HCA Florida Hospital','B+','1'),
       ('10016', '8M9O', '1876590821', 'Bay Health Hospital','B-','2'),
       ('10017', '8HLP', '1873457891', 'United Hospital','A-','3'),
       ('10018', '7T4D', '1876887651', 'Vermont Medical Center','B-','3'),
       ('10019', '7T4D', '1876887651', 'Vermont Hospital','AB-','1'),
       ('10020', '6Z3H', '1833450651', 'Swift Medical Center','O+','3');

-- Table structure for table `Call_Center`
DROP TABLE IF EXISTS `Call_Center`;
CREATE TABLE `BloodBankManagementSystems`.`Call_Center` (
                                                            `CallID` VARCHAR(8) NOT NULL,
                                                            `CallerName` CHAR(25) NULL,
                                                            `CallerRequest` VARCHAR(25) NULL,
                                                            `RequestDetails` VARCHAR(150) NULL,
                                                            `RespondedBy` VARCHAR(6) NULL,
                                                            PRIMARY KEY (`CallID`));

-- Inserting into Call_Center
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('91423487', 'Jhon Doe', 'Blood Request', 'Need 0+ blood 1 bag', 'James');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('91423488', 'Ganesh Rao', 'Plasma Request', 'Need plasma 2 bags', 'David');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('91413487', 'James cameroon', 'Blood Request', 'Need B- blood 1 bag', 'Thomas');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('91323487', 'Christopher Nolan', 'Generic', 'Details about Blood bank near Dallas Downtown', 'James');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('91223487', 'Peter Griffin', 'Blood Request', 'Need AB- blood 1 bag', 'Mark');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('41223487', 'Phil Dunphy', 'Blood Donation', 'Looking to donate O+ blood 1 bag', 'Thomas');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('41937515', 'Jordan Peterson', 'Blood Request', 'Need O+ blood 1 bag', 'James');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('42136832', 'Glen Quagmirre', 'Plasma Donation', 'Looking to donate Plasma 1 bag', 'Luke');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('47045713', 'John Oliver', 'Blood Donation', 'Looking to donate A+ blood 1 bag', 'Nandan');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('93297317', 'Sahil', 'Blood Request', 'Need A+ blood 1 bag', 'Mark');
INSERT INTO `BloodBankManagementSystems`.`Call_Center` (`CallID`, `CallerName`, `CallerRequest`, `RequestDetails`, `RespondedBy`)
VALUES ('93297318', 'Joe Rogan', 'Blood Request', 'Need B- blood 1 bag', 'David');

-- Table structure for table `EmployeeAccess`
DROP TABLE IF EXISTS `EmployeeAccess`;
CREATE TABLE `BloodBankManagementSystems`.`EmployeeAccess` (
                                                               `EmpID` VARCHAR(6) NOT NULL,
                                                               `Password` VARCHAR(20) NULL,
                                                               `SecurityQuestion` VARCHAR(45) NULL,
                                                               `Answer` VARCHAR(15) NULL,
                                                               PRIMARY KEY (`EmpID`),
                                                               CONSTRAINT `EmpID_FK01`
                                                                   FOREIGN KEY (`EmpID`)
                                                                       REFERENCES `BloodBankManagementSystems`.`Employee` (`EmpID`)
                                                                       ON DELETE NO ACTION
                                                                       ON UPDATE NO ACTION);
-- Inserting into EmployeeAccess
INSERT INTO `BloodBankManagementSystems`.`employeeaccess` (`EmpID`, `Password`, `SecurityQuestion`, `Answer`)
VALUES ('111111', 'Rim@123', 'In what city were you born?', 'Los Angeles'),
       ('222222', 'Tan_32', 'What is the name of your favorite pet?', 'Dog'),
       ('333333', 'Mimmi@2', 'What was your favorite food as a child?', 'Egg'),
       ('444444', 'Kate44', 'In what city were you born?', 'Wichita'),
       ('555555', 'Louie_14', 'What is the name of your favorite pet?', 'Cat'),
       ('666666', 'Susan@56', 'In what city were you born?', 'Wilmington'),
       ('777777', 'Momu_67', 'What was your first car?', 'BMW'),
       ('888888', 'Flue@456', 'In what city were you born?', 'Burlington'),
       ('999999', 'Tessa_6', 'What is the name of your favorite pet?', 'Kitten'),
       ('123456', 'Quin@521', 'What was your first car?', 'Audi'),
       ('123457', 'Haily_123', 'In what city were you born?', 'Saint Paul'),
       ('123458', 'Mark012', 'What high school did you attend?', 'UMKC');
