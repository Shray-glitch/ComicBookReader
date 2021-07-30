-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 07:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testmanga`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `ID` int(11) NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`ID`, `Link`) VALUES
(1, 'http://10.0.2.2:3000/dragonball.png'),
(2, 'http://10.0.2.2:3000/doreamon.png'),
(3, 'http://10.0.2.2:3000/adventuretime.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `Name`) VALUES
(1, 'Comedy'),
(2, 'Ecchi'),
(3, 'Historical'),
(4, 'Manhwa'),
(5, 'Medical'),
(6, 'Romance'),
(7, 'Shoujo'),
(8, 'Slice of life'),
(9, 'Tragedy'),
(10, 'Cooking'),
(11, 'Action'),
(12, 'Fantasy'),
(13, 'Horror'),
(14, 'Martial arts'),
(15, 'Mystery'),
(16, 'School life'),
(17, 'Shoujo a'),
(18, 'Smut'),
(19, 'Webtoons'),
(20, 'Adult'),
(21, 'Doujinshi'),
(22, 'Gender bender'),
(23, 'Jose'),
(24, 'Mature'),
(25, 'One shot'),
(26, 'Sci fi'),
(27, 'Shounen'),
(28, 'Sports'),
(29, 'Yaoi'),
(30, 'Adventure'),
(31, 'Drama'),
(32, 'Harem'),
(33, 'Manhua'),
(34, 'Mecha'),
(35, 'Psychological'),
(36, 'Seinen'),
(37, 'Shounen ai'),
(38, 'Supernatural'),
(39, 'Yuri'),
(40, 'Top Read'),
(41, 'Completed'),
(42, 'Newest'),
(43, 'Ongoing'),
(44, 'Latest'),
(45, 'Drop'),
(46, 'Superhero');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `MangaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`ID`, `Name`, `MangaID`) VALUES
(3, 'Chapter 1 : Bloomers and the Monkey King', 1),
(4, 'Chapter 2 : No Balls!!', 1),
(7, 'Chapter 3 : Sea Monkeys', 1),
(8, 'Chapter 4 : They Call Him the Turtle Hermit!', 1),
(9, 'Chapter 5 : Oo! Oo! Oolong!', 1),
(10, 'Chapter 6 : So Longm OoLong!!', 1),
(11, 'Chapter 7 :Yamcha and Pu\'ar', 1),
(12, 'Chapter 8 : One, Two,Yamcha-cha', 1),
(13, 'Vol.1 Chapter 1 : All The Way From A Future World', 3),
(14, 'Vol 0 chapter 1.1', 3),
(15, 'Vol.1 chapter 2 : Prophecy Of Doraemon', 3),
(16, 'Vol.1 chapter 3 : Transforming Biscuit', 3),
(17, 'Vol.1 chapter 4 : Operation: Secret Spy', 3),
(18, 'Vol.1 chapter 5 : Kobe Abe', 3),
(19, 'Vol.1 chapter 6 : Antique Competition', 3),
(20, 'Vol.1 chapter 7 : Peko Peko Grasshopper', 3),
(23, 'Vol.1 chapter 8 : Chin Up To The Ancestors', 3),
(24, 'Vol.1 chapter 9 : Hunting Shades', 3),
(27, 'Vol.1 chapter 10 : Flattering Lipsticks', 3),
(28, 'Vol.1 chapter 11 : Full Points For Once In A Life Time', 3),
(29, 'Doraemon vol.1 chapter 12 : Operation: Propose', 3),
(30, 'Vol.1 chapter 13 : OO Will ^ ^ With XX', 3),
(31, 'Vol.1 chapter 14 : Hot Hot In The Snow', 3),
(32, 'Vol.1 chapter 15 : A Ghost Of The Lamp\'s Smoke', 3),
(35, 'Doraemon vol.1 chapter 16 : Run! Uma-Take', 3),
(36, 'Vol.2 chapter 17 : Test Memorizing Toast', 3);

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `ID` int(11) NOT NULL,
  `Link` text NOT NULL,
  `ChapterID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`ID`, `Link`, `ChapterID`) VALUES
(1, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/2.jpg', 13),
(2, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/3.jpg', 13),
(3, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/4.jpg', 13),
(4, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/5.jpg', 13),
(5, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/6.jpg', 13),
(6, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/7.jpg', 13),
(7, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/8.jpg', 13),
(8, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/9.jpg', 13),
(9, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/10.jpg', 13),
(10, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/11.jpg', 13),
(11, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/12.jpg', 13),
(12, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/13.jpg', 13),
(13, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/14.jpg', 13),
(14, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/15.jpg', 13),
(15, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/14.jpg', 13),
(16, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/17.jpg', 13),
(17, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/18.jpg', 13),
(18, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/19.jpg', 13),
(19, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol1_chapter_1_all_the_way_from_a_future_world/20.jpg', 13),
(21, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol0_chapter_11/2.jpg', 14),
(22, 'https://s8.mkklcdnv8.com/mangakakalot/d2/doraemon/vol0_chapter_11/3.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`ID`, `Name`, `Image`) VALUES
(1, 'Dragon Ball', 'https://avt.mkklcdnv3.com/avatar_225/3326-read_dragon_ball_manga_online_for_free2.jpg'),
(2, 'The Amazing Spider-Man (1963)', 'https://2.bp.blogspot.com/UyIClw5KWvyrIHioRjGeqaX3BdNRLF0jdlZTHesIxLZy6zX9zOwY26UrF6w5j_v5rGakyQxdPfoi=s1600'),
(3, 'Doraemon', 'https://avt.mkklcdnv3.com/avatar_225/1279-doraemon.jpg'),
(4, 'Spider-Man', 'https://avt.mkklcdnv3.com/avatar_225/11297-spiderman.jpg'),
(5, 'The Invincible Iron Man', 'https://cdn.shopify.com/s/files/1/0882/5118/products/Invincible-Iron-Man-Number-1-2137789_1024x1024.jpeg?v=1442250415'),
(6, 'Ant-Man & The Wasp', 'https://i.pinimg.com/originals/66/41/b1/6641b10b731f0140a90c5a7fa641daf9.jpg'),
(7, 'Marvel Zombies', 'http://1.bp.blogspot.com/-vNUqD-HUcdQ/Vp5GXqrP7fI/AAAAAAAAIEE/OSIFYvS3D7k/s1600/0.jpg'),
(8, 'Super Hero Adventures', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKWBY9fuCKhnDI-wwoXwJ6zF1O6x9ELBaE7Y4YwAK1LahojieB'),
(9, 'Cable', 'https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/494347/494347._SX1280_QL80_TTD_.jpg'),
(10, 'X-Force', 'https://ss-images.catscdn.vn/2018/05/31/2921811/x-men_92_vol_1_3_textless.jpg'),
(11, 'Avengers', 'https://www.librairiezbookstore.com/40046-large_default/marvel-comics-digest-7-ant-man.jpg'),
(12, 'Thor', 'https://i1.wp.com/graphicpolicy.com/wp-content/uploads/2017/10/MarvelComicsDigest_03-1.jpg?resize=736%2C991&ssl=1'),
(13, 'X-men Wolverine', 'https://darksidecomics.s3.us-east-2.amazonaws.com/previews/AUG181583.jpg?lastmod=1533154926'),
(14, 'DC Essential Graphic Novels 2016', 'https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
(15, 'Aqua Man', 'https://d1466nnw0ex81e.cloudfront.net/n_iv/600/3723215.jpg'),
(16, 'Variant Covers', 'https://insightcomics.com/wp-content/uploads/2018/09/76348-64734-cover.jpg'),
(17, 'Batman', 'http://4.bp.blogspot.com/-UVWO6oyjJqU/U_3jLJzL3MI/AAAAAAAEnhQ/_SyLqkLRvVo/s1600/-000.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mangacategory`
--

CREATE TABLE `mangacategory` (
  `MangaID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mangacategory`
--

INSERT INTO `mangacategory` (`MangaID`, `CategoryID`) VALUES
(1, 11),
(1, 30),
(2, 11),
(2, 30),
(2, 46),
(3, 1),
(3, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MangaID` (`MangaID`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ChapterID` (`ChapterID`);

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mangacategory`
--
ALTER TABLE `mangacategory`
  ADD PRIMARY KEY (`MangaID`,`CategoryID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `manga`
--
ALTER TABLE `manga`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`MangaID`) REFERENCES `manga` (`ID`);

--
-- Constraints for table `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `link_ibfk_1` FOREIGN KEY (`ChapterID`) REFERENCES `chapter` (`ID`);

--
-- Constraints for table `mangacategory`
--
ALTER TABLE `mangacategory`
  ADD CONSTRAINT `mangacategory_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `mangacategory_ibfk_2` FOREIGN KEY (`MangaID`) REFERENCES `manga` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
