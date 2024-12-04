-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 05:21 AM
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
-- Table structure for table `m_users`
--

CREATE TABLE `m_users` (
  `id` int(11) NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` int(11) NOT NULL,
  `save_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT 0,
  `output` int(11) DEFAULT 1,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT 99,
  `logined` datetime DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruby` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_prefecture_id` int(11) DEFAULT NULL,
  `m_city_id` int(11) DEFAULT NULL,
  `m_company_id` int(11) DEFAULT 1,
  `m_shop_id` int(11) DEFAULT NULL,
  `m_member_id` int(11) DEFAULT NULL,
  `m_type_id` int(11) DEFAULT NULL,
  `m_season_id` int(11) DEFAULT NULL,
  `group_names_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_current_layer` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'local',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_users`
--

INSERT INTO `m_users` (`id`, `uuid`, `permission`, `save_id`, `created`, `modified`, `deleted_date`, `deleted`, `output`, `name`, `email`, `tel`, `password`, `level`, `logined`, `fee`, `address`, `emergency_tel`, `note`, `version`, `ruby`, `m_prefecture_id`, `m_city_id`, `m_company_id`, `m_shop_id`, `m_member_id`, `m_type_id`, `m_season_id`, `group_names_uuid`, `setting_current_layer`, `created_at`, `updated_at`) VALUES
(1, '41e9651f-5e0f-4978-9e6c-b6ad6984c03b', 50, NULL, NULL, NULL, NULL, 0, 1, 'Macci System Administrator', 'system.administrator@macci.cloud', NULL, '$2y$10$c3p5I1ccnApd7UR3leRYGeJ/V0ftzKCH3uLh.1u0FtHiUnHjXgP4.', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(2, 'b2463db1-8038-43b5-9821-1d35034e2c0e', 50, NULL, NULL, NULL, NULL, 0, 1, 'Macci Account Administrator', 'account.administrator@macci.cloud', NULL, '$2y$10$IYBhVDc6Z6jzGDNWSqerjucj9IblGjKBE9/M2ZXsLXEZhCjuJYOTC', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(3, '025d5ab7-1d30-4da0-9846-a7fc97b70769', 50, NULL, NULL, NULL, NULL, 0, 1, 'andrew', 'andrew@re-view.co.jp', NULL, '$2y$10$SZpe.UDi4ijJHaMLavSDcu/K3ux9YqIvMeabi3lXjxgWY2SY2fK0a', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', NULL, '2019-12-05 14:14:15'),
(4, 'cb5cae9e-e760-4e92-b8dc-e28845dfb6b0', 50, NULL, NULL, NULL, NULL, 0, 1, 'A. Takada', 'a-takada@neo-m.jp', NULL, '$2y$10$3B.BEO2bIMAhkDYhUE5fjuYrV4tBExBVstDxjcmekacS95ifKBdJG', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(5, 'e2e7abaa-1bf4-4a6e-959b-2385c85ee02e', 50, NULL, NULL, NULL, NULL, 0, 1, 'Hara', 'hara+neo@re-view.co.jp', NULL, '$2y$10$0Fg2ycFdxyi0bB58Sw.5EecYdfvBhrlelqlz1vpDDGW9hveQdZtza', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(6, '92c055ac-d10c-4e0e-8721-0440fd92d7a5', 50, NULL, NULL, NULL, NULL, 0, 1, 'Okuno', 'okuno+neo@re-view.co.jp', NULL, '$2y$10$hatNbuQ0nT9paVOz9p23BugQZ9F776ZHZ500zCI.iYIQj9G7U/r0e', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(8, '8a2b9aef-ffd5-4bd9-8e71-97c7479128e6', 50, NULL, NULL, NULL, NULL, 0, 1, 'Andrew', 'andrew+igc@review-co.jp', NULL, '$2y$10$UOLXGOo1lxtViEsVF814serUnavV12LeO/iVaxP18MKK6spXbKf9u', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 5, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(9, '7044bc27-3fa5-4056-a6b6-05cf96ddbe3b', 50, NULL, NULL, NULL, NULL, 0, 1, 'Uddhab Adhikari', 'uddhab.adhikari@igctech.com.np', NULL, '$2y$10$P9CXKDA5VU2HnFfzRJvVeu/ggdohUrhdYBfzc4CM6LIYfZmiFzTMC', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 5, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(10, 'b359a1c4-c9b1-4ca6-82c5-a2c87cfcfd3a', 50, NULL, NULL, NULL, NULL, 0, 1, 'Sanjok Dangol', 'sanjok.dangol@igctech.com.np', NULL, '$2y$10$LC9e.l69AInguRDRrdmjAODWy4YVPhpy93Hzv9d88fUSkOTlirtKe', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 5, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(11, '11a8e500-8851-4448-9de1-4638abc7ad3f', 50, NULL, NULL, NULL, NULL, 0, 1, 'Okuno', 'okuno@re-view.co.jp', NULL, '$2y$10$E4TZdDI3WJgPrq6mqUVSL.bfjV7ZOrengmIZplkr9x4MbO7hfG8oi', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', '2019-10-16 15:19:24', '2020-01-07 16:36:17'),
(12, 'ce011cf3-2945-4c10-b2d0-e76d66939c23', 50, NULL, NULL, NULL, NULL, 0, 1, 'Hara', 'hara@re-view.co.jp', NULL, '$2y$10$PvbMi7.mjL/9SaUR1.GOuuCbvSRazXRVTRWhQXtcgs2LJ6djfqdRO', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', '2019-10-17 11:46:31', '2019-12-10 10:28:37'),
(13, 'f4a9b4ca-f0b4-4a2c-ac05-ce72c7d9e18a', 50, NULL, NULL, NULL, NULL, 0, 1, 'andrew-user', 'andrew+user@re-view.co.jp', NULL, '$2y$10$6pskmadxzYFD.DD2TWf4GuvCIKEIkxiakvUENhC.Sly7rGOmd64jW', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', '2019-10-21 12:47:30', '2019-10-21 12:47:30'),
(268, 'a6c4070f-539d-4b6f-b69c-882ed53f7bd6', 50, NULL, NULL, NULL, NULL, 0, 1, '大塚晋也', 's-otsuka@banban.co.jp', NULL, '$2y$10$26.EzS9tLGWStnoIumUR2u6BpNE4rwgiKRr9ogGb9w9E6LXHPuDoO', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 277, 268, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(269, 'a8f3876d-b26e-4f20-b246-a4cbe342c01b', 50, NULL, NULL, NULL, NULL, 0, 1, '渡邉誠', 'makoto.watanabe@youtv.co.jp', NULL, '$2y$10$tFAtaGVR6dBxPpEAlEpyoOUVnod2BbzBFQXQjebltzAnykLu3O0UO', 99, NULL, NULL, NULL, NULL, '1/8留守TEL。10日の午前中', NULL, NULL, NULL, NULL, 278, 269, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(270, '200f918c-b9d7-4f1e-b59f-c0441cb814fb', 50, NULL, NULL, NULL, NULL, 0, 1, '桃原順一', 'j-toubaru@iwase-plating.co.jp', NULL, '$2y$10$yNdX7r5X1cxGcbYhcrauVOhYg8xJ2igrCrvN0SAKX7mMpcbpN3NUS', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 279, 270, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(271, '792cbf82-e31c-43a7-b8be-4e75173491e4', 50, NULL, NULL, NULL, NULL, 0, 1, '須藤光輝', 'koki.sudo@openhouse-group.com', NULL, '$2y$10$0lNOnTDNMoZS/JUhIWzCaOLFvSswei5TJnl78kHax89P6TpTMFbeO', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 280, 271, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(272, '5a95a8ac-966d-459d-b8ef-a0d8268d68a9', 50, NULL, NULL, NULL, NULL, 0, 1, '新田恭平', 'Nittak@jupiter.jcom.co.jp', NULL, '$2y$10$yBe2SIYV.LBkQVITVMm.WeHs6rpqhnW4GWXULlvZmqDp8BiYYmSVe', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 281, 272, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(273, '303651d5-bcf9-4aa7-98b5-8c9691d65285', 50, NULL, NULL, NULL, NULL, 0, 1, '松本浩城', 'MatsumotoHir@jupiter.jcom.co.jp', NULL, '$2y$10$aF6AUSO465aICOtG163EFeuejSg5EvICSI/AG/8lnfzpKDzJzPNe2', 99, NULL, NULL, NULL, NULL, '1/8留守TEL。', NULL, NULL, NULL, NULL, 282, 273, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(274, '742948ca-d25e-4f46-b546-c5e29afb8350', 50, NULL, NULL, NULL, NULL, 0, 1, '加美秀樹', 'KamiH@jupiter.jcom.co.jp', NULL, '$2y$10$o/ASJj8FdtG3pQ9twsq8E.e.cFbYN2kC.KtK8OhjH.OnYTFEdTGAC', 99, NULL, NULL, NULL, NULL, '1/8留守 TEL。1/9２回留守TEL。10日の午前中に電話してみる。1/10本社に電話ずみ。折り返ししていただけるよう伝えてもらう。', NULL, NULL, NULL, NULL, 283, 274, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(275, 'af371ea4-805d-41f6-a9c4-c3abac7fb86e', 50, NULL, NULL, NULL, NULL, 0, 1, '吉嶋健', 'YoshijimaK@jupiter.jcom.co.jp', NULL, '$2y$10$HKR9ayfj1i0P/Pw6OmEBd.ko7gBdsgDnQPEN3NQljG3TlIeAsLt7u', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 284, 275, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(276, 'e21e7d24-5bdc-440f-ad45-7e5f8580df65', 50, NULL, NULL, NULL, NULL, 0, 1, '川越泰三', 'KawakoshiT@jupiter.jcom.co.jp', NULL, '$2y$10$m/oeapcrFOfPF9nP0DRrpus4ZTXLqTDCubchBtOof6OjpHTz.1.aa', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 285, 276, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(277, 'f8365683-104a-498d-8387-647ee6783285', 50, NULL, NULL, NULL, NULL, 0, 1, '斎藤永', 'Haruka.saito@parkinglot-th.com', NULL, '$2y$10$8kommDNZdSyYSRCRFu5oRewsIADupE4X7LRPUQKy6lErklN30mZfC', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 286, 277, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(278, '0363d38b-f5b2-4b99-ae38-bdc98d215329', 50, NULL, NULL, NULL, NULL, 0, 1, '笹倉周平', 'uyama.t@baycom.jp', NULL, '$2y$10$TGHbX2Ff3egOg3NoY/oN1ufFVkUwu4y.WJzbqw.4EIhlGayzG5l0K', 99, NULL, NULL, NULL, NULL, '1/9確認して折り返し。', NULL, NULL, NULL, NULL, 287, 278, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(279, '2f079271-c997-4887-8264-f52a14a28b95', 50, NULL, NULL, NULL, NULL, 0, 1, '山田誉', 't-yamada@anabuki-housing.co.jp', NULL, '$2y$10$V.nXqfd6/MvXCJ41G6ytpOwZWLbY.NlO9.YTLni7YH8DNk.lrxS8O', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 288, 279, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(280, 'a7eba3ff-7e13-4d06-b150-47dbd94835dd', 50, NULL, NULL, NULL, NULL, 0, 1, '近藤晴香', 'info@2103kobo.co.jp', NULL, '$2y$10$hGgvB2jgUaQ3Ly4S8hXq6e.qZ9aTCNPYcOjhAwzifkUfMHTRA.V1S', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 289, 280, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(281, '5c64c6dc-416d-4603-9b61-f8b29bb3e679', 50, NULL, NULL, NULL, NULL, 0, 1, '成瀬広之', 'h-naruse@s.ayu.ne.jp', NULL, '$2y$10$y/DKgZvKG9E8S4ihkO2RDeOK0A0r5PFdSTiFDnZqr5jTKpTbdmIAu', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 290, 281, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(282, '94943d6b-17b2-4844-a217-cd9d4b6f8b44', 50, NULL, NULL, NULL, NULL, 0, 1, '片山由宇', 'y_katayama@tcn-catv.co.jp', NULL, '$2y$10$rVOlZgL6MjaDGrSzHQKv1Ostfb0FHUb.Z0pv4itKtyvrPIt6cHRda', 99, NULL, NULL, NULL, NULL, '1/8通話中。1/9不通。', NULL, NULL, NULL, NULL, 291, 282, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(283, '66d9f6d5-3336-4a11-9bd9-03217ef5036b', 50, NULL, NULL, NULL, NULL, 0, 1, '堀伸次朗', 'shinjiro-hori@n-p-d.co.jp', NULL, '$2y$10$mbwHTmrDbb0c2QD3xNV8.eNLixfx2RRPtOb/YLveg8OCIrmtPUfYG', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 292, 283, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(284, '2ae95491-ebc3-4dfe-a27f-1e08bada97fd', 50, NULL, NULL, NULL, NULL, 0, 1, '奥田拓実', 'takumi.okuda@mkyosho.co.jp', NULL, '$2y$10$0n7pDn9uhbiL1wsFm0rexejk7pu8GWvOC712DBkoqKwjcwzcoO1c6', 99, NULL, NULL, NULL, NULL, '1/9明日までに折り返し。', NULL, NULL, NULL, NULL, 293, 284, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(285, '74bb68c8-1852-42d4-accb-81c008ecd3d7', 50, NULL, NULL, NULL, NULL, 0, 1, '高松崇', 'TakamatsuS@jupiter.jcom.co.jp', NULL, '$2y$10$V7QdHmmSJy9N7f.qy5hzBuSCMbIlghQ2jG2sDxZjf.xghjWZV.oDW', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 294, 285, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(286, '2b2e64e0-d130-4926-9e68-182345ccd856', 50, NULL, NULL, NULL, NULL, 0, 1, '別府宙馬', 'beppuch@jupiter.jcom.co.jp', NULL, '$2y$10$JbZWy8VDwlPKFRdkm05MKOzrOj8UQubZrpnWtBAKQ5QVs6cZKQV3S', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 295, 286, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(287, '2be6e4a6-d1d9-4b64-830b-64cbdca128c9', 50, NULL, NULL, NULL, NULL, 0, 1, '久野稔', 'mkuno@jupiter.jcom.co.jp', NULL, '$2y$10$bMSX00D1BUBKIFMze523ueJ0goDP9TjhtEMpmc2bAFYJJdeqerEwG', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 296, 287, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(288, 'c64ea240-d49a-4cc2-bd57-43ea1a9c30aa', 50, NULL, NULL, NULL, NULL, 0, 1, '菅原誠', 'SugawaraM@jupiter.jcom.co.jp', NULL, '$2y$10$IDt.Cc9XvqgIw9NNdAULweO5mk2PpV5a00pxHkiUhx69QtiLZybTy', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 297, 288, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(289, 'a1727bc6-7f48-4bf0-8a62-2a6625c9d8f1', 50, NULL, NULL, NULL, NULL, 0, 1, '飯原直人', 'IiharaN@jupiter.jcom.co.jp', NULL, '$2y$10$SvEwlxUeaQXJDQXmwt1AdecfcPqLd0m9eg3UKWKmdrFw2wk6gEAVa', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 298, 289, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(290, '85faec64-78cb-4507-86b4-2a9cc359f668', 50, NULL, NULL, NULL, NULL, 0, 1, '土屋大樹', 'TsuchiyaDa@jupiter.jcom.co.jp', NULL, '$2y$10$K6S09K4lYnffyKktUvBlO.4af7.WJ1n3W4zIqA5oWO4wkETeUYcGu', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 299, 290, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(291, 'ca776c19-c32f-4e49-b8ae-cdfaf1d8522e', 50, NULL, NULL, NULL, NULL, 0, 1, '松田康宏', 'MatsudaYa@jupiter.jcom.co.jp', NULL, '$2y$10$4wmFFkwq2Bd1hxa.1tj00ezb/LVtskWYvfuTwsIaZQRBmKwceFGw6', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 300, 291, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(292, '1496e83e-9d1a-410b-b392-a2e90d820644', 50, NULL, NULL, NULL, NULL, 0, 1, '小林賢太', 'KobayashiKent@jupiter.jcom.co.jp', NULL, '$2y$10$lOJq9fTTNN9T7BN1MWm9zunGpQplKT3TSJfGeBJYfVetU8RId5eX.', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 301, 292, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(293, 'c4547656-f2f8-4db8-bc15-8f0f2b8de709', 50, NULL, NULL, NULL, NULL, 0, 1, '宮城哉', 'MiyagiHa@jupiter.jcom.co.jp', NULL, '$2y$10$E.GeP9Qfo.UBxxDM0PPM1ux5rzbJQKQs/IMmuOnTyXrBj3C1IsYeu', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 302, 293, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(294, '37a4f19d-c8a9-4fa2-bef1-a464037352ba', 50, NULL, NULL, NULL, NULL, 0, 1, '秋山淳希', 'AkiyamaA@jupiter.jcom.co.jp', NULL, '$2y$10$SRMqhOEp05G19pjKTmME7OgTtw9SFk5CFprHhv4vl98V6hOHLm5FK', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 303, 294, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(295, '8fd9c2ef-1052-44cb-ad46-0eebaa23478d', 50, NULL, NULL, NULL, NULL, 0, 1, '鈴石修平', 'Suzuishis@jupiter.jcom.co.jp', NULL, '$2y$10$M6WmTLfZX0jtqUB/Ge8hK.YdWBUIn2BumMZLTMFWf.IHiFq5YgDy.', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 304, 295, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(296, 'fbf0fccd-4f48-4d0c-b51c-cc54c3c17232', 50, NULL, NULL, NULL, NULL, 0, 1, '浅倉路彦', 'AsakuraM@jupiter.jcom.co.jp', NULL, '$2y$10$2j5FdTOXEeV.m8725Zxc/OQtrMbrJNiLm7y5EfszPJe00M583jSQ2', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 305, 296, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(297, 'cab85ceb-e6e7-47a2-812f-02d1f2e0f416', 50, NULL, NULL, NULL, NULL, 0, 1, '林圭介', 'HayashiKei@jupiter.jcom.co.jp', NULL, '$2y$10$4/.n8mydWizAyy7FVmhGI.G8aw1DGIEOuDLtNgQPBlnug8O6pJo3K', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 306, 297, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(298, '8dfb300a-bf21-481c-ad9e-c9e4a8fc9ba4', 50, NULL, NULL, NULL, NULL, 0, 1, '平山鮮一', 'HirayamaSen@jupiter.jcom.co.jp', NULL, '$2y$10$.ZJfPKVQvG7akYWYJ/R/Eum865xpQkqm8RrZEoHWhsXPTqv6rg2RK', 99, NULL, NULL, NULL, NULL, '1/9折り返し', NULL, NULL, NULL, NULL, 307, 298, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(299, '2ac86937-f722-4e67-8398-4a72a60ca81f', 50, NULL, NULL, NULL, NULL, 0, 1, '石川大輔', 'dishikawa@careerindex.co.jp', NULL, '$2y$10$02HaJyQP98G8UFFWSIWLiu.kG.OwBp3Wha9As1VB.4KfhtdJbEx9K', 99, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 308, 299, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(300, '078aced5-3886-4211-a257-340dbc25c342', 50, NULL, NULL, NULL, NULL, 0, 1, '梶田洋二', 'yoji.kajita@mediahouse.co.jp', NULL, '$2y$10$M8twSo8.LxoYjxfAc8ncyub66gCKJQqokqJOx7YjDofSRsFFEcjWm', 99, NULL, NULL, NULL, NULL, '1/9留守TEL', NULL, NULL, NULL, NULL, 309, 300, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(301, '91e7f01d-fb89-444a-bdf1-cdc91ff286f9', 50, NULL, NULL, NULL, NULL, 0, 1, '髙山祐介', 'info@parking365.jp', NULL, '$2y$10$oDXHWH/zbZYtwIeEh8G9VOTYCouo52z.U9BGta2Rgf5.AMM2a/seq', 99, NULL, NULL, NULL, NULL, '1/8留守TEL。再度連絡。', NULL, NULL, NULL, NULL, 310, 301, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(302, '356c5a5a-6302-4020-b441-49009224e835', 50, NULL, NULL, NULL, NULL, 0, 1, 'andrew-test', 'andrew+test@re-view.co.jp', NULL, '$2y$10$ENB/bSC3WQD5VijdaH8f7u96gF8z1LUOC73C7B4Vm.s28Igc.2FYO', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'local', '2020-01-30 10:38:58', '2020-01-30 10:38:58'),
(308, '76onxnWmME5j', 50, NULL, NULL, NULL, NULL, 0, 50, 'sahil', 'sahil@sahil.com', '1928', '$2y$10$9moeUhaAgcJ99AYm.UNQD.ahIxJph1TpFKLxSEixdmXpXUCD.1plK', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(309, 'mfuBm75DRk5g', 50, NULL, NULL, NULL, NULL, 0, 50, 'sahil', 'sahil3@sahil.com', '1928', '$2y$10$xOROvxK2WJtvQz5rjE6PduiTlLJTB4ap1gQBgseQnxi7He0rGs7DG', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(310, '3tNOhU6p1ORk', 50, NULL, NULL, NULL, NULL, 0, 50, 'sahil', 'sahil4@sahil.com', '1928', '$2y$10$WVHeit6pHioUe6WTabq/ZOvkP3lGXEn8S0Y7YvSoM5HEjCvZVhoAm', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'local', NULL, NULL),
(311, '5ZRkCEVee8Xy', 50, NULL, NULL, NULL, NULL, 0, 50, 'sahil', 'sahil5@sahil.com', '1928', '$2y$10$Szx/O/POBGc.61mAlB.B7O2cbGPY/L/X6TAQhYduSsAtFoOgs9WHq', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'local', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_users`
--
ALTER TABLE `m_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `1` (`uuid`),
  ADD KEY `m_users_idx1` (`m_company_id`),
  ADD KEY `m_users_idx2` (`m_shop_id`),
  ADD KEY `m_users_idx3` (`m_member_id`),
  ADD KEY `m_users_idx4` (`m_type_id`),
  ADD KEY `m_users_idx5` (`m_season_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_users`
--
ALTER TABLE `m_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_users`
--
ALTER TABLE `m_users`
  ADD CONSTRAINT `m_users_ibfk1` FOREIGN KEY (`m_company_id`) REFERENCES `m_companies` (`id`),
  ADD CONSTRAINT `m_users_ibfk2` FOREIGN KEY (`m_shop_id`) REFERENCES `m_shops` (`id`),
  ADD CONSTRAINT `m_users_ibfk3` FOREIGN KEY (`m_member_id`) REFERENCES `m_members` (`id`),
  ADD CONSTRAINT `m_users_ibfk4` FOREIGN KEY (`m_type_id`) REFERENCES `m_types` (`id`),
  ADD CONSTRAINT `m_users_ibfk5` FOREIGN KEY (`m_season_id`) REFERENCES `m_seasons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
