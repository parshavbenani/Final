-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 12:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AddressId` int(11) NOT NULL,
  `HouseNo` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `ZipCode` int(11) NOT NULL,
  `ContactPerson` varchar(50) NOT NULL,
  `ContactNo` varchar(50) NOT NULL,
  `AddressType` int(11) NOT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressId`, `HouseNo`, `Country`, `State`, `City`, `ZipCode`, `ContactPerson`, `ContactNo`, `AddressType`, `userId`, `ContactEmail`) VALUES
(4, 'A-4', 'India', 'Gujarat', 'Ahmedabad', 380007, 'Parshav', '9428012167', 1, '52533dd9-38e6-42b7-80ad-af8fec420ff8', 'Parshav@gmail.com'),
(15, 'A-123', 'India', 'Goa', 'Panji', 380007, 'asd', '9428012167', 2, NULL, 'asd@gmail.com'),
(16, 'A-666', 'India', 'Gujarat', 'Ahmedabad', 380007, 'asd1', '9428012167', 1, NULL, 'asd1@gmail.com'),
(21, 'A-4', 'India', 'Gujarat2', 'Ahmedabad', 380006, 'Parshav', '9428012167', 2, '52533dd9-38e6-42b7-80ad-af8fec420ff8', 'Parshav@gmail.com'),
(26, 'A-222', 'Canada', 'Ontario', 'Wan cuver', 380001, 'JV', '111222333', 1, '811acb36-5978-4445-89b0-d0df618a8b75', 'abc@gmail.com'),
(35, 'A-22', 'India', 'Guj', 'Ahmedabad', 380017, 'Ram', '7410258963', 2, NULL, 'Ram@gmail.com'),
(36, 'A-666', 'India', 'Goa', 'Panji', 380007, 'Shiv', '9632587410', 1, NULL, 'Shiv@gmail.com'),
(37, 'A-6', 'India', 'Gujarat', 'Ahmedabad', 380007, 'ZZZ', '9428012167', 2, NULL, 'ZZZ@gmail.com'),
(38, 'A-666', 'India', 'Goa', 'Panji', 380007, 'QQQ', '9632587410', 1, NULL, 'QQQ@gmail.com'),
(41, 'A-505', 'India', 'Guj', 'Ahmedabad', 380007, 'PersonG', '7744112255', 1, '811acb36-5978-4445-89b0-d0df618a8b75', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('03a602b1-2e8d-4745-a411-d60fed1636d9', 'Admin', 'ADMIN', '53acb834-3a1f-4dec-8cf5-578573c0bf42'),
('bad778d6-9604-4e27-a9da-d739ec68a927', 'User', 'USER', '95421446-ff9b-43e2-8c78-6f3e630b7133');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('52533dd9-38e6-42b7-80ad-af8fec420ff8', 'bad778d6-9604-4e27-a9da-d739ec68a927'),
('811acb36-5978-4445-89b0-d0df618a8b75', 'bad778d6-9604-4e27-a9da-d739ec68a927');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('52533dd9-38e6-42b7-80ad-af8fec420ff8', 'Parshav', 'PARSHAV', 'Parshav@gmail.com\n', 'PARSHAV@GMAIL.COM\n', 0, 'AQAAAAEAACcQAAAAEEO9eb1zJUJfzZO+ncxPkNVPqfE/T/1PhKd/5+i9XJvd6IVMJfjv/fKxmY55e/If2A==', 'I4YA2NIZA5QLXTESWGHNMIRI4R2QDREH', '66f74c42-aa59-4866-ae4a-e33e24e1c2e1', NULL, 0, 0, NULL, 1, 0),
('811acb36-5978-4445-89b0-d0df618a8b75', 'abc', 'ABC', 'abc@gmail.com', 'ABC@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEMpA9FtQqF470JUzqGQltd9H6HpmYz9xWV9y0ufbWpVk7KsCdTXcpYWAanl/mH3C+A==', 'U2EVNDDZVVGE5Q3767XIW2CM4RVHTVND', '545577b5-b377-4f55-b994-af2058007b88', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderaddress`
--

CREATE TABLE `orderaddress` (
  `OrderAddId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `BillingAddressId` int(11) NOT NULL,
  `ShippingAddressId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderaddress`
--

INSERT INTO `orderaddress` (`OrderAddId`, `OrderId`, `BillingAddressId`, `ShippingAddressId`) VALUES
(2, 19, 15, 16),
(4, 25, 35, 36),
(5, 26, 37, 38);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderItemId`, `Qty`, `price`, `isActive`, `OrderId`, `ProductId`) VALUES
(2, 50, 60, 1, 4, 1),
(4, 90, 30, 1, 6, 3),
(10, 40, 500, 1, 12, 3),
(12, 99, 500, 1, 12, 3),
(13, 2, 5000, 1, 12, 1),
(14, 2, 5000, 1, 12, 1),
(27, 2, 500, 1, 19, 3),
(28, 1, 5000, 1, 19, 1),
(39, 2, 500, 1, 25, 3),
(40, 1, 70, 1, 25, 4),
(41, 2, 500, 1, 26, 3),
(42, 1, 70, 1, 26, 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL,
  `OrderDate` datetime(6) NOT NULL,
  `Note` longtext NOT NULL,
  `DisountAmount` int(11) NOT NULL,
  `StatusType` int(11) NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `CustomerName` longtext NOT NULL,
  `CustomerEmail` longtext NOT NULL,
  `CustomerContactNo` longtext NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  `ModifiedOn` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderId`, `OrderDate`, `Note`, `DisountAmount`, `StatusType`, `TotalAmount`, `CustomerName`, `CustomerEmail`, `CustomerContactNo`, `IsActive`, `CreatedOn`, `ModifiedOn`) VALUES
(4, '2023-02-10 15:24:59.547773', 'ABC', 110, 3, 20, 'xyz', 'xyz@gmail.com', '123456789', 1, '2023-02-23 15:24:59.547774', '2023-02-23 15:24:59.547774'),
(6, '2023-02-23 17:32:25.695232', 'ABC', 10, 3, 100, 'admin', 'admin@gmail.com', '123456789', 1, '2023-02-23 17:32:25.695234', '2023-02-23 17:32:25.695234'),
(7, '2023-02-20 17:33:55.640502', 'aaa', 5, 2, 7000, 'abc', 'abc@gmail.com', '123456789', 1, '2023-02-23 17:33:55.640503', '2023-02-23 17:33:55.640503'),
(12, '2023-02-24 15:29:34.518991', 'ABC', 5, 2, 20000, 'Parshav', 'Parshav@gmail.com', '8520179634', 1, '2023-02-24 15:29:34.518992', '2023-02-24 15:29:34.518992'),
(19, '2023-03-13 18:27:26.950457', 'ABC', 11, 2, 6000, 'asd', 'asd@gmail.com', '9428012167', 1, '2023-03-13 18:27:26.951138', '2023-03-13 18:27:26.950457'),
(25, '2023-05-26 11:36:29.205741', 'Hello', 20, 3, 1070, 'Ram', 'Ram@gmail.com', '7410258963', 1, '2023-05-26 11:36:29.206971', '2023-05-26 11:36:29.205740'),
(26, '2023-05-26 11:54:28.324739', 'Hello', 20, 1, 1070, 'ZZZ', 'ZZZ@gmail.com', '7410258963', 1, '2023-05-26 11:54:28.324740', '2023-05-26 11:54:28.324739');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductId` int(11) NOT NULL,
  `ProductName` longtext NOT NULL,
  `ProductDescription` longtext NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `ProductQty` int(11) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  `ModifiedOn` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ProductName`, `ProductDescription`, `ProductPrice`, `ProductQty`, `CreatedOn`, `ModifiedOn`) VALUES
(1, 'Pizza', 'it\'s Pizza', 5000, 1000, '2023-02-23 13:26:56.081265', '2023-02-23 13:26:56.081266'),
(3, 'Burger', 'it\'s Burger', 500, 100, '2023-02-23 17:30:19.901247', '2023-02-23 17:30:19.901248'),
(4, 'Puff', 'it\'s Puff', 70, 200, '2023-02-23 17:30:54.337648', '2023-02-23 17:30:54.337649');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20230223062738_intailSetup', '6.0.11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressId`);

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `orderaddress`
--
ALTER TABLE `orderaddress`
  ADD PRIMARY KEY (`OrderAddId`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemId`),
  ADD KEY `IX_OrderItems_OrderId` (`OrderId`),
  ADD KEY `IX_OrderItems_ProductId` (`ProductId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AddressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderaddress`
--
ALTER TABLE `orderaddress`
  MODIFY `OrderAddId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `FK_OrderItems_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_OrderItems_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
