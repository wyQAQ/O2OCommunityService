-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-02-25 15:49:43
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oto`
--

-- --------------------------------------------------------

--
-- 表的结构 `activityinfo`
--

CREATE TABLE `activityinfo` (
  `activityId` int(10) UNSIGNED NOT NULL,
  `activityTitle` varchar(500) DEFAULT NULL,
  `activityContent` varchar(2000) DEFAULT NULL,
  `activityTime` varchar(300) DEFAULT NULL,
  `activitypushTime` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `commentinfo`
--

CREATE TABLE `commentinfo` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `postmessId` int(11) DEFAULT NULL,
  `comuserId` int(11) DEFAULT NULL,
  `commentCon` varchar(500) DEFAULT NULL,
  `commentTime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `discountinfo`
--

CREATE TABLE `discountinfo` (
  `discountId` int(10) UNSIGNED NOT NULL,
  `discountName` varchar(200) DEFAULT NULL,
  `discountPrice` varchar(20) DEFAULT NULL,
  `discountStock` varchar(100) DEFAULT NULL,
  `discountSize` varchar(100) DEFAULT NULL,
  `discountColor` varchar(50) DEFAULT NULL,
  `discountTime` varchar(100) DEFAULT NULL,
  `createTime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `discountorderinfo`
--

CREATE TABLE `discountorderinfo` (
  `discountorderId` int(10) UNSIGNED NOT NULL,
  `discountId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `buyNum` varchar(100) DEFAULT NULL,
  `buySize` varchar(100) DEFAULT NULL,
  `buyColor` varchar(50) DEFAULT NULL,
  `buyAddress` varchar(300) DEFAULT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `disorderState` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `houseinfo`
--

CREATE TABLE `houseinfo` (
  `houseId` int(10) UNSIGNED NOT NULL,
  `houseAddress` varchar(300) DEFAULT NULL,
  `houseArea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `noticeinfo`
--

CREATE TABLE `noticeinfo` (
  `noticeId` int(10) UNSIGNED NOT NULL,
  `noticeTitle` varchar(500) DEFAULT NULL,
  `noticeContent` varchar(2000) DEFAULT NULL,
  `noticeTime` varchar(300) DEFAULT NULL,
  `propertyId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ownerinfo`
--

CREATE TABLE `ownerinfo` (
  `userId` int(10) UNSIGNED NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userNick` varchar(100) DEFAULT NULL,
  `userPass` varchar(30) DEFAULT NULL,
  `userPhone` varchar(11) DEFAULT NULL,
  `userAddress` varchar(300) DEFAULT NULL,
  `usergainAddress` varchar(3000) DEFAULT NULL,
  `houseId` int(11) DEFAULT NULL,
  `userState` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `paymentinfo`
--

CREATE TABLE `paymentinfo` (
  `paymentId` int(10) UNSIGNED NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `houseId` int(11) DEFAULT NULL,
  `costTime` varchar(300) DEFAULT NULL,
  `paypriceId` int(11) DEFAULT NULL,
  `paymentNum` varchar(10) DEFAULT NULL,
  `paymentState` int(11) DEFAULT NULL,
  `paymentTime` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `paypriceinfo`
--

CREATE TABLE `paypriceinfo` (
  `paypriceId` int(10) UNSIGNED NOT NULL,
  `paypriceType` int(11) DEFAULT NULL,
  `payPrice` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `postmessinfo`
--

CREATE TABLE `postmessinfo` (
  `postmessId` int(10) UNSIGNED NOT NULL,
  `postmessType` varchar(50) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `postmessTitle` varchar(200) DEFAULT NULL,
  `postmessCon` varchar(500) DEFAULT NULL,
  `postmessImg` varchar(5000) DEFAULT NULL,
  `postmessTime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `propertyinfo`
--

CREATE TABLE `propertyinfo` (
  `propertyId` int(10) UNSIGNED NOT NULL,
  `propertyName` varchar(200) DEFAULT NULL,
  `propertyPass` varchar(30) DEFAULT NULL,
  `propertyPhone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sellerinfo`
--

CREATE TABLE `sellerinfo` (
  `sellerId` int(10) UNSIGNED NOT NULL,
  `sellerName` varchar(200) DEFAULT NULL,
  `sellerAddress` varchar(300) DEFAULT NULL,
  `sellerState` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `serviceinfo`
--

CREATE TABLE `serviceinfo` (
  `serviceId` int(10) UNSIGNED NOT NULL,
  `servicetypeId` int(11) DEFAULT NULL,
  `serviceImg` varchar(500) DEFAULT NULL,
  `serviceTitle` varchar(300) DEFAULT NULL,
  `serviceContent` varchar(2000) DEFAULT NULL,
  `servicePrice` varchar(20) DEFAULT NULL,
  `serviceSize` varchar(100) DEFAULT NULL,
  `serviceStock` varchar(100) DEFAULT NULL,
  `serviceTime` varchar(200) DEFAULT NULL,
  `serviceIntroduce` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `serviceorderinfo`
--

CREATE TABLE `serviceorderinfo` (
  `serviceorderId` int(10) UNSIGNED NOT NULL,
  `serviceId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `serviceSize` varchar(50) DEFAULT NULL,
  `orderTime` varchar(200) DEFAULT NULL,
  `createTime` varchar(200) DEFAULT NULL,
  `orderState` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `servicetypeinfo`
--

CREATE TABLE `servicetypeinfo` (
  `servicetypeId` int(10) UNSIGNED NOT NULL,
  `serviceType` varchar(50) DEFAULT NULL,
  `serviceKind` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activityinfo`
--
ALTER TABLE `activityinfo`
  ADD PRIMARY KEY (`activityId`);

--
-- Indexes for table `commentinfo`
--
ALTER TABLE `commentinfo`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `discountinfo`
--
ALTER TABLE `discountinfo`
  ADD PRIMARY KEY (`discountId`);

--
-- Indexes for table `discountorderinfo`
--
ALTER TABLE `discountorderinfo`
  ADD PRIMARY KEY (`discountorderId`);

--
-- Indexes for table `houseinfo`
--
ALTER TABLE `houseinfo`
  ADD PRIMARY KEY (`houseId`);

--
-- Indexes for table `noticeinfo`
--
ALTER TABLE `noticeinfo`
  ADD PRIMARY KEY (`noticeId`);

--
-- Indexes for table `ownerinfo`
--
ALTER TABLE `ownerinfo`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `paypriceinfo`
--
ALTER TABLE `paypriceinfo`
  ADD PRIMARY KEY (`paypriceId`);

--
-- Indexes for table `postmessinfo`
--
ALTER TABLE `postmessinfo`
  ADD PRIMARY KEY (`postmessId`);

--
-- Indexes for table `propertyinfo`
--
ALTER TABLE `propertyinfo`
  ADD PRIMARY KEY (`propertyId`);

--
-- Indexes for table `sellerinfo`
--
ALTER TABLE `sellerinfo`
  ADD PRIMARY KEY (`sellerId`);

--
-- Indexes for table `serviceinfo`
--
ALTER TABLE `serviceinfo`
  ADD PRIMARY KEY (`serviceId`);

--
-- Indexes for table `serviceorderinfo`
--
ALTER TABLE `serviceorderinfo`
  ADD PRIMARY KEY (`serviceorderId`);

--
-- Indexes for table `servicetypeinfo`
--
ALTER TABLE `servicetypeinfo`
  ADD PRIMARY KEY (`servicetypeId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `activityinfo`
--
ALTER TABLE `activityinfo`
  MODIFY `activityId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `commentinfo`
--
ALTER TABLE `commentinfo`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `discountinfo`
--
ALTER TABLE `discountinfo`
  MODIFY `discountId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `discountorderinfo`
--
ALTER TABLE `discountorderinfo`
  MODIFY `discountorderId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `houseinfo`
--
ALTER TABLE `houseinfo`
  MODIFY `houseId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `noticeinfo`
--
ALTER TABLE `noticeinfo`
  MODIFY `noticeId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ownerinfo`
--
ALTER TABLE `ownerinfo`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `paymentinfo`
--
ALTER TABLE `paymentinfo`
  MODIFY `paymentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `paypriceinfo`
--
ALTER TABLE `paypriceinfo`
  MODIFY `paypriceId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `postmessinfo`
--
ALTER TABLE `postmessinfo`
  MODIFY `postmessId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `propertyinfo`
--
ALTER TABLE `propertyinfo`
  MODIFY `propertyId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `sellerinfo`
--
ALTER TABLE `sellerinfo`
  MODIFY `sellerId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `serviceinfo`
--
ALTER TABLE `serviceinfo`
  MODIFY `serviceId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `serviceorderinfo`
--
ALTER TABLE `serviceorderinfo`
  MODIFY `serviceorderId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `servicetypeinfo`
--
ALTER TABLE `servicetypeinfo`
  MODIFY `servicetypeId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
