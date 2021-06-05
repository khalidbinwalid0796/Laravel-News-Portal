-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 04:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `ads`, `type`, `created_at`, `updated_at`) VALUES
(1, 'https://learnhunter.live/', 'public/ads/5f2ba5dcca23f.png', 2, NULL, NULL),
(2, 'https://learnhunter.live/', 'public/ads/5f2ba5ef852e5.png', 2, NULL, NULL),
(3, 'https://learnhunter.live/', 'public/ads/5f2ba5fff39ab.png', 1, NULL, NULL),
(4, 'https://learnhunter.live/', 'public/ads/5f2ba60ea24ac.png', 1, NULL, NULL),
(5, 'https://learnhunter.live/', 'public/ads/5f2bcf1c81edc.png', 2, NULL, NULL),
(6, 'https://learnhunter.live/', 'public/ads/5f2bcf2bb9b23.png', 2, NULL, NULL),
(7, 'https://learnhunter.live/', 'public/ads/5f2bcf4f6fefb.png', 2, NULL, NULL),
(8, 'https://learnhunter.live/', 'public/ads/5f2bcffb220df.png', 1, NULL, NULL),
(9, 'https://learnhunter.live/', 'public/ads/5f2bd00b6db09.png', 1, NULL, NULL),
(10, 'https://learnhunter.live/', 'public/ads/5f2be65551659.png', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_bn`, `category_en`, `soft_delete`, `created_at`, `updated_at`) VALUES
(2, 'বাংলাদেশ', 'Bangladesh', '0', NULL, NULL),
(3, 'খেলাধুলা', 'Sports', '0', NULL, NULL),
(4, 'আন্তর্জাতিক', 'International', '0', NULL, NULL),
(6, 'বিনোদন', 'Entertainment', '0', NULL, NULL),
(7, 'অর্থনীতি', 'Economy', '0', NULL, NULL),
(8, 'বিজ্ঞান ও প্রযুক্তি', 'Science & Technology', '0', NULL, NULL),
(9, 'ফিচার', 'Feature', '0', NULL, NULL),
(10, 'মতামত', 'Opinion', '0', NULL, NULL),
(11, 'শিক্ষা', 'Education', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_bn`, `district_en`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকা', 'Dhaka', NULL, NULL),
(2, 'সিলেট', 'Sylhet', NULL, NULL),
(3, 'খুলনা', 'Khulna', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv`
--

CREATE TABLE `livetv` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetv`
--

INSERT INTO `livetv` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KgiwN7ddb2U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_27_181250_create_categories_table', 2),
(5, '2020_07_27_181524_create_subcategories_table', 2),
(8, '2020_07_28_203144_create_districts_table', 3),
(9, '2020_07_28_203433_create_subdistricts_table', 3),
(10, '2020_07_29_101345_create_posts_table', 4),
(11, '2020_07_30_185123_create_namaz_table', 5),
(12, '2020_07_30_185313_create_seos_table', 5),
(13, '2020_07_30_185401_create_socials_table', 5),
(14, '2020_07_30_185854_create_videos_table', 5),
(15, '2020_07_30_185949_create_photos_table', 5),
(16, '2020_07_30_190038_create_websites_table', 5),
(17, '2020_07_30_190123_create_notices_table', 5),
(18, '2020_07_30_190217_create_livetv_table', 5),
(19, '2020_07_30_191027_create_settings_table', 5),
(20, '2020_07_03_125924_create_ads_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `namaz`
--

CREATE TABLE `namaz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fajr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namaz`
--

INSERT INTO `namaz` (`id`, `fajr`, `johr`, `asor`, `magrib`, `esha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, '5:15 AM', '1:30 PM', '5:00 PM', '6:45 PM', '8:30 PM', '1:30 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `notice_en`, `status`, `created_at`, `updated_at`) VALUES
(2, 'লারাভেল বেস্ট ফ্রেমওয়ার্ক', 'Laravel is the best framework', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'public/photos_gallery/5f2467fb43866.jpg', 'First Material', '1', NULL, NULL),
(2, 'public/photos_gallery/5f246814546e4.jpg', 'Second Material', '0', NULL, NULL),
(3, 'public/photos_gallery/5f2468659853c.jpg', 'Third Material', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `dist_id` int(11) NOT NULL,
  `subdist_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` int(11) DEFAULT NULL,
  `first_section` int(11) DEFAULT NULL,
  `first_section_thumbnail` int(11) DEFAULT NULL,
  `bigthumbnail` int(11) DEFAULT NULL,
  `post_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_bn`, `title_en`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 1, 1, 1, 'ধীরে ধীরে আক্রান্তের হার কমতে শুরু করেছে: স্বাস্থ্যমন্ত্রী', 'Gradually decreases the rate covid-19', 'public/postimages/5f22de2d12c34.png', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কোভিড-১৯ চিকিৎসায় বিভিন্ন উদ্যোগ নেওয়ার কথা জানিয়ে স্বাস্থ্যমন্ত্রী জাহিদ মালেক বলেছেন, এসব উদ্যোগের ফলে দেশে ধীরে ধীরে আক্রান্তের হার কমতে শুরু করেছে। যথার্থ উদ্যোগ নেওয়ার ফলে কোভিড হাসপাতালে এখন ৬০ ভাগ শয্যা খালি পড়ে আছে। আর পরীক্ষা করতে মানুষের অনীহা, বন্যা ও যত্রতত্র লক্ষণবিহীন পরীক্ষা না করায় কবোনাভাইরাস শনাক্তে পরীক্ষা কিছুটা কমে থাকতে পারে বলে মনে করেন তিনি।</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">আজ বৃহস্পতিবার সচিবালয়ে স্বাস্থ্য মন্ত্রণালয়ে স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের বার্ষিক কর্মসম্পাদন চুক্তি স্বাক্ষর অনুষ্ঠানে প্রধান অতিথির বক্তব্যে মন্ত্রী এ কথা বলেন। স্বাস্থ্য শিক্ষা বিভাগের সচিব মো. আলী নূরের সভাপতিত্বে অনুষ্ঠানে পাঁচটি দপ্তরের চুক্তি স্বাক্ষর হয়। দপ্তরগুলো হলো; পরিবার পরিকল্পনা অধিদপ্তর, নিপোর্ট, নার্সিং ও মিডওয়াইফারি অধিদপ্তর, স্বাস্থ্য প্রকৌশল অধিদপ্তর, স্বাস্থ্য শিক্ষা অধিদপ্তর।</p>', 'করোনা', 'covid-19', 1, 1, 1, 1, '30-07-2020', 'July', NULL, NULL),
(2, 3, 9, 1, 1, 1, 'হাটবাজার–শপিং মল খোলা রাখার সময় বাড়ল ৩‌১ আগস্ট পর্যন্ত', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f2801707da4e.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনার সংক্রমণ নিয়ন্ত্রণে না আসায় ৩১ আগস্ট পর্যন্ত এখনকার মতোই বিধিনিষেধের মধ্যে চলবে অফিস। জনসাধারণও চলাচল করবে এই বিধিনিষেধের মধ্যে।</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">তবে হাটবাজার, দোকানপাট ও শপিং মল খোলা রাখার সময় এক ঘণ্টা বাড়িয়ে রাত আটটা পর্যন্ত করার সিদ্ধান্ত নিয়েছে সরকার। এত দিন দোকানপাট সকাল ১০টা থেকে সন্ধ্যা ৭টা পর্যন্ত খোলা রাখা গেছে।</p>', 'করোনা', 'covid-19', 1, NULL, NULL, NULL, '03-08-2020', 'August', NULL, NULL),
(3, 4, 10, 3, 3, 1, 'মানচিত্র এবার জাতিসংঘ ও গুগলকে পাঠাচ্ছে নেপাল', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f2801e4d15e9.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">ভারত ও নেপালের মধ্যকার সম্পর্কে তিক্ততা দিনকে দিন বাড়ছে। সেই তিক্ততা সহজে মিটছে না। কারণ কালাপানি, লিপুলেখ ও লিম্পিয়াধুরাকে নিজেদের দাবি করে যে মানচিত্র প্রকাশ করেছিল নেপাল, সেটির ইংরেজি সংস্করণ জাতিসংঘ ও গুগলের কাছে পাঠাচ্ছে দেশটি।</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">নেপালের স্থানীয় সংবাদমাধ্যমের বরাত দিয়ে ভারতের ‘ইন্ডিয়া টুডে’র খবরে এসব কথা বলা হয়েছে।</p>', 'করোনা', 'covid-19', 1, NULL, NULL, NULL, '03-08-2020', 'August', NULL, NULL),
(4, 5, 11, 3, 2, 1, 'আমদানি বাণিজ্যে হঠাৎ সুখবর', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f28027c553d9.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">করোনাভাইরাসের প্রাদুর্ভাব শুরুর অনেক আগ থেকেই প্রবাসী আয় ছাড়া অর্থনীতির সব সূচক খারাপ অবস্থায় ছিল। এখন করোনার মধ্যেও হঠাৎ করে আমদানিতে ইতিবাচক ধারা শুরু হয়েছে। আগের বছরের একই সময়ের তুলনায় গত জুন মাসে আমদানিতে প্রায় ২৪ শতাংশ প্রবৃদ্ধি হয়েছে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, 1, NULL, '03-08-2020', 'August', NULL, NULL),
(5, 2, 9, 1, 1, 1, 'বিশেষজ্ঞদের পূর্বাভাস ভুল প্রমাণ করে করোনা সংক্রমণ নিয়ন্ত্রণে', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f2802d335105.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">যদিও ২০১৯-২০ অর্থবছরের পুরো সময়ে আমদানি কমেছে প্রায় সাড়ে ৮ শতাংশ। এর ফলে অর্থনীতির ভালো সূচকে প্রবাসী আয়ের সঙ্গে যুক্ত হলো আমদানিও। বাংলাদেশ ব্যাংকের হালনাগাদ প্রতিবেদন থেকে এসব তথ্য পাওয়া গেছে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL),
(6, 3, 5, 3, 3, 1, 'পেলে না ম্যারাডোনা, মেসি না রোনালদো—সর্বকালের সেরা আসলে কে?', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f280459e55fb.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">শুধু লিওনেল মেসি এদিক থেকে বাকি তিনজনের চেয়ে কিছুটা ব্যতিক্রম। সর্বকালের সেরা ফুটবলার কে—এই প্রশ্নটায় পেলে, ডিয়েগো ম্যারাডোনা বা ক্রিস্টিয়ানো রোনালদোর উত্তর কী হবে, তা আর অনুমানের দরকার পড়ে না। তিনজনই বিভিন্ন সময়ে এই প্রশ্নে নিজ নামখানা বেশ গর্ব নিয়ে বলেছেন। স্বল্পভাষী মেসি বারবার উত্তরের ভার তুলে দিয়েছেন দর্শকের হাতে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL),
(7, 8, 14, 1, 1, 1, 'সময়ের সেরা বাজেট-ফোন স্যামসাং গ্যালাক্সি এম২১', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f28140deb8e8.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">মাঝারি দামের ফোন রেঞ্জের প্রতিযোগিতামূলক বাজারে স্যামসাং বাংলাদেশের নতুন সংযোজন গ্যালাক্সি এম২১। উদ্ভাবনী ফিচার, শক্তিশালী পারফরমেন্স আর দাম গুরুত্বপূর্ণ প্রভাবক হিসেবে কাজ করে। আর এদিক দিয়ে এ সবকিছু বিবেচনা করে তরুণ প্রযুক্তিপ্রেমীদের কাছে সহজেই উদ্ভাবনী পণ্য নিয়ে সহজে পৌঁছাতে কাজ করে যাচ্ছে স্যামসাং। এ সবকিছু বিবেচনায় দেশের স্মার্টফোনের বাজারে ব্র্যান্ডটির নতুন ফোন গ্যালাক্সি এম২১ এগিয়ে সদ্য উন্মোচিত হওয়া অন্য অনেক ফোনের চেয়ে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL),
(8, 7, 15, 1, 1, 1, 'শেয়ারের ‘ঠিকুজি’ ছাড়া কালো টাকা সাদা নয়', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/6013b60855d95.png', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">শেয়ারবাজারে কালো টাকা সাদা করতে হলে শেয়ারের ‘ঠিকুজি’র হিসাব দিতে হবে। কালো টাকার মালিকেরা অতীতে কোন কোন কোম্পানির শেয়ার কিনেছেন, এখন কোন কোম্পানির শেয়ার আছে-এসব হিসাব দিতে হবে। অতীত-বর্তমানের শেয়ারের যাবতীয় খতিয়ান ছাড়া শেয়ারবাজারে বিনিয়োগ করে কালো টাকা সাদা করা যাবে না।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, 1, 1, '03-08-2020', 'August', NULL, NULL),
(9, 4, 10, 3, 2, 1, 'কলকাতায় করোনা পরীক্ষায় প্রতারকচক্রের সন্ধান', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f281bce29449.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">১ আগস্ট থেকে পশ্চিমবঙ্গে করোনা রোধে কেন্দ্রীয় সরকারঘোষিত আনলক-৩ বহাল হলেও করোনা দমন হয়নি বা দমনের লক্ষণও দেখা যাচ্ছে না; বরং বেড়েই চলেছে কলকাতাসহ পশ্চিমবঙ্গে করোনার সংক্রমণ ও মৃত্যুর সংখ্যা। করোনা পরীক্ষায় প্রতারকচক্রের সন্ধান মিলেছে। এ ঘটনায় তিনজনকে গ্রেপ্তার করা হয়েছে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL),
(10, 6, 1, 3, 3, 1, 'পতেঙ্গায় স্থানীয় মানুষের আয়োজন', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f2825454dde9.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">মাঝারি দামের ফোন রেঞ্জের প্রতিযোগিতামূলক বাজারে স্যামসাং বাংলাদেশের নতুন সংযোজন গ্যালাক্সি এম২১। উদ্ভাবনী ফিচার, শক্তিশালী পারফরমেন্স আর দাম গুরুত্বপূর্ণ প্রভাবক হিসেবে কাজ করে। আর এদিক দিয়ে এ সবকিছু বিবেচনা করে তরুণ প্রযুক্তিপ্রেমীদের কাছে সহজেই উদ্ভাবনী পণ্য নিয়ে সহজে পৌঁছাতে কাজ করে যাচ্ছে স্যামসাং। এ সবকিছু বিবেচনায় দেশের স্মার্টফোনের বাজারে ব্র্যান্ডটির নতুন ফোন গ্যালাক্সি এম২১ এগিয়ে সদ্য উন্মোচিত হওয়া অন্য অনেক ফোনের চেয়ে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL),
(11, 10, 17, 3, 2, 1, 'করোনাভাইরাসে কঠোরভাবে যা করা উচিত', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f283a514d227.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">অবশেষে বাংলাদেশেও করোনাভাইরাসের রোগী শনাক্ত হলেন। বৈশ্বিক এবং করোনাভাইরাসের প্রকৃতিগত কারণে এটি স্বাভাবিক ব্যাপারই ছিল।</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনাভাইরাসের রোগী শনাক্ত হওয়ার সঙ্গে সঙ্গে দুটি ব্যাপার ঘটে গেছে বাংলাদেশে। এর প্রথমটি হলো ব্যাপক পরিমাণে গুজব ও ভুয়া খবরের ছড়াছড়ি। আর দ্বিতীয়টি হলো মজুতদারি। এমন নয় যে এ বিষয় দুটি আমি অনেক গবেষণা করে বের করেছি। পথে নামলে কিংবা সামাজিক যোগাযোগমাধ্যম খুললে দুটি ব্যাপারই চোখে পড়ছে। আবার এটিও চোখে পড়ছে, সচেতন মানুষ সচেতনভাবেই করোনাভাইরাস নিয়ে চলমান স্রোতে না ভিড়ে সচেতন করছেন লোকজনকে। তবে তাঁদের সংখ্যা খুব বেশি নয় বলে অবস্থা নাজুক।</p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL),
(12, 9, 16, 1, 1, 1, 'শিক্ষাদানের স্বরূপ বিশ্লেষণ ও করোনাকালীন অনুশীলন', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.', 'public/postimages/5f283b0a6e2d4.jpg', '<p><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Lorem ipsum</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book</span><br></p>', '<p><span style=\"font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">করোনাকালের এই ‘নতুন স্বাভাবিক’ সময়ে কমে আসছে টেলিভিশন প্রযোজনা নির্মাণের পরিসর। নির্মাতা রেদওয়ান রনির সঙ্গে কথা হয় স্বাস্থ্যবিধি মেনে শুটিং করা নিয়ে। তিনি বলেন, ‘নিরাপত্তার স্বার্থে অবশ্যই শুটিং সেটে কম লোকবল রাখতে হবে। সময়ের প্রয়োজনেই চিত্রনাট্য এমন করে ভাবতে হবে, যাতে সামাজিক দূরত্বের নিয়মগুলো মানা যায়। সে ক্ষেত্রে ছোট ছোট চরিত্র ছেঁটে ফেলতে হতে পারে।</span><br></p>', 'করোনা', 'covid-19', NULL, NULL, NULL, 1, '03-08-2020', 'August', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'Laravel News Portal', 'newsportal, online newspaper, e news', 'this is online news portal where we can read news everyday', 'abc', 'abcde', 'abcd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `address_bn`, `address_en`, `phone_bn`, `phone_en`, `email`, `created_at`, `updated_at`) VALUES
(1, 'public/ads/5f2d44d6a339a.png', 'A complete solution of laravel', 'A complete solution of laravel', '01710659888', '01710659888', 'khalidbucse02@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_bn`, `subcategory_en`, `created_at`, `updated_at`) VALUES
(1, '6', 'ঢালিউড', 'Dhalywood', NULL, NULL),
(2, '6', 'বলিউড', 'Ballywood', NULL, NULL),
(3, '6', 'হলিউড', 'Hollywood', NULL, NULL),
(4, '3', 'অন্যান্য', 'Others', NULL, NULL),
(5, '3', 'ক্রিকেট', 'Cricket', NULL, NULL),
(6, '3', 'ফুটবল', 'Football', NULL, NULL),
(7, '2', 'দুর্ঘটনা', 'Accident', NULL, NULL),
(8, '2', 'জনসংখ্যা', 'Population', NULL, NULL),
(9, '2', 'সরকার', 'Goverment', NULL, NULL),
(10, '4', 'আমেরিকা', 'America', NULL, NULL),
(11, '4', 'ভারত', 'India', NULL, NULL),
(12, '4', 'পাকিস্তান', 'Pakistan', NULL, NULL),
(13, '4', 'এশিয়া', 'Asia', NULL, NULL),
(14, '8', 'মোবাইল  ফোন', 'Mobile Phone', NULL, NULL),
(15, '7', 'শেয়ারবাজার', 'Sharebazar', NULL, NULL),
(16, '9', 'ভ্রমণ', 'Travel', NULL, NULL),
(17, '10', 'বিতর্ক', 'Debet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_bn`, `subdistrict_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'গাজীপুর', 'Gazipur', NULL, NULL),
(2, '3', 'সাতক্ষীরা', 'Satkhira', NULL, NULL),
(3, '3', 'যশোর', 'Jashore', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  `setting` int(11) DEFAULT NULL,
  `gallery` int(11) DEFAULT NULL,
  `ads` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `type`, `category`, `district`, `post`, `setting`, `gallery`, `ads`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Khalid Bin Walid', 'khalidbucse02@gmail.com', NULL, '$2y$10$sgyukofJmFs9Oy8NE0bEf.qrlPcYMHYoFoQTdJE7S/0Jf.z.SToGq', NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-25 15:43:46', '2021-01-29 02:00:04'),
(2, 'Mita', 'mitaislamsetu@gmail.com', NULL, '$2y$10$Bs4l/6BYpo55vj27YuIwVuohBlBmO5B0SEzmmjXEOA1dNUWaxd9kO', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(1, 'তুর পাহাড়, যেখানে মুসা আঃ আল্লাহর সাথে কথা বললেন', 'Y9NvDceZLFE', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_name_en`, `website_link`, `created_at`, `updated_at`) VALUES
(3, 'Prothom Alo', 'প্রথম আলো', 'https://www.prothomalo.com/', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetv`
--
ALTER TABLE `livetv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namaz`
--
ALTER TABLE `namaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv`
--
ALTER TABLE `livetv`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `namaz`
--
ALTER TABLE `namaz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
