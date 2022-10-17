-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 12:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `name`, `description`) VALUES
(1, 'Programming Languages', 'this is a programming language box'),
(2, 'Project Implementation', 'project'),
(3, 'Data Structures and Algorithm', 'DSA');

-- --------------------------------------------------------

--
-- Table structure for table `liked`
--

CREATE TABLE `liked` (
  `lid` int(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `uid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `liked`
--

INSERT INTO `liked` (`lid`, `pid`, `uid`) VALUES
(1, 4, 1),
(2, 3, 1),
(3, 3, 1),
(4, 3, 2),
(5, 3, 2),
(6, 3, 2),
(7, 3, 2),
(8, 3, 1),
(9, 5, 3),
(10, 5, 2),
(11, 4, 2),
(12, 3, 2),
(13, 4, 1),
(14, 4, 1),
(15, 4, 1),
(16, 5, 1),
(17, 3, 1),
(18, 5, 1),
(19, 4, 1),
(20, 5, 1),
(21, 5, 1),
(22, 5, 1),
(23, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pid` int(12) NOT NULL,
  `pTitle` varchar(150) NOT NULL,
  `pContent` longtext NOT NULL,
  `pCode` longtext NOT NULL,
  `pPic` varchar(100) NOT NULL,
  `pDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `catId` int(12) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `pTitle`, `pContent`, `pCode`, `pPic`, `pDate`, `catId`, `userId`) VALUES
(3, 'BFS', 'Data Structures', 'Code', '1664269272352.jfif', '2022-10-16 16:34:52', 3, 1),
(4, 'Java Programming', 'Checking', 'Checking', 'Snapchat-1975964221~2.jpg', '2022-10-16 16:47:51', 1, 1),
(5, 'New Idea about project', 'Later', 'Later', 'Screenshot 2022-07-13 142346.png', '2022-10-16 17:12:52', 2, 3),
(6, 'Bubble Shot', 'This is a basic Algorithm to sort Numbers or String', '#include<stdio.h>    \r\n void print(int a[], int n) //function to print array elements  \r\n    {  \r\n    int i;  \r\n    for(i = 0; i < n; i++)    \r\n    {    \r\n        printf(\"%d \",a[i]);    \r\n    }        \r\n    }  \r\n void bubble(int a[], int n) // function to implement bubble sort  \r\n {  \r\n   int i, j, temp;  \r\n   for(i = 0; i < n; i++)    \r\n    {    \r\n      for(j = i+1; j < n; j++)    \r\n        {    \r\n            if(a[j] < a[i])    \r\n            {    \r\n                temp = a[i];    \r\n                a[i] = a[j];    \r\n                a[j] = temp;     \r\n            }     \r\n        }     \r\n    }     \r\n }  \r\nvoid main ()    \r\n{    \r\n    int i, j,temp;     \r\n    int a[5] = { 10, 35, 32, 13, 26};     \r\n    int n = sizeof(a)/sizeof(a[0]);   \r\n    printf(\"Before sorting array elements are - \\n\");  \r\n    print(a, n);  \r\n    bubble(a, n);  \r\n    printf(\"\\nAfter sorting array elements are - \\n\");    \r\n    print(a, n);  \r\n}', 'download.png', '2022-10-17 10:48:13', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `about` varchar(1000) NOT NULL DEFAULT '''Hey i am New User''',
  `rdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `gender`, `about`, `rdate`, `profile`) VALUES
(1, 'Nishant Trivedi', 'nishanttrivedi474@gmail.com', 'nishant', 'male', 'Hey i am Nishant Trivedi\r\n                                                \r\n                                                \r\n                                                \r\n                                                \r\n                                                \r\n                                                \r\n                                                \r\n                                                ', '2022-10-16 15:12:40', 'Snapchat-1975964221_2.jpg'),
(2, 'Vivek', 'vv9936000032@gmail.com', 'vivek', 'male', 'hey', '2022-10-16 17:07:40', 'default.png'),
(3, 'Kishan', 'kishan@gmail.com', 'kishan', 'male', 'Hey iam kishan', '2022-10-16 17:11:09', 'default.png'),
(4, 'Vivek', 'vivek@gmail.com', 'vivek', 'male', 'Hey', '2022-10-17 08:25:14', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `liked`
--
ALTER TABLE `liked`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `catId` (`catId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `liked`
--
ALTER TABLE `liked`
  MODIFY `lid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `liked`
--
ALTER TABLE `liked`
  ADD CONSTRAINT `liked_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `posts` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `liked_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `categories` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
