-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 02:35 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macci`
--

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `logindatetime` datetime NOT NULL,
  `lastused` datetime NOT NULL,
  `logoutdatetime` datetime,
  `valid` tinyint(4) NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_uuid` varchar(255) NOT NULL,
  `users_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

/* INSERT INTO `logins` (`id`, `token`, `logindatetime`, `lastused`, `logoutdatetime`, `valid`, `m_users_id`, `m_users_uuid`, `m_users_permission`) VALUES */
/* (1, 'Idvw4hLVr3L2yf7TkSltjb6fj6qEYk5DoK2W1hHKmnh2ljNy39uOvQy4I1yY7tnY', '2020-10-17 19:52:00', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (2, 'wJBO4e81qRklWdW2ahVMtKGfg82bRnOPpI6P44d66HFZ7IDhUXUwtHGvW3GGPSAJ', '2020-10-17 21:44:49', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (3, 'skOxqWntT0X0roeJNPfbmWd15QWjsSDOMrGzjj9LSphlfaCQGkl78ccp4GjPBCxL', '2020-10-17 21:44:49', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (4, 'w3Yss14yQNDlBAmCxcSyVgYegOfJrEQ1F4I6gFX1EG4q465d5WdB1GOMQ2Ns2rWv', '2020-10-18 03:08:31', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (5, 'eDEXn6klNGv5swhB12z6ZXEFPge4KBrMwDpGA1If00juCdyDIBlowV8uW8AY3cck', '2020-10-18 03:12:57', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (6, 'XNqxrcKKM4SY6AoIG1JptKEbPRtRGjbByw6Ze1nLyubqnRuhjLduTmv0ULu11HHF', '2020-10-18 03:14:24', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (7, 'bHzir68atrzxFP3wpMOEPYYJ8Pp7QfdKRsCC3aBGeSopZ44AGOlJmkimurD3vUhq', '2020-10-18 03:17:11', '2020-10-18 03:36:19', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (8, '19vpy6rAx3ZKQBYomDlI863s0aA0AfvSG3yDPsdaNWU83FvfWlEO6Q233eVBSf7Q', '2020-10-18 03:24:02', '2020-10-18 03:34:53', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (9, '5sW5Jmqr75TI8O5PL7N4Tchr4DEbTRwTBI2L6yM17IPVLZtC4D0NxOplA2KGiwCb', '2020-10-21 04:44:56', '2020-10-26 00:00:29', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (10, '3KnNvhOJLZn3U6ob8cQULfUqxxEtSqB3kVpBH1E3AzDXxDWdsjEKhs1rA2uwfmNo', '2020-10-25 23:54:32', '2020-10-26 00:00:29', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (11, 'e6fW2x2wrdzwVnEGXaynKCNe9DZqhs8Zq8oIjH2nuMz3la9HJhKWTt1hWzo00csK', '2020-10-26 00:06:00', '2020-10-26 00:11:15', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (12, 'dHZBQQvOEGUTNW1RIsNuzF3ySspVNu074xDuptugqHwp0CZ8KavgUdlUxFTgoUOM', '2020-10-26 00:07:47', '2020-10-26 00:11:15', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (13, 'caHprxST1z7cfXBsjg6s6XrqaLYmoZErc6EUWawx51qOSCHzlAUHYKYuPxWV77XQ', '2020-10-26 00:09:03', '2020-10-26 00:10:43', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (14, 'SumezLfDpc448mJGALfykeINJzZXeKmbkCAJqurUvKceFmqhyicq4dyw3caNWyXh', '2020-10-26 11:11:51', '2020-10-26 11:27:04', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (15, 'JTz17Sz4MikP9uGdOO7fqyBXkfPHgIHLIzoesMsRfSKytFZRVOpWsnMNYHAvYQeZ', '2020-10-26 14:40:15', '2020-10-26 14:46:09', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (16, 'zD5UXTlqHVEZpMeyfoILLwR3eLMVg4BDLLf7HkQH3Oo35CO2HPhC3Lk6u4nirS1R', '2020-10-26 14:41:57', '2020-10-26 14:46:09', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (17, 'Pysp9sYQQ79YKTEKcRU7DljUS5r1LNq4zO3K8igJoOMOlkvPOAAlvZBjJlFpGAQn', '2020-10-26 14:44:09', '2020-10-26 14:45:14', '2020-10-26 14:46:09', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (18, '7aF6kSLUSTgYGjGiFL2Ar2T7Gmkt5MsZ1xkkSyLjWtE6m1M6biLrYbAmuXuNAG64', '2020-10-26 14:47:21', '2020-10-26 14:47:52', '2020-10-26 14:49:29', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (19, 'VEWXAAnQedodhsYUeWJG5Nfb4fKUJHQbaKVuP2LGrjTgqNzspRjD61wdxU3yvkRp', '2020-10-29 17:02:17', '2020-10-29 17:05:18', '2020-10-29 17:05:18', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (20, 'UMzB5q5dPYPwY26lxeWrxDHqkBM80KVMWGfRM16yHBQZaNxB9Rf1rphBOiSRiLHx', '2020-10-29 17:07:15', '2020-10-29 17:08:00', '2020-10-29 17:08:00', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (21, 'r75WEIVaaZACswjCD1oAZXLojb5V6NLj9hT2Awo3JCtUmohl4v4F4WdVAwyrgcoO', '2020-11-02 13:09:31', '2021-01-08 13:17:17', '0000-00-00 00:00:00', 1, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (22, 's8OOGs7iL7gy005ZUqZk3PkOuec94pJTjriGOt4PxMeIqQ0a3bj5y7UFaxkcIycN', '2020-11-16 17:30:49', '2020-11-16 17:31:28', '2020-11-16 17:31:28', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (23, '7kq3vHsSSc2O7u0rcRxXaZowbmmucWkkvbKi47g0Ml7M75WLsXpnompAlOqwr0xL', '2020-11-16 17:32:59', '2021-01-08 13:17:17', '0000-00-00 00:00:00', 1, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (24, 'o23G7CNQ0CtKz3pYTV7q0TnslUmgwO80TUzD26fPqY57Jw3dbAV3FL0p8CYHhKFK', '2021-01-08 13:07:54', '2021-01-08 13:17:17', '2021-01-08 13:17:17', 0, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (25, 'yLXYHk31iUZBOoNUTcCanYtguPhFAtxb2O25hb50UgUrzcYxsFTnJmpcnj8bWUTd', '2021-01-08 13:17:22', '2021-01-08 13:17:22', '0000-00-00 00:00:00', 50, 1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50), */
/* (26, 'XR5LzlWPDuutCl8Sl3ayb5nk5sALdCXO6FniIncC4QTaGS6MTG7YuoMPXjIJNa5N', '2023-03-01 23:22:55', '2023-03-01 23:55:36', '2023-03-02 14:42:08', 0, 311, '5ZRkCEVee8Xy', 1), */
/* (27, '1voJJi55TCqUfs4YMA02tUDtkNPl32eJA1gKFvKTWcWHLnji1myKePsEOvyE3C3V', '2023-03-01 23:25:02', '2023-03-01 23:55:36', '2023-03-02 14:42:08', 0, 311, '5ZRkCEVee8Xy', 50), */
/* (28, 'wRLnvC1lELOUu3dcBfaHdEuil3qLzWEmeidQgLEjgCql4yRovqXsLV0XGTMivfxt', '2023-03-01 23:53:54', '2023-03-01 23:55:36', '2023-03-02 14:42:08', 0, 311, '5ZRkCEVee8Xy', 50), */
/* (29, 'HHwg25IRDcUggwXOdXcHNAskWWB3BawFwUjT5gYbvp1EDtMtBIWgV4lRhjZ49wLf', '2023-03-01 23:55:55', '2023-03-01 23:59:46', '2023-03-02 14:42:08', 0, 311, '5ZRkCEVee8Xy', 50), */
/* (30, '1IgJOZMlS3VSZbuThwrn0e6YBlEj3JZjbKAMGEpwasAnTXDHlyLdSkhgD9M1BdGQ', '2023-03-01 23:59:55', '2023-03-02 00:00:45', '2023-03-02 14:42:08', 0, 311, '5ZRkCEVee8Xy', 50), */
/* (31, 'ly4sEjYpSIvTFZCD3lwlbNb2ILfZwhBcsep5CTtc6EjEM3kf1SxcPjES0t8iwari', '2023-03-02 00:02:01', '2023-03-02 14:42:08', '2023-03-02 14:42:08', 0, 311, '5ZRkCEVee8Xy', 50), */
/* (32, 'KYXGIIweGuENxyF1ZDD2qJaxWCSmlfpNaHC50GEvkq2R34qt4u9fTRjYwwW45nL1', '2023-03-02 14:42:56', '2023-03-02 14:43:56', '2023-03-02 14:43:56', 0, 311, '5ZRkCEVee8Xy', 50), */
/* (33, 'K8hywDd3as0O5QNvxovW62Yn5AjO0jS89D6bCVJOWJIsB8i6VgFZ1nOJ1g9ksyh0', '2023-03-02 15:41:41', '2023-03-02 15:43:17', '2023-03-02 15:43:17', 0, 311, '5ZRkCEVee8Xy', 50); */

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;