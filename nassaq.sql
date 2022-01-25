-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.18 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table nasaq.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.admins: ~1 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'admin', 'mohammed.hudair@gmail.com', 'Mohammed', 'hudair', '61ecafa0d8f46.jpg', '$2y$10$v4vEDywiQHpGUEWXPGY3/O6BMvuAzuOa5T1arvAua5eWjyL.tXSKe', 1, NULL, '2022-01-23 04:30:09');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table nasaq.archives
CREATE TABLE IF NOT EXISTS `archives` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.archives: ~0 rows (approximately)
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;

-- Dumping structure for table nasaq.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `article_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob NOT NULL,
  `serial_number` int(11) NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.articles: ~0 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table nasaq.article_categories
CREATE TABLE IF NOT EXISTS `article_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.article_categories: ~18 rows (approximately)
/*!40000 ALTER TABLE `article_categories` DISABLE KEYS */;
INSERT INTO `article_categories` (`id`, `language_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
	(1, 169, 'Tech Questions', 1, 1, '2021-02-02 16:17:43', '2021-02-02 16:51:58'),
	(2, 169, 'Course Issues', 1, 2, '2021-02-02 16:19:15', '2021-02-19 19:20:55'),
	(3, 169, 'Script Installation', 1, 3, '2021-02-02 16:19:35', '2021-02-02 16:19:35'),
	(4, 169, 'Server Requirements', 1, 4, '2021-02-02 16:20:02', '2021-02-02 16:20:02'),
	(5, 169, 'API Issues', 1, 5, '2021-02-02 16:22:37', '2021-02-19 19:21:51'),
	(15, 169, 'MISC', 1, 6, '2021-02-19 19:22:03', '2021-02-19 19:22:03'),
	(16, 170, 'Questões técnicas', 1, 1, '2021-02-02 16:17:43', '2021-02-02 16:51:58'),
	(17, 170, 'Problemas do curso', 1, 2, '2021-02-02 16:19:15', '2021-02-19 19:20:55'),
	(18, 170, 'Instalação de script', 1, 3, '2021-02-02 16:19:35', '2021-02-02 16:19:35'),
	(19, 170, 'Requisitos do servidor', 1, 4, '2021-02-02 16:20:02', '2021-02-02 16:20:02'),
	(20, 170, 'Problemas de API', 1, 5, '2021-02-02 16:22:37', '2021-02-19 19:21:51'),
	(21, 170, 'MISC', 1, 6, '2021-02-19 19:22:03', '2021-02-19 19:22:03'),
	(22, 171, 'Teknik Sorular', 1, 1, '2021-02-02 16:17:43', '2021-02-02 16:51:58'),
	(23, 171, 'Kurs Sorunları', 1, 2, '2021-02-02 16:19:15', '2021-02-19 19:20:55'),
	(24, 171, 'Komut Dosyası Kurulumu', 1, 3, '2021-02-02 16:19:35', '2021-02-02 16:19:35'),
	(25, 171, 'Sunucu Gereksinimleri', 1, 4, '2021-02-02 16:20:02', '2021-02-02 16:20:02'),
	(26, 171, 'API Sorunları', 1, 5, '2021-02-02 16:22:37', '2021-02-19 19:21:51'),
	(27, 171, 'MISC', 1, 6, '2021-02-19 19:22:03', '2021-02-19 19:22:03');
/*!40000 ALTER TABLE `article_categories` ENABLE KEYS */;

-- Dumping structure for table nasaq.backups
CREATE TABLE IF NOT EXISTS `backups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.backups: ~0 rows (approximately)
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;

-- Dumping structure for table nasaq.basic_settings
CREATE TABLE IF NOT EXISTS `basic_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_base_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob,
  `hero_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_link` text COLLATE utf8mb4_unicode_ci,
  `service_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approach_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approach_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approach_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approach_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cta_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cta_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cta_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cta_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text COLLATE utf8mb4_unicode_ci,
  `google_analytics_script` text COLLATE utf8mb4_unicode_ci,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT '0',
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(4) NOT NULL DEFAULT '1',
  `disqus_script` text COLLATE utf8mb4_unicode_ci,
  `is_analytics` tinyint(4) NOT NULL DEFAULT '1',
  `maintainance_mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - active, 0 - deactive',
  `maintainance_text` text COLLATE utf8mb4_unicode_ci,
  `secret_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_appzi` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `appzi_script` text COLLATE utf8mb4_unicode_ci,
  `is_addthis` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `addthis_script` text COLLATE utf8mb4_unicode_ci,
  `service_title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_quote` tinyint(4) NOT NULL DEFAULT '1',
  `home_version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_title` text COLLATE utf8mb4_unicode_ci,
  `event_subtitle` text COLLATE utf8mb4_unicode_ci,
  `event_details_title` text COLLATE utf8mb4_unicode_ci,
  `cause_title` text COLLATE utf8mb4_unicode_ci,
  `cause_subtitle` text COLLATE utf8mb4_unicode_ci,
  `cause_details_title` text COLLATE utf8mb4_unicode_ci,
  `feature_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `intro_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `service_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `approach_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `statistics_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `portfolio_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `testimonial_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `team_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `news_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `call_to_action_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `partner_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `top_footer_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `copyright_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `newsletter_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.basic_settings: ~1 rows (approximately)
/*!40000 ALTER TABLE `basic_settings` DISABLE KEYS */;
INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `hero_bg`, `hero_section_title`, `hero_section_bold_text`, `hero_section_text`, `hero_section_button_text`, `hero_section_button_url`, `hero_section_video_link`, `intro_bg`, `intro_section_title`, `intro_section_text`, `intro_section_button_text`, `intro_section_button_url`, `intro_section_video_link`, `service_section_title`, `service_section_subtitle`, `approach_title`, `approach_subtitle`, `approach_button_text`, `approach_button_url`, `cta_bg`, `cta_section_text`, `cta_section_button_text`, `cta_section_button_url`, `portfolio_section_title`, `portfolio_section_text`, `team_bg`, `team_section_title`, `team_section_subtitle`, `contact_form_title`, `contact_form_subtitle`, `quote_title`, `quote_subtitle`, `tawk_to_script`, `google_analytics_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_script`, `is_analytics`, `maintainance_mode`, `maintainance_text`, `secret_path`, `is_appzi`, `appzi_script`, `is_addthis`, `addthis_script`, `service_title`, `service_subtitle`, `portfolio_title`, `portfolio_subtitle`, `testimonial_title`, `testimonial_subtitle`, `blog_section_title`, `blog_section_subtitle`, `faq_title`, `faq_subtitle`, `blog_title`, `blog_subtitle`, `service_details_title`, `portfolio_details_title`, `blog_details_title`, `gallery_title`, `gallery_subtitle`, `team_title`, `team_subtitle`, `contact_title`, `contact_subtitle`, `error_title`, `error_subtitle`, `is_quote`, `home_version`, `event_title`, `event_subtitle`, `event_details_title`, `cause_title`, `cause_subtitle`, `cause_details_title`, `feature_section`, `intro_section`, `service_section`, `approach_section`, `statistics_section`, `portfolio_section`, `testimonial_section`, `team_section`, `news_section`, `call_to_action_section`, `partner_section`, `top_footer_section`, `copyright_section`, `newsletter_section`) VALUES
	(146, 173, '61ec274c15b23.png', '61ec274c075fe.png', 'Nasaq', '25D06F', '0A3041', 'info@nassaq.com', '+576576565', '61ec274c1de0a.jpg', '61ec2e3ce145e.png', 'مؤسسة نسق لتصميم وتطوير المواقع والتسويق الرقمي', 'اشترك معنا في النشرة البريدية', _binary 0x3C646976207374796C653D22746578742D616C69676E3A2072696768743B223ED8ADD982D988D98220D8A7D984D8B7D8A8D8B920D988D8A7D984D986D8B4D8B120C2A920323032322E20D8ACD985D98AD8B920D8A7D984D8ADD982D988D98220D985D8ADD981D988D8B8D8A920D984D985D8A4D8B3D8B3D8A920D986D8B3D982266E6273703B3C2F6469763E, '61e9e9dc7f796.png', 'نهتم بالتفاصيل', 'خدمة عملاء سعداء', 'تطوير متاجر اكترونية وتسويق رقمي', 'للمزيد', '#', '#', '61ec3cd412613.png', 'من نحن', 'نقوم بتهيل خدمات التجارة الالكترونية', 'للمزيد', NULL, '#', 'خدماتنا', 'نحن نعمل معك لتحقيق أهدافك', 'كيف نعمل', 'نهج جديد للتجارة الالكترونية', 'نهجنا', '#', '61ec401c2ba5d.jpg', 'اتصل بنا للمساعدة', 'اتصل بنا', 'http://localhost/nasaq/contact', 'أحدث مشاريعنا', 'نهج جديد لخدمات التجارة الالكترونية', '61ec41b0209eb.jpg', 'فريق الخبراء', 'لدينا فريق من الخبراء', 'اتصل بنا', 'يرجئ ملئ النموذج', 'عميلنا الكريم', 'تعبئتك للبيانات بشكل صحيح ومتكامل يسهل علينا فهم الفكرة لمشروعك لتحليلها والعمل عليها وكذلك يسهل عملية التواصل معكم.', NULL, NULL, 0, NULL, NULL, 0, 0, NULL, 0, 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', NULL, 0, NULL, 0, NULL, 'الخدمات التي نقدمها', 'نحن نعمل معك لتحقيق أهدافك.', 'المحافظ', 'إلقاء نظرة على جميع مشاريعنا', 'أراء العملاء', 'نتمنى ان تكون اول عميل معنا بخصم 50%', 'أحدث الأخبار', 'جديد الاختبار في عالم التقنية', 'التعليمات', 'الأسئلة المتداولة', 'أحدث مدونة', 'من آخر الأخبار والمدونة', 'تفاصيل الخدمة', 'تفاصيل المحفظة', 'تفاصيل المدونة', 'معرضنا', 'نلقي نظرة على لحظاتنا الملتقطة', 'أعضاء الفريق', 'قابل أعضاء فريقنا', 'اتصل بنا', 'بحاجة الى معلومات؟ اتصل بنا', '404 غير موجود', 'وجه الفتاة! يبدو أنك فقدت', 1, 'particles', 'الأحداث', 'انضم إلى أحداثنا ومؤتمراتنا', 'تفاصيل الحدث', 'الأسباب', 'تبرع بنا لننمو معا', 'تفاصيل السبب', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;

-- Dumping structure for table nasaq.basic_settings_extended
CREATE TABLE IF NOT EXISTS `basic_settings_extended` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `pricing_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT '1',
  `cookie_alert_text` blob,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_calendar_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_calendar_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rss_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rss_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rss_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `home_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `home_meta_description` text COLLATE utf8mb4_unicode_ci,
  `services_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `services_meta_description` text COLLATE utf8mb4_unicode_ci,
  `packages_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `packages_meta_description` text COLLATE utf8mb4_unicode_ci,
  `portfolios_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `portfolios_meta_description` text COLLATE utf8mb4_unicode_ci,
  `team_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `team_meta_description` text COLLATE utf8mb4_unicode_ci,
  `career_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `career_meta_description` text COLLATE utf8mb4_unicode_ci,
  `calendar_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `calendar_meta_description` text COLLATE utf8mb4_unicode_ci,
  `gallery_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `gallery_meta_description` text COLLATE utf8mb4_unicode_ci,
  `faq_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `faq_meta_description` text COLLATE utf8mb4_unicode_ci,
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci,
  `rss_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `rss_meta_description` text COLLATE utf8mb4_unicode_ci,
  `contact_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `contact_meta_description` text COLLATE utf8mb4_unicode_ci,
  `quote_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `quote_meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT '0',
  `facebook_pexel_script` text COLLATE utf8mb4_unicode_ci,
  `theme_version` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `hero_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `statistics_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statistics_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `team_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `cta_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cta_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `intro_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `pricing_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `breadcrumb_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_title_font_size` int(11) DEFAULT NULL,
  `hero_section_bold_text_font_size` int(11) DEFAULT NULL,
  `hero_section_bold_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text_font_size` int(11) DEFAULT NULL,
  `hero_section_button_text_font_size` int(11) DEFAULT NULL,
  `statistics_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_background` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_bg2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_tags` text COLLATE utf8mb4_unicode_ci,
  `open_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_year` int(11) NOT NULL DEFAULT '0',
  `about_bold_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_summary` text COLLATE utf8mb4_unicode_ci,
  `about_signature` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_main_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_side_image1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_side_image2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `menu_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `special_offer_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `instagram_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `map_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `products_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `products_meta_description` text COLLATE utf8mb4_unicode_ci,
  `cart_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `cart_meta_description` text COLLATE utf8mb4_unicode_ci,
  `checkout_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `checkout_meta_description` text COLLATE utf8mb4_unicode_ci,
  `login_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `login_meta_description` text COLLATE utf8mb4_unicode_ci,
  `register_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `register_meta_description` text COLLATE utf8mb4_unicode_ci,
  `forgot_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `forgot_meta_description` text COLLATE utf8mb4_unicode_ci,
  `events_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `events_meta_description` text COLLATE utf8mb4_unicode_ci,
  `causes_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `causes_meta_description` text COLLATE utf8mb4_unicode_ci,
  `pricing_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `categories_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `featured_products_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `category_products_section` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.basic_settings_extended: ~1 rows (approximately)
/*!40000 ALTER TABLE `basic_settings_extended` DISABLE KEYS */;
INSERT INTO `basic_settings_extended` (`id`, `language_id`, `pricing_title`, `pricing_subtitle`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `career_title`, `career_subtitle`, `event_calendar_title`, `event_calendar_subtitle`, `rss_title`, `rss_subtitle`, `rss_details_title`, `default_language_direction`, `home_meta_keywords`, `home_meta_description`, `services_meta_keywords`, `services_meta_description`, `packages_meta_keywords`, `packages_meta_description`, `portfolios_meta_keywords`, `portfolios_meta_description`, `team_meta_keywords`, `team_meta_description`, `career_meta_keywords`, `career_meta_description`, `calendar_meta_keywords`, `calendar_meta_description`, `gallery_meta_keywords`, `gallery_meta_description`, `faq_meta_keywords`, `faq_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `rss_meta_keywords`, `rss_meta_description`, `contact_meta_keywords`, `contact_meta_description`, `quote_meta_keywords`, `quote_meta_description`, `is_facebook_pexel`, `facebook_pexel_script`, `theme_version`, `hero_overlay_color`, `hero_overlay_opacity`, `statistics_overlay_color`, `statistics_overlay_opacity`, `team_overlay_color`, `team_overlay_opacity`, `cta_overlay_color`, `cta_overlay_opacity`, `intro_overlay_color`, `intro_overlay_opacity`, `pricing_overlay_color`, `pricing_overlay_opacity`, `breadcrumb_overlay_color`, `breadcrumb_overlay_opacity`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `hero_section_title_font_size`, `hero_section_bold_text_font_size`, `hero_section_bold_text_color`, `hero_section_text_font_size`, `hero_section_button_text_font_size`, `statistics_bg`, `package_background`, `product_title`, `product_subtitle`, `product_details_title`, `cart_title`, `cart_subtitle`, `checkout_title`, `checkout_subtitle`, `intro_bg2`, `popular_tags`, `open_hour`, `about_title`, `about_year`, `about_bold_text`, `about_summary`, `about_signature`, `about_phone`, `about_main_image`, `about_side_image1`, `about_side_image2`, `about_section`, `menu_section`, `special_offer_section`, `instagram_section`, `map_section`, `products_meta_keywords`, `products_meta_description`, `cart_meta_keywords`, `cart_meta_description`, `checkout_meta_keywords`, `checkout_meta_description`, `login_meta_keywords`, `login_meta_description`, `register_meta_keywords`, `register_meta_description`, `forgot_meta_keywords`, `forgot_meta_description`, `events_meta_keywords`, `events_meta_description`, `causes_meta_keywords`, `causes_meta_description`, `pricing_section`, `categories_section`, `featured_products_section`, `category_products_section`) VALUES
	(144, 173, 'حزم لدينا', 'اختيار الحزمة التي تناسبك', 1, _binary 0x3C7370616E20636C6173733D22636F6F6B69652D636F6E73656E745F5F6D65737361676522207374796C653D226D617267696E3A203070783B2070616464696E673A203070783B20626F726465723A203070783B20766572746963616C2D616C69676E3A20626173656C696E653B20666F6E742D66616D696C793A20506F7070696E732C2073616E732D73657269663B20666F6E742D73697A653A20313670783B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223ED8B3D98AD8AAD98520D8AAD8ADD8B3D98AD98620D8AAD8ACD8B1D8A8D8AAD98320D981D98A20D987D8B0D8A720D8A7D984D985D988D982D8B920D985D98620D8AED984D8A7D98420D8A7D984D8B3D985D8A7D8AD20D8A8D985D984D981D8A7D8AA20D8AAD8B9D8B1D98AD98120D8A7D984D8A7D8B1D8AAD8A8D8A7D8B72E3C2F7370616E3E, 'السماح للكوكيز', 'do-not-reply@example.com', 'مسار مهني مسار وظيفي', 'انضم لفريقنا ، حسّن مهاراتك', 'الأحداث في التقويم', 'ألق نظرة سريعة على جداولنا', 'خلاصات RSS', 'تحديث البقاء حول أخبار العالم', 'تفاصيل المدونة', 'ltr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'default', '0A3041', 0.60, '0A3041', 0.90, '0A3041', 0.80, '0A3041', 0.70, '13287E', 0.50, '09090B', 0.65, '0A3041', 0.80, 'admin@nassaq.com', 'nassaq', 1, 'admin@nassaq', '587', 'TLS', 'admin@nassaqcom', '77777777777', 8, 76, 'FFFFFF', 4, 14, '61ec3ed77ce31.jpg', '5ea9c7e0a561a.jpg', 'منتجات', 'اختر من منتجاتنا المدهشة', 'تفاصيل المنتج', 'عربة التسوق', 'إدارة سلة التسوق الخاصة بك', 'الدفع', 'ادفع واشترِ العناصر التي تريدها', '6076b80478f1c.jpg', 'عبارة تسويقية', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1);
/*!40000 ALTER TABLE `basic_settings_extended` ENABLE KEYS */;

-- Dumping structure for table nasaq.basic_settings_extra
CREATE TABLE IF NOT EXISTS `basic_settings_extra` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `is_shop` tinyint(4) NOT NULL DEFAULT '1',
  `is_ticket` tinyint(4) NOT NULL DEFAULT '1',
  `is_user_panel` tinyint(4) NOT NULL DEFAULT '1',
  `base_currency_symbol` blob,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_facebook_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_guest_checkout` tinyint(4) NOT NULL DEFAULT '1',
  `product_rating_system` tinyint(4) NOT NULL DEFAULT '1',
  `package_guest_checkout` tinyint(4) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring_billing` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `expiration_reminder` int(11) DEFAULT NULL COMMENT 'number of days of reminder before subscription expiration',
  `preloader_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_course` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - activate all pages related to courses, 0 - deactivate all pages related to courses',
  `knowledgebase_title` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledgebase_subtitle` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledgebase_details_title` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation_guest_checkout` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `is_donation` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `is_event` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `event_guest_checkout` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `service_category` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `catalog_mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - active, 2 - deactive',
  `is_course_rating` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `push_notification_icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_addresses` text COLLATE utf8mb4_unicode_ci,
  `contact_numbers` text COLLATE utf8mb4_unicode_ci,
  `contact_mails` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) NOT NULL DEFAULT '15',
  `home_page_pagebuilder` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `custom_page_pagebuilder` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - disabled, 1 - enabled',
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `client_feedback_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_feedback_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_category_status` tinyint(3) unsigned NOT NULL,
  `gallery_category_status` tinyint(3) unsigned NOT NULL,
  `package_category_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.basic_settings_extra: ~1 rows (approximately)
/*!40000 ALTER TABLE `basic_settings_extra` DISABLE KEYS */;
INSERT INTO `basic_settings_extra` (`id`, `language_id`, `is_shop`, `is_ticket`, `is_user_panel`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `tax`, `is_facebook_login`, `facebook_app_id`, `facebook_app_secret`, `is_google_login`, `google_client_id`, `google_client_secret`, `product_guest_checkout`, `product_rating_system`, `package_guest_checkout`, `timezone`, `recurring_billing`, `expiration_reminder`, `preloader_status`, `preloader`, `course_title`, `course_subtitle`, `course_details_title`, `is_course`, `knowledgebase_title`, `knowledgebase_subtitle`, `knowledgebase_details_title`, `donation_guest_checkout`, `is_donation`, `is_event`, `event_guest_checkout`, `service_category`, `catalog_mode`, `is_course_rating`, `push_notification_icon`, `contact_addresses`, `contact_numbers`, `contact_mails`, `latitude`, `longitude`, `map_zoom`, `home_page_pagebuilder`, `custom_page_pagebuilder`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `client_feedback_title`, `client_feedback_subtitle`, `faq_category_status`, `gallery_category_status`, `package_category_status`) VALUES
	(4, 173, 1, 1, 1, _binary 0x534152, 'right', 'SAR', 'right', 3.78, 5.00, 1, '786876', '78676اتتات', 1, '897987', 'otutovHmfl4eFj8WZVq0sYNz', 1, 1, 1, 'Asia/Riyadh', 1, 6, 1, '61e9d2c8b6897.gif', 'الدورات', 'اختر من بين دوراتنا المذهلة', 'تفاصيل الدورة', 1, 'قاعدة المعرفة', 'ابحث عن الإجابات قبل السؤال', 'تفاصيل قاعدة المعرفة', 0, 0, 1, 1, 1, 0, 1, '61909f4aaf124.png', 'السعودية ، الرياض', '78678687678', 'info@nassaq.com', '987987', '987987987', 16, 0, 0, 1, '+576576576', 'مرحبا', 'اترك رسالة', 0, 'ملاحظات العملاء', 'لا تتردد في ترك بعض الاقتراحات لنا', 1, 1, 1);
/*!40000 ALTER TABLE `basic_settings_extra` ENABLE KEYS */;

-- Dumping structure for table nasaq.bcategories
CREATE TABLE IF NOT EXISTS `bcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.bcategories: ~5 rows (approximately)
/*!40000 ALTER TABLE `bcategories` DISABLE KEYS */;
INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`) VALUES
	(37, 173, 'السفر', 'السفر', 1, 1),
	(38, 173, 'لايف ستايل', 'لايف-ستايل', 1, 2),
	(39, 173, 'التصميم', 'التصميم', 1, 3),
	(40, 173, 'تقنية', 'تقنية', 1, 4),
	(41, 173, 'اعمال', 'اعمال', 1, 5);
/*!40000 ALTER TABLE `bcategories` ENABLE KEYS */;

-- Dumping structure for table nasaq.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob,
  `sidebar` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.blogs: ~0 rows (approximately)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- Dumping structure for table nasaq.budgets
CREATE TABLE IF NOT EXISTS `budgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `limits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.budgets: ~0 rows (approximately)
/*!40000 ALTER TABLE `budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `budgets` ENABLE KEYS */;

-- Dumping structure for table nasaq.calendar_events
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.calendar_events: ~1 rows (approximately)
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
INSERT INTO `calendar_events` (`id`, `language_id`, `title`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
	(13, NULL, 'Picninc', '04/15/2020 12:00 PM', '04/15/2020 09:00 PM', '2020-03-22 02:32:32', '2020-03-22 02:32:32');
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;

-- Dumping structure for table nasaq.conversations
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.conversations: ~0 rows (approximately)
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;

-- Dumping structure for table nasaq.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.coupons: ~1 rows (approximately)
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
	(4, 'Happy50', 'Happy50', 'percentage', 50.00, '04/12/2021', '12/16/2022', 150.00, '2021-04-22 23:51:54', '2021-04-22 23:51:54');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Dumping structure for table nasaq.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `course_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` int(11) DEFAULT NULL,
  `previous_price` int(11) DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `average_rating` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.courses: ~6 rows (approximately)
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`id`, `language_id`, `course_category_id`, `title`, `slug`, `current_price`, `previous_price`, `summary`, `course_image`, `video_link`, `overview`, `instructor_image`, `instructor_name`, `instructor_occupation`, `instructor_details`, `instructor_facebook`, `instructor_instagram`, `instructor_twitter`, `instructor_linkedin`, `created_at`, `updated_at`, `duration`, `is_featured`, `average_rating`) VALUES
	(25, 173, 14, '2021 معسكر بايثون الكامل من الصفر إلى البطل في بايثون1818', '2021-معسكر-بايثون-الكامل-من-الصفر-إلى-البطل-في-بايثون1818', 11, 199, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1613816516.jpg', 'https://www.youtube.com/watch?v=MFh0Fd7BsjE', '<p><div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div></p><div style="text-align: justify; line-height: 1.6;"><span style="font-size: 14px;"><font color="#636363">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</font></span></div>', '1613816486.png', 'John Doe', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/home', 'https://www.linkedin.com/', '2021-02-19 02:26:51', '2021-04-26 23:12:46', '10h 15m', 1, NULL),
	(26, 173, 13, 'معسكر مطور الويب Bootcamp 20211919', 'معسكر-مطور-الويب-bootcamp-20211919', 19, 150, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1613818198.jpg', 'https://www.youtube.com/watch?v=MFh0Fd7BsjE', '<p></p><div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><p></p><div style="text-align: justify; line-height: 1.6;"><span style="font-size: 14px;"><font color="#636363">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</font></span></div>', '1613818221.png', 'John Doe', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/home', 'https://www.linkedin.com/', '2021-02-19 02:26:51', '2021-04-26 23:12:46', '8h 05m', 1, NULL),
	(27, 173, 15, 'ماجستير إدارة أعمال كامل في دورة واحدة: حائز على جائزة كلية إدارة الأعمال - الأستاذ2020', 'ماجستير-إدارة-أعمال-كامل-في-دورة-واحدة-حائز-على-جائزة-كلية-إدارة-الأعمال-الأستاذ2020', 14, 99, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1613818312.jpg', 'https://www.youtube.com/watch?v=MFh0Fd7BsjE', '<p></p><div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><p></p><div style="text-align: justify; line-height: 1.6;"><span style="font-size: 14px;"><font color="#636363">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</font></span></div>', '1613818348.png', 'John Doe', 'Entrepreneur', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/home', 'https://www.linkedin.com/', '2021-02-19 02:26:51', '2021-04-26 23:12:46', '5h 55m', 1, NULL),
	(28, 173, 14, '2021 معسكر بايثون الكامل من الصفر إلى البطل في بايثون2121', '2021-معسكر-بايثون-الكامل-من-الصفر-إلى-البطل-في-بايثون2121', 11, 199, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1613816516.jpg', 'https://www.youtube.com/watch?v=MFh0Fd7BsjE', '<p><div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div></p><div style="text-align: justify; line-height: 1.6;"><span style="font-size: 14px;"><font color="#636363">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</font></span></div>', '1613816486.png', 'John Doe', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/home', 'https://www.linkedin.com/', '2021-02-19 02:26:51', '2021-04-26 23:12:46', '10h 15m', 1, NULL),
	(29, 173, 13, 'معسكر مطور الويب Bootcamp 20212222', 'معسكر-مطور-الويب-bootcamp-20212222', 19, 150, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1613818198.jpg', 'https://www.youtube.com/watch?v=MFh0Fd7BsjE', '<p></p><div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><p></p><div style="text-align: justify; line-height: 1.6;"><span style="font-size: 14px;"><font color="#636363">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</font></span></div>', '1613818221.png', 'John Doe', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/home', 'https://www.linkedin.com/', '2021-02-19 02:26:51', '2021-04-26 23:12:46', '8h 05m', 1, NULL),
	(30, 173, 15, 'ماجستير إدارة أعمال كامل في دورة واحدة: حائز على جائزة كلية إدارة الأعمال - الأستاذ2323', 'ماجستير-إدارة-أعمال-كامل-في-دورة-واحدة-حائز-على-جائزة-كلية-إدارة-الأعمال-الأستاذ2323', 14, 99, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '1613818312.jpg', 'https://www.youtube.com/watch?v=MFh0Fd7BsjE', '<p></p><div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><p></p><div style="text-align: justify; line-height: 1.6;"><span style="font-size: 14px;"><font color="#636363">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</font></span></div>', '1613818348.png', 'John Doe', 'Entrepreneur', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/home', 'https://www.linkedin.com/', '2021-02-19 02:26:51', '2021-04-26 23:12:46', '5h 55m', 1, NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;

-- Dumping structure for table nasaq.course_categories
CREATE TABLE IF NOT EXISTS `course_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.course_categories: ~12 rows (approximately)
/*!40000 ALTER TABLE `course_categories` DISABLE KEYS */;
INSERT INTO `course_categories` (`id`, `language_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
	(1, 169, 'IT & Software', 1, 1, '2021-01-29 15:12:34', '2021-02-19 21:14:22'),
	(2, 169, 'Development', 1, 2, '2021-01-29 15:12:49', '2021-02-19 21:14:53'),
	(3, 169, 'Business', 1, 3, '2021-01-29 15:13:06', '2021-02-19 21:15:12'),
	(7, 170, 'TI e software', 1, 1, '2021-01-29 15:12:34', '2021-02-19 21:14:22'),
	(8, 170, 'Desenvolvimento', 1, 2, '2021-01-29 15:12:49', '2021-02-19 21:14:53'),
	(9, 170, 'O negócio', 1, 3, '2021-01-29 15:13:06', '2021-02-19 21:15:12'),
	(10, 171, 'BT ve Yazılım', 1, 1, '2021-01-29 15:12:34', '2021-02-19 21:14:22'),
	(11, 171, 'Geliştirme', 1, 2, '2021-01-29 15:12:49', '2021-02-19 21:14:53'),
	(12, 171, 'İş', 1, 3, '2021-01-29 15:13:06', '2021-02-19 21:15:12'),
	(13, 173, 'تكنولوجيا المعلومات والبرمجيات', 1, 1, '2021-01-29 15:12:34', '2021-02-19 21:14:22'),
	(14, 173, 'تطوير', 1, 2, '2021-01-29 15:12:49', '2021-02-19 21:14:53'),
	(15, 173, 'اعمال', 1, 3, '2021-01-29 15:13:06', '2021-02-19 21:15:12');
/*!40000 ALTER TABLE `course_categories` ENABLE KEYS */;

-- Dumping structure for table nasaq.course_purchases
CREATE TABLE IF NOT EXISTS `course_purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` int(11) DEFAULT NULL,
  `previous_price` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.course_purchases: ~0 rows (approximately)
/*!40000 ALTER TABLE `course_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_purchases` ENABLE KEYS */;

-- Dumping structure for table nasaq.course_reviews
CREATE TABLE IF NOT EXISTS `course_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.course_reviews: ~0 rows (approximately)
/*!40000 ALTER TABLE `course_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_reviews` ENABLE KEYS */;

-- Dumping structure for table nasaq.donations
CREATE TABLE IF NOT EXISTS `donations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `goal_amount` double NOT NULL,
  `min_amount` double NOT NULL,
  `custom_amount` longtext COLLATE utf8mb4_unicode_ci,
  `meta_tags` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `lang_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donations_lang_id_foreign` (`lang_id`),
  CONSTRAINT `donations_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.donations: ~0 rows (approximately)
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;

-- Dumping structure for table nasaq.donation_details
CREATE TABLE IF NOT EXISTS `donation_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'anonymous',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'anonymous',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'xxxxxxxxxxxx',
  `amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT 'USD Converted Amount',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` longtext COLLATE utf8mb4_unicode_ci,
  `transaction_details` longtext COLLATE utf8mb4_unicode_ci,
  `bex_details` longtext COLLATE utf8mb4_unicode_ci,
  `donation_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donation_details_donation_id_foreign` (`donation_id`),
  CONSTRAINT `donation_details_donation_id_foreign` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.donation_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `donation_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation_details` ENABLE KEYS */;

-- Dumping structure for table nasaq.email_templates
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text COLLATE utf8mb4_unicode_ci,
  `email_body` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.email_templates: ~9 rows (approximately)
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
	(1, 'email_verification', 'التحقق من البريد الالكتروني', '<p style="text-align: right; line-height: 1.6;">اهلا وسهلا<b>&nbsp;{customer_username}</b>,</p><p style="text-align: right; line-height: 1.6;"><br></p><p style="line-height: 1.6;"><div style="text-align: right;">مرحبا&nbsp;<span style="font-size: medium;"><b>{website_title}</b>.</span></div><div style="text-align: right;">الرجاء الضغط على الرابط ادناه لتأكيد البريد الالكتروني</div></p><p style="text-align: right;">{verification_link}</p><p style="text-align: right;"><br></p><p style="text-align: right;">بالتوفيق</p><p style="text-align: right; ">{website_title}</p>'),
	(2, 'product_order', 'تم اتمام الطلب بنجاح', '<p style="text-align: right; line-height: 1.6;">عزيزنا {customer_name},</p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;">طلبك تم بنجاح ، مرفقة اليكم الفاتورة الخاصة بطلبكم رقم الطلب: #{order_number}</p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;">الرجاء الضغط على الرابط ادناه لميزيد من تفاصيل طلبكم.</p><p style="text-align: right; line-height: 1.6;">{order_link}</p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;"><br></p><p style="text-align: right; line-height: 1.6;">بالتوفيق,</p><p style="text-align: right; line-height: 1.6;">{website_title}</p>'),
	(3, 'package_subscription', 'تم اشتراكك بنجاح في الباقة', '<p style="line-height: 2;">عزيزنا {customer_name},</p><p style="line-height: 2;"><br></p><p style="line-height: 2;">لقد تم اشتراكك بنجاح في&nbsp; {package_name} الباقة.</p><p style="line-height: 2;"><br></p><p style="line-height: 2;">تاريخ الاشتراك: {activation_date}</p><p style="line-height: 2;"><br></p><p style="line-height: 2;">تاريخ الانتهاء: {expire_date}</p><p style="line-height: 2;"><br></p><p style="line-height: 2;">مرفقة لكم الفاتورة الخاصة باشتراككم.</p><p style="line-height: 2;"><br></p><p style="line-height: 2;">بالتوفيق,</p><p style="line-height: 2;"><br></p><p style="line-height: 2;">{website_title}</p>'),
	(4, 'package_order', 'تم طلب الباقة بنجاح', '<p style="text-align: right; line-height: 3;">عزيزنا {customer_name},</p><p style="text-align: right; line-height: 3;">تم طلبك بنجاح {package_name}.&nbsp;</p><p style="text-align: right; line-height: 3;">رقم الطلب: #{order_number}</p><p style="text-align: right; line-height: 3;">{order_link}</p><p style="text-align: right; line-height: 3;">مرفقة اليكم الفاتورة.</p><p style="text-align: right; line-height: 3;">بالتوفيق,</p><p style="text-align: right; line-height: 3;">{website_title}</p>'),
	(5, 'course_enroll', 'Enrolled Course Successfully', '<p style="line-height: 1.6;">Hello {customer_name},</p><p style="line-height: 1.6;"><br>You have enrolled successfully to <b>{course_name}</b> course.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
	(6, 'donation', 'Donated Successfully', '<p style="line-height: 1.6;">Hello,</p><p style="line-height: 1.6;"><br>You have donated successfully for <b>{cause_name}</b></p><p style="line-height: 1.6;">We have also attached an invoice with this mail.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),
	(7, 'event_ticket', 'تم حجز التذكرة بنجاح', '<p style="text-align: right; line-height: 1.6;">عزيزنا {customer_name},</p><p style="line-height: 1.6;"><div style="text-align: right;">تم اتمام طلبكم بنجاح ، مرفقة اليكم التذكرة&nbsp;<b>Event Name: {event_name}</b></div><div style="text-align: right;">رقم التذكرة: #{ticket_id}</div></p><p><div style="text-align: right;"><br></div><div style="text-align: right;">الرجاء الضغط على الرابط ادناه لمزيد من التفاصيل{order_link}</div></p><p style="text-align: right;"><br></p><p><div style="text-align: right;">بالتوفيق,</div><div style="text-align: right;">{website_title}</div></p>'),
	(8, 'subscription_expiry_reminder', 'اشتراكك على وشك الانتهاء', '<p><div style="text-align: right;">عزيزنا {customer_name},</div><div style="text-align: right;"><br></div><div style="text-align: right;">اشتراككم على وشك الانتهاء.</div><div style="text-align: right;">لديكم فقط&nbsp;<strong>{remaining_days} ايام باقية</strong>.</div><div style="text-align: right;">الرجاء تمديد الاشتراك / تجديد جديد.</div><strong><div style="text-align: right;"><strong>الاشتراك الحالي:</strong><span style="font-weight: 400;"> {current_package_name}</span></div></strong><strong><div style="text-align: right;"><strong>تاريخ الانتهاء: </strong><span style="font-weight: 400;">{expire_date}</span></div></strong><div style="text-align: right;"><br></div><div style="text-align: right;">بالتوفيق,</div></p><p style="text-align: right;">{website_title}</p>'),
	(9, 'subscription_expired', 'تم انتهاء الاشتراك الخاص بكم', '<p><div style="text-align: right;">&nbsp;عزيزنا {customer_name},</div><div style="text-align: right;"><br></div><div style="text-align: right;">تم انتهاء الاشتراك الخاص بكم ، لمواصلة الباقة يرجى تجديد الاشتراك {packages_link}<br></div></p><p><strong><div style="text-align: right;"><strong>انتهاء الاشتراك:</strong><span style="font-weight: 400;"> {expired_package}</span></div></strong><strong><div style="text-align: right;"><strong>تاريخ الانتهاء: </strong><span style="font-weight: 400;">{expire_date}</span></div></strong><div style="text-align: right;"><br></div><div style="text-align: right;">بالتوفيق,</div></p><p style="text-align: right;">{website_title}</p>');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;

-- Dumping structure for table nasaq.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `cost` double NOT NULL,
  `available_tickets` int(11) NOT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_website` text COLLATE utf8mb4_unicode_ci,
  `venue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue_location` longtext COLLATE utf8mb4_unicode_ci,
  `venue_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `video` longtext COLLATE utf8mb4_unicode_ci,
  `lang_id` bigint(20) unsigned NOT NULL,
  `cat_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_lang_id_foreign` (`lang_id`),
  KEY `events_cat_id_foreign` (`cat_id`),
  CONSTRAINT `events_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `event_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `events_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.events: ~0 rows (approximately)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping structure for table nasaq.event_categories
CREATE TABLE IF NOT EXISTS `event_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `lang_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_categories_lang_id_foreign` (`lang_id`),
  CONSTRAINT `event_categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.event_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `event_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_categories` ENABLE KEYS */;

-- Dumping structure for table nasaq.event_details
CREATE TABLE IF NOT EXISTS `event_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'anonymous',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'anonymous',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'xxxxxxxxxxxx',
  `amount` double NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` longtext COLLATE utf8mb4_unicode_ci,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_details` longtext COLLATE utf8mb4_unicode_ci,
  `bex_details` longtext COLLATE utf8mb4_unicode_ci,
  `event_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_details_event_id_foreign` (`event_id`),
  CONSTRAINT `event_details_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.event_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `event_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_details` ENABLE KEYS */;

-- Dumping structure for table nasaq.faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `category_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.faqs: ~0 rows (approximately)
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Dumping structure for table nasaq.faq_categories
CREATE TABLE IF NOT EXISTS `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `serial_number` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_categories_language_id_foreign` (`language_id`),
  CONSTRAINT `faq_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.faq_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;

-- Dumping structure for table nasaq.features
CREATE TABLE IF NOT EXISTS `features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.features: ~4 rows (approximately)
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` (`id`, `language_id`, `icon`, `image`, `title`, `color`, `serial_number`) VALUES
	(29, 173, 'fas fa-wallet', NULL, 'تسويق', '0A3041', 1),
	(30, 173, 'fas fa-chart-pie', NULL, 'تطوير', '0E3E53', 2),
	(31, 173, 'fas fa-chart-line', NULL, 'تصميم', '0A3041', 3),
	(32, 173, 'fas fa-suitcase', NULL, 'دراسة جدوى', '1E12FF', 4);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;

-- Dumping structure for table nasaq.feedbacks
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` mediumint(8) unsigned NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.feedbacks: ~0 rows (approximately)
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;

-- Dumping structure for table nasaq.galleries
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.galleries: ~0 rows (approximately)
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;

-- Dumping structure for table nasaq.gallery_categories
CREATE TABLE IF NOT EXISTS `gallery_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `serial_number` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_categories_language_id_foreign` (`language_id`),
  CONSTRAINT `gallery_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.gallery_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `gallery_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_categories` ENABLE KEYS */;

-- Dumping structure for table nasaq.guests
CREATE TABLE IF NOT EXISTS `guests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.guests: ~0 rows (approximately)
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;

-- Dumping structure for table nasaq.homes
CREATE TABLE IF NOT EXISTS `homes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `css` longtext COLLATE utf8mb4_unicode_ci,
  `components` longtext COLLATE utf8mb4_unicode_ci,
  `styles` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `homes_language_id_foreign` (`language_id`),
  CONSTRAINT `homes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.homes: ~1 rows (approximately)
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` (`id`, `language_id`, `theme`, `html`, `css`, `components`, `styles`) VALUES
	(103, 173, 'default', '<div class=\'pagebuilder-content\'><div><div class="pb-mb30"><div class="container"><div class="row"><div class="col-lg-6 pr-lg-0"><div class="intro-txt"><span class="section-title">Who we areu</span><h2 class="section-summary">We keep things simple, putting you in control so you can make informed choicesu </h2><a href="https://megasoft.biz/plusagency/services" target="_blank" class="intro-btn"><span>what we dou</span></a></div></div><div class="col-lg-6 pl-lg-0 px-md-3 px-0"><div class="intro-bg" id="ijcmp"><a id="play-video" href="https://www.youtube.com/watch?v=S7wCAquf9Us" class="video-play-button"><span></span></a></div></div></div></div></div></div><div><div class="pb-mb30" id="iopeb"><div class="container"><div class="service-categories"><div class="row justify-content-center text-center premade"><div class="col-lg-6"><span class="section-title">Our Services</span><h2 class="section-summary">We work with you to achieve your goals</h2></div></div><service-category-section>[pagebuilder-service-category][/pagebuilder-service-category]</service-category-section></div></div></div></div><div><div class="approach-section pb-mb30" id="iwyk5k"><div class="container"><div class="row"><div class="col-lg-6"><div class="approach-summary"><span class="section-title">How we do</span><h2 class="section-summary">A fresh approach to financial services for entrepreneurs</h2><a href="https://megasoft.biz/plusagency/about-us/22/page" target="_blank" class="boxed-btn"><span>Our Approach</span></a></div></div><div class="col-lg-6"><approach-section>[pagebuilder-approach][/pagebuilder-approach]</approach-section></div></div></div></div></div><div><div id="statisticsSection" class="statistics-section pb-mb30 lazy"><div class="statistics-container"><div class="container"><statistics-section>[pagebuilder-statistics][/pagebuilder-statistics]</statistics-section></div></div></div></div><div><div class="case-section pb-mb30" id="icescb"><div class="container"><div class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">Our latest projects</span><h2 class="section-summary">A fresh approach to financial services for entrepreneurs</h2></div></div></div><div class="row"><div class="col-md-12"><portfolios-section>[pagebuilder-portfolios][/pagebuilder-portfolios]</portfolios-section></div></div></div></div><div><div class="testimonial-section pb-mb30" id="ioa6ub"><div class="container"><div class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">Testimonial</span><h2 class="section-summary">What people say about finlance planning</h2></div></div><div class="row"><div class="col-md-12"><testimonial-section>[pagebuilder-testimonial][/pagebuilder-testimonial]</testimonial-section></div></div></div></div></div><div><div class="team-section section-padding pb-mb30 lazy" id="i13htk"><div class="team-content" id="i1ug0i"><div class="container"><div class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">Expert Team</span><h2 class="section-summary">Meet our expert finlance executive team</h2></div></div><team-section>[pagebuilder-team][/pagebuilder-team]</team-section></div></div></div></div><div><div class="pricing-tables pb-mb30" id="izpsax"><div class="container"><div class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">Packages</span><h2 class="section-summary">Choose a package which suits you best</h2></div></div><packages-section>[pagebuilder-packages][/pagebuilder-packages]</packages-section></div></div></div><div><div class="blog-section section-padding pb-mb30" id="i7nfys"><div class="container"><div class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">Latest news</span><h2 class="section-summary">Have a look at the finlance latest News</h2></div></div><blogs-section>[pagebuilder-blogs][/pagebuilder-blogs]</blogs-section></div></div></div><div><div class="cta-section pb-mb30 lazy" id="iq9rka"><div class="container"><div class="cta-content"><div class="row"><div class="col-md-9 col-lg-7"><h3>Contact us for help with your finances.</h3></div><div class="col-md-3 col-lg-5 contact-btn-wrapper"><a href="http://localhost/plusagency/plusagency_2.5/contact" class="boxed-btn contact-btn"><span>Contact Us</span></a></div></div></div></div></div></div><div><div class="partner-section pb-mb30"><div class="container top-border"><div class="row"><div class="col-md-12"><partner-section>[pagebuilder-partner][/pagebuilder-partner]</partner-section></div></div></div></div></div></div>', '* { box-sizing: border-box; } body {margin: 0;}#ijcmp{background-image:url({base_url}/assets/front/img/606457e1583d3.jpg);background-size:cover;}#ilfiaa{display:none;}#iopeb{padding:120px 0 80px 0;}#ib3eji{display:none;}#iwyk5k{padding:0 0 120px 0;}#statisticsSection{background-image:url({base_url}/assets/front/img/6066a56899910.jpg);background-size:cover;}#icescb{padding:120px 0 120px 0;}#ioa6ub{padding:0 0 120px 0;}#i13htk{background-image:url({base_url}/assets/front/img/6062dea7439b1.jpg);background-size:cover;}#i1ug0i{padding:120px 0 120px 0;}#ib9otr{text-align:center;}#i32g7g{text-align:center;}#ipoo5y{text-align:center;}#ip5bnf{text-align:center;}#i6jdzt{text-align:center;}#iw63of{text-align:center;}#i71eqi{text-align:center;}#ify9qd{text-align:center;}#i8qu3l{text-align:center;}#i2qteg{text-align:center;}#ivnwdt{text-align:center;}#ivneao{text-align:center;}#i7slr3{text-align:center;}#iz28pd{text-align:center;}#is6hto{text-align:center;}#ifk3og{text-align:center;}#is1iyj{text-align:center;}#iylndw{text-align:center;}#iu9t6m{text-align:center;}#ia75up{text-align:center;}#iipy13{text-align:center;}#iz3jge{text-align:center;}#iuchsm{text-align:center;}#ihz3mi{text-align:center;}#ivp0b6{text-align:center;}#iabh61{text-align:center;}#im1jx5{text-align:center;}#iazozj{text-align:center;}#ikrzxq{text-align:center;}#iznlom{text-align:center;}#ibgtz3{text-align:center;}#irxv77{text-align:center;}#i8nx58{text-align:center;}#itgc6g{text-align:center;}#i205c9{text-align:center;}#i0d59f{text-align:center;}#iwn5oi{text-align:center;}#iycrfn{text-align:center;}#i4p817{text-align:center;}#irl0sc{text-align:center;}#igs5zx{text-align:center;}#ikt34p{text-align:center;}#i9kzxf{text-align:center;}#izj3jk{text-align:center;}#iia1yk{text-align:center;}#izpsax{padding:120px 0 120px 0;}#i7nfys{padding:0 0 120px 0;}#iq9rka{background-image:url({base_url}/assets/front/img/6066a597791b6.jpg);background-size:cover;}', '[{"components":[{"classes":["pb-mb30"],"components":[{"classes":["container"],"components":[{"classes":["row"],"components":[{"classes":["col-lg-6","pr-lg-0"],"components":[{"classes":["intro-txt"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Who we areu"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"We keep things simple, putting you in control so you can make informed choicesu "}]},{"type":"link","editable":0,"classes":["intro-btn"],"attributes":{"href":"https://megasoft.biz/plusagency/services","target":"_blank"},"components":[{"tagName":"span","type":"text","components":[{"type":"textnode","content":"what we dou"}]}]}]}]},{"classes":["col-lg-6","pl-lg-0","px-md-3","px-0"],"components":[{"classes":["intro-bg"],"attributes":{"id":"ijcmp"},"components":[{"type":"link","editable":0,"classes":["video-play-button"],"attributes":{"id":"play-video","href":"https://www.youtube.com/watch?v=S7wCAquf9Us"},"components":[{"tagName":"span"}]}]}]}]}]}]}]},{"components":[{"classes":["pb-mb30"],"attributes":{"id":"iopeb"},"components":[{"classes":["container"],"components":[{"classes":["service-categories"],"components":[{"classes":["row","justify-content-center","text-center","premade"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Our Services"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"We work with you to achieve your goals"}]}]}]},{"tagName":"service-category-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                    Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Services > Category","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["row","premade"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145610.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Web Design","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=54"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145594.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Web Development","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=55"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145626.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Graphic Design","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=56"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145660.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Mobile Apps","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=57"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145679.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Plugin Development","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=58"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145693.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Marketting SEO","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=59"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145709.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Image Editing","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=60"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145761.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"IT Consultancy","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.L","propagate":["removable","editable","draggable","stylable"]},{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"ilfiaa"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"orem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["see-more"],"attributes":{"href":"#"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"see more...","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=61"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["approach-section","pb-mb30"],"attributes":{"id":"iwyk5k"},"components":[{"classes":["container"],"components":[{"classes":["row"],"components":[{"classes":["col-lg-6"],"components":[{"classes":["approach-summary"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"How we do"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"A fresh approach to financial services for entrepreneurs"}]},{"type":"link","editable":0,"classes":["boxed-btn"],"attributes":{"href":"https://megasoft.biz/plusagency/about-us/22/page","target":"_blank"},"components":[{"tagName":"span","type":"text","components":[{"type":"textnode","content":"Our Approach"}]}]}]}]},{"classes":["col-lg-6"],"components":[{"tagName":"approach-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                        Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Section > Approach Section","propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"ul","removable":false,"draggable":false,"stylable":false,"classes":["approach-lists"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-approach"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["approach-icon-wrapper"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"i","removable":false,"draggable":false,"classes":["fas","fa-bullseye"],"propagate":["removable","editable","draggable"]}]},{"removable":false,"draggable":false,"classes":["approach-text"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"editable":false,"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Goals","propagate":["removable","editable","draggable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"editable":false,"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Great financial advice starts with an understanding of your personal, financial and lifestyle goals At Spring we help you.Great financial advice start","propagate":["removable","editable","draggable"]},{"tagName":"span","type":"text","removable":false,"draggable":false,"editable":false,"attributes":{"id":"ib3eji"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"s with an understanding of your personal, financial and lifestyle goals At Spring we help you.Great financial advice starts with an understanding of your personal, financial and lifestyle goals At Spring we help you.","propagate":["removable","editable","draggable"]}]},{"type":"link","removable":false,"draggable":false,"editable":false,"classes":["see-more"],"attributes":{"href":"#"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"see more...","propagate":["removable","editable","draggable"]}]}]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-approach"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["approach-icon-wrapper"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"i","removable":false,"draggable":false,"classes":["fas","fa-clipboard-list"],"propagate":["removable","editable","draggable"]}]},{"removable":false,"draggable":false,"classes":["approach-text"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"editable":false,"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Plans","propagate":["removable","editable","draggable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"editable":false,"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Goals without a plan are just a dream– so at Spring our team of industry experts will work with you to develop strategic plans.","propagate":["removable","editable","draggable"]}]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-approach"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["approach-icon-wrapper"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"i","removable":false,"draggable":false,"classes":["fas","fa-sync"],"propagate":["removable","editable","draggable"]}]},{"removable":false,"draggable":false,"classes":["approach-text"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"editable":false,"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Actions","propagate":["removable","editable","draggable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"editable":false,"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Plans require action or they are just words – at Spring we work with you to implement your strategic plans.","propagate":["removable","editable","draggable"]}]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["statistics-section","pb-mb30","lazy"],"attributes":{"id":"statisticsSection"},"components":[{"removable":false,"draggable":false,"classes":["statistics-container"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["container"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"statistics-section","removable":false,"draggable":false,"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                    Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Sections > Statistics Sections","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["row","no-gutters"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","col-md-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["round"],"attributes":{"data-value":"1","data-number":"1000","data-size":"200","data-thickness":"6","data-fill":"{\\"color\\": \\"#25D06F\\"}"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"strong","removable":false,"draggable":false,"stylable":false,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"classes":["fas","fa-laptop-code"],"propagate":["removable","editable","draggable","stylable"]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" COMPLETED PROJECTS","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","col-md-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["round"],"attributes":{"data-value":"1","data-number":"1200","data-size":"200","data-thickness":"6","data-fill":"{\\"color\\": \\"#25D06F\\"}"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"strong","removable":false,"draggable":false,"stylable":false,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"classes":["far","fa-smile-beam"],"propagate":["removable","editable","draggable","stylable"]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" HAPPY CLIENTS","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","col-md-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["round"],"attributes":{"data-value":"1","data-number":"120","data-size":"200","data-thickness":"6","data-fill":"{\\"color\\": \\"#25D06F\\"}"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"strong","removable":false,"draggable":false,"stylable":false,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"classes":["far","fa-flag"],"propagate":["removable","editable","draggable","stylable"]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" COUNTRIES","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","col-md-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["round"],"attributes":{"data-value":"1","data-number":"450","data-size":"200","data-thickness":"6","data-fill":"{\\"color\\": \\"#25D06F\\"}"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"strong","removable":false,"draggable":false,"stylable":false,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"classes":["far","fa-thumbs-up"],"propagate":["removable","editable","draggable","stylable"]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" POSITIVE REVIEWS","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["case-section","pb-mb30"],"attributes":{"id":"icescb"},"components":[{"classes":["container"],"components":[{"classes":["row","justify-content-center","text-center"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Our latest projects"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"A fresh approach to financial services for entrepreneurs"}]}]}]}]},{"removable":false,"draggable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-md-12"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"portfolios-section","removable":false,"draggable":false,"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Portfolios","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["row","case-carousel"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","mx-0","single-case","single-case-bg-1","lazy"],"attributes":{"data-bg":"{base_url}/assets/front/img/portfolios/featured/1593840092.jpg"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Car Service & Car Repair HTML","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"PSD to HTML","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/portfolio/Car-Service-&-Car-Repair-HTML"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":";\\n\\n                                            ","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","mx-0","single-case","single-case-bg-1","lazy"],"attributes":{"data-bg":"{base_url}/assets/front/img/portfolios/featured/1593840107.jpg"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Transport & Logistic HTML","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"HTML & CSS","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/portfolio/Transport-&-Logistic-HTML"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":";\\n\\n                                            ","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","mx-0","single-case","single-case-bg-1","lazy"],"attributes":{"data-bg":"{base_url}/assets/front/img/portfolios/featured/1593840122.jpg"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Sports Landing Page","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"User interface","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/portfolio/sports-landing-page"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":";\\n\\n                                            ","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-lg-3","mx-0","single-case","single-case-bg-1","lazy"],"attributes":{"data-bg":"{base_url}/assets/front/img/portfolios/featured/1593840132.jpg"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"App Landing Page","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Laravel Framework","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/portfolio/app-landing-page"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":";\\n\\n                                            ","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["testimonial-section","pb-mb30"],"attributes":{"id":"ioa6ub"},"components":[{"classes":["container"],"components":[{"classes":["row","justify-content-center","text-center"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Testimonial"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"What people say about finlance planning"}]}]}]},{"removable":false,"draggable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-md-12"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"testimonial-section","removable":false,"draggable":false,"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                        Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Sections > Testimonials","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["testimonial-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-testimonial","col-6","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/testimonials/1576864505.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["client-desc"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["comment"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"They provide innovative solutions with the best. tempor incididunt utla bore et dolor tempor incididunt .","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h6","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Jonathon doe","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["rank"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Director, art media","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-testimonial","col-6","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/testimonials/1576864532.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["client-desc"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["comment"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"They provide innovative solutions with the best. tempor incididunt utla bore et dolor tempor incididunt .","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h6","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Jonathon doe","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["rank"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Director, art media","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["team-section","section-padding","pb-mb30","lazy"],"attributes":{"id":"i13htk"},"components":[{"classes":["team-content"],"attributes":{"id":"i1ug0i"},"components":[{"classes":["container"],"components":[{"classes":["row","justify-content-center","text-center"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Expert Team"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"Meet our expert finlance executive team"}]}]}]},{"tagName":"team-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Section > Team Section","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["team-carousel","common-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-team-member","col-lg-3","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["team-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/members/1593854834.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]},{"removable":false,"draggable":false,"stylable":false,"classes":["social-accounts"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"ul","removable":false,"draggable":false,"stylable":false,"classes":["social-account-lists"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.facebook.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-facebook-f"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://twitter.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-twitter"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://bd.linkedin.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-linkedin-in"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.instagram.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-instagram"],"propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["member-info"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["member-name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Admond harb","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Advisor","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-team-member","col-lg-3","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["team-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/members/1576864843.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]},{"removable":false,"draggable":false,"stylable":false,"classes":["social-accounts"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"ul","removable":false,"draggable":false,"stylable":false,"classes":["social-account-lists"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.facebook.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-facebook-f"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://twitter.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-twitter"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://bd.linkedin.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-linkedin-in"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.instagram.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-instagram"],"propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["member-info"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["member-name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Helen fox","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Managing Director","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-team-member","col-lg-3","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["team-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/members/1576864886.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]},{"removable":false,"draggable":false,"stylable":false,"classes":["social-accounts"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"ul","removable":false,"draggable":false,"stylable":false,"classes":["social-account-lists"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.facebook.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-facebook-f"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://twitter.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-twitter"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://bd.linkedin.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-linkedin-in"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.instagram.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-instagram"],"propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["member-info"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["member-name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Alen Donald","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Managing Director","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-team-member","col-lg-3","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["team-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/members/1576864923.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]},{"removable":false,"draggable":false,"stylable":false,"classes":["social-accounts"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"ul","removable":false,"draggable":false,"stylable":false,"classes":["social-account-lists"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.facebook.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-facebook-f"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://twitter.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-twitter"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://bd.linkedin.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-linkedin-in"],"propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"li","removable":false,"draggable":false,"stylable":false,"classes":["single-social-account"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"attributes":{"href":"https://www.instagram.com/"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"i","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["fab","fa-instagram"],"propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["member-info"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h5","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["member-name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Hrver Pual","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Sales And Marketting","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["pricing-tables","pb-mb30"],"attributes":{"id":"izpsax"},"components":[{"classes":["container"],"components":[{"classes":["row","justify-content-center","text-center"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Packages"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"Choose a package which suits you best"}]}]}]},{"tagName":"packages-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                            Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Package Management > Packages","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["pricing-carousel","common-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-pricing-table","col-lg-4","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["title"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Basic Package","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Yearly","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["price"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h1","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"$100.00","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["features"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ib9otr"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"7 HTML Pages","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i32g7g"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ipoo5y"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"1 Home Page","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ip5bnf"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i6jdzt"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"CMS Version Not Available","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"iw63of"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i71eqi"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Logo Design Included","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ify9qd"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i8qu3l"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"1 Revision Available","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i2qteg"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ivnwdt"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"No Support Available","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ivneao"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i7slr3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Source Code Included","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"iz28pd"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","removable":false,"draggable":false,"stylable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"is6hto"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"font","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"size":"3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Only One Domain Allowed","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["pricing-btn"],"attributes":{"href":"{base_url}/package/1"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Place Order","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-pricing-table","col-lg-4","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["title"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Golden Package","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Monthly","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["price"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h1","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"$180.00","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["features"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"ifk3og"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"15 HTML Pages","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"is1iyj"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iylndw"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"3 Home Pages","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"iu9t6m"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"ia75up"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"CMS Version Not Available","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"iipy13"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iz3jge"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Logo Design Included","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"iuchsm"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"ihz3mi"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"2 Revision Available","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ivp0b6"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iabh61"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"No Support Available","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"im1jx5"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iazozj"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Source Code Included","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ikrzxq"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iznlom"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Only One Domain Allowed","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["pricing-btn"],"attributes":{"href":"{base_url}/package/7"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Place Order","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-pricing-table","col-lg-4","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["title"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Plutinum Package","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Yearly","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["price"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h1","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"$350.00","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["features"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"ibgtz3"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"25 HTML Pages","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"irxv77"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"i8nx58"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"5 Home Pages","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"itgc6g"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"i205c9"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"CMS Version Available","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"i0d59f"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iwn5oi"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Logo Design Included","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"iycrfn"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"i4p817"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"2 Revision Available","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"irl0sc"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"igs5zx"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"No Support Available","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"ikt34p"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"i9kzxf"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Source Code Included","propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"attributes":{"id":"izj3jk"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]}]},{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"iia1yk"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Only One Domain Allowed","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["pricing-btn"],"attributes":{"href":"{base_url}/package/43"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Place Order","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]},{"components":[{"classes":["blog-section","section-padding","pb-mb30"],"attributes":{"id":"i7nfys"},"components":[{"classes":["container"],"components":[{"classes":["row","justify-content-center","text-center"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Latest news"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"Have a look at the finlance latest News"}]}]}]},{"tagName":"blogs-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Blogs > Blogs","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["blog-carousel","common-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-blog","col-lg-4","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["blog-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/blogs/1576945635.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["blog-txt"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["date"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"By ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["username"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Admin","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" | ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"22nd December, 2019","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" ","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h4","removable":false,"draggable":false,"stylable":false,"classes":["blog-title"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"href":"{base_url}/blog/Lorem-ipsum-dolor-sit-amet,-elit."},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet, elit.","propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["blog-summary"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"To satisfy customer-specific wishes, we supplements its own ultra-modern fleet and network with an e...","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/blog/Lorem-ipsum-dolor-sit-amet,-elit."},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-blog","col-lg-4","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["blog-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/blogs/1576945678.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["blog-txt"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["date"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"By ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["username"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Admin","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" | ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"22nd December, 2019","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" ","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h4","removable":false,"draggable":false,"stylable":false,"classes":["blog-title"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"href":"{base_url}/blog/Invest-%245000-for-secure-your-policy"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Invest $5000 for secure your policy","propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["blog-summary"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"To satisfy customer-specific wishes, we supplements its own ultra-modern fleet and network with an e...","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/blog/Invest-%245000-for-secure-your-policy"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-blog","col-lg-4","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["blog-img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/blogs/1576945722.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["blog-txt"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["date"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"By ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["username"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Admin","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" | ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"small","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"22nd December, 2019","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":" ","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h4","removable":false,"draggable":false,"stylable":false,"classes":["blog-title"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"href":"{base_url}/blog/flexible-shipping-are-increasing-day-by-day-gradually"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Flexible shipping are increasing day by ...","propagate":["removable","editable","draggable","stylable"]}]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["blog-summary"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"To satisfy customer-specific wishes, we supplements its own ultra-modern fleet and network with an e...","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["readmore-btn"],"attributes":{"href":"{base_url}/blog/flexible-shipping-are-increasing-day-by-day-gradually"},"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":0,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":0,"content":"Read More","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["cta-section","pb-mb30","lazy"],"attributes":{"id":"iq9rka"},"components":[{"classes":["container"],"components":[{"classes":["cta-content"],"components":[{"classes":["row"],"components":[{"classes":["col-md-9","col-lg-7"],"components":[{"tagName":"h3","type":"text","components":[{"type":"textnode","content":"Contact us for help with your finances."}]}]},{"classes":["col-md-3","col-lg-5","contact-btn-wrapper"],"components":[{"type":"link","editable":0,"classes":["boxed-btn","contact-btn"],"attributes":{"href":"http://localhost/plusagency/plusagency_2.5/contact"},"components":[{"tagName":"span","type":"text","components":[{"type":"textnode","content":"Contact Us"}]}]}]}]}]}]}]}]},{"components":[{"classes":["partner-section","pb-mb30"],"components":[{"classes":["container","top-border"],"components":[{"removable":false,"draggable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-md-12"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"partner-section","removable":false,"draggable":false,"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                        Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Section > Partners","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["partner-carousel","common-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://themeforest.net/","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815450.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://audiojungle.net/","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815440.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://codecanyon.net","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815430.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://graphicriver.net/","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815416.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]}]}]', '[{"selectors":["#ijcmp"],"style":{"background-image":"url({base_url}/assets/front/img/606457e1583d3.jpg)","background-size":"cover"}},{"selectors":["#ilfiaa"],"style":{"display":"none"}},{"selectors":["#iopeb"],"style":{"padding":"120px 0 80px 0"}},{"selectors":["#ib3eji"],"style":{"display":"none"}},{"selectors":["#iwyk5k"],"style":{"padding":"0 0 120px 0"}},{"selectors":["#statisticsSection"],"style":{"background-image":"url({base_url}/assets/front/img/6066a56899910.jpg)","background-size":"cover"}},{"selectors":["#icescb"],"style":{"padding":"120px 0 120px 0"}},{"selectors":["#ioa6ub"],"style":{"padding":"0 0 120px 0"}},{"selectors":["#i13htk"],"style":{"background-image":"url({base_url}/assets/front/img/6062dea7439b1.jpg)","background-size":"cover"}},{"selectors":["#i1ug0i"],"style":{"padding":"120px 0 120px 0"}},{"selectors":["#ib9otr"],"style":{"text-align":"center"}},{"selectors":["#i32g7g"],"style":{"text-align":"center"}},{"selectors":["#ipoo5y"],"style":{"text-align":"center"}},{"selectors":["#ip5bnf"],"style":{"text-align":"center"}},{"selectors":["#i6jdzt"],"style":{"text-align":"center"}},{"selectors":["#iw63of"],"style":{"text-align":"center"}},{"selectors":["#i71eqi"],"style":{"text-align":"center"}},{"selectors":["#ify9qd"],"style":{"text-align":"center"}},{"selectors":["#i8qu3l"],"style":{"text-align":"center"}},{"selectors":["#i2qteg"],"style":{"text-align":"center"}},{"selectors":["#ivnwdt"],"style":{"text-align":"center"}},{"selectors":["#ivneao"],"style":{"text-align":"center"}},{"selectors":["#i7slr3"],"style":{"text-align":"center"}},{"selectors":["#iz28pd"],"style":{"text-align":"center"}},{"selectors":["#is6hto"],"style":{"text-align":"center"}},{"selectors":["#ifk3og"],"style":{"text-align":"center"}},{"selectors":["#is1iyj"],"style":{"text-align":"center"}},{"selectors":["#iylndw"],"style":{"text-align":"center"}},{"selectors":["#iu9t6m"],"style":{"text-align":"center"}},{"selectors":["#ia75up"],"style":{"text-align":"center"}},{"selectors":["#iipy13"],"style":{"text-align":"center"}},{"selectors":["#iz3jge"],"style":{"text-align":"center"}},{"selectors":["#iuchsm"],"style":{"text-align":"center"}},{"selectors":["#ihz3mi"],"style":{"text-align":"center"}},{"selectors":["#ivp0b6"],"style":{"text-align":"center"}},{"selectors":["#iabh61"],"style":{"text-align":"center"}},{"selectors":["#im1jx5"],"style":{"text-align":"center"}},{"selectors":["#iazozj"],"style":{"text-align":"center"}},{"selectors":["#ikrzxq"],"style":{"text-align":"center"}},{"selectors":["#iznlom"],"style":{"text-align":"center"}},{"selectors":["#ibgtz3"],"style":{"text-align":"center"}},{"selectors":["#irxv77"],"style":{"text-align":"center"}},{"selectors":["#i8nx58"],"style":{"text-align":"center"}},{"selectors":["#itgc6g"],"style":{"text-align":"center"}},{"selectors":["#i205c9"],"style":{"text-align":"center"}},{"selectors":["#i0d59f"],"style":{"text-align":"center"}},{"selectors":["#iwn5oi"],"style":{"text-align":"center"}},{"selectors":["#iycrfn"],"style":{"text-align":"center"}},{"selectors":["#i4p817"],"style":{"text-align":"center"}},{"selectors":["#irl0sc"],"style":{"text-align":"center"}},{"selectors":["#igs5zx"],"style":{"text-align":"center"}},{"selectors":["#ikt34p"],"style":{"text-align":"center"}},{"selectors":["#i9kzxf"],"style":{"text-align":"center"}},{"selectors":["#izj3jk"],"style":{"text-align":"center"}},{"selectors":["#iia1yk"],"style":{"text-align":"center"}},{"selectors":["#izpsax"],"style":{"padding":"120px 0 120px 0"}},{"selectors":["#i7nfys"],"style":{"padding":"0 0 120px 0"}},{"selectors":["#iq9rka"],"style":{"background-image":"url({base_url}/assets/front/img/6066a597791b6.jpg)","background-size":"cover"}}]');
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;

-- Dumping structure for table nasaq.jcategories
CREATE TABLE IF NOT EXISTS `jcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.jcategories: ~0 rows (approximately)
/*!40000 ALTER TABLE `jcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `jcategories` ENABLE KEYS */;

-- Dumping structure for table nasaq.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jcategory_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibilities` blob,
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` blob,
  `experience_requirements` blob,
  `additional_requirements` blob,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` blob,
  `benefits` blob,
  `read_before_apply` blob,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.jobs: ~1 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
	(27, 35, 173, 'مهندس برمجيات الواجهة الأمامية', 'مهندس-برمجيات-الواجهة-الأمامية', 5, '01/31/2020', '2 إلى 5 سنوات', _binary 0x3C62723E, 'دوام كامل', _binary 0x3C6469763E3C62723E3C2F6469763E, _binary 0x3C6469763E3C62723E3C2F6469763E, _binary 0x3C6469763E3C62723E3C2F6469763E, 'اليمن ، مأرب', _binary 0x3C62723E, _binary 0x3C6469763E3C62723E3C2F6469763E, _binary 0x3C62723E, 'drop_your_cv@nassaq.com', 3, NULL, NULL, '2020-01-01 13:32:47', '2022-01-21 00:53:33');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table nasaq.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '1',
  `rtl` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.languages: ~1 rows (approximately)
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
	(173, 'عربى', 'ar', 1, 1, '2019-12-26 23:25:48', '2022-01-24 22:58:37');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

-- Dumping structure for table nasaq.lessons
CREATE TABLE IF NOT EXISTS `lessons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.lessons: ~0 rows (approximately)
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;

-- Dumping structure for table nasaq.megamenus
CREATE TABLE IF NOT EXISTS `megamenus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - category is active, 0 - category is deactive',
  PRIMARY KEY (`id`),
  KEY `megamenus_language_id_foreign` (`language_id`),
  CONSTRAINT `megamenus_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.megamenus: ~3 rows (approximately)
/*!40000 ALTER TABLE `megamenus` DISABLE KEYS */;
INSERT INTO `megamenus` (`id`, `language_id`, `menus`, `type`, `category`) VALUES
	(22, 173, '{"73":[220],"74":[219],"76":[218]}', 'services', 1),
	(28, 173, '{"73":[2],"76":[1]}', 'portfolios', 1),
	(29, 173, '{"21":[53],"22":[54]}', 'products', 1);
/*!40000 ALTER TABLE `megamenus` ENABLE KEYS */;

-- Dumping structure for table nasaq.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - will not show in home, 1 - will show in home',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.members: ~0 rows (approximately)
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- Dumping structure for table nasaq.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.menus: ~4 rows (approximately)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
	(184, 169, '[{"text":"Home","href":"","icon":"empty","target":"_self","title":"","type":"home"},{"text":"About Us","href":"#","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Packages","href":"","icon":"empty","target":"_self","title":"","type":"packages"},{"text":"Team Members","href":"","icon":"empty","target":"_self","title":"","type":"team"},{"text":"Career","href":"","icon":"empty","target":"_self","title":"","type":"career"},{"text":"Event Calendar","href":"","icon":"empty","target":"_self","title":"","type":"calendar"},{"text":"Gallery","href":"","icon":"empty","target":"_self","title":"","type":"gallery"},{"text":"FAQ","href":"","icon":"empty","target":"_self","title":"","type":"faq"},{"type":"feedback","text":"Feedback","href":"","target":"_self"},{"type":"blogs","text":"Blogs","href":"","target":"_self"},{"type":"rss","text":"RSS News","href":"","target":"_self"},{"text":"Custom Pages","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"About Us","href":"","icon":"empty","target":"_self","title":"","type":"46"},{"text":"Terms & Conditions","href":"","icon":"empty","target":"_self","title":"","type":"47"}]}]},{"text":"Services","href":"","icon":"empty","target":"_self","title":"","type":"services-megamenu"},{"text":"Products","href":"","icon":"empty","target":"_self","title":"","type":"products-megamenu"},{"text":"Portfolios","href":"","icon":"empty","target":"_self","title":"","type":"portfolios-megamenu"},{"text":"Features","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Shop","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Products","href":"","icon":"empty","target":"_self","title":"","type":"products"},{"text":"Cart","href":"","icon":"empty","target":"_self","title":"","type":"cart"},{"text":"Checkout","href":"","icon":"empty","target":"_self","title":"","type":"checkout"}]},{"text":"Unlimited Menu Levels","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Level 3-1","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Level 4-1","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Level 5-1","href":"","icon":"empty","target":"_self","title":"","type":"custom"},{"text":"Level 5-2","href":"","icon":"empty","target":"_self","title":"","type":"custom"},{"text":"Level 5-3","href":"","icon":"empty","target":"_self","title":"","type":"custom"}]},{"text":"Level 4-2","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Level 5-4","href":"","icon":"empty","target":"_self","title":"","type":"custom"},{"text":"Level 5-5","href":"","icon":"empty","target":"_self","title":"","type":"custom"}]}]},{"text":"Level 3-2","href":"","icon":"empty","target":"_self","title":"","type":"custom"},{"text":"Level 3-3","href":"","icon":"empty","target":"_self","title":"","type":"custom"}]},{"text":"Courses","href":"","icon":"empty","target":"_self","title":"","type":"courses"},{"text":"Causes","href":"","icon":"empty","target":"_self","title":"","type":"causes"},{"text":"Events","href":"","icon":"empty","target":"_self","title":"","type":"events"},{"text":"Knowledgebase","href":"","icon":"empty","target":"_self","title":"","type":"knowledgebase"}]},{"text":"Contact","href":"","icon":"empty","target":"_self","title":"","type":"contact"}]', '2021-04-25 04:13:01', '2021-04-25 04:13:01'),
	(194, 170, '[{"text":"Casa","href":"","icon":"empty","target":"_self","title":"","type":"home"},{"text":"Sobre n\\u00f3s","href":"#","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Pacotes","href":"","icon":"empty","target":"_self","title":"","type":"packages"},{"text":"Membros do time","href":"","icon":"empty","target":"_self","title":"","type":"team"},{"text":"Carreira","href":"","icon":"empty","target":"_self","title":"","type":"career"},{"text":"Calend\\u00e1rio de eventos","href":"","icon":"empty","target":"_self","title":"","type":"calendar"},{"text":"Galeria","href":"","icon":"empty","target":"_self","title":"","type":"gallery"},{"text":"Perguntas frequentes","href":"","icon":"empty","target":"_self","title":"","type":"faq"},{"text":"Feedback","href":"","icon":"empty","target":"_self","title":"","type":"feedback"},{"text":"Blogs","href":"","icon":"empty","target":"_self","title":"","type":"blogs"},{"text":"Not\\u00edcias RSS","href":"","icon":"empty","target":"_self","title":"","type":"rss"},{"text":"P\\u00e1ginas Personalizadas","href":"#","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"Sobre n\\u00f3s","href":"","icon":"empty","target":"_self","title":"","type":"50"},{"text":"termos e Condi\\u00e7\\u00f5es","href":"","icon":"empty","target":"_self","title":"","type":"51"}]}]},{"text":"Servi\\u00e7os","href":"","icon":"empty","target":"_self","title":"","type":"services-megamenu"},{"text":"Produtos","href":"","icon":"empty","target":"_self","title":"","type":"products-megamenu"},{"text":"Portf\\u00f3lios","href":"","icon":"empty","target":"_self","title":"","type":"portfolios-megamenu"},{"type":"custom","text":"Features","href":"#","target":"_self","children":[{"type":"custom","text":"Comprar","href":"","target":"_self","children":[{"type":"products","text":"Produtos","href":"","target":"_self"},{"type":"checkout","text":"Verifica\\u00e7\\u00e3o de sa\\u00edda","href":"","target":"_self"},{"type":"cart","text":"Carrinho","href":"","target":"_self"}]},{"type":"custom","text":"N\\u00edvel aninhado ilimitado","href":"","target":"_self","children":[{"type":"custom","text":"N\\u00edvel 3-1","href":"#","target":"_self","children":[{"type":"custom","text":"N\\u00edvel 4-1","href":"#","target":"_self","children":[{"type":"custom","text":"N\\u00edvel 5-1","href":"#","target":"_self"},{"type":"custom","text":"N\\u00edvel 5-2","href":"","target":"_self"},{"type":"custom","text":"N\\u00edvel 5-3","href":"","target":"_self"}]},{"type":"custom","text":"N\\u00edvel 4-2","href":"","target":"_self"}]},{"type":"custom","text":"N\\u00edvel 3-2","href":"","target":"_self"},{"type":"custom","text":"Level 3-3","href":"","target":"_self"}]},{"type":"courses","text":"Cursos","href":"","target":"_self"},{"type":"causes","text":"Causas","href":"","target":"_self"},{"type":"events","text":"Eventos","href":"","target":"_self"},{"type":"knowledgebase","text":"Base de Conhecimento","href":"","target":"_self"}]},{"type":"contact","text":"Contato","href":"","target":"_self"}]', '2021-04-25 05:19:36', '2021-04-25 05:19:36'),
	(197, 171, '[{"text":"Ev","href":"","icon":"empty","target":"_self","title":"","type":"home"},{"type":"custom","text":"Hakk\\u0131m\\u0131zda","href":"#","target":"_self","children":[{"type":"packages","text":"Paketler","href":"","target":"_self"},{"type":"team","text":"Tak\\u0131m \\u00fcyeleri","href":"","target":"_self"},{"type":"career","text":"Kariyer","href":"","target":"_self"},{"type":"calendar","text":"Etkinlik Takvimi","href":"","target":"_self"},{"type":"gallery","text":"galeri","href":"","target":"_self"},{"type":"faq","text":"FAQ","href":"","target":"_self"},{"type":"feedback","text":"Feedback","href":"","target":"_self"},{"type":"blogs","text":"Bloglar","href":"","target":"_self"},{"type":"rss","text":"RSS Haberleri","href":"","target":"_self"},{"type":"custom","text":"Sayfalar","href":"","target":"_self","children":[{"type":"52","text":"Hakk\\u0131m\\u0131zda","href":"","target":"_self"},{"type":"53","text":"\\u015fartlar ve ko\\u015fullar","href":"","target":"_self"}]}]},{"type":"services-megamenu","text":"Hizmetler","href":"","target":"_self"},{"type":"products-megamenu","text":"\\u00dcr\\u00fcn:% s","href":"","target":"_self"},{"type":"portfolios-megamenu","text":"Portfolyolar","href":"","target":"_self"},{"type":"custom","text":"\\u00d6zellikleri","href":"","target":"_self","children":[{"type":"custom","text":"D\\u00fckkan","href":"","target":"_self","children":[{"type":"products","text":"\\u00dcr\\u00fcn:% s","href":"","target":"_self"},{"type":"cart","text":"Araba","href":"","target":"_self"},{"type":"checkout","text":"\\u00c7\\u0131k\\u0131\\u015f yapmak","href":"","target":"_self"}]},{"type":"courses","text":"Dersler","href":"","target":"_self"},{"type":"causes","text":"Nedenleri","href":"","target":"_self"},{"type":"events","text":"Etkinlikler","href":"","target":"_self"},{"type":"knowledgebase","text":"Bilgi taban\\u0131","href":"","target":"_self"}]},{"type":"contact","text":"\\u0130leti\\u015fim","href":"","target":"_self"}]', '2021-04-25 05:40:37', '2021-04-25 05:40:37'),
	(202, 173, '[{"text":"الرئيسية","href":"","icon":"empty","target":"_self","title":"","type":"home"},{"text":"من نحن","href":"#","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"الاسعر","href":"","icon":"empty","target":"_self","title":"","type":"packages"},{"text":"وظائف","href":"","icon":"empty","target":"_self","title":"","type":"career"},{"text":"حجز موعد","href":"","icon":"empty","target":"_self","title":"","type":"calendar"},{"text":"Gallery","href":"","icon":"empty","target":"_self","title":"","type":"gallery"},{"text":"الاسئلة الشائعة","href":"","icon":"empty","target":"_self","title":"","type":"faq"},{"type":"اراء العملاء","text":"Feedback","href":"","target":"_self"},{"type":"المدونة","text":"Blogs","href":"","target":"_self"},{"type":"rss","text":"RSS News","href":"","target":"_self"},{"text":"صفحات اظافية","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"من نحن","href":"","icon":"empty","target":"_self","title":"","type":"46"},{"text":"الشروط والاحكام","href":"","icon":"empty","target":"_self","title":"","type":"47"}]}]},{"text":"الخدمات","href":"","icon":"empty","target":"_self","title":"","type":"services-megamenu"},{"text":"المنتجات","href":"","icon":"empty","target":"_self","title":"","type":"products-megamenu"},{"text":"اعمالنا","href":"","icon":"empty","target":"_self","title":"","type":"portfolios-megamenu"},{"text":"الميزات","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"المتجر","href":"","icon":"empty","target":"_self","title":"","type":"custom","children":[{"text":"المنتجات","href":"","icon":"empty","target":"_self","title":"","type":"products"},{"text":"السلة","href":"","icon":"empty","target":"_self","title":"","type":"cart"},{"text":"الدفع","href":"","icon":"empty","target":"_self","title":"","type":"checkout"}]},{"text":"Causes","href":"","icon":"empty","target":"_self","title":"","type":"causes"},{"text":"قاعدة المعرفة","href":"","icon":"empty","target":"_self","title":"","type":"Knowledgebase"}]},{"text":"أتصل بنا","href":"","icon":"empty","target":"_self","title":"","type":"contact"}]', '2021-04-25 06:18:12', '2021-04-25 06:18:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Dumping structure for table nasaq.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.migrations: ~274 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2020_03_14_062240_create_admins_table', 1),
	(2, '2020_03_14_064158_create_archives_table', 2),
	(3, '2020_03_14_064702_create_backups_table', 3),
	(4, '2020_03_14_074020_create_basic_settings_table', 4),
	(5, '2020_03_14_082808_add_website_title_to_basic_settings_table', 5),
	(6, '2020_03_14_083229_create_basic_settings_extended_table', 6),
	(7, '2020_03_14_092331_drop_timestamps_from_basic_settings_table', 7),
	(8, '2020_03_14_092610_drop_timestamps_from_basic_settings_extended', 8),
	(10, '2020_03_14_093031_create_bcategories_table', 9),
	(11, '2020_03_14_094303_create_blogs_table', 10),
	(12, '2020_03_14_094806_create_budgets_table', 11),
	(13, '2020_03_14_095055_create_calendar_events_table', 12),
	(14, '2020_03_14_100801_create_faqs_table', 13),
	(16, '2020_03_14_101217_create_features_table', 14),
	(17, '2020_03_14_101721_create_galleries_table', 15),
	(18, '2020_03_14_134924_create_jcategories_table', 16),
	(19, '2020_03_14_135658_create_jobs_table', 17),
	(20, '2020_03_14_141017_create_languages_table', 18),
	(21, '2020_03_14_141414_create_members_table', 19),
	(22, '2020_03_14_142235_create_packages_table', 20),
	(23, '2020_03_14_144528_create_package_inputs_table', 21),
	(24, '2020_03_14_145133_create_package_input_options', 22),
	(25, '2020_03_14_145651_create_package_orders', 23),
	(26, '2020_03_14_150220_create_pages_table', 24),
	(27, '2020_03_14_151826_create_partners_table', 25),
	(28, '2020_03_14_152152_drop_timestamps_from_partners', 26),
	(30, '2020_03_14_152922_create_points_table', 27),
	(31, '2020_03_14_153317_create_portfolios_table', 28),
	(32, '2020_03_14_154707_create_portfolio_images_table', 29),
	(33, '2020_03_14_155924_create_quotes_table', 30),
	(34, '2020_03_14_172021_create_quote_input_options_table', 31),
	(35, '2020_03_14_172603_create_roles_table', 32),
	(36, '2020_03_14_174750_create_scategories_table', 33),
	(37, '2020_03_14_175054_create_services_table', 34),
	(38, '2020_03_14_181443_create_sliders_table', 35),
	(39, '2020_03_14_182025_create_socials_table', 36),
	(40, '2020_03_14_182248_create_statistics_table', 37),
	(42, '2020_03_14_183128_create_subscribers_table', 38),
	(43, '2020_03_14_183439_create_testimonials_table', 39),
	(44, '2020_03_14_183748_create_ulinks_table', 40),
	(48, '2020_03_15_152021_create_quote_inputs_table', 41),
	(49, '2020_03_25_192539_create_payment_gateways_table', 42),
	(50, '2020_03_27_103050_remove_currency_from_packages', 43),
	(51, '2020_03_27_172511_remove_package_currency_from_package_orders', 44),
	(53, '2020_03_27_193756_add_method_in_package_orders', 45),
	(54, '2020_03_28_174034_create_rss_feeds_table', 46),
	(55, '2020_03_28_174830_create_rss_posts_table', 47),
	(58, '2020_03_29_161843_add_theme_version_to_basic_settings_extended', 48),
	(59, '2020_03_29_164118_set_default_to_theme_version', 48),
	(60, '2020_03_30_190620_add_feature_to_services', 49),
	(61, '2020_03_31_144619_add_details_page_status_to_services', 50),
	(64, '2020_03_31_162008_add_summary_to_services', 51),
	(65, '2020_04_01_153442_add_rss_title_to_basic_settings_extended', 52),
	(66, '2020_04_01_154346_add_rss_heading_columns_to_basic_settings_extended', 53),
	(67, '2020_04_01_160910_add_is_rss_to_basic_settings_extended', 54),
	(68, '2020_04_01_165404_add_rss_meta_columns_to_basic_settings_extended', 55),
	(69, '2020_04_03_161254_add_overlay_to_basic_settings_extended', 56),
	(70, '2020_04_03_174526_add_breadcrumb_overlay_color_to_basic_settings_extended', 57),
	(71, '2020_04_03_180227_increase_opacity_col_length', 58),
	(72, '2020_04_03_184459_add_order_status_to_packages', 59),
	(73, '2020_04_04_161837_add_feature_col_to_portfolios', 60),
	(74, '2020_04_04_164347_add_feature_col_to_members', 61),
	(75, '2020_04_04_173038_add_feature_to_packages', 62),
	(76, '2020_04_04_175705_add_feature_to_scategories', 63),
	(77, '2020_04_05_151511_add_order_number_in_package_orders', 64),
	(78, '2020_04_06_151644_add_invoice_to_package_orders', 65),
	(79, '2020_04_06_155006_create_sitemaps_table', 66),
	(80, '2020_04_08_202206_add_auto_update_to_sitemaps', 67),
	(81, '2020_04_09_144803_drop_contact_mail_from_basic_settings', 68),
	(82, '2020_04_09_151601_add_from_mail_to_basic_settings_extended', 68),
	(83, '2020_04_09_154452_mail_from_admin_cols_to_basic_settings_extended', 69),
	(84, '2020_04_09_170024_smtp_encryption_to_encryption', 70),
	(85, '2020_04_09_183414_rename_order_mail_to_to_mail', 71),
	(92, '2020_04_13_145313_create_menus_table', 72),
	(93, '2020_04_14_060458_drop_parent_link_name_from_basic_settings', 73),
	(94, '2020_04_17_092309_drop_availability_columns_from_basic_settings', 74),
	(95, '2020_04_17_093108_drop_availability_columns_from_basic_settings_extended', 75),
	(96, '2020_04_17_100928_add_is_quote_to_basic_settings', 76),
	(97, '2020_04_21_194915_add_hero_section_bold_text_to_basic_settings_table', 77),
	(98, '2020_04_22_173743_add_hero_fonx_size_cols_to_basic_settings_extended', 77),
	(99, '2020_04_22_191154_add_font_size_cols_to_sliders', 77),
	(100, '2020_04_24_101223_add_statistics_bg_to_basic_settings_extended', 77),
	(101, '2020_04_18_141739_create_pcategories_table', 78),
	(102, '2020_04_18_162850_create_products_table', 78),
	(103, '2020_04_19_101608_create_product_images_table', 78),
	(105, '2020_04_25_090543_create_users_table', 78),
	(106, '2020_04_26_160234_create_shipping_charges_table', 78),
	(107, '2020_04_29_180209_add_package_background_to_basic_settings_extended', 79),
	(108, '2020_04_29_101508_create_product_orders_table', 80),
	(109, '2020_04_29_102816_create_order_items_table', 80),
	(110, '2020_04_29_161315_product_heiding_table', 80),
	(111, '2020_05_01_192457_add_intro_and_pricing_overlay_cols', 81),
	(112, '2020_05_03_152312_add_hero_section_bold_text_color_to_basic_settings_extended', 82),
	(113, '2020_05_03_162704_add_bold_text_color_to_sliders', 83),
	(114, '2020_05_03_182229_add_color_to_packages', 84),
	(115, '2020_05_03_192125_add_color_to_points', 85),
	(116, '2020_05_03_163528_mail_verification_users__table', 86),
	(117, '2020_05_06_090943_create_product_reviews_table', 86),
	(118, '2020_05_08_103149_rating_field_add', 86),
	(119, '2020_05_09_190603_add_intro_bg2_to_basic_settings_extended', 87),
	(120, '2020_05_09_160509_create_tickets_table', 88),
	(121, '2020_05_10_155934_create_conversations_table', 88),
	(122, '2020_05_13_151757_add_image_to_packages_table', 89),
	(123, '2020_05_14_163602_invoice_field_add', 90),
	(124, '2020_05_14_173049_last_message_field_add', 90),
	(125, '2020_04_19_155335_add_shop_settings_cols_t_basic_settings_extended', 91),
	(126, '2020_05_19_114332_add_side_image_to_sliders', 92),
	(127, '2020_05_19_155055_add_another_button_fields_in_sliders', 93),
	(128, '2020_05_20_164842_add_open_hour_to_base_settings_extended', 94),
	(130, '2020_05_20_185325_add_image_to_features', 95),
	(132, '2020_05_20_205827_add_about_cols_to_basic_settings_extended', 96),
	(133, '2020_05_21_075758_add_about_section_to_basic_settings_extended', 97),
	(135, '2020_05_21_084732_add_restaurant_section_customization_cols_to_basic_settings_extended', 98),
	(136, '2020_06_12_103704_drop_product_details_subtitle_from_basic_settings_extended', 99),
	(137, '2020_06_12_104858_make_breadcrumbs_nullable', 100),
	(138, '2020_06_13_114122_drop_billing_shipping_username_from_users', 101),
	(139, '2020_06_16_104458_add_meta_columns', 102),
	(140, '2020_06_16_111322_add_meta_columns_to_products', 103),
	(143, '2020_06_21_155024_create_basic_settings_extra', 104),
	(144, '2020_06_26_143822_make_previous_price_nullable', 105),
	(145, '2020_06_26_175405_drop_auto_update_from_rss_feeds', 106),
	(146, '2020_06_26_175820_drop_auto_update_from_sitemaps', 106),
	(147, '2020_07_20_094806_change_email_verification_col_in_users', 107),
	(155, '2020_07_22_035105_create_offline_gateways', 108),
	(156, '2020_07_24_061432_drop_receipt_col_from_offline_gateways', 109),
	(157, '2020_07_24_061645_add_receipt_to_product_orders', 110),
	(158, '2020_07_24_140620_add_receipt_to_package_orders', 111),
	(159, '2020_07_25_061733_add_base_currency_columns_to_basic_settings_extra', 112),
	(164, '2020_07_26_044759_rename_status_to_product_checkout_status_in_offline_gateways', 113),
	(165, '2020_07_26_045046_modify_status_cols_in_offline_gateways', 114),
	(166, '2020_07_27_090238_add_slug_to_bcategories', 115),
	(167, '2020_07_28_151739_modify_short_text_in_points_table', 116),
	(168, '2020_07_28_154745_modify_short_text_in_scategories', 117),
	(169, '2020_07_29_070943_modify_footer_text_in_basic_settings', 118),
	(170, '2020_08_02_045153_add_payment_status_to_package_orders', 119),
	(171, '2019_11_18_105032_create_pages_table', 120),
	(172, '2019_11_18_105615_create_uploads_table', 120),
	(173, '2020_04_18_064412_create_page_translations_table', 120),
	(174, '2020_04_18_065546_create_settings_table', 120),
	(176, '2020_09_16_133334_create_event_categories_table', 121),
	(178, '2020_09_21_124242_create_donations_table', 121),
	(179, '2020_10_07_091810_add_html_css_cols_to_pages', 122),
	(180, '2020_10_01_134839_create_donation_details_table', 123),
	(188, '2020_10_25_173619_add_pagebuilder_cols_in_services', 125),
	(189, '2020_10_28_081718_add_sidebar_to_services', 125),
	(190, '2020_10_28_082032_add_content_drop_html_css_from_services', 126),
	(193, '2020_10_28_093420_add_sidebar_col_to_blogs', 127),
	(194, '2020_10_28_101437_create_theme_homes_table', 128),
	(195, '2020_10_06_121429_create_course_categories_table', 129),
	(196, '2020_10_07_061229_create_courses_table', 129),
	(197, '2020_10_13_065310_create_modules_table', 129),
	(198, '2020_10_14_040234_create_lessons_table', 129),
	(199, '2021_01_11_041803_drop_section_customization_cols_from_basic_settings', 130),
	(200, '2021_01_11_044249_rename_theme_homes_to_homes', 131),
	(201, '2021_01_11_053211_add_cols_to_homes', 132),
	(205, '2021_01_11_060318_drop_homes_table', 133),
	(206, '2021_01_11_060453_create_homes_table', 133),
	(207, '2021_01_11_063030_add_home_version_to_basic_settings', 134),
	(208, '2021_01_11_063256_drop_pricing_section_from_basic_settings_extended', 135),
	(211, '2021_01_11_065819_add_drop_cols_in_pages', 136),
	(212, '2021_01_17_070359_add_digital_product_cols_to_product_orders', 136),
	(213, '2021_01_17_094042_drop_cols_from_product_orders', 137),
	(214, '2021_01_17_094146_add_digital_product_cols_to_products', 138),
	(215, '2021_01_18_152626_make_cols_nullable_in_order_items', 139),
	(216, '2021_01_18_154001_add_gateway_type_to_product_orders', 140),
	(217, '2021_01_19_060650_change_stock_default_value_in_products', 141),
	(218, '2021_01_19_124000_create_coupons_table', 142),
	(219, '2021_01_19_144402_add_tax_to_basic_settings_extra', 143),
	(221, '2021_01_20_052747_add_tax_discount_to_product_orders', 144),
	(223, '2021_01_21_041425_add_shipping_method_to_product_orders', 145),
	(225, '2021_01_21_082211_add_facebook_google_login_cols_to_basic_settings_extra', 146),
	(226, '2021_01_21_094410_add_provider_cols_to_users', 147),
	(227, '2021_01_21_113647_make_user_id_nullable_in_product_orders', 148),
	(228, '2021_01_21_120336_add_product_guest_checkout_to_basic_settings_extra', 149),
	(229, '2021_01_21_151530_add_product_rating_system', 150),
	(230, '2021_01_22_054021_add_package_guest_checkout_to_basic_settings_extra', 151),
	(233, '2021_01_22_064712_add_user_package_id_cols_to_package_orders', 152),
	(240, '2021_01_22_145809_add_external_link_in_packages', 153),
	(241, '2021_01_22_150142_add_order_status', 154),
	(242, '2021_01_23_101321_drop_nda_from_package_orders', 155),
	(243, '2021_01_23_101510_drop_active_col_from_package_inputs', 156),
	(244, '2021_01_23_133912_drop_active_from_quote_inputs', 157),
	(245, '2021_01_23_140201_drop_nda_from_quotes', 158),
	(249, '2021_01_24_060052_create_timezones_table', 159),
	(250, '2021_01_24_062046_add_timezone_to_basic_settings_extra', 160),
	(251, '2021_01_24_073829_add_recurring_billing_cols_to_basic_settings_extra', 161),
	(252, '2021_01_24_075337_add_expiration_reminder_days_in_basic_settings_extra', 162),
	(253, '2021_01_24_093304_drop_package_duration_from_basic_settings_extra', 163),
	(254, '2021_01_24_093402_add_duration_to_packages', 164),
	(260, '2021_01_24_103608_create_subscriptions_table', 165),
	(261, '2021_01_25_071337_add_name_email_to_subscriptions', 166),
	(263, '2021_01_25_094403_create_queue_jobs_table', 167),
	(270, '2021_01_26_080703_add_gateway_pending_package_cols_to_subscriptions', 168),
	(271, '2021_01_27_072255_add_gateway_type_to_subscriptions', 168),
	(275, '2021_01_29_161320_add_preloader_cols_to_basic_settings_extra', 169),
	(276, '2021_01_29_170622_add_ips_to_basic_settings', 170),
	(277, '2020_10_17_115444_add_course_duration_to_courses_table', 171),
	(278, '2020_10_17_131101_add_is_featured_to_courses_table', 171),
	(279, '2020_10_19_050833_remove_video_file_from_courses', 171),
	(280, '2020_10_25_125408_create_course_purchases_table', 171),
	(281, '2020_11_05_080538_add_invoice_to_course_purchases_table', 171),
	(282, '2020_11_10_100650_create_course_reviews_table', 171),
	(283, '2020_11_10_163735_add_average_rating_to_courses_table', 171),
	(284, '2021_01_31_092208_add_breadcrumb_heading_to_basic_settings_extra', 172),
	(285, '2021_01_31_165050_add_is_course_to_basic_settings_extra', 173),
	(286, '2021_02_03_033234_add_course_checkout_migration', 174),
	(288, '2021_02_03_050124_add_receipt_to_course_purchases', 175),
	(289, '2021_02_03_074559_add_slug_to_courses', 176),
	(290, '2020_09_24_121000_create_article_categories_table', 177),
	(291, '2020_09_26_084231_create_articles_table', 177),
	(292, '2020_10_04_121610_add_knowledgebase_titles_to_basic_settings_extra_table', 177),
	(293, '2020_10_04_122248_add_knowledgebase_subtitles_to_basic_settings_extra_table', 177),
	(294, '2020_10_04_122805_add_knowledgebase_details_titles_to_basic_settings_extra_table', 177),
	(295, '2021_02_03_151505_add_slug_in_articles', 178),
	(296, '2020_10_26_102716_add_events_and_causes_to_basic_settings_extended_table', 179),
	(297, '2020_10_26_121727_add_events_and_causes_to_basic_settings_table', 179),
	(298, '2021_02_04_105849_add_cols_to_donation_details', 180),
	(300, '2021_02_04_121040_add_drop_cols_in_donation_details', 181),
	(302, '2021_02_05_130302_add_donation_checkout_status', 182),
	(303, '2021_02_05_131736_add_donation_settings_cols_to_basic_settings_extra', 183),
	(304, '2020_09_18_131535_create_events_table', 184),
	(305, '2020_10_16_053710_create_event_details_table', 185),
	(306, '2021_02_06_044913_add_on_delete_cascade_on_donation_id', 186),
	(307, '2021_02_06_045336_add_on_delete_cascade_to_lang_id', 187),
	(309, '2021_02_07_092611_add_event_checkout_status', 188),
	(310, '2021_02_07_104127_add_event_cols_to_basic_settings_extra', 189),
	(311, '2021_02_07_110645_add_user_id_to_event_details_table', 190),
	(312, '2021_02_07_160028_add_invoice_to_event_details', 191),
	(313, '2021_03_03_050158_create_megamenus_table', 192),
	(316, '2021_03_03_062340_add_service_category_to_basic_settings_extra', 193),
	(318, '2021_03_03_072255_add_language_id_to_megamenus', 194),
	(319, '2021_03_03_081650_make_cols_megamenus_cols_nullable', 195),
	(321, '2021_03_03_144637_add_category_to_megamenus', 196),
	(326, '2021_03_18_045056_create_permalinks_table', 197),
	(327, '2021_03_19_142614_drop_language_id_from_permalinks', 198),
	(329, '2021_03_23_150745_add_catalog_mode_to_basic_settings_extra', 199),
	(330, '2021_03_23_175755_add_is_course_rating_to_basic_settings_extra', 200),
	(331, '2021_03_24_044736_create_guests_table', 201),
	(332, '2021_03_24_054718_add_push_notification_to_basic_settings_extra', 202),
	(333, '2021_03_24_064151_create_push_subscriptions_table', 203),
	(334, '2021_03_25_045506_drop_contact_page_infos', 204),
	(335, '2021_03_25_050147_add_contact_infos_in_basic_settings_extra', 205),
	(336, '2021_03_25_050810_drop_lat_lng_from_basic_settings', 206),
	(337, '2021_03_25_063450_update_map_cols', 207),
	(339, '2021_03_30_122645_add_pagebuilder_to_basic_settings_extra', 208),
	(340, '2021_03_31_100022_add_custom_page_pagebuilder_to_basic_settings_extra', 209),
	(341, '2021_03_31_103702_add_section_customizations_cols_to_basic_settings', 210),
	(342, '2021_03_31_112700_add_pricing_section_to_basic_settings_extended', 211),
	(343, '2021_03_31_185244_add_body_to_pages', 212),
	(345, '2021_04_06_110735_create_popups_table', 213),
	(346, '2021_04_06_172054_add_name_to_popups', 214),
	(347, '2021_04_07_074645_add_status_to_popups', 215),
	(348, '2021_04_08_095555_drop_announcement_cols_to_basic_settings', 216),
	(350, '2021_04_15_123458_create_email_templates', 217),
	(351, '2021_04_18_092820_add_whatsapp_chat_cols_to_basic_settings_extra', 218),
	(352, '2021_04_04_102049_alter_table_basic_settings_extra', 219),
	(353, '2021_04_04_141250_create_feedbacks_table', 219),
	(354, '2021_04_05_112153_create_faq_categories_table', 219),
	(355, '2021_04_06_085343_add_faq_category_status_column_to_basic_settings_extra_table', 219),
	(356, '2021_04_06_094435_add_category_id_column_to_faqs_table', 219),
	(357, '2021_04_07_103852_create_gallery_categories_table', 219),
	(358, '2021_04_07_104306_add_gallery_category_status_to_basic_settings_extra_table', 219),
	(359, '2021_04_08_060033_add_category_id_column_to_galleries_table', 219),
	(360, '2021_04_10_052120_add_package_category_status_to_basic_settings_extra_table', 219),
	(361, '2021_04_10_061712_create_package_categories_table', 219),
	(362, '2021_04_10_094002_add_category_id_column_to_packages_table', 219),
	(363, '2021_04_12_104459_add_website_link_column_to_portfolios_table', 219),
	(364, '2021_04_24_081952_make_course_purchases_cols_nullable', 220),
	(367, '2021_11_14_064526_add_secret_path_drop_ips_from_basic_settings', 221),
	(368, '2021_11_14_074511_add_products_in_home_to_pcategories', 222),
	(369, '2021_11_14_101342_add_image_in_pcategories_table', 223),
	(370, '2021_11_20_070431_add_newsletter_section_in_basic_settings', 224),
	(371, '2021_11_20_072800_add_products_section_in_basic_settings_extended', 225),
	(372, '2021_11_20_074723_rename_add_products_section', 226);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table nasaq.modules
CREATE TABLE IF NOT EXISTS `modules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.modules: ~25 rows (approximately)
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` (`id`, `course_id`, `name`, `duration`, `created_at`, `updated_at`) VALUES
	(79, 25, 'Course Overview', '0h 19m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(80, 25, 'Python Setup', '0h 54m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(81, 25, 'Python Object & Data Structure Basics', '2h 2m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(82, 25, 'Python Comparison Operators', '0h 9m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(83, 26, 'Course Overview', '0h 19m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(84, 26, 'Python Setup', '0h 54m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(85, 26, 'Python Object & Data Structure Basics', '2h 2m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(86, 26, 'Python Comparison Operators', '0h 9m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(87, 27, 'Course Overview', '0h 19m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(88, 27, 'Python Setup', '0h 54m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(89, 27, 'Python Object & Data Structure Basics', '2h 2m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(90, 27, 'Python Comparison Operators', '0h 9m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(91, 28, 'Course Overview', '0h 19m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(92, 28, 'Python Setup', '0h 54m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(93, 28, 'Python Object & Data Structure Basics', '2h 2m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(94, 28, 'Python Comparison Operators', '0h 9m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(95, 29, 'Course Overview', '0h 19m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(96, 29, 'Python Setup', '0h 54m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(97, 29, 'Python Object & Data Structure Basics', '2h 2m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(98, 29, 'Python Comparison Operators', '0h 9m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(99, 30, 'Course Overview', '0h 19m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(100, 30, 'Python Setup', '0h 54m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(101, 30, 'Python Object & Data Structure Basics', '2h 2m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(102, 30, 'Python Comparison Operators', '0h 9m', '2021-02-19 23:26:40', '2021-02-19 23:26:40'),
	(103, 33, 'Arabic', '10h 60m', '2021-11-13 15:43:23', '2021-11-13 15:43:23');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;

-- Dumping structure for table nasaq.offline_gateways
CREATE TABLE IF NOT EXISTS `offline_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `instructions` blob,
  `product_checkout_status` int(11) NOT NULL DEFAULT '0',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `is_receipt` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_order_status` tinyint(4) NOT NULL DEFAULT '0',
  `course_checkout_status` tinyint(4) NOT NULL DEFAULT '1',
  `donation_checkout_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `event_checkout_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.offline_gateways: ~1 rows (approximately)
/*!40000 ALTER TABLE `offline_gateways` DISABLE KEYS */;
INSERT INTO `offline_gateways` (`id`, `language_id`, `name`, `short_description`, `instructions`, `product_checkout_status`, `serial_number`, `is_receipt`, `created_at`, `updated_at`, `package_order_status`, `course_checkout_status`, `donation_checkout_status`, `event_checkout_status`) VALUES
	(1, 173, 'حوالة مباشرة', 'تحويل مباشر', _binary 0x3C703ED8ADD988D98420D984D8A7D8ADD8AF20D8ADD8B3D8A7D8A8D8A7D8AAD986D8A73C2F703E, 1, 1, 1, '2022-01-22 04:41:05', '2022-01-22 04:41:44', 1, 1, 1, 1);
/*!40000 ALTER TABLE `offline_gateways` ENABLE KEYS */;

-- Dumping structure for table nasaq.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(11,2) DEFAULT NULL,
  `previous_price` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.order_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;

-- Dumping structure for table nasaq.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `description` blob,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - will not show in home, 1 - will show in home',
  `link` text COLLATE utf8mb4_unicode_ci,
  `order_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active, 2 - link',
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `category_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.packages: ~1 rows (approximately)
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` (`id`, `language_id`, `title`, `price`, `description`, `image`, `serial_number`, `meta_keywords`, `meta_description`, `color`, `created_at`, `updated_at`, `feature`, `link`, `order_status`, `duration`, `category_id`) VALUES
	(60, 173, 'ادارة حسابات السوشل ميديا', 1000.00, _binary 0x3C703E2D20D8AAD8B5D985D98AD98520333020D8A8D988D8B3D8AA3C2F703E3C703E2D20D986D8B4D8B120D98AD988D985D98A266E6273703B3C2F703E3C703E2D20D8A7D986D8B3D8AAD982D8B1D8A7D9853C2F703E3C703E2D20D8AAD988D98AD8AAD8B13C2F703E3C703E266E6273703B3C2F703E, NULL, 1, NULL, NULL, NULL, '2022-01-22 19:58:45', '2022-01-22 19:59:06', 1, NULL, 1, 'monthly', 17);
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;

-- Dumping structure for table nasaq.package_categories
CREATE TABLE IF NOT EXISTS `package_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `serial_number` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_categories_language_id_foreign` (`language_id`),
  CONSTRAINT `package_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.package_categories: ~3 rows (approximately)
/*!40000 ALTER TABLE `package_categories` DISABLE KEYS */;
INSERT INTO `package_categories` (`id`, `language_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
	(15, 173, 'تطوير الشبكة', 1, 1, '2021-04-19 20:35:48', '2021-04-19 20:35:48'),
	(16, 173, 'تطبيق الهاتف المحمول', 1, 2, '2021-04-25 19:37:04', '2021-04-25 19:37:04'),
	(17, 173, 'تسويق', 1, 3, '2021-04-25 19:37:15', '2021-04-25 19:37:15');
/*!40000 ALTER TABLE `package_categories` ENABLE KEYS */;

-- Dumping structure for table nasaq.package_inputs
CREATE TABLE IF NOT EXISTS `package_inputs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-file',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - required, 0 - optional',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.package_inputs: ~18 rows (approximately)
/*!40000 ALTER TABLE `package_inputs` DISABLE KEYS */;
INSERT INTO `package_inputs` (`id`, `language_id`, `type`, `label`, `name`, `placeholder`, `required`, `created_at`, `updated_at`) VALUES
	(58, 169, 1, 'Contact Number', 'contact_number', 'Enter Contact Number', 1, '2019-12-25 21:28:19', '2019-12-25 21:28:19'),
	(67, 170, 1, 'Número de contato', 'numero_de_contato', 'Digite o número do contato', 1, '2019-12-25 21:47:21', '2019-12-25 21:47:21'),
	(73, 171, 1, 'İletişim numarası', 'iletisim_numarasi', 'İletişim Numarasını Girin', 1, '2019-12-25 22:04:35', '2019-12-25 22:04:35'),
	(81, 173, 1, 'رقم الجوال', 'رقم الجوال', 'ادخل رقم الجوال', 1, '2019-12-27 12:35:55', '2020-01-06 19:28:42'),
	(87, 181, 1, 'Budget', 'Budget', 'Enter Name', 1, '2020-01-29 22:31:29', '2020-01-29 22:31:29'),
	(88, 182, 2, 'Nameu', 'Nameu', 'Enter Email', 1, '2020-01-30 19:28:37', '2020-01-30 19:28:37'),
	(101, 169, 2, 'Country', 'Country', 'Select a country', 0, '2021-02-20 17:33:46', '2021-02-20 17:33:46'),
	(102, 169, 5, 'Document', 'Document', NULL, 0, '2021-02-20 17:34:12', '2021-04-15 06:32:13'),
	(103, 169, 3, 'Options', 'Options', NULL, 1, '2021-02-20 17:35:50', '2021-02-20 17:35:50'),
	(104, 170, 2, 'País', 'País', 'Selecione um pais', 0, '2021-02-20 17:37:48', '2021-02-20 17:38:12'),
	(105, 170, 5, 'Documento', 'Documento', NULL, 1, '2021-02-20 17:38:05', '2021-02-20 17:38:05'),
	(106, 170, 3, 'Opções', 'Opções', NULL, 1, '2021-02-20 17:38:57', '2021-02-20 17:38:57'),
	(107, 171, 2, 'Ülke', 'Ülke', 'Bir ülke seçin', 0, '2021-02-20 17:39:51', '2021-02-20 17:39:51'),
	(108, 171, 5, 'Belge', 'Belge', NULL, 1, '2021-02-20 17:40:18', '2021-02-20 17:40:18'),
	(109, 171, 3, 'Seçenekler', 'Seçenekler', NULL, 1, '2021-02-20 17:40:44', '2021-02-20 17:40:44'),
	(110, 173, 2, 'المدينة', 'اسم المدينة', 'اختر المدينة', 0, '2021-02-20 17:41:34', '2021-02-20 17:41:34'),
	(111, 173, 5, 'مرفقات', 'مرفقات', NULL, 1, '2021-02-20 17:41:53', '2021-02-20 17:41:53'),
	(112, 173, 3, 'خيارات', 'خيارات', NULL, 1, '2021-02-20 17:42:48', '2021-02-20 17:42:48');
/*!40000 ALTER TABLE `package_inputs` ENABLE KEYS */;

-- Dumping structure for table nasaq.package_input_options
CREATE TABLE IF NOT EXISTS `package_input_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `package_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.package_input_options: ~7 rows (approximately)
/*!40000 ALTER TABLE `package_input_options` DISABLE KEYS */;
INSERT INTO `package_input_options` (`id`, `package_input_id`, `name`, `created_at`, `updated_at`) VALUES
	(170, 110, 'جدة', '2021-02-20 17:41:34', '2021-02-20 17:41:34'),
	(171, 110, 'مكة', '2021-02-20 17:41:34', '2021-02-20 17:41:34'),
	(172, 112, 'الخيار 1', '2021-02-20 17:42:48', '2021-02-20 17:42:48'),
	(173, 112, 'الخيار 2', '2021-02-20 17:42:48', '2021-02-20 17:42:48'),
	(174, 112, 'الخيار 3', '2021-02-20 17:42:48', '2021-02-20 17:42:48'),
	(176, 110, 'المدينة', '2021-02-20 17:41:34', '2021-02-20 17:41:34'),
	(191, 110, 'الرياض', '2021-02-20 17:41:34', '2021-02-20 17:41:34');
/*!40000 ALTER TABLE `package_input_options` ENABLE KEYS */;

-- Dumping structure for table nasaq.package_orders
CREATE TABLE IF NOT EXISTS `package_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `order_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `package_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` decimal(11,2) DEFAULT NULL,
  `package_description` blob,
  `invoice` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - pending, 1 - completed',
  `gateway_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.package_orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `package_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_orders` ENABLE KEYS */;

-- Dumping structure for table nasaq.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `components` longtext COLLATE utf8mb4_unicode_ci,
  `styles` longtext COLLATE utf8mb4_unicode_ci,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `css` longtext COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.pages: ~2 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `components`, `styles`, `html`, `css`, `body`) VALUES
	(54, 173, 'معلومات عنا', 'معلومات عنا', 'وصف قصير لنا', 'معلومات-عنا', 1, 1, NULL, NULL, '2021-03-20 14:40:07', '2021-04-25 04:32:45', '[{"components":[{"classes":["pb-mb30"],"attributes":{"id":"il6ctx"},"components":[{"classes":["container"],"components":[{"classes":["service-categories"],"components":[{"classes":["row","justify-content-center","text-center","premade"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Our Services"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"We work with you to achieve your goals"}]}]}]},{"tagName":"service-category-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                    Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Services > Category","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["row","premade"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145610.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Web Design","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=54"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145594.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Web Development","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=55"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145626.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Graphic Design","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=56"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145660.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Mobile Apps","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=57"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145679.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Plugin Development","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=58"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145693.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Marketting SEO","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=59"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145709.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Image Editing","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=60"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["col-xl-3","col-lg-4","col-sm-6"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-category"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/service_category_icons/1581145761.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["text"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h4","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"IT Consultancy","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.L","propagate":["removable","editable","draggable","stylable"]},{"tagName":"span","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"attributes":{"id":"i923is"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"orem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti autem beatae eos unde sint provident minima.","propagate":["removable","editable","draggable","stylable"]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["see-more"],"attributes":{"href":"#"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"see more...","propagate":["removable","editable","draggable","stylable"]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["readmore"],"attributes":{"href":"{base_url}/services?category=61"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"View Services","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]}]},{},{"attributes":{"id":"iq3d8q"},"components":[{"classes":["container","pb-mb30"],"attributes":{"id":"ip3jhr"},"components":[{"classes":["faq-section"],"attributes":{"id":"io63s8"},"components":[{"classes":["row","justify-content-center","text-center"],"attributes":{"id":"i2migf"},"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"F.A.Q"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"attributes":{"id":"ipsa5e"},"components":[{"type":"textnode","content":"Frequently Asked Questions"}]}]}]},{"tagName":"faq-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"attributes":{"id":"iwx0xl"},"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                            Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > FAQ","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-lg-6"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["accordion"],"attributes":{"id":"accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading20"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse20","aria-expanded":"false","aria-controls":"collapse20"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse20","aria-labelledby":"heading20","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading64"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse64","aria-expanded":"false","aria-controls":"collapse64"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"agash","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse64","aria-labelledby":"heading64","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah ashsah","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading21"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse21","aria-expanded":"false","aria-controls":"collapse21"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse21","aria-labelledby":"heading21","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading22"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse22","aria-expanded":"false","aria-controls":"collapse22"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse22","aria-labelledby":"heading22","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading23"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse23","aria-expanded":"false","aria-controls":"collapse23"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse23","aria-labelledby":"heading23","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading24"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse24","aria-expanded":"false","aria-controls":"collapse24"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse24","aria-labelledby":"heading24","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]}]}]},{"removable":false,"draggable":false,"classes":["col-lg-6"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["accordion"],"attributes":{"id":"accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading25"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse25","aria-expanded":"false","aria-controls":"collapse25"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse25","aria-labelledby":"heading25","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading26"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse26","aria-expanded":"false","aria-controls":"collapse26"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse26","aria-labelledby":"heading26","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading27"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse27","aria-expanded":"false","aria-controls":"collapse27"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse27","aria-labelledby":"heading27","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading28"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse28","aria-expanded":"false","aria-controls":"collapse28"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse28","aria-labelledby":"heading28","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading29"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse29","aria-expanded":"false","aria-controls":"collapse29"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse29","aria-labelledby":"heading29","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["testimonial-section","pb-mb30"],"attributes":{"id":"igf07q"},"components":[{"classes":["container"],"components":[{"classes":["row","justify-content-center","text-center"],"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"Testimonial"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"components":[{"type":"textnode","content":"What people say about finlance planning"}]}]}]},{"removable":false,"draggable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-md-12"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"testimonial-section","removable":false,"draggable":false,"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                        Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Sections > Testimonials","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["testimonial-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["single-testimonial","col-6","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/testimonials/1576864505.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["client-desc"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["comment"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"They provide innovative solutions with the best. tempor incididunt utla bore et dolor tempor incididunt .","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h6","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Jonathon doe","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["rank"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Director, art media","propagate":["removable","editable","draggable","stylable"]}]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["single-testimonial","col-6","mx-0"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["img-wrapper"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/testimonials/1576864532.jpg","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["client-desc"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["comment"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"They provide innovative solutions with the best. tempor incididunt utla bore et dolor tempor incididunt .","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"h6","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["name"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Jonathon doe","propagate":["removable","editable","draggable","stylable"]}]},{"tagName":"p","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["rank"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Director, art media","propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]}]},{"components":[{"classes":["partner-section","pb-mb30"],"components":[{"classes":["container","top-border"],"components":[{"removable":false,"draggable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-md-12"],"propagate":["removable","editable","draggable"],"components":[{"tagName":"partner-section","removable":false,"draggable":false,"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                                        Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > Home Page Section > Partners","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["partner-carousel","common-carousel","row"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://themeforest.net/","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815450.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://audiojungle.net/","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815440.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://codecanyon.net","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815430.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]},{"type":"link","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["single-partner-item","d-block","col-lg-3","mx-0"],"attributes":{"href":"https://graphicriver.net/","target":"_blank"},"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["outer-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["inner-container"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"image","removable":false,"draggable":false,"stylable":false,"editable":0,"classes":["lazy"],"attributes":{"data-src":"{base_url}/assets/front/img/partners/1584815416.png","alt":"","src":"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+"},"propagate":["removable","editable","draggable","stylable"]}]}]}]}]}]}]}]}]}]}]}]}]', '[{"selectors":["#igf07q"],"style":{"padding":"0 0 120px 0"}},{"selectors":["#ip3jhr"],"style":{"padding":"60px 0px"}},{"selectors":["#io63s8"],"style":{"padding":"0px"}},{"selectors":["#i2migf"],"style":{"margin-bottom":"60px"}},{"selectors":["#ipsa5e"],"style":{"margin-top":"20px"}},{"selectors":["#iq3d8q"],"style":{"padding":"0 0 60px 0"}},{"selectors":["#iwx0xl"]},{"selectors":["#wrapper"],"wrapper":1},{"selectors":["#i923is"],"style":{"display":"none"}},{"selectors":["#il6ctx"],"style":{"padding":"120px 0 60px 0"}}]', '<div class=\'pagebuilder-content\'><div><div class="pb-mb30" id="il6ctx"><div class="container"><div class="service-categories"><div class="row justify-content-center text-center premade"><div class="col-lg-6"><span class="section-title">Our Services</span><h2 class="section-summary">We work with you to achieve your goals</h2></div></div><service-category-section>[pagebuilder-service-category][/pagebuilder-service-category]</service-category-section></div></div></div></div><div></div><div id="iq3d8q"><div id="ip3jhr" class="container pb-mb30"><div id="io63s8" class="faq-section"><div id="i2migf" class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">F.A.Q</span><h2 id="ipsa5e" class="section-summary">Frequently Asked Questions</h2></div></div><faq-section>[pagebuilder-faq][/pagebuilder-faq]</faq-section></div></div></div><div><div id="igf07q" class="testimonial-section pb-mb30"><div class="container"><div class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">Testimonial</span><h2 class="section-summary">What people say about finlance planning</h2></div></div><div class="row"><div class="col-md-12"><testimonial-section>[pagebuilder-testimonial][/pagebuilder-testimonial]</testimonial-section></div></div></div></div></div><div><div class="partner-section pb-mb30"><div class="container top-border"><div class="row"><div class="col-md-12"><partner-section>[pagebuilder-partner][/pagebuilder-partner]</partner-section></div></div></div></div></div></div>', '* { box-sizing: border-box; } body {margin: 0;}#igf07q{padding:0 0 120px 0;}#ip3jhr{padding:60px 0px;}#io63s8{padding:0px;}#i2migf{margin-bottom:60px;}#ipsa5e{margin-top:20px;}#iq3d8q{padding:0 0 60px 0;}#i923is{display:none;}#il6ctx{padding:120px 0 60px 0;}', '<p>asgas</p><p>asgasgas</p><p>asgas</p><p>ashas</p>'),
	(55, 173, 'الشروط والاحكام', 'الشروط والاحكام', 'يرجى قراءة الشروط والأحكام أدناه', 'الشروط-والاحكام', 1, 2, 'terms,conditions', NULL, '2021-03-20 14:53:06', '2022-01-22 03:17:56', '[{"attributes":{"id":"i3ml"},"components":[{"editable":true,"classes":["pbcontainer"],"propagate":["removable,editable,draggable"],"components":[{"name":"Pbrow","droppable":".cell","resizable":{"tl":0,"tc":0,"tr":0,"cl":0,"cr":0,"bl":0,"br":0,"minDim":1},"classes":[{"name":"pbrow","private":1}],"propagate":["removable,editable,draggable"],"components":[{"name":"Cell","draggable":".pbrow","stylable-require":["flex-basis"],"unstylable":["width"],"resizable":{"tl":0,"tc":0,"tr":0,"cl":0,"cr":1,"bl":0,"br":0,"minDim":1,"bc":0,"currentUnit":1,"step":0.2,"keyWidth":"flex-basis"},"classes":[{"name":"cell","private":1}],"propagate":["removable,editable,draggable"],"components":[{"attributes":{"id":"i7nl"},"propagate":["removable,editable,draggable"],"components":[{"name":"Pbrow","droppable":".cell","resizable":{"tl":0,"tc":0,"tr":0,"cl":0,"cr":0,"bl":0,"br":0,"minDim":1},"classes":[{"name":"pbrow","private":1}],"propagate":["removable,editable,draggable"],"components":[{"name":"Cell","draggable":".pbrow","stylable-require":["flex-basis"],"unstylable":["width"],"resizable":{"tl":0,"tc":0,"tr":0,"cl":0,"cr":1,"bl":0,"br":0,"minDim":1,"bc":0,"currentUnit":1,"step":0.2,"keyWidth":"flex-basis"},"classes":[{"name":"cell","private":1}],"propagate":["removable,editable,draggable"],"components":[{"type":"text","content":"<p></p><p style=\\"text-align: center;\\"><span style=\\"font-size:36px;\\">Terms &amp; Conditions</span></p>","attributes":{"id":"il5q1d"},"propagate":["removable,editable,draggable"],"activeOnRender":0}]}]},{"tagName":"ul","classes":["list-group"],"propagate":["removable,editable,draggable"],"components":[{"tagName":"li","type":"text","content":"Dapibus ac facilisis in","classes":["list-group-item"],"attributes":{"id":"iny1"},"propagate":["removable,editable,draggable"]},{"tagName":"li","type":"text","classes":["list-group-item"],"attributes":{"id":"ihuu"},"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Morbi leo risus","propagate":["removable,editable,draggable"]}]},{"tagName":"li","type":"text","classes":["list-group-item"],"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Porta ac consectetur ac","propagate":["removable,editable,draggable"]}]},{"tagName":"li","type":"text","classes":["list-group-item"],"attributes":{"id":"iqlpa"},"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Vestibulum at eros","propagate":["removable,editable,draggable"]}]},{"tagName":"li","type":"text","classes":["list-group-item"],"attributes":{"id":"i93ht"},"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Vestibulum at eros","propagate":["removable,editable,draggable"],"view":""}],"view":""},{"tagName":"li","type":"text","content":"Vestibulum at eros","classes":["list-group-item"],"attributes":{"id":"i5sjj"},"propagate":["removable,editable,draggable"],"view":""},{"tagName":"li","type":"text","classes":["list-group-item"],"attributes":{"id":"i885x"},"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Vestibulum at eros","propagate":["removable,editable,draggable"],"view":""}],"view":""},{"tagName":"li","type":"text","classes":["list-group-item"],"attributes":{"id":"ixnig"},"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Vestibulum at eros","propagate":["removable,editable,draggable"],"view":""}],"view":""},{"tagName":"li","type":"text","classes":["list-group-item"],"attributes":{"id":"i5fsl"},"propagate":["removable,editable,draggable"],"components":[{"type":"textnode","content":"Vestibulum at eros","propagate":["removable,editable,draggable"],"view":""}],"view":""}]}]}]}]}]}]},{"attributes":{"id":"i3bm4"},"components":[{"classes":["container","pb-mb30"],"attributes":{"id":"ixeb9"},"components":[{"classes":["faq-section"],"attributes":{"id":"i0xv8"},"components":[{"classes":["row","justify-content-center","text-center"],"attributes":{"id":"i2lyn"},"components":[{"classes":["col-lg-6"],"components":[{"tagName":"span","type":"text","classes":["section-title"],"components":[{"type":"textnode","content":"F.A.Q"}]},{"tagName":"h2","type":"text","classes":["section-summary"],"attributes":{"id":"ivec4"},"components":[{"type":"textnode","content":"Frequently Asked Questions"}]}]}]},{"tagName":"faq-section","components":[{"removable":false,"draggable":false,"stylable":false,"classes":["non-editable-area"],"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"classes":["non-editable-notice"],"propagate":["removable","editable","draggable","stylable"],"components":[{"tagName":"h3","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Non-Editable Area","propagate":["removable","editable","draggable","stylable"]}]},{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"\\n                            Manage From ","propagate":["removable","editable","draggable","stylable"]},{"tagName":"br","removable":false,"draggable":false,"stylable":false,"void":true,"propagate":["removable","editable","draggable","stylable"]},{"tagName":"strong","type":"text","removable":false,"draggable":false,"stylable":false,"editable":false,"propagate":["removable","editable","draggable","stylable"],"components":[{"type":"textnode","removable":false,"draggable":false,"stylable":false,"editable":false,"content":"Content Management > FAQ","propagate":["removable","editable","draggable","stylable"]}]}]},{"removable":false,"draggable":false,"stylable":false,"classes":["row"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["col-lg-6"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["accordion"],"attributes":{"id":"accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading20"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse20","aria-expanded":"false","aria-controls":"collapse20"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse20","aria-labelledby":"heading20","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading21"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse21","aria-expanded":"false","aria-controls":"collapse21"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse21","aria-labelledby":"heading21","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading22"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse22","aria-expanded":"false","aria-controls":"collapse22"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse22","aria-labelledby":"heading22","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading23"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse23","aria-expanded":"false","aria-controls":"collapse23"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse23","aria-labelledby":"heading23","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading24"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse24","aria-expanded":"false","aria-controls":"collapse24"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse24","aria-labelledby":"heading24","data-parent":"#accordionExample1"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]}]}]},{"removable":false,"draggable":false,"classes":["col-lg-6"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["accordion"],"attributes":{"id":"accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading25"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse25","aria-expanded":"false","aria-controls":"collapse25"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse25","aria-labelledby":"heading25","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading26"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse26","aria-expanded":"false","aria-controls":"collapse26"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse26","aria-labelledby":"heading26","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading27"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse27","aria-expanded":"false","aria-controls":"collapse27"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse27","aria-labelledby":"heading27","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading28"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse28","aria-expanded":"false","aria-controls":"collapse28"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse28","aria-labelledby":"heading28","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["card"],"propagate":["removable","editable","draggable"],"components":[{"removable":false,"draggable":false,"classes":["card-header"],"attributes":{"id":"heading29"},"propagate":["removable","editable","draggable"],"components":[{"tagName":"h2","removable":false,"draggable":false,"classes":["mb-0"],"propagate":["removable","editable","draggable"],"components":[{"type":"button","removable":false,"draggable":false,"classes":["btn","btn-link","collapsed","btn-block","text-left"],"attributes":{"type":"button","data-toggle":"collapse","data-target":"#collapse29","aria-expanded":"false","aria-controls":"collapse29"},"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Why this app is so awesome","propagate":["removable","editable","draggable"]}]}]}]},{"removable":false,"draggable":false,"classes":["collapse"],"attributes":{"id":"collapse29","aria-labelledby":"heading29","data-parent":"#accordionExample2"},"propagate":["removable","editable","draggable"],"components":[{"type":"text","removable":false,"draggable":false,"editable":false,"classes":["card-body"],"propagate":["removable","editable","draggable"],"components":[{"type":"textnode","removable":false,"draggable":false,"editable":false,"content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.","propagate":["removable","editable","draggable"]}]}]}]}]}]}]}]}]}]}]}]}]', '[{"selectors":[{"name":"pbrow","private":1}],"style":{"display":"flex","justify-content":"flex-start","align-items":"stretch","flex-wrap":"nowrap","padding":"10px"}},{"selectors":[{"name":"pbrow","private":1}],"style":{"flex-wrap":"wrap"},"mediaText":"(max-width: 768px)","atRuleType":"media"},{"selectors":[{"name":"cell","private":1}],"style":{"min-height":"75px","flex-grow":"1","flex-basis":"100%"}},{"selectors":["#iny1"]},{"selectors":["list-group-item"]},{"selectors":["#iqlpa"]},{"selectors":["#i5fsl"]},{"selectors":["#ixnig"]},{"selectors":["#i885x"]},{"selectors":["#i5sjj"]},{"selectors":["#i93ht"]},{"selectors":["#wrapper"],"wrapper":1},{"selectors":["#i3ml"],"style":{"padding":"120px 0 60px 0"}},{"selectors":["#ixeb9"],"style":{"padding":"60px 0px"}},{"selectors":["#i0xv8"],"style":{"padding":"0px"}},{"selectors":["#i2lyn"],"style":{"margin-bottom":"60px"}},{"selectors":["#ivec4"],"style":{"margin-top":"20px"}},{"selectors":["#i3bm4"],"style":{"padding":"0 0 60px 0"}},{"selectors":["#il5q1d"],"style":{"padding":"10px"}},{"selectors":["#i7nl"]},{"selectors":["#ihuu"]}]', '<div class=\'pagebuilder-content\'><div id="i3ml"><div class="pbcontainer"><div class="pbrow"><div class="cell"><div id="i7nl"><div class="pbrow"><div class="cell"><div id="il5q1d"><p></p><p style="text-align: center;"><span style="font-size:36px;">Terms &amp; Conditions</span></p></div></div></div><ul class="list-group"><li id="iny1" class="list-group-item">Dapibus ac facilisis in</li><li class="list-group-item" id="ihuu">Morbi leo risus</li><li class="list-group-item">Porta ac consectetur ac</li><li id="iqlpa" class="list-group-item">Vestibulum at eros</li><li id="i93ht" class="list-group-item">Vestibulum at eros</li><li id="i5sjj" class="list-group-item">Vestibulum at eros</li><li id="i885x" class="list-group-item">Vestibulum at eros</li><li id="ixnig" class="list-group-item">Vestibulum at eros</li><li id="i5fsl" class="list-group-item">Vestibulum at eros</li></ul></div></div></div></div></div><div id="i3bm4"><div id="ixeb9" class="container pb-mb30"><div id="i0xv8" class="faq-section"><div id="i2lyn" class="row justify-content-center text-center"><div class="col-lg-6"><span class="section-title">F.A.Q</span><h2 id="ivec4" class="section-summary">Frequently Asked Questions</h2></div></div><faq-section>[pagebuilder-faq][/pagebuilder-faq]</faq-section></div></div></div></div>', '* { box-sizing: border-box; } body {margin: 0;}.pbrow{display:flex;justify-content:flex-start;align-items:stretch;flex-wrap:nowrap;padding:10px;}.cell{min-height:75px;flex-grow:1;flex-basis:100%;}#i3ml{padding:120px 0 60px 0;}#ixeb9{padding:60px 0px;}#i0xv8{padding:0px;}#i2lyn{margin-bottom:60px;}#ivec4{margin-top:20px;}#i3bm4{padding:0 0 60px 0;}#il5q1d{padding:10px;}@media (max-width: 768px){.pbrow{flex-wrap:wrap;}}', NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table nasaq.partners
CREATE TABLE IF NOT EXISTS `partners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.partners: ~6 rows (approximately)
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` (`id`, `language_id`, `image`, `url`, `serial_number`) VALUES
	(60, 173, '61ec301a19a14.png', '#', 2),
	(61, 173, '61ec3033177f3.jpg', '#', 2),
	(62, 173, '61ec304d793a1.jpg', '#', 3),
	(63, 173, '61ec3069ebd2d.png', '#', 4),
	(64, 173, '61ec308cbe947.jpg', '#', 5),
	(65, 173, '61ec30b194e8e.png', '#', 6);
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;

-- Dumping structure for table nasaq.payment_gateways
CREATE TABLE IF NOT EXISTS `payment_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.payment_gateways: ~10 rows (approximately)
/*!40000 ALTER TABLE `payment_gateways` DISABLE KEYS */;
INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
	(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{"public_key":null,"secret_key":null,"text":"Pay via your Flutterwave account."}', 'flutterwave', 0),
	(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{"key":null,"secret":null,"text":"Pay via your Razorpay account."}', 'razorpay', 0),
	(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{"merchant":null,"secret":null,"website":null,"industry":null,"text":"Pay via your paytm account."}', 'paytm', 0),
	(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{"key":null,"secret_key":null,"email":null,"text":"Pay via your Paystack account."}', 'paystack', 0),
	(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{"key":null,"token":null,"sandbox_check":"0","text":"Pay via your Instamojo account."}', 'instamojo', 0),
	(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{"key":null,"secret":null,"text":"Pay via your Credit account."}', 'stripe', 0),
	(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{"client_id":null,"client_secret":null,"sandbox_check":"0","text":"Pay via your PayPal account."}', 'paypal', 0),
	(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{"key":null,"text":"Pay via your Mollie Payment account."}', 'mollie', 0),
	(18, NULL, NULL, NULL, 'PayUmoney', 'automatic', '{"key":null,"salt":null,"text":"Pay via your PayUmoney account.","sandbox_check":"0"}', 'payumoney', 0),
	(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{"token":"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156","sandbox_check":"0","text":"Pay via your Mercado Pago account."}', 'mercadopago', 0);
/*!40000 ALTER TABLE `payment_gateways` ENABLE KEYS */;

-- Dumping structure for table nasaq.pcategories
CREATE TABLE IF NOT EXISTS `pcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_feature` int(11) NOT NULL DEFAULT '0',
  `products_in_home` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - yes, 0 - no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.pcategories: ~2 rows (approximately)
/*!40000 ALTER TABLE `pcategories` DISABLE KEYS */;
INSERT INTO `pcategories` (`id`, `name`, `slug`, `language_id`, `image`, `status`, `is_feature`, `products_in_home`, `created_at`, `updated_at`) VALUES
	(21, 'سكربتات', 'سكربتات', 173, NULL, 1, 0, 0, '2020-07-04 03:17:58', '2022-01-21 00:07:47'),
	(22, 'متاجر', 'متاجر', 173, '61a34106ecda7.png', 1, 1, 1, '2020-07-04 03:18:12', '2022-01-21 00:07:17');
/*!40000 ALTER TABLE `pcategories` ENABLE KEYS */;

-- Dumping structure for table nasaq.permalinks
CREATE TABLE IF NOT EXISTS `permalinks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - for details page, 0 - for non-details page',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.permalinks: ~34 rows (approximately)
/*!40000 ALTER TABLE `permalinks` DISABLE KEYS */;
INSERT INTO `permalinks` (`id`, `permalink`, `type`, `details`) VALUES
	(1, 'packages', 'packages', 0),
	(2, 'package', 'package_order', 1),
	(3, 'services', 'services', 0),
	(4, 'service', 'service_details', 1),
	(5, 'portfolios', 'portfolios', 0),
	(6, 'portfolio', 'portfolio_details', 1),
	(7, 'products', 'products', 0),
	(8, 'product', 'product_details', 1),
	(9, 'cart', 'cart', 0),
	(10, 'checkout', 'product_checkout', 0),
	(11, 'team', 'team', 0),
	(12, 'courses', 'courses', 0),
	(13, 'course', 'course_details', 1),
	(14, 'causes', 'causes', 0),
	(15, 'cause', 'cause_details', 1),
	(16, 'events', 'events', 0),
	(17, 'event', 'event_details', 1),
	(18, 'career', 'career', 0),
	(19, 'job', 'career_details', 1),
	(20, 'event-calendar', 'event_calendar', 0),
	(21, 'knowledgebase', 'knowledgebase', 0),
	(22, 'article', 'knowledgebase_details', 1),
	(23, 'gallery', 'gallery', 0),
	(24, 'faq', 'faq', 0),
	(25, 'blogs', 'blogs', 0),
	(26, 'blog', 'blog_details', 1),
	(27, 'rss', 'rss', 0),
	(28, 'rss', 'rss_details', 1),
	(29, 'contact', 'contact', 0),
	(30, 'quote', 'quote', 0),
	(31, 'login', 'login', 0),
	(32, 'register', 'register', 0),
	(33, 'forget-password', 'forget_password', 0),
	(67, 'admin', 'admin_login', 0);
/*!40000 ALTER TABLE `permalinks` ENABLE KEYS */;

-- Dumping structure for table nasaq.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table nasaq.points
CREATE TABLE IF NOT EXISTS `points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '39498a',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.points: ~3 rows (approximately)
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
INSERT INTO `points` (`id`, `language_id`, `icon`, `color`, `title`, `short_text`, `serial_number`) VALUES
	(26, 173, 'fas fa-bullseye', '39498a', 'الأهداف', 'تبدأ المشورة بالتخطيط السليم والرؤية الواضحة', 1),
	(27, 173, 'fas fa-clipboard-list', '39498a', 'التخطيط', 'دراسة الجدوى للمشروع ووضع الاسس السليمة', 2),
	(28, 173, 'fas fa-sync', '39498a', 'تحقيق الاهداف', 'من خلال التصميم المناسب وتحقيق رغبة العميل', 3);
/*!40000 ALTER TABLE `points` ENABLE KEYS */;

-- Dumping structure for table nasaq.popups
CREATE TABLE IF NOT EXISTS `popups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT '1.00',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text COLLATE utf8mb4_unicode_ci,
  `button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT '1000' COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  PRIMARY KEY (`id`),
  KEY `popups_language_id_foreign` (`language_id`),
  CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.popups: ~1 rows (approximately)
/*!40000 ALTER TABLE `popups` DISABLE KEYS */;
INSERT INTO `popups` (`id`, `language_id`, `name`, `image`, `background_image`, `background_color`, `background_opacity`, `title`, `text`, `button_text`, `button_url`, `button_color`, `end_date`, `end_time`, `delay`, `serial_number`, `type`, `created_at`, `updated_at`, `status`) VALUES
	(1, 173, 'html', NULL, '61ecb078ad8a7.jpg', '451D53', 1.00, 'hghjg', 'gjgjgjgjg', '675', NULL, '451D53', NULL, NULL, 3, 1, 3, '2022-01-23 04:33:44', '2022-01-23 04:33:44', 1);
/*!40000 ALTER TABLE `popups` ENABLE KEYS */;

-- Dumping structure for table nasaq.portfolios
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `content` blob,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - will not show in home, 1 - will show in home',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.portfolios: ~2 rows (approximately)
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` (`id`, `language_id`, `title`, `slug`, `start_date`, `submission_date`, `client_name`, `tags`, `featured_image`, `service_id`, `content`, `status`, `feature`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `website_link`) VALUES
	(1, 173, 'تصميم متجر سلة', 'تصميم-متجر-سلة', '01/12/2022', '01/22/2022', 'علي احمد', 'سلة', '61ec49f3496a2.png', 218, _binary 0x3C703E3C62723E3C2F703E, 'Completed', 1, 1, NULL, NULL, '2022-01-22 21:16:19', '2022-01-22 21:17:01', '#'),
	(2, 173, 'ادارة حسابات السوشل ميديا', 'ادارة-حسابات-السوشل-ميديا', '01/13/2022', '01/22/2022', 'محمد علي', 'سوشل ميديا', '61ec4a8c332ef.png', 220, _binary 0x3C703E3C62723E3C2F703E, 'Completed', 1, 2, NULL, NULL, '2022-01-22 21:18:52', '2022-01-22 21:19:28', '#');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;

-- Dumping structure for table nasaq.portfolio_images
CREATE TABLE IF NOT EXISTS `portfolio_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.portfolio_images: ~0 rows (approximately)
/*!40000 ALTER TABLE `portfolio_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_images` ENABLE KEYS */;

-- Dumping structure for table nasaq.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `current_price` decimal(8,2) DEFAULT '0.00',
  `previous_price` decimal(8,2) DEFAULT '0.00',
  `is_feature` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` decimal(11,2) NOT NULL DEFAULT '0.00',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'digital - digital product, physical - physical product',
  `download_file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_link` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.products: ~2 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `slug`, `language_id`, `stock`, `sku`, `category_id`, `tags`, `feature_image`, `summary`, `description`, `current_price`, `previous_price`, `is_feature`, `status`, `created_at`, `updated_at`, `rating`, `meta_keywords`, `meta_description`, `type`, `download_file`, `download_link`) VALUES
	(53, 'موقع المطعم', 'موقع-المطعم', 173, 100000000, NULL, 21, NULL, '61e9cec364ffb.jpg', NULL, '<p style="line-height: 1.6؛"><br> </p>', 0.00, 0.00, 0, 1, '2021-01-17 20:27:12', '2022-01-22 04:35:40', 0.00, NULL, NULL, 'digital', NULL, '#'),
	(54, 'متجر اكتروني', 'متجر-اكتروني', 173, 99999999, NULL, 22, NULL, '61e9cdf7614f9.png', 'تطوير متجر اكتروني باستخدام اطار العمل larave \r\nphp , vue.js', '<p style="text-align: right; ">تطوير متجر اكتروني باستخدام اطار العمل larave&nbsp;</p><p> </p><p style="text-align: right; ">php , vue.js</p>', 1200.00, NULL, 1, 1, '2021-01-17 20:26:13', '2022-01-22 04:49:22', 0.00, NULL, NULL, 'digital', NULL, '#');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table nasaq.product_images
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.product_images: ~3 rows (approximately)
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
	(502, 54, '61eb5928785c8.jpg', '2022-01-22 04:08:56', '2022-01-22 04:08:56'),
	(503, 54, '61eb592878e08.png', '2022-01-22 04:08:56', '2022-01-22 04:08:56'),
	(505, 53, '61eb5f6c10d4b.jpg', '2022-01-22 04:35:40', '2022-01-22 04:35:40');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;

-- Dumping structure for table nasaq.product_orders
CREATE TABLE IF NOT EXISTS `product_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.product_orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_orders` ENABLE KEYS */;

-- Dumping structure for table nasaq.product_reviews
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.product_reviews: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;

-- Dumping structure for table nasaq.push_subscriptions
CREATE TABLE IF NOT EXISTS `push_subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.push_subscriptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `push_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_subscriptions` ENABLE KEYS */;

-- Dumping structure for table nasaq.queue_jobs
CREATE TABLE IF NOT EXISTS `queue_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.queue_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `queue_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_jobs` ENABLE KEYS */;

-- Dumping structure for table nasaq.quotes
CREATE TABLE IF NOT EXISTS `quotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.quotes: ~0 rows (approximately)
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;

-- Dumping structure for table nasaq.quote_inputs
CREATE TABLE IF NOT EXISTS `quote_inputs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-file',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - required, 0 - optional',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.quote_inputs: ~10 rows (approximately)
/*!40000 ALTER TABLE `quote_inputs` DISABLE KEYS */;
INSERT INTO `quote_inputs` (`id`, `language_id`, `type`, `label`, `name`, `placeholder`, `required`, `created_at`, `updated_at`) VALUES
	(54, 173, 1, 'رقم الاتصال', 'رقم_الاتصال', 'أدخل رقم الاتصال', 1, '2019-12-27 14:22:31', '2020-01-06 20:36:34'),
	(55, 173, 1, 'بلد', 'بلد', 'أدخل اسم البلد', 1, '2019-12-27 14:22:58', '2020-01-06 20:36:44'),
	(56, 173, 2, 'الميزانية التقريبية', 'الميزانية_التقريبية', 'حدد الميزانية التقريبية', 1, '2019-12-27 14:24:59', '2020-01-06 20:36:51'),
	(57, 173, 1, 'رقم Skype / رقم واتساب', 'رقم_Skype_/_رقم_واتساب', 'أدخل معرف Skype / رقم Whatsapp', 1, '2019-12-27 14:26:41', '2020-01-06 20:37:03'),
	(58, 173, 3, 'اختر اختياراتك', 'اختر_اختياراتك', NULL, 1, '2019-12-27 14:27:52', '2020-01-06 20:37:08'),
	(59, 173, 4, 'تفاصيل', 'تفاصيل', 'وصف المشروع', 1, '2019-12-27 14:28:20', '2020-01-06 20:37:15'),
	(76, 173, 7, 'وقت', 'وقت', 'أدخل الوقت', 1, '2021-02-20 14:23:21', '2021-02-20 14:23:21'),
	(77, 173, 5, 'المرفقات 1', 'المرفقات_1', NULL, 0, '2021-02-20 14:23:33', '2021-02-20 14:23:33'),
	(78, 173, 6, 'تاريخ', 'تاريخ', 'أدخل التاريخ', 1, '2021-02-20 14:23:55', '2021-02-20 14:23:55'),
	(79, 173, 5, 'الملحق 2', 'الملحق_2', NULL, 1, '2021-02-20 14:24:07', '2021-02-20 14:24:07');
/*!40000 ALTER TABLE `quote_inputs` ENABLE KEYS */;

-- Dumping structure for table nasaq.quote_input_options
CREATE TABLE IF NOT EXISTS `quote_input_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quote_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.quote_input_options: ~20 rows (approximately)
/*!40000 ALTER TABLE `quote_input_options` DISABLE KEYS */;
INSERT INTO `quote_input_options` (`id`, `quote_input_id`, `name`, `created_at`, `updated_at`) VALUES
	(119, 48, 'less than $10000', '2019-12-25 14:32:19', '2019-12-25 14:32:19'),
	(120, 48, '$10000 to $25000', '2019-12-25 14:32:19', '2019-12-25 14:32:19'),
	(121, 48, '$25000 to $50000', '2019-12-25 14:32:19', '2019-12-25 14:32:19'),
	(122, 48, '$50000+', '2019-12-25 14:32:19', '2019-12-25 14:32:19'),
	(123, 48, 'Negotiable', '2019-12-25 14:32:19', '2019-12-25 14:32:19'),
	(124, 50, 'Bootstrap 4 Template', '2019-12-25 14:33:21', '2019-12-25 14:33:21'),
	(125, 50, 'PSD to HTML', '2019-12-25 14:33:21', '2019-12-25 14:33:21'),
	(126, 50, 'HTML & CSS', '2019-12-25 14:33:21', '2019-12-25 14:33:21'),
	(127, 50, 'Laravel Framework', '2019-12-25 14:33:21', '2019-12-25 14:33:21'),
	(128, 50, 'React Native App', '2019-12-25 14:33:21', '2019-12-25 14:33:21'),
	(139, 56, 'أقل من 10000 دولار', '2020-01-06 20:36:51', '2020-01-06 20:36:51'),
	(140, 56, '10000 دولار إلى 25000 دولار', '2020-01-06 20:36:51', '2020-01-06 20:36:51'),
	(141, 56, '25000 دولار إلى 50000 دولار', '2020-01-06 20:36:51', '2020-01-06 20:36:51'),
	(142, 56, '$ 50000 +', '2020-01-06 20:36:51', '2020-01-06 20:36:51'),
	(143, 56, 'قابل للتفاوض', '2020-01-06 20:36:51', '2020-01-06 20:36:51'),
	(171, 58, 'انشاء متجر على منصة سلة ( salla )', '2022-01-21 22:59:34', '2022-01-21 22:59:34'),
	(172, 58, 'انشاء متجر على منصة زد ( zid )', '2022-01-21 22:59:35', '2022-01-21 22:59:35'),
	(173, 58, 'تطوير متجر متعدد التجار - B2B', '2022-01-21 22:59:35', '2022-01-21 22:59:35'),
	(174, 58, 'ادارة متجر اكتروني وحسابات السوشل ميديا', '2022-01-21 22:59:35', '2022-01-21 22:59:35'),
	(175, 58, 'تطوير تطبيقات جوال', '2022-01-21 22:59:35', '2022-01-21 22:59:35');
/*!40000 ALTER TABLE `quote_input_options` ENABLE KEYS */;

-- Dumping structure for table nasaq.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 'Moderator', '["Dashboard","Theme & Home","Content Management","Pages","Event Calendar","Shop Management","Events Management","Knowledgebase","Tickets"]', '2019-10-02 20:47:30', '2021-04-22 00:07:55'),
	(3, 'Super Admin', '["Dashboard","Basic Settings","Subscribers","Quote Management","Home Page","Footer","Pages","Service Page","Portfolio Management","Event Calendar","Gallery Management","FAQ Management","Blogs","Contact Page","Role Management","Users Management","Language Management","Backup"]', '2019-10-03 19:52:29', '2020-03-05 21:48:34'),
	(4, 'Admin', '["Dashboard","Basic Settings","Quote Management","Home Page","Footer","Service Page","Portfolio Management","Gallery Management","FAQ Management","Blogs","Contact Page"]', '2019-10-03 19:52:53', '2019-10-03 19:53:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table nasaq.rss_feeds
CREATE TABLE IF NOT EXISTS `rss_feeds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `feed_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feed_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_limit` int(11) DEFAULT NULL,
  `read_more_button` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.rss_feeds: ~5 rows (approximately)
/*!40000 ALTER TABLE `rss_feeds` DISABLE KEYS */;
INSERT INTO `rss_feeds` (`id`, `language_id`, `feed_name`, `feed_url`, `post_limit`, `read_more_button`, `created_at`, `updated_at`) VALUES
	(9, 169, 'ABC News', 'https://www.abc.net.au/news/feed/4570058/rss.xml', 5, 'Read More', '2020-03-27 09:29:30', NULL),
	(10, 169, 'CNN News', 'http://rss.cnn.com/rss/edition_world.rss', 10, 'Read More', NULL, NULL),
	(11, 169, 'Independent News', 'http://www.independent.co.uk/news/world/rss', 10, 'Read More', NULL, NULL),
	(12, NULL, NULL, NULL, NULL, 'Read More', NULL, NULL),
	(13, NULL, NULL, NULL, NULL, 'Read More', NULL, NULL);
/*!40000 ALTER TABLE `rss_feeds` ENABLE KEYS */;

-- Dumping structure for table nasaq.rss_posts
CREATE TABLE IF NOT EXISTS `rss_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `rss_feed_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rss_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.rss_posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `rss_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rss_posts` ENABLE KEYS */;

-- Dumping structure for table nasaq.scategories
CREATE TABLE IF NOT EXISTS `scategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `feature` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - will not show in home, 1 - will show in home',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.scategories: ~4 rows (approximately)
/*!40000 ALTER TABLE `scategories` DISABLE KEYS */;
INSERT INTO `scategories` (`id`, `language_id`, `name`, `image`, `short_text`, `status`, `serial_number`, `feature`) VALUES
	(73, 173, 'السوشل ميديا', '61ec2c118c68a.png', 'ادارة حسابات السوشل ميديا', 1, 4, 1),
	(74, 173, 'تطوير تطبيق اكتروني', '61ec2ba6af00b.png', 'تطوير تطبيقات  لمتجرك الالكتروني', 1, 3, 1),
	(76, 173, 'تطوير متاجر', '61ec2b4650e4f.png', 'تطوير متاجر اكترونية', 1, 2, 1),
	(77, 173, 'دراسة جدوى', '61ec2a5e3f959.png', 'نقدم دراسة جدوى لمشروعك التقني', 1, 1, 1);
/*!40000 ALTER TABLE `scategories` ENABLE KEYS */;

-- Dumping structure for table nasaq.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `scategory_id` int(11) DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `feature` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - will not show in home, 1 - will show in home',
  `details_page_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `sidebar` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.services: ~3 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `language_id`, `scategory_id`, `main_image`, `title`, `slug`, `content`, `summary`, `serial_number`, `meta_keywords`, `meta_description`, `feature`, `details_page_status`, `sidebar`) VALUES
	(218, 173, 76, '61ec436363db6.png', 'تطوير متجر عبر منصة سلة', 'تطوير-متجر-عبر-منصة-سلة', _binary 0x3C703E3C62723E3C2F703E, 'دراسة جدوى ، تصميم المتجر تصميم البنرات ، تصميم فئات المنتجات ، تصميم خلفيات المنتجات ، تصميم ، تخصيص css', 1, NULL, NULL, 1, 1, 1),
	(219, 173, 74, '61ec447507972.jpg', 'تطوير تطبيقات', 'تطوير-تطبيقات', _binary 0x3C703E3C62723E3C2F703E, 'تطوير تطبيقات للمتاجر الالكترونية بواسطة React native , flutter', 2, NULL, NULL, 1, 1, 1),
	(220, 173, 73, '61ec451d55261.png', 'ادارة حساابت السوشل ميديا', 'ادارة-حساابت-السوشل-ميديا', _binary 0x3C703E3C62723E3C2F703E, 'بواسطة تصميم بوسترات ونشر ومتابعة', 3, NULL, NULL, 1, 1, 1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table nasaq.shipping_charges
CREATE TABLE IF NOT EXISTS `shipping_charges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.shipping_charges: ~1 rows (approximately)
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;
INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `days`, `charge`, `created_at`, `updated_at`) VALUES
	(1, 'بدون شحن', 173, 'هتهت', NULL, 0.00, '2022-01-22 04:12:48', '2022-01-22 04:12:48');
/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;

-- Dumping structure for table nasaq.sitemaps
CREATE TABLE IF NOT EXISTS `sitemaps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.sitemaps: ~0 rows (approximately)
/*!40000 ALTER TABLE `sitemaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitemaps` ENABLE KEYS */;

-- Dumping structure for table nasaq.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_font_size` int(11) DEFAULT NULL,
  `bold_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bold_text_font_size` int(11) DEFAULT NULL,
  `bold_text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_font_size` int(11) DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text_font_size` int(11) DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `another_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_button_text_font_size` int(11) DEFAULT NULL,
  `another_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.sliders: ~0 rows (approximately)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table nasaq.socials
CREATE TABLE IF NOT EXISTS `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.socials: ~6 rows (approximately)
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
	(20, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
	(21, 'fab fa-twitter', 'https://www.twitter.com/', 2),
	(22, 'fab fa-dribbble', 'https://dribble.com/', 3),
	(23, 'fab fa-linkedin-in', 'https://www.linkedin.com/', 4),
	(24, 'fab fa-google-plus-g', 'https://www.google.com/', 5),
	(25, 'fab fa-instagram iconpicker-component', 'https://www.instagram.com/', 6);
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;

-- Dumping structure for table nasaq.statistics
CREATE TABLE IF NOT EXISTS `statistics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.statistics: ~4 rows (approximately)
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` (`id`, `language_id`, `title`, `quantity`, `icon`, `serial_number`, `created_at`, `updated_at`) VALUES
	(25, 173, 'عدد العملاء', 0, 'fas fa-user', 1, NULL, NULL),
	(26, 173, 'دراسة جدوى', 0, 'fas fa-pen-square', 2, NULL, NULL),
	(27, 173, 'المشاريع المكتملة', 0, 'fas fa-project-diagram', 3, NULL, NULL),
	(28, 173, 'مراجعات إيجابية', 0, 'far fa-thumbs-up', 4, NULL, NULL);
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;

-- Dumping structure for table nasaq.subscribers
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.subscribers: ~2 rows (approximately)
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` (`id`, `email`) VALUES
	(20, 'mohammed.hudair@gmail.com'),
	(21, 'mohammed.hudair@gmail.com');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;

-- Dumping structure for table nasaq.subscriptions
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `current_package_id` int(11) DEFAULT NULL,
  `next_package_id` int(11) DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '0 - expired, 1 - active, 2 - cancelled, 3 - payment incomplete',
  `expire_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending_package_id` int(11) DEFAULT NULL,
  `pending_payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.subscriptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;

-- Dumping structure for table nasaq.testimonials
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.testimonials: ~0 rows (approximately)
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;

-- Dumping structure for table nasaq.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '1',
  `ticket_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `zip_file` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_message` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.tickets: ~0 rows (approximately)
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;

-- Dumping structure for table nasaq.timezones
CREATE TABLE IF NOT EXISTS `timezones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmt_offset` decimal(10,2) NOT NULL,
  `dst_offset` decimal(10,2) NOT NULL,
  `raw_offset` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.timezones: ~418 rows (approximately)
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` (`id`, `country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
	(1, 'AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
	(2, 'AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
	(3, 'AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
	(4, 'AG', 'America/Antigua', -4.00, -4.00, -4.00),
	(5, 'AI', 'America/Anguilla', -4.00, -4.00, -4.00),
	(6, 'AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
	(7, 'AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
	(8, 'AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
	(9, 'AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
	(10, 'AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
	(11, 'AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
	(12, 'AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
	(13, 'AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
	(14, 'AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
	(15, 'AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
	(16, 'AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
	(17, 'AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
	(18, 'AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
	(19, 'AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
	(20, 'AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
	(21, 'AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
	(22, 'AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
	(23, 'AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
	(24, 'AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
	(25, 'AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
	(26, 'AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
	(27, 'AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
	(28, 'AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
	(29, 'AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
	(30, 'AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
	(31, 'AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
	(32, 'AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
	(33, 'AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
	(34, 'AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
	(35, 'AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
	(36, 'AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
	(37, 'AU', 'Australia/Currie', 11.00, 10.00, 10.00),
	(38, 'AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
	(39, 'AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
	(40, 'AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
	(41, 'AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
	(42, 'AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
	(43, 'AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
	(44, 'AU', 'Australia/Perth', 8.00, 8.00, 8.00),
	(45, 'AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
	(46, 'AW', 'America/Aruba', -4.00, -4.00, -4.00),
	(47, 'AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
	(48, 'AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
	(49, 'BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
	(50, 'BB', 'America/Barbados', -4.00, -4.00, -4.00),
	(51, 'BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
	(52, 'BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
	(53, 'BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
	(54, 'BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
	(55, 'BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
	(56, 'BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
	(57, 'BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
	(58, 'BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
	(59, 'BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
	(60, 'BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
	(61, 'BO', 'America/La_Paz', -4.00, -4.00, -4.00),
	(62, 'BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
	(63, 'BR', 'America/Araguaina', -3.00, -3.00, -3.00),
	(64, 'BR', 'America/Bahia', -3.00, -3.00, -3.00),
	(65, 'BR', 'America/Belem', -3.00, -3.00, -3.00),
	(66, 'BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
	(67, 'BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
	(68, 'BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
	(69, 'BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
	(70, 'BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
	(71, 'BR', 'America/Maceio', -3.00, -3.00, -3.00),
	(72, 'BR', 'America/Manaus', -4.00, -4.00, -4.00),
	(73, 'BR', 'America/Noronha', -2.00, -2.00, -2.00),
	(74, 'BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
	(75, 'BR', 'America/Recife', -3.00, -3.00, -3.00),
	(76, 'BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
	(77, 'BR', 'America/Santarem', -3.00, -3.00, -3.00),
	(78, 'BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
	(79, 'BS', 'America/Nassau', -5.00, -4.00, -5.00),
	(80, 'BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
	(81, 'BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
	(82, 'BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
	(83, 'BZ', 'America/Belize', -6.00, -6.00, -6.00),
	(84, 'CA', 'America/Atikokan', -5.00, -5.00, -5.00),
	(85, 'CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
	(86, 'CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
	(87, 'CA', 'America/Creston', -7.00, -7.00, -7.00),
	(88, 'CA', 'America/Dawson', -8.00, -7.00, -8.00),
	(89, 'CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
	(90, 'CA', 'America/Edmonton', -7.00, -6.00, -7.00),
	(91, 'CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
	(92, 'CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
	(93, 'CA', 'America/Halifax', -4.00, -3.00, -4.00),
	(94, 'CA', 'America/Inuvik', -7.00, -6.00, -7.00),
	(95, 'CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
	(96, 'CA', 'America/Moncton', -4.00, -3.00, -4.00),
	(97, 'CA', 'America/Montreal', -5.00, -4.00, -5.00),
	(98, 'CA', 'America/Nipigon', -5.00, -4.00, -5.00),
	(99, 'CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
	(100, 'CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
	(101, 'CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
	(102, 'CA', 'America/Regina', -6.00, -6.00, -6.00),
	(103, 'CA', 'America/Resolute', -6.00, -5.00, -6.00),
	(104, 'CA', 'America/St_Johns', -3.50, -2.50, -3.50),
	(105, 'CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
	(106, 'CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
	(107, 'CA', 'America/Toronto', -5.00, -4.00, -5.00),
	(108, 'CA', 'America/Vancouver', -8.00, -7.00, -8.00),
	(109, 'CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
	(110, 'CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
	(111, 'CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
	(112, 'CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
	(113, 'CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
	(114, 'CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
	(115, 'CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
	(116, 'CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
	(117, 'CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
	(118, 'CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
	(119, 'CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
	(120, 'CL', 'America/Santiago', -3.00, -4.00, -4.00),
	(121, 'CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
	(122, 'CM', 'Africa/Douala', 1.00, 1.00, 1.00),
	(123, 'CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
	(124, 'CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
	(125, 'CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
	(126, 'CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
	(127, 'CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
	(128, 'CO', 'America/Bogota', -5.00, -5.00, -5.00),
	(129, 'CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
	(130, 'CU', 'America/Havana', -5.00, -4.00, -5.00),
	(131, 'CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
	(132, 'CW', 'America/Curacao', -4.00, -4.00, -4.00),
	(133, 'CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
	(134, 'CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
	(135, 'CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
	(136, 'DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
	(137, 'DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
	(138, 'DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
	(139, 'DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
	(140, 'DM', 'America/Dominica', -4.00, -4.00, -4.00),
	(141, 'DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
	(142, 'DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
	(143, 'EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
	(144, 'EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
	(145, 'EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
	(146, 'EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
	(147, 'EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
	(148, 'ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
	(149, 'ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
	(150, 'ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
	(151, 'ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
	(152, 'ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
	(153, 'FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
	(154, 'FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
	(155, 'FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
	(156, 'FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
	(157, 'FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
	(158, 'FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
	(159, 'FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
	(160, 'FR', 'Europe/Paris', 1.00, 2.00, 1.00),
	(161, 'GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
	(162, 'GB', 'Europe/London', 0.00, 1.00, 0.00),
	(163, 'GD', 'America/Grenada', -4.00, -4.00, -4.00),
	(164, 'GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
	(165, 'GF', 'America/Cayenne', -3.00, -3.00, -3.00),
	(166, 'GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
	(167, 'GH', 'Africa/Accra', 0.00, 0.00, 0.00),
	(168, 'GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
	(169, 'GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
	(170, 'GL', 'America/Godthab', -3.00, -2.00, -3.00),
	(171, 'GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
	(172, 'GL', 'America/Thule', -4.00, -3.00, -4.00),
	(173, 'GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
	(174, 'GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
	(175, 'GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
	(176, 'GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
	(177, 'GR', 'Europe/Athens', 2.00, 3.00, 2.00),
	(178, 'GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
	(179, 'GT', 'America/Guatemala', -6.00, -6.00, -6.00),
	(180, 'GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
	(181, 'GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
	(182, 'GY', 'America/Guyana', -4.00, -4.00, -4.00),
	(183, 'HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
	(184, 'HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
	(185, 'HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
	(186, 'HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
	(187, 'HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
	(188, 'ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
	(189, 'ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
	(190, 'ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
	(191, 'ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
	(192, 'IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
	(193, 'IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
	(194, 'IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
	(195, 'IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
	(196, 'IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
	(197, 'IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
	(198, 'IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
	(199, 'IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
	(200, 'IT', 'Europe/Rome', 1.00, 2.00, 1.00),
	(201, 'JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
	(202, 'JM', 'America/Jamaica', -5.00, -5.00, -5.00),
	(203, 'JO', 'Asia/Amman', 2.00, 3.00, 2.00),
	(204, 'JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
	(205, 'KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
	(206, 'KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
	(207, 'KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
	(208, 'KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
	(209, 'KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
	(210, 'KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
	(211, 'KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
	(212, 'KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
	(213, 'KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
	(214, 'KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
	(215, 'KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
	(216, 'KY', 'America/Cayman', -5.00, -5.00, -5.00),
	(217, 'KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
	(218, 'KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
	(219, 'KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
	(220, 'KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
	(221, 'KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
	(222, 'LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
	(223, 'LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
	(224, 'LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
	(225, 'LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
	(226, 'LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
	(227, 'LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
	(228, 'LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
	(229, 'LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
	(230, 'LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
	(231, 'LV', 'Europe/Riga', 2.00, 3.00, 2.00),
	(232, 'LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
	(233, 'MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
	(234, 'MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
	(235, 'MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
	(236, 'ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
	(237, 'MF', 'America/Marigot', -4.00, -4.00, -4.00),
	(238, 'MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
	(239, 'MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
	(240, 'MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
	(241, 'MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
	(242, 'ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
	(243, 'MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
	(244, 'MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
	(245, 'MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
	(246, 'MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
	(247, 'MO', 'Asia/Macau', 8.00, 8.00, 8.00),
	(248, 'MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
	(249, 'MQ', 'America/Martinique', -4.00, -4.00, -4.00),
	(250, 'MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
	(251, 'MS', 'America/Montserrat', -4.00, -4.00, -4.00),
	(252, 'MT', 'Europe/Malta', 1.00, 2.00, 1.00),
	(253, 'MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
	(254, 'MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
	(255, 'MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
	(256, 'MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
	(257, 'MX', 'America/Cancun', -6.00, -5.00, -6.00),
	(258, 'MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
	(259, 'MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
	(260, 'MX', 'America/Matamoros', -6.00, -5.00, -6.00),
	(261, 'MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
	(262, 'MX', 'America/Merida', -6.00, -5.00, -6.00),
	(263, 'MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
	(264, 'MX', 'America/Monterrey', -6.00, -5.00, -6.00),
	(265, 'MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
	(266, 'MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
	(267, 'MX', 'America/Tijuana', -8.00, -7.00, -8.00),
	(268, 'MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
	(269, 'MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
	(270, 'MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
	(271, 'NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
	(272, 'NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
	(273, 'NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
	(274, 'NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
	(275, 'NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
	(276, 'NI', 'America/Managua', -6.00, -6.00, -6.00),
	(277, 'NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
	(278, 'NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
	(279, 'NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
	(280, 'NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
	(281, 'NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
	(282, 'NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
	(283, 'NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
	(284, 'OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
	(285, 'PA', 'America/Panama', -5.00, -5.00, -5.00),
	(286, 'PE', 'America/Lima', -5.00, -5.00, -5.00),
	(287, 'PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
	(288, 'PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
	(289, 'PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
	(290, 'PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
	(291, 'PH', 'Asia/Manila', 8.00, 8.00, 8.00),
	(292, 'PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
	(293, 'PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
	(294, 'PM', 'America/Miquelon', -3.00, -2.00, -3.00),
	(295, 'PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
	(296, 'PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
	(297, 'PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
	(298, 'PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
	(299, 'PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
	(300, 'PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
	(301, 'PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
	(302, 'PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
	(303, 'PY', 'America/Asuncion', -3.00, -4.00, -4.00),
	(304, 'QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
	(305, 'RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
	(306, 'RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
	(307, 'RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
	(308, 'RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
	(309, 'RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
	(310, 'RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
	(311, 'RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
	(312, 'RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
	(313, 'RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
	(314, 'RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
	(315, 'RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
	(316, 'RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
	(317, 'RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
	(318, 'RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
	(319, 'RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
	(320, 'RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
	(321, 'RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
	(322, 'RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
	(323, 'RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
	(324, 'RU', 'Europe/Samara', 4.00, 4.00, 4.00),
	(325, 'RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
	(326, 'RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
	(327, 'SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
	(328, 'SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
	(329, 'SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
	(330, 'SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
	(331, 'SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
	(332, 'SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
	(333, 'SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
	(334, 'SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
	(335, 'SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
	(336, 'SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
	(337, 'SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
	(338, 'SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
	(339, 'SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
	(340, 'SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
	(341, 'SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
	(342, 'SS', 'Africa/Juba', 3.00, 3.00, 3.00),
	(343, 'ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
	(344, 'SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
	(345, 'SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
	(346, 'SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
	(347, 'SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
	(348, 'TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
	(349, 'TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
	(350, 'TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
	(351, 'TG', 'Africa/Lome', 0.00, 0.00, 0.00),
	(352, 'TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
	(353, 'TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
	(354, 'TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
	(355, 'TL', 'Asia/Dili', 9.00, 9.00, 9.00),
	(356, 'TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
	(357, 'TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
	(358, 'TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
	(359, 'TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
	(360, 'TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
	(361, 'TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
	(362, 'TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
	(363, 'TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
	(364, 'UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
	(365, 'UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
	(366, 'UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
	(367, 'UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
	(368, 'UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
	(369, 'UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
	(370, 'UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
	(371, 'UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
	(372, 'US', 'America/Adak', -10.00, -9.00, -10.00),
	(373, 'US', 'America/Anchorage', -9.00, -8.00, -9.00),
	(374, 'US', 'America/Boise', -7.00, -6.00, -7.00),
	(375, 'US', 'America/Chicago', -6.00, -5.00, -6.00),
	(376, 'US', 'America/Denver', -7.00, -6.00, -7.00),
	(377, 'US', 'America/Detroit', -5.00, -4.00, -5.00),
	(378, 'US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
	(379, 'US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
	(380, 'US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
	(381, 'US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
	(382, 'US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
	(383, 'US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
	(384, 'US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
	(385, 'US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
	(386, 'US', 'America/Juneau', -9.00, -8.00, -9.00),
	(387, 'US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
	(388, 'US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
	(389, 'US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
	(390, 'US', 'America/Menominee', -6.00, -5.00, -6.00),
	(391, 'US', 'America/Metlakatla', -8.00, -8.00, -8.00),
	(392, 'US', 'America/New_York', -5.00, -4.00, -5.00),
	(393, 'US', 'America/Nome', -9.00, -8.00, -9.00),
	(394, 'US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
	(395, 'US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
	(396, 'US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
	(397, 'US', 'America/Phoenix', -7.00, -7.00, -7.00),
	(398, 'US', 'America/Shiprock', -7.00, -6.00, -7.00),
	(399, 'US', 'America/Sitka', -9.00, -8.00, -9.00),
	(400, 'US', 'America/Yakutat', -9.00, -8.00, -9.00),
	(401, 'US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
	(402, 'UY', 'America/Montevideo', -2.00, -3.00, -3.00),
	(403, 'UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
	(404, 'UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
	(405, 'VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
	(406, 'VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
	(407, 'VE', 'America/Caracas', -4.50, -4.50, -4.50),
	(408, 'VG', 'America/Tortola', -4.00, -4.00, -4.00),
	(409, 'VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
	(410, 'VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
	(411, 'VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
	(412, 'WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
	(413, 'WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
	(414, 'YE', 'Asia/Aden', 3.00, 3.00, 3.00),
	(415, 'YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
	(416, 'ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
	(417, 'ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
	(418, 'ZW', 'Africa/Harare', 2.00, 2.00, 2.00);
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;

-- Dumping structure for table nasaq.ulinks
CREATE TABLE IF NOT EXISTS `ulinks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.ulinks: ~3 rows (approximately)
/*!40000 ALTER TABLE `ulinks` DISABLE KEYS */;
INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`) VALUES
	(36, 173, 'من نحن', '#'),
	(37, 173, 'سياسة الخصوصية', '#'),
	(38, 173, 'الشروط والاحكام', '#');
/*!40000 ALTER TABLE `ulinks` ENABLE KEYS */;

-- Dumping structure for table nasaq.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasaq.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shpping_fname`, `shpping_lname`, `shpping_photo`, `shpping_email`, `shpping_number`, `shpping_city`, `shpping_state`, `shpping_address`, `shpping_country`, `created_at`, `updated_at`, `status`, `verification_link`, `email_verified`, `provider`, `provider_id`) VALUES
	(27, NULL, NULL, NULL, 'admin', 'mhudair30@gmail.com', '$2y$10$freoQagpo.PhLa44oUMGc..A4fZfWfr4g4sgCmB19ceINyZq6u3oy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-22 02:22:32', '2022-01-22 02:24:53', 1, 'a3d0edaa62efa4c0855f92e78e946168', 'Yes', NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
