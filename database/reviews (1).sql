-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 10:30 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `foodname` varchar(255) NOT NULL,
  `rev` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `foodname`, `rev`) VALUES
(1, 'ก๋วยจับทรงเครื่อง', 'ก๋วยจั๊บทรงเครื่องเจ้าอร่อยที่ไม่ต้องไปหากินที่ไหนไกลค่ะ ร้านซดแซ่บ หน้าทางเข้าวิทยาลัยสาธารณะสุขสิรินธร ทีเด็ดของร้านอยู่ที่เครื่องในและเนื้อนุ่มกำลังดี ให้เยอะมาก น้ำซุปอร่อยมาก ส่วนน้ำเปล่าฟรีบริการตัวเอง ราคาเริ่มต้นที่ 40 บาทค่ะ'),
(2, 'ไข่เจียวหมูสับ', 'ร้านหน้ามอ อร่อยมากกก อยากให้ไปลองมากๆค่ะ สามารถเลือกส่วนผสมได้สามอย่าง เช่น หอมซอย แครอท หมูสับ'),
(3, 'กะเพรา', 'ข้าวกะเพราที่ร้านอาหารตามสั่ง ที่อยู่ข้างวัดป่าบ้านศรีไคอร่อยมากค่ะ เพราะว่ากินที่อื่นล่ะมันเค็ม(ส่วนตัวนะคะ)สำหรับที่นี้พอดีอร่อยค่ะ'),
(4, 'กาแฟ', 'กาแฟร้านมิรันคาเฟ่ ในมออุบล อร่อยมากครับ นั่งทำงานชิวๆได้เลย ร้านสวยมาก'),
(5, 'ส้มตำ', 'ร้านซาดิสม์ ตำป่าร้านนี้แนะนำเลย ร้านอยู่ในซอยทางไป วิทยาลัยการสาธารณะสุขสิรินธร เข้าไปไม่ลึกค่ะ เลยเซเว่นไปนิดเดียว'),
(6, 'ข้าวกะเพราไก่', 'ครัวพรพิไล อร่อยมากกกก ราคาดีค่ะ แนะนำมากๆๆๆ แถวกองบิน 21'),
(7, 'ข้าวมันไก่', 'มีเจริญ อร่อยมากครับ ต้องลอง ราคา 35 บาท'),
(9, 'เอสเปรสโซ่', 'ร้านพีโอนี ยึข้างตึกวิจัยอร่อยมากครับ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
