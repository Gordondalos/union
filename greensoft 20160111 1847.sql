--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 11.01.2016 18:47:56
-- Версия сервера: 5.6.21
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE greensoft;

--
-- Описание для таблицы dle_admin_logs
--
DROP TABLE IF EXISTS dle_admin_logs;
CREATE TABLE dle_admin_logs (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  action INT(11) NOT NULL DEFAULT 0,
  extras TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX date (date)
)
ENGINE = MYISAM
AUTO_INCREMENT = 62
AVG_ROW_LENGTH = 67
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_admin_sections
--
DROP TABLE IF EXISTS dle_admin_sections;
CREATE TABLE dle_admin_sections (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL DEFAULT '',
  title VARCHAR(255) NOT NULL DEFAULT '',
  descr VARCHAR(255) NOT NULL DEFAULT '',
  icon VARCHAR(255) NOT NULL DEFAULT '',
  allow_groups VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  UNIQUE INDEX name (name)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_banned
--
DROP TABLE IF EXISTS dle_banned;
CREATE TABLE dle_banned (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  users_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  descr TEXT NOT NULL,
  date VARCHAR(15) NOT NULL DEFAULT '',
  days SMALLINT(4) NOT NULL DEFAULT 0,
  ip VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX user_id (users_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_banners
--
DROP TABLE IF EXISTS dle_banners;
CREATE TABLE dle_banners (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  banner_tag VARCHAR(40) NOT NULL DEFAULT '',
  descr VARCHAR(200) NOT NULL DEFAULT '',
  code TEXT NOT NULL,
  approve TINYINT(1) NOT NULL DEFAULT 0,
  short_place TINYINT(1) NOT NULL DEFAULT 0,
  bstick TINYINT(1) NOT NULL DEFAULT 0,
  main TINYINT(1) NOT NULL DEFAULT 0,
  category VARCHAR(255) NOT NULL DEFAULT '',
  grouplevel VARCHAR(100) NOT NULL DEFAULT 'all',
  start VARCHAR(15) NOT NULL DEFAULT '',
  end VARCHAR(15) NOT NULL DEFAULT '',
  fpage TINYINT(1) NOT NULL DEFAULT 0,
  innews TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 236
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_category
--
DROP TABLE IF EXISTS dle_category;
CREATE TABLE dle_category (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  parentid MEDIUMINT(8) NOT NULL DEFAULT 0,
  posi MEDIUMINT(8) NOT NULL DEFAULT 1,
  name VARCHAR(50) NOT NULL DEFAULT '',
  alt_name VARCHAR(50) NOT NULL DEFAULT '',
  icon VARCHAR(200) NOT NULL DEFAULT '',
  skin VARCHAR(50) NOT NULL DEFAULT '',
  descr VARCHAR(200) NOT NULL DEFAULT '',
  keywords TEXT NOT NULL,
  news_sort VARCHAR(10) NOT NULL DEFAULT '',
  news_msort VARCHAR(4) NOT NULL DEFAULT '',
  news_number SMALLINT(5) NOT NULL DEFAULT 0,
  short_tpl VARCHAR(40) NOT NULL DEFAULT '',
  full_tpl VARCHAR(40) NOT NULL DEFAULT '',
  metatitle VARCHAR(255) NOT NULL DEFAULT '',
  show_sub TINYINT(1) NOT NULL DEFAULT 0,
  allow_rss TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 76
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_comment_rating_log
--
DROP TABLE IF EXISTS dle_comment_rating_log;
CREATE TABLE dle_comment_rating_log (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  c_id INT(11) NOT NULL DEFAULT 0,
  member VARCHAR(40) NOT NULL DEFAULT '',
  ip VARCHAR(40) NOT NULL DEFAULT '',
  rating TINYINT(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX c_id (c_id),
  INDEX ip (ip),
  INDEX member (member)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_comments
--
DROP TABLE IF EXISTS dle_comments;
CREATE TABLE dle_comments (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  post_id INT(11) NOT NULL DEFAULT 0,
  user_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  date DATETIME NOT NULL DEFAULT '2000-01-01 00:00:00',
  autor VARCHAR(40) NOT NULL DEFAULT '',
  email VARCHAR(40) NOT NULL DEFAULT '',
  text TEXT NOT NULL,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  is_register TINYINT(1) NOT NULL DEFAULT 0,
  approve TINYINT(1) NOT NULL DEFAULT 1,
  rating INT(11) NOT NULL DEFAULT 0,
  vote_num INT(11) NOT NULL DEFAULT 0,
  parent INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX approve (approve),
  INDEX parent (parent),
  INDEX post_id (post_id),
  FULLTEXT INDEX text (text),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_complaint
--
DROP TABLE IF EXISTS dle_complaint;
CREATE TABLE dle_complaint (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  p_id INT(11) NOT NULL DEFAULT 0,
  c_id INT(11) NOT NULL DEFAULT 0,
  n_id INT(11) NOT NULL DEFAULT 0,
  text TEXT NOT NULL,
  `from` VARCHAR(40) NOT NULL DEFAULT '',
  `to` VARCHAR(255) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX c_id (c_id),
  INDEX n_id (n_id),
  INDEX p_id (p_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_email
--
DROP TABLE IF EXISTS dle_email;
CREATE TABLE dle_email (
  id TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL DEFAULT '',
  template TEXT NOT NULL,
  use_html TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 956
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_files
--
DROP TABLE IF EXISTS dle_files;
CREATE TABLE dle_files (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  news_id INT(10) NOT NULL DEFAULT 0,
  name VARCHAR(250) NOT NULL DEFAULT '',
  onserver VARCHAR(250) NOT NULL DEFAULT '',
  author VARCHAR(40) NOT NULL DEFAULT '',
  date VARCHAR(15) NOT NULL DEFAULT '',
  dcount MEDIUMINT(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_flood
--
DROP TABLE IF EXISTS dle_flood;
CREATE TABLE dle_flood (
  f_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  id VARCHAR(20) NOT NULL DEFAULT '',
  flag TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (f_id),
  INDEX flag (flag),
  INDEX id (id),
  INDEX ip (ip)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_ignore_list
--
DROP TABLE IF EXISTS dle_ignore_list;
CREATE TABLE dle_ignore_list (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  user INT(11) NOT NULL DEFAULT 0,
  user_from VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX user (user),
  INDEX user_from (user_from)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_images
--
DROP TABLE IF EXISTS dle_images;
CREATE TABLE dle_images (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  images TEXT NOT NULL,
  news_id INT(10) NOT NULL DEFAULT 0,
  author VARCHAR(40) NOT NULL DEFAULT '',
  date VARCHAR(15) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX author (author),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 107
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_links
--
DROP TABLE IF EXISTS dle_links;
CREATE TABLE dle_links (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  word VARCHAR(255) NOT NULL DEFAULT '',
  link VARCHAR(255) NOT NULL DEFAULT '',
  only_one TINYINT(1) NOT NULL DEFAULT 0,
  replacearea TINYINT(1) NOT NULL DEFAULT 1,
  rcount TINYINT(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_login_log
--
DROP TABLE IF EXISTS dle_login_log;
CREATE TABLE dle_login_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  count SMALLINT(6) NOT NULL DEFAULT 0,
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX date (date),
  UNIQUE INDEX ip (ip)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_logs
--
DROP TABLE IF EXISTS dle_logs;
CREATE TABLE dle_logs (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(10) NOT NULL DEFAULT 0,
  member VARCHAR(40) NOT NULL DEFAULT '',
  ip VARCHAR(40) NOT NULL DEFAULT '',
  rating TINYINT(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX ip (ip),
  INDEX member (member),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_lostdb
--
DROP TABLE IF EXISTS dle_lostdb;
CREATE TABLE dle_lostdb (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  lostname MEDIUMINT(8) NOT NULL DEFAULT 0,
  lostid VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX lostid (lostid)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_mail_log
--
DROP TABLE IF EXISTS dle_mail_log;
CREATE TABLE dle_mail_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT(11) NOT NULL DEFAULT 0,
  mail VARCHAR(50) NOT NULL DEFAULT '',
  hash VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX hash (hash)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_notice
--
DROP TABLE IF EXISTS dle_notice;
CREATE TABLE dle_notice (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  user_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  notice TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_pm
--
DROP TABLE IF EXISTS dle_pm;
CREATE TABLE dle_pm (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  subj VARCHAR(255) NOT NULL DEFAULT '',
  text TEXT NOT NULL,
  user MEDIUMINT(8) NOT NULL DEFAULT 0,
  user_from VARCHAR(40) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  pm_read TINYINT(1) NOT NULL DEFAULT 0,
  folder VARCHAR(10) NOT NULL DEFAULT '',
  reply TINYINT(1) NOT NULL DEFAULT 0,
  sendid INT(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX folder (folder),
  INDEX pm_read (pm_read),
  INDEX user (user),
  INDEX user_from (user_from)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_poll
--
DROP TABLE IF EXISTS dle_poll;
CREATE TABLE dle_poll (
  id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(10) UNSIGNED NOT NULL DEFAULT 0,
  title VARCHAR(200) NOT NULL DEFAULT '',
  frage VARCHAR(200) NOT NULL DEFAULT '',
  body TEXT NOT NULL,
  votes MEDIUMINT(8) NOT NULL DEFAULT 0,
  multiple TINYINT(1) NOT NULL DEFAULT 0,
  answer TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_poll_log
--
DROP TABLE IF EXISTS dle_poll_log;
CREATE TABLE dle_poll_log (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(10) UNSIGNED NOT NULL DEFAULT 0,
  member VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX news_id (news_id, member)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_post
--
DROP TABLE IF EXISTS dle_post;
CREATE TABLE dle_post (
  id INT(11) NOT NULL AUTO_INCREMENT,
  autor VARCHAR(40) NOT NULL DEFAULT '',
  date DATETIME NOT NULL DEFAULT '2000-01-01 00:00:00',
  short_story TEXT NOT NULL,
  full_story TEXT NOT NULL,
  xfields TEXT NOT NULL,
  title VARCHAR(255) NOT NULL DEFAULT '',
  descr VARCHAR(200) NOT NULL DEFAULT '',
  keywords TEXT NOT NULL,
  category VARCHAR(200) NOT NULL DEFAULT '0',
  alt_name VARCHAR(200) NOT NULL DEFAULT '',
  comm_num MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  allow_comm TINYINT(1) NOT NULL DEFAULT 1,
  allow_main TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
  approve TINYINT(1) NOT NULL DEFAULT 0,
  fixed TINYINT(1) NOT NULL DEFAULT 0,
  allow_br TINYINT(1) NOT NULL DEFAULT 1,
  symbol VARCHAR(3) NOT NULL DEFAULT '',
  tags VARCHAR(255) NOT NULL DEFAULT '',
  metatitle VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX allow_main (allow_main),
  INDEX alt_name (alt_name),
  INDEX approve (approve),
  INDEX autor (autor),
  INDEX category (category),
  INDEX comm_num (comm_num),
  INDEX date (date),
  INDEX fixed (fixed),
  FULLTEXT INDEX short_story (short_story, full_story, xfields, title),
  INDEX symbol (symbol),
  INDEX tags (tags)
)
ENGINE = MYISAM
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 3386
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_post_extras
--
DROP TABLE IF EXISTS dle_post_extras;
CREATE TABLE dle_post_extras (
  eid INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  news_read INT(11) NOT NULL DEFAULT 0,
  allow_rate TINYINT(1) NOT NULL DEFAULT 1,
  rating INT(11) NOT NULL DEFAULT 0,
  vote_num INT(11) NOT NULL DEFAULT 0,
  votes TINYINT(1) NOT NULL DEFAULT 0,
  view_edit TINYINT(1) NOT NULL DEFAULT 0,
  disable_index TINYINT(1) NOT NULL DEFAULT 0,
  related_ids VARCHAR(255) NOT NULL DEFAULT '',
  access VARCHAR(150) NOT NULL DEFAULT '',
  editdate INT(11) NOT NULL DEFAULT 0,
  editor VARCHAR(40) NOT NULL DEFAULT '',
  reason VARCHAR(255) NOT NULL DEFAULT '',
  user_id INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (eid),
  INDEX news_id (news_id),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 60
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_post_log
--
DROP TABLE IF EXISTS dle_post_log;
CREATE TABLE dle_post_log (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  expires VARCHAR(15) NOT NULL DEFAULT '',
  action TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX expires (expires),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_question
--
DROP TABLE IF EXISTS dle_question;
CREATE TABLE dle_question (
  id INT(11) NOT NULL AUTO_INCREMENT,
  question VARCHAR(255) NOT NULL DEFAULT '',
  answer TEXT NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_read_log
--
DROP TABLE IF EXISTS dle_read_log;
CREATE TABLE dle_read_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX ip (ip),
  INDEX news_id (news_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_rss
--
DROP TABLE IF EXISTS dle_rss;
CREATE TABLE dle_rss (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  url VARCHAR(255) NOT NULL DEFAULT '',
  description TEXT NOT NULL,
  allow_main TINYINT(1) NOT NULL DEFAULT 0,
  allow_rating TINYINT(1) NOT NULL DEFAULT 0,
  allow_comm TINYINT(1) NOT NULL DEFAULT 0,
  text_type TINYINT(1) NOT NULL DEFAULT 0,
  date TINYINT(1) NOT NULL DEFAULT 0,
  search TEXT NOT NULL,
  max_news TINYINT(3) NOT NULL DEFAULT 0,
  cookie TEXT NOT NULL,
  category SMALLINT(5) NOT NULL DEFAULT 0,
  lastdate INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 184
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_rssinform
--
DROP TABLE IF EXISTS dle_rssinform;
CREATE TABLE dle_rssinform (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  tag VARCHAR(40) NOT NULL DEFAULT '',
  descr VARCHAR(255) NOT NULL DEFAULT '',
  category VARCHAR(200) NOT NULL DEFAULT '',
  url VARCHAR(255) NOT NULL DEFAULT '',
  template VARCHAR(40) NOT NULL DEFAULT '',
  news_max SMALLINT(5) NOT NULL DEFAULT 0,
  tmax SMALLINT(5) NOT NULL DEFAULT 0,
  dmax SMALLINT(5) NOT NULL DEFAULT 0,
  approve TINYINT(1) NOT NULL DEFAULT 1,
  rss_date_format VARCHAR(20) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 104
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_sendlog
--
DROP TABLE IF EXISTS dle_sendlog;
CREATE TABLE dle_sendlog (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  user VARCHAR(40) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  flag TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX date (date),
  INDEX flag (flag),
  INDEX user (user)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_social_login
--
DROP TABLE IF EXISTS dle_social_login;
CREATE TABLE dle_social_login (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sid VARCHAR(40) NOT NULL DEFAULT '',
  uid INT(11) NOT NULL DEFAULT 0,
  password VARCHAR(32) NOT NULL DEFAULT '',
  provider VARCHAR(15) NOT NULL DEFAULT '',
  wait TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX sid (sid)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_spam_log
--
DROP TABLE IF EXISTS dle_spam_log;
CREATE TABLE dle_spam_log (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  is_spammer TINYINT(1) NOT NULL DEFAULT 0,
  email VARCHAR(50) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX ip (ip),
  INDEX is_spammer (is_spammer)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_static
--
DROP TABLE IF EXISTS dle_static;
CREATE TABLE dle_static (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL DEFAULT '',
  descr VARCHAR(255) NOT NULL DEFAULT '',
  template TEXT NOT NULL,
  allow_br TINYINT(1) NOT NULL DEFAULT 0,
  allow_template TINYINT(1) NOT NULL DEFAULT 0,
  grouplevel VARCHAR(100) NOT NULL DEFAULT 'all',
  tpl VARCHAR(40) NOT NULL DEFAULT '',
  metadescr VARCHAR(200) NOT NULL DEFAULT '',
  metakeys TEXT NOT NULL,
  views MEDIUMINT(8) NOT NULL DEFAULT 0,
  template_folder VARCHAR(50) NOT NULL DEFAULT '',
  date INT(11) UNSIGNED NOT NULL DEFAULT 0,
  metatitle VARCHAR(255) NOT NULL DEFAULT '',
  allow_count TINYINT(1) NOT NULL DEFAULT 1,
  sitemap TINYINT(1) NOT NULL DEFAULT 1,
  disable_index TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX name (name),
  FULLTEXT INDEX template (template)
)
ENGINE = MYISAM
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 247
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_static_files
--
DROP TABLE IF EXISTS dle_static_files;
CREATE TABLE dle_static_files (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  static_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  author VARCHAR(40) NOT NULL DEFAULT '',
  date VARCHAR(50) NOT NULL DEFAULT '',
  name VARCHAR(255) NOT NULL DEFAULT '',
  onserver VARCHAR(255) NOT NULL DEFAULT '',
  dcount MEDIUMINT(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX author (author),
  INDEX onserver (onserver),
  INDEX static_id (static_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_subscribe
--
DROP TABLE IF EXISTS dle_subscribe;
CREATE TABLE dle_subscribe (
  id INT(11) NOT NULL AUTO_INCREMENT,
  user_id INT(11) NOT NULL DEFAULT 0,
  name VARCHAR(40) NOT NULL DEFAULT '',
  email VARCHAR(50) NOT NULL DEFAULT '',
  news_id INT(11) NOT NULL DEFAULT 0,
  hash VARCHAR(32) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX news_id (news_id),
  INDEX user_id (user_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_tags
--
DROP TABLE IF EXISTS dle_tags;
CREATE TABLE dle_tags (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  tag VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  INDEX news_id (news_id),
  INDEX tag (tag)
)
ENGINE = MYISAM
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 23
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_usergroups
--
DROP TABLE IF EXISTS dle_usergroups;
CREATE TABLE dle_usergroups (
  id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  group_name VARCHAR(32) NOT NULL DEFAULT '',
  allow_cats TEXT NOT NULL,
  allow_adds TINYINT(1) NOT NULL DEFAULT 1,
  cat_add TEXT NOT NULL,
  allow_admin TINYINT(1) NOT NULL DEFAULT 0,
  allow_addc TINYINT(1) NOT NULL DEFAULT 0,
  allow_editc TINYINT(1) NOT NULL DEFAULT 0,
  allow_delc TINYINT(1) NOT NULL DEFAULT 0,
  edit_allc TINYINT(1) NOT NULL DEFAULT 0,
  del_allc TINYINT(1) NOT NULL DEFAULT 0,
  moderation TINYINT(1) NOT NULL DEFAULT 0,
  allow_all_edit TINYINT(1) NOT NULL DEFAULT 0,
  allow_edit TINYINT(1) NOT NULL DEFAULT 0,
  allow_pm TINYINT(1) NOT NULL DEFAULT 0,
  max_pm SMALLINT(5) NOT NULL DEFAULT 0,
  max_foto VARCHAR(10) NOT NULL DEFAULT '',
  allow_files TINYINT(1) NOT NULL DEFAULT 0,
  allow_hide TINYINT(1) NOT NULL DEFAULT 1,
  allow_short TINYINT(1) NOT NULL DEFAULT 0,
  time_limit TINYINT(1) NOT NULL DEFAULT 0,
  rid SMALLINT(5) NOT NULL DEFAULT 0,
  allow_fixed TINYINT(1) NOT NULL DEFAULT 0,
  allow_feed TINYINT(1) NOT NULL DEFAULT 1,
  allow_search TINYINT(1) NOT NULL DEFAULT 1,
  allow_poll TINYINT(1) NOT NULL DEFAULT 1,
  allow_main TINYINT(1) NOT NULL DEFAULT 1,
  captcha TINYINT(1) NOT NULL DEFAULT 0,
  icon VARCHAR(200) NOT NULL DEFAULT '',
  allow_modc TINYINT(1) NOT NULL DEFAULT 0,
  allow_rating TINYINT(1) NOT NULL DEFAULT 1,
  allow_offline TINYINT(1) NOT NULL DEFAULT 0,
  allow_image_upload TINYINT(1) NOT NULL DEFAULT 0,
  allow_file_upload TINYINT(1) NOT NULL DEFAULT 0,
  allow_signature TINYINT(1) NOT NULL DEFAULT 0,
  allow_url TINYINT(1) NOT NULL DEFAULT 1,
  news_sec_code TINYINT(1) NOT NULL DEFAULT 1,
  allow_image TINYINT(1) NOT NULL DEFAULT 0,
  max_signature SMALLINT(6) NOT NULL DEFAULT 0,
  max_info SMALLINT(6) NOT NULL DEFAULT 0,
  admin_addnews TINYINT(1) NOT NULL DEFAULT 0,
  admin_editnews TINYINT(1) NOT NULL DEFAULT 0,
  admin_comments TINYINT(1) NOT NULL DEFAULT 0,
  admin_categories TINYINT(1) NOT NULL DEFAULT 0,
  admin_editusers TINYINT(1) NOT NULL DEFAULT 0,
  admin_wordfilter TINYINT(1) NOT NULL DEFAULT 0,
  admin_xfields TINYINT(1) NOT NULL DEFAULT 0,
  admin_userfields TINYINT(1) NOT NULL DEFAULT 0,
  admin_static TINYINT(1) NOT NULL DEFAULT 0,
  admin_editvote TINYINT(1) NOT NULL DEFAULT 0,
  admin_newsletter TINYINT(1) NOT NULL DEFAULT 0,
  admin_blockip TINYINT(1) NOT NULL DEFAULT 0,
  admin_banners TINYINT(1) NOT NULL DEFAULT 0,
  admin_rss TINYINT(1) NOT NULL DEFAULT 0,
  admin_iptools TINYINT(1) NOT NULL DEFAULT 0,
  admin_rssinform TINYINT(1) NOT NULL DEFAULT 0,
  admin_googlemap TINYINT(1) NOT NULL DEFAULT 0,
  allow_html TINYINT(1) NOT NULL DEFAULT 1,
  group_prefix TEXT NOT NULL,
  group_suffix TEXT NOT NULL,
  allow_subscribe TINYINT(1) NOT NULL DEFAULT 0,
  allow_image_size TINYINT(1) NOT NULL DEFAULT 0,
  cat_allow_addnews TEXT NOT NULL,
  flood_news SMALLINT(6) NOT NULL DEFAULT 0,
  max_day_news SMALLINT(6) NOT NULL DEFAULT 0,
  force_leech TINYINT(1) NOT NULL DEFAULT 0,
  edit_limit SMALLINT(6) NOT NULL DEFAULT 0,
  captcha_pm TINYINT(1) NOT NULL DEFAULT 0,
  max_pm_day SMALLINT(6) NOT NULL DEFAULT 0,
  max_mail_day SMALLINT(6) NOT NULL DEFAULT 0,
  admin_tagscloud TINYINT(1) NOT NULL DEFAULT 0,
  allow_vote TINYINT(1) NOT NULL DEFAULT 0,
  admin_complaint TINYINT(1) NOT NULL DEFAULT 0,
  news_question TINYINT(1) NOT NULL DEFAULT 0,
  comments_question TINYINT(1) NOT NULL DEFAULT 0,
  max_comment_day SMALLINT(6) NOT NULL DEFAULT 0,
  max_images SMALLINT(6) NOT NULL DEFAULT 0,
  max_files SMALLINT(6) NOT NULL DEFAULT 0,
  disable_news_captcha SMALLINT(6) NOT NULL DEFAULT 0,
  disable_comments_captcha SMALLINT(6) NOT NULL DEFAULT 0,
  pm_question TINYINT(1) NOT NULL DEFAULT 0,
  captcha_feedback TINYINT(1) NOT NULL DEFAULT 1,
  feedback_question TINYINT(1) NOT NULL DEFAULT 0,
  files_type VARCHAR(255) NOT NULL DEFAULT '',
  max_file_size MEDIUMINT(9) NOT NULL DEFAULT 0,
  files_max_speed SMALLINT(6) NOT NULL DEFAULT 0,
  allow_lostpassword TINYINT(1) NOT NULL DEFAULT 1,
  spamfilter TINYINT(1) NOT NULL DEFAULT 2,
  allow_comments_rating TINYINT(1) NOT NULL DEFAULT 1,
  max_edit_days TINYINT(1) NOT NULL DEFAULT 0,
  spampmfilter TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 155
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_users
--
DROP TABLE IF EXISTS dle_users;
CREATE TABLE dle_users (
  email VARCHAR(50) NOT NULL DEFAULT '',
  password VARCHAR(32) NOT NULL DEFAULT '',
  name VARCHAR(40) NOT NULL DEFAULT '',
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  news_num MEDIUMINT(8) NOT NULL DEFAULT 0,
  comm_num MEDIUMINT(8) NOT NULL DEFAULT 0,
  user_group SMALLINT(5) NOT NULL DEFAULT 4,
  lastdate VARCHAR(20) DEFAULT NULL,
  reg_date VARCHAR(20) DEFAULT NULL,
  banned VARCHAR(5) NOT NULL DEFAULT '',
  allow_mail TINYINT(1) NOT NULL DEFAULT 1,
  info TEXT NOT NULL,
  signature TEXT NOT NULL,
  foto VARCHAR(255) NOT NULL DEFAULT '',
  fullname VARCHAR(100) NOT NULL DEFAULT '',
  land VARCHAR(100) NOT NULL DEFAULT '',
  favorites TEXT NOT NULL,
  pm_all SMALLINT(5) NOT NULL DEFAULT 0,
  pm_unread SMALLINT(5) NOT NULL DEFAULT 0,
  time_limit VARCHAR(20) NOT NULL DEFAULT '',
  xfields TEXT NOT NULL,
  allowed_ip VARCHAR(255) NOT NULL DEFAULT '',
  hash VARCHAR(32) NOT NULL DEFAULT '',
  logged_ip VARCHAR(40) NOT NULL DEFAULT '',
  restricted TINYINT(1) NOT NULL DEFAULT 0,
  restricted_days SMALLINT(4) NOT NULL DEFAULT 0,
  restricted_date VARCHAR(15) NOT NULL DEFAULT '',
  timezone VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY (user_id),
  UNIQUE INDEX email (email),
  UNIQUE INDEX name (name)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 136
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_views
--
DROP TABLE IF EXISTS dle_views;
CREATE TABLE dle_views (
  id INT(11) NOT NULL AUTO_INCREMENT,
  news_id INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_vote
--
DROP TABLE IF EXISTS dle_vote;
CREATE TABLE dle_vote (
  id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  category TEXT NOT NULL,
  vote_num MEDIUMINT(8) NOT NULL DEFAULT 0,
  date VARCHAR(25) NOT NULL DEFAULT '0',
  title VARCHAR(200) NOT NULL DEFAULT '',
  body TEXT NOT NULL,
  approve TINYINT(1) NOT NULL DEFAULT 1,
  start VARCHAR(15) NOT NULL DEFAULT '',
  end VARCHAR(15) NOT NULL DEFAULT '',
  grouplevel VARCHAR(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (id),
  INDEX approve (approve)
)
ENGINE = MYISAM
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы dle_vote_result
--
DROP TABLE IF EXISTS dle_vote_result;
CREATE TABLE dle_vote_result (
  id INT(10) NOT NULL AUTO_INCREMENT,
  ip VARCHAR(40) NOT NULL DEFAULT '',
  name VARCHAR(40) NOT NULL DEFAULT '',
  vote_id MEDIUMINT(8) NOT NULL DEFAULT 0,
  answer TINYINT(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX answer (answer),
  INDEX ip (ip),
  INDEX name (name),
  INDEX vote_id (vote_id)
)
ENGINE = MYISAM
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы dle_admin_logs
--
INSERT INTO dle_admin_logs VALUES
(1, 'gordondalos', 1451395867, '::1', 86, 'http://localhost/greensoft/index.php?'),
(2, 'gordondalos', 1451395987, '::1', 48, ''),
(3, 'gordondalos', 1451412228, '::1', 48, ''),
(4, 'gordondalos', 1451412242, '::1', 48, ''),
(5, 'gordondalos', 1452012291, '::1', 48, ''),
(6, 'gordondalos', 1452012395, '::1', 48, ''),
(7, 'gordondalos', 1452012441, '::1', 48, ''),
(8, 'gordondalos', 1452014398, '::1', 36, '1452014480_49.jpg'),
(9, 'gordondalos', 1452014398, '::1', 36, '1452014480_1015257.jpeg'),
(10, 'gordondalos', 1452014399, '::1', 36, '1452014402_hako_naves6-5-b.jpg'),
(11, 'gordondalos', 1452014418, '::1', 25, 'Добро пожаловать'),
(12, 'gordondalos', 1452014490, '::1', 48, ''),
(13, 'gordondalos', 1452014517, '::1', 36, '1452014546_49.jpg'),
(14, 'gordondalos', 1452014517, '::1', 36, '1452014533_318.jpg'),
(15, 'gordondalos', 1452014518, '::1', 36, '1452014565_1015257.jpeg'),
(16, 'gordondalos', 1452014518, '::1', 36, '1452014519_asf2.jpg'),
(17, 'gordondalos', 1452014518, '::1', 36, '1452014585_hako_naves6-5-b.jpg'),
(18, 'gordondalos', 1452014528, '::1', 25, 'Приобретение и оплата скрипта'),
(19, 'gordondalos', 1452014563, '::1', 36, '1452014645_hako_naves6-5-b.jpg'),
(20, 'gordondalos', 1452014569, '::1', 25, 'Осуществление технической поддержки скрипта'),
(21, 'gordondalos', 1452492357, '::1', 86, 'Direct DLE Adminpanel'),
(22, 'gordondalos', 1452492397, '::1', 48, ''),
(23, 'gordondalos', 1452492432, '::1', 48, ''),
(24, 'gordondalos', 1452492445, '::1', 48, ''),
(25, 'gordondalos', 1452492486, '::1', 25, 'Добро пожаловать'),
(26, 'gordondalos', 1452492498, '::1', 25, 'Приобретение и оплата скрипта'),
(27, 'gordondalos', 1452492514, '::1', 25, 'Осуществление технической поддержки скрипта'),
(28, 'gordondalos', 1452496657, '::1', 12, 'Ямочный ремонт'),
(29, 'gordondalos', 1452496679, '::1', 13, '1'),
(30, 'gordondalos', 1452496703, '::1', 12, 'Прокладка ВОЛС'),
(31, 'gordondalos', 1452496732, '::1', 12, 'Асфальтные работы'),
(32, 'gordondalos', 1452496747, '::1', 12, 'Доставка грузов'),
(33, 'gordondalos', 1452496767, '::1', 12, 'Прокладка Коммуникаций'),
(34, 'gordondalos', 1452496781, '::1', 12, 'Фотоотчеты'),
(35, 'gordondalos', 1452496792, '::1', 12, 'Цех пластиковых окон'),
(36, 'gordondalos', 1452497927, '::1', 11, ''),
(37, 'gordondalos', 1452498255, '::1', 59, 'o-kompanii'),
(38, 'gordondalos', 1452498379, '::1', 59, 'kontakty'),
(39, 'gordondalos', 1452499126, '::1', 59, 'dokumenty'),
(40, 'gordondalos', 1452499172, '::1', 59, 'tehnika'),
(41, 'gordondalos', 1452499313, '::1', 60, 'o-kompanii'),
(42, 'gordondalos', 1452499350, '::1', 60, 'tehnika'),
(43, 'gordondalos', 1452500657, '::1', 48, ''),
(44, 'gordondalos', 1452500780, '::1', 60, 'o-kompanii'),
(45, 'gordondalos', 1452501269, '::1', 14, 'Фотоотчеты / Видеооточеты'),
(46, 'gordondalos', 1452501377, '::1', 1, 'Инновации в ремонте бишкекских дорог'),
(47, 'gordondalos', 1452501424, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(48, 'gordondalos', 1452501451, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(49, 'gordondalos', 1452501467, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(50, 'gordondalos', 1452501483, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(51, 'gordondalos', 1452501501, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(52, 'gordondalos', 1452501601, '::1', 36, '1452501687_news1.png'),
(53, 'gordondalos', 1452501614, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(54, 'gordondalos', 1452501637, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(55, 'gordondalos', 1452501676, '::1', 25, 'Инновации в ремонте бишкекских дорог'),
(56, 'gordondalos', 1452501905, '::1', 36, '1452501932_zam.png'),
(57, 'gordondalos', 1452501914, '::1', 1, 'Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала'),
(58, 'gordondalos', 1452502417, '::1', 36, '1452502501_remont.png'),
(59, 'gordondalos', 1452502496, '::1', 1, 'Как делают дороги в Германии / Ремонт дорог'),
(60, 'gordondalos', 1452502728, '::1', 27, '1'),
(61, 'gordondalos', 1452515862, '::1', 25, 'Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала');

-- 
-- Вывод данных для таблицы dle_admin_sections
--

-- Таблица greensoft.dle_admin_sections не содержит данных

-- 
-- Вывод данных для таблицы dle_banned
--

-- Таблица greensoft.dle_banned не содержит данных

-- 
-- Вывод данных для таблицы dle_banners
--
INSERT INTO dle_banners VALUES
(1, 'header', 'Верхний баннер', '<div align="center"><a href="http://dle-news.ru/" target="_blank"><img src="http://localhost/greensoft/templates/Default/images/_banner_.gif" style="border: none;" alt="" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0);

-- 
-- Вывод данных для таблицы dle_category
--
INSERT INTO dle_category VALUES
(3, 0, 4, 'Прокладка ВОЛС', 'prokladka-vols', '', '', '', '', '', '', 0, '', '', '', 0, 1),
(2, 0, 1, 'Ямочный ремонт', 'yamabuilder', '', '', '', '', '', '', 0, '', '', '', 0, 1),
(4, 0, 2, 'Асфальтные работы', 'asfaltnye-raboty', '', '', '', '', '', '', 0, '', '', '', 0, 1),
(5, 0, 3, 'Доставка грузов', 'dostavka-gruzov', '', '', '', '', '', '', 0, '', '', '', 0, 1),
(6, 0, 5, 'Прокладка Коммуникаций', 'prokladka-kommunikaciy', '', '', '', '', '', '', 0, '', '', '', 0, 1),
(7, 0, 6, 'Фотоотчеты / Видеооточеты', 'fotootchety', '', '', '', '', '', '', 0, '', '', '', 0, 1),
(8, 0, 7, 'Цех пластиковых окон', 'ceh-plastikovyh-okon', '', '', '', '', '', '', 0, '', '', '', 0, 1);

-- 
-- Вывод данных для таблицы dle_comment_rating_log
--

-- Таблица greensoft.dle_comment_rating_log не содержит данных

-- 
-- Вывод данных для таблицы dle_comments
--

-- Таблица greensoft.dle_comments не содержит данных

-- 
-- Вывод данных для таблицы dle_complaint
--

-- Таблица greensoft.dle_complaint не содержит данных

-- 
-- Вывод данных для таблицы dle_email
--
INSERT INTO dle_email VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://localhost/greensoft/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/.', 0),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://localhost/greensoft/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/', 0),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://localhost/greensoft/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/', 0),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/greensoft/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/', 0),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/greensoft/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/', 0),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://localhost/greensoft/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/', 0),
(7, 'wait_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте http://localhost/greensoft/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nВнимание, в случае объединения аккаунтов, ваш основной пароль на сайте будет сброшен, и если вы входили на сайт используя ваш логин и пароль, то ваш пароль будет больше не действителен.\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/greensoft/', 0),
(8, 'newsletter', '<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content="text/html; charset={%charset%}" http-equiv=Content-Type>\r\n<style type="text/css">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n\tmargin:0px;\r\n\tpadding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n\tcolor: #4b719e;\r\n\ttext-decoration:none;\r\n}\r\n\r\na:hover {\r\n\tcolor: #4b719e;\r\n\ttext-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>', 0);

-- 
-- Вывод данных для таблицы dle_files
--

-- Таблица greensoft.dle_files не содержит данных

-- 
-- Вывод данных для таблицы dle_flood
--

-- Таблица greensoft.dle_flood не содержит данных

-- 
-- Вывод данных для таблицы dle_ignore_list
--

-- Таблица greensoft.dle_ignore_list не содержит данных

-- 
-- Вывод данных для таблицы dle_images
--
INSERT INTO dle_images VALUES
(1, '2016-01/1452014480_49.jpg|||2016-01/1452014480_1015257.jpeg|||2016-01/1452014402_hako_naves6-5-b.jpg', 1, 'gordondalos', '1452014398'),
(2, '2016-01/1452014546_49.jpg|||2016-01/1452014533_318.jpg|||2016-01/1452014565_1015257.jpeg|||2016-01/1452014519_asf2.jpg|||2016-01/1452014585_hako_naves6-5-b.jpg', 2, 'gordondalos', '1452014517'),
(3, '2016-01/1452014645_hako_naves6-5-b.jpg', 3, 'gordondalos', '1452014563'),
(4, '2016-01/1452501687_news1.png', 4, 'gordondalos', '1452501601'),
(5, '2016-01/1452501932_zam.png', 5, 'gordondalos', '1452501905'),
(6, '2016-01/1452502501_remont.png', 6, 'gordondalos', '1452502417');

-- 
-- Вывод данных для таблицы dle_links
--

-- Таблица greensoft.dle_links не содержит данных

-- 
-- Вывод данных для таблицы dle_login_log
--

-- Таблица greensoft.dle_login_log не содержит данных

-- 
-- Вывод данных для таблицы dle_logs
--

-- Таблица greensoft.dle_logs не содержит данных

-- 
-- Вывод данных для таблицы dle_lostdb
--

-- Таблица greensoft.dle_lostdb не содержит данных

-- 
-- Вывод данных для таблицы dle_mail_log
--

-- Таблица greensoft.dle_mail_log не содержит данных

-- 
-- Вывод данных для таблицы dle_notice
--

-- Таблица greensoft.dle_notice не содержит данных

-- 
-- Вывод данных для таблицы dle_pm
--

-- Таблица greensoft.dle_pm не содержит данных

-- 
-- Вывод данных для таблицы dle_poll
--

-- Таблица greensoft.dle_poll не содержит данных

-- 
-- Вывод данных для таблицы dle_poll_log
--

-- Таблица greensoft.dle_poll_log не содержит данных

-- 
-- Вывод данных для таблицы dle_post
--
INSERT INTO dle_post VALUES
(1, 'gordondalos', '2015-12-29 16:30:20', '<!--MBegin:http://localhost/union/uploads/posts/2016-01/1452014480_49.jpg|--><a href="http://localhost/union/uploads/posts/2016-01/1452014480_49.jpg" rel="highslide" class="highslide"><img src="http://localhost/union/uploads/posts/2016-01/medium/1452014480_49.jpg" alt=''Добро пожаловать'' title=''Добро пожаловать''  /></a><!--MEnd--><br />Добро пожаловать на демонстрационную страницу движка DataLife Engine. DataLife Engine это многопользовательский новостной движок, обладающий большими функциональными возможностями. Движок предназначен в первую очередь для создание новостных блогов и сайтов с большим информационным контекстом. Однако он имеет большое количество настроек, которые позволяют использовать его практически для любых целей. Движок может быть интегрирован практически в любой существующий дизайн, и не имеет никаких ограничений по созданию шаблонов для него. Еще одной ключевой особенностью DataLife Engine является низкая нагрузка на системные ресурсы, Даже при очень большой аудитории сайта нагрузка не сервер будет минимальной, и вы не будете испытывать каких-либо проблем с отображением информации. Движок оптимизирован под поисковые системы. Обо всех функциональных особенностях вы сможете прочитать на <a href="http://dle-news.ru/"  target="_blank">нашей странице</a>.<br /><br />Обсуждение скрипта по всем вопросам ведется <a href="http://forum.dle-news.ru/index.php"  target="_blank">здесь</a>. Так же там Вы сможете получить оперативную помощь.', '', '', 'Добро пожаловать', 'Добро пожаловать на демонстрационную страницу движка DataLife Engine. DataLife Engine это многопользовательский новостной движок, обладающий большими функциональными возможностями. Движок', 'Движок, DataLife, Engine, практически, сможете, нагрузка, имеет, аудитории, минимальной, сайта, сервер, будет, будете, испытывать, очень, особенностью, ключевой, одной, является, низкая', '2', 'post1', 0, 1, 1, 1, 0, 1, '', 'по, новости', ''),
(2, 'gordondalos', '2015-12-29 16:30:00', '<!--TBegin:http://localhost/union/uploads/posts/2016-01/1452014533_318.jpg|--><a href="http://localhost/union/uploads/posts/2016-01/1452014533_318.jpg" rel="highslide" class="highslide"><img src="http://localhost/union/uploads/posts/2016-01/thumbs/1452014533_318.jpg" alt=''Приобретение и оплата скрипта'' title=''Приобретение и оплата скрипта''  /></a><!--TEnd--><br /><br />Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и не нашли там для вас необходимого ответа. Мы оставляем за собой право игнорировать вопросы, поступившие к нам от пользователей, использующих некоммерческую версию скрипта или не оплативших лицензию, включающую в себя службу технической поддержки. Вы можете приобрести один из двух типов лицензии на DataLife Engine по вашему желанию:<br /><br />- <b>Базовая лицензия.</b> При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении <b>одного года</b>.<br /><br />- <b>Расширенная лицензия.</b> При приобретении данной лицензии вы получаете все что входит в базовую лицензию, а также дополнительно входит служба технической поддержки скрипта и разрешение на снятие копирайтов на скрипт с пользовательской части (видимой для обычных посетителей сайта).<br /><br /><b>Срок действия лицензии</b> составляет <span style=\\"color:#FF0000\\">1 год</span>, в течении которого вы бесплатно будете получать все последующие версии скрипта и обновления, а в случае приобретения расширенной лицензии, и тех. поддержку. После окончания срока лицензии вы можете ее продлить, либо использовать пожизненно бесплатно актуальную на тот момент времени версию скрипта.<br /><br /><b>Как оплатить скрипт вы можете прочитать на</b> <a href="http://dle-news.ru/price.html"  target="_blank">http://dle-news.ru/price.html</a><br /><br />Помните что лицензия выдается только на один домен (проект) и не может использоваться на других сайтах, а также запрещена передача вашего файла лицензии третьим лицам.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>', '', '', 'Приобретение и оплата скрипта', 'Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и', 'лицензии, скрипта, также, поддержки, бесплатно, можете, лицензия, технической, данной, входит, скрипт, течении, получаете, версию, приобретении, лицензию, службу, обновления, лицам, версии', '2', 'post2', 0, 1, 1, 1, 0, 1, '', 'по, новости', ''),
(3, 'gordondalos', '2015-12-29 16:29:30', '<!--MBegin:http://localhost/union/uploads/posts/2016-01/1452014645_hako_naves6-5-b.jpg|--><a href="http://localhost/union/uploads/posts/2016-01/1452014645_hako_naves6-5-b.jpg" rel="highslide" class="highslide"><img src="http://localhost/union/uploads/posts/2016-01/medium/1452014645_hako_naves6-5-b.jpg" alt=''Осуществление технической поддержки скрипта'' title=''Осуществление технической поддержки скрипта''  /></a><!--MEnd--><br /><b>Техническая поддержка скрипта</b> осуществляется силами <a href="http://forum.dle-news.ru/index.php"  target="_blank">форума поддержки</a>, а также по E-Mail. По мере поступления возникших у вас вопросов мы стараемся ответить на все ваши вопросы, но в связи с большим количеством посетителей, это не всегда является возможным. Поэтому гарантированная техническая поддержка предоставляется, только пользователям, которые прибрели расширенную лицензию на скрипт.<br /><br /><b>Услуги по технической поддержке скрипта включают в себя:</b><br /><br />1. Приоритетное получение ответа на вопросы, которые задают пользователи впервые столкнувшиеся со скриптом и естественно не знающие всех нюансов работы скрипта. В компетенции службы поддержки находится только помощь только по непосредственным сбоям самого скрипта, в случае если причиной некорректной работы скрипта явился ваш шаблон, не соответствующий требованиям скрипта, то в поддержке вам может быть отказано.<br /><br />2. Также вы получаете возможность одноразовой установки скрипта вам на сервер, включая настройку его до полной работоспособности с учетом текущих настроек сервера (иногда нужно верно отключить поддержку ЧПУ, включение специальных директив для Русского Апача, для верной загрузки картинок и прочее...).<br /><br />3. Вы получаете консультационную поддержку по работе со структурой скрипта, например у вас есть желание добавить небольшие изменения в скрипт для более удобной работы для вас, вы сможете сэкономить время на поиске нужного куска кода просто спросив у нас. Вам будет предоставлена консультация где это копать и как вообще лучше реализовать поставленную задачу. (Внимание мы не пишем за вас дополнительные модули, а только помогаем вам лучше разобраться со структурой скрипта, поэтому всегда задавайте вопросы по существу, вопросы типа: \\"как мне сделать такую фишку\\" могут быть проигнорированы службой поддержки).<br /><br />4. Еще одна из часто возникающих проблем это некорректное обновление скрипта, например во время обновления произошел сбой сервера, часть новых данных была внесена в базу и настройки, часть нет, в итоге вы получаете нерабочий скрипт, со всеми вытекающими последствиями. В данном случае для вас будет проведена ручная коррекция поврежденной структуры базы данных.<br /><br />В случае если вы не являетесь подписчиком дополнительной службы поддержки, ваши вопросы могут быть проигнорированы и оставлены без ответа.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>', '', '', 'Осуществление технической поддержки скрипта', 'Техническая поддержка скрипта осуществляется силами форума поддержки, а также по E-Mail. По мере поступления возникших у вас вопросов мы стараемся ответить на все ваши вопросы, но в связи с большим', 'скрипта, вопросы, только, поддержки, работы, скрипт, получаете, случае, ответа, которые, поддержке, службы, например, проигнорированы, часть, данных, могут, лучше, структурой, время', '2', 'post4', 0, 1, 1, 1, 0, 1, '', '', ''),
(4, 'gordondalos', '2016-01-11 11:36:17', '<!--MBegin:http://localhost/union/uploads/posts/2016-01/1452501687_news1.png|--><a href="http://localhost/union/uploads/posts/2016-01/1452501687_news1.png" rel="highslide" class="highslide"><img src="http://localhost/union/uploads/posts/2016-01/medium/1452501687_news1.png" alt=''Инновации в ремонте бишкекских дорог'' title=''Инновации в ремонте бишкекских дорог''  /></a><!--MEnd--><br />Ежегодно мэрией Бишкека выделяются немалые суммы на реабилитацию городских дорог. Наряду с капитальным проводится и ямочный ремонт, качество которого вызывает справедливую критику горожан. <br />Однако технологии не стоят на месте - в мире давно используют другие способы ремонта дорог. <br />Метод, использующий инфракрасный нагрев асфальта, продемонстрировала компания «Юнион', '<iframe src="https://www.youtube.com/embed/u5GDiKmBKM4" width="100%" height="400" frameborder="0" allowfullscreen></iframe><br /><br />Ежегодно мэрией Бишкека выделяются немалые суммы на реабилитацию городских дорог. Наряду с капитальным проводится и ямочный ремонт, качество которого вызывает справедливую критику горожан. <br />Однако технологии не стоят на месте - в мире давно используют другие способы ремонта дорог. <br />Метод, использующий инфракрасный нагрев асфальта, продемонстрировала компания «Юнион', '', 'Инновации в ремонте бишкекских дорог', 'video=https://youtu.be/u5GDiKmBKM4  Ежегодно мэрией Бишкека выделяются немалые суммы на реабилитацию городских дорог. Наряду с капитальным проводится и ямочный ремонт, качество которого вызывает', 'дорог, месте, давно, используют, стоят, технологии, критику, горожан, Однако, другие, способы, асфальта, продемонстрировала, компания, «Юнион, нагрев, инфракрасный, ремонта, Метод, использующий', '7', 'innovacii-v-remonte-bishkekskih-dorog', 0, 1, 1, 1, 0, 1, '', '', ''),
(5, 'gordondalos', '2016-01-11 11:45:14', '<!--MBegin:http://localhost/union/uploads/posts/2016-01/1452501932_zam.png|--><a href="http://localhost/union/uploads/posts/2016-01/1452501932_zam.png" rel="highslide" class="highslide"><img src="http://localhost/union/uploads/posts/2016-01/medium/1452501932_zam.png" alt=''Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала'' title=''Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала''  /></a><!--MEnd--><br />Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала. Управление капитального строительства муниципалитета, вопреки логике, присудило победу фирме, предложившей большую цену, чем ее конкуренты. <br />В итоге один квадратный метр дорожного полотна в этом году обойдется бюджету на 160 сомов дороже. <br />Депутаты городского кенеша видят в сложившейся ситуации признаки коррупции и настаивают на возбуждении уголовных дел.', '<iframe src="https://www.youtube.com/embed/THrVfP42vLU" width="100%" height="400" frameborder="0" allowfullscreen></iframe><br /><br />Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала. Управление капитального строительства муниципалитета, вопреки логике, присудило победу фирме, предложившей большую цену, чем ее конкуренты. <br />В итоге один квадратный метр дорожного полотна в этом году обойдется бюджету на 160 сомов дороже. <br />Депутаты городского кенеша видят в сложившейся ситуации признаки коррупции и настаивают на возбуждении уголовных дел.', '', 'Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала', 'Последний тендер по ямочному ремонту дорог Бишкека не обошелся без скандала. Управление капитального строительства муниципалитета, вопреки логике, присудило победу фирме, предложившей большую цену,', 'сомов, дороже, Депутаты, бюджету, обойдется, квадратный, дорожного, полотна, городского, кенеша, настаивают, возбуждении, уголовных, коррупции, признаки, видят, сложившейся, ситуации, итоге, конкуренты', '7', 'posledniy-tender-po-yamochnomu-remontu-dorog-bishkeka-ne-oboshelsya-bez-skandala', 0, 1, 1, 1, 0, 1, '', '', ''),
(6, 'gordondalos', '2016-01-11 11:54:56', '<!--MBegin:http://localhost/union/uploads/posts/2016-01/1452502501_remont.png|--><a href="http://localhost/union/uploads/posts/2016-01/1452502501_remont.png" rel="highslide" class="highslide"><img src="http://localhost/union/uploads/posts/2016-01/medium/1452502501_remont.png" alt=''Как делают дороги в Германии / Ремонт дорог'' title=''Как делают дороги в Германии / Ремонт дорог''  /></a><!--MEnd--><br />Как делают дороги в Германии / Ремонт дорог', '<iframe src="https://www.youtube.com/embed/GVvgyRoMQRs" width="100%" height="400"  frameborder="0" allowfullscreen></iframe>', '', 'Как делают дороги в Германии / Ремонт дорог', 'Как делают дороги в Германии / Ремонт дорог', 'дорог, Ремонт, Германии, дороги, делают', '7', 'kak-delayut-dorogi-v-germanii-remont-dorog', 0, 1, 1, 1, 0, 1, '', '', '');

-- 
-- Вывод данных для таблицы dle_post_extras
--
INSERT INTO dle_post_extras VALUES
(1, 1, 5, 1, 0, 0, 0, 0, 0, '', '', 1452492486, 'gordondalos', '', 1),
(2, 2, 0, 1, 0, 0, 0, 0, 0, '', '', 1452492498, 'gordondalos', '', 1),
(3, 3, 2, 1, 0, 0, 0, 0, 0, '', '', 1452492514, 'gordondalos', '', 1),
(4, 4, 9, 1, 0, 0, 0, 0, 0, '6,5,1,2', '', 1452501676, 'gordondalos', '', 1),
(5, 5, 6, 1, 0, 0, 0, 0, 0, '4,2,3', '', 1452515862, 'gordondalos', '', 1),
(6, 6, 1, 1, 0, 0, 0, 0, 0, '4', '', 0, '', '', 1);

-- 
-- Вывод данных для таблицы dle_post_log
--

-- Таблица greensoft.dle_post_log не содержит данных

-- 
-- Вывод данных для таблицы dle_question
--

-- Таблица greensoft.dle_question не содержит данных

-- 
-- Вывод данных для таблицы dle_read_log
--

-- Таблица greensoft.dle_read_log не содержит данных

-- 
-- Вывод данных для таблицы dle_rss
--
INSERT INTO dle_rss VALUES
(1, 'http://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<div class="full-post-content row">{get}</div><div class="full-post-footer ignore-select">', 5, '', 1, 0);

-- 
-- Вывод данных для таблицы dle_rssinform
--
INSERT INTO dle_rssinform VALUES
(1, 'dle', 'Новости с Яндекса', '0', 'http://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');

-- 
-- Вывод данных для таблицы dle_sendlog
--

-- Таблица greensoft.dle_sendlog не содержит данных

-- 
-- Вывод данных для таблицы dle_social_login
--

-- Таблица greensoft.dle_social_login не содержит данных

-- 
-- Вывод данных для таблицы dle_spam_log
--

-- Таблица greensoft.dle_spam_log не содержит данных

-- 
-- Вывод данных для таблицы dle_static
--
INSERT INTO dle_static VALUES
(2, 'o-kompanii', 'О компании', 'Текст о компании', 1, 1, 'all', '', 'Текст о компании', 'компании, Текст', 10, '', 1452498255, '', 1, 1, 0),
(3, 'kontakty', 'Наши контакты', 'Наши контакты', 1, 1, 'all', '', 'Наши контакты', 'контакты', 4, '', 1452498379, '', 1, 1, 0),
(4, 'dokumenty', 'Документы', '<!--dle_list--><ul><li>Первый документ<br /></li><!--dle_li--><li>Второй документ<br /></li><!--dle_li--><li>Третий документ<br /></li></ul><!--dle_list_end-->', 1, 1, 'all', '', 'Первый документ Второй документ Третий документ', 'документ, Третий, Второй, Первый', 4, '', 1452499126, '', 1, 1, 0),
(5, 'tehnika', 'Техника', '<!--dle_list--><ul><li>Техника 1<br /></li><!--dle_li--><li>Техника 2<br /></li><!--dle_li--><li>Техника 3<br /></li></ul><!--dle_list_end-->', 1, 1, 'all', '', 'Техника 1 Техника 2 Техника 3', 'Техника', 4, '', 1452499172, '', 1, 1, 0);

-- 
-- Вывод данных для таблицы dle_static_files
--

-- Таблица greensoft.dle_static_files не содержит данных

-- 
-- Вывод данных для таблицы dle_subscribe
--

-- Таблица greensoft.dle_subscribe не содержит данных

-- 
-- Вывод данных для таблицы dle_tags
--
INSERT INTO dle_tags VALUES
(1, 1, 'по'),
(2, 2, 'по'),
(3, 3, 'по'),
(4, 1, 'новости'),
(5, 2, 'новости');

-- 
-- Вывод данных для таблицы dle_usergroups
--
INSERT INTO dle_usergroups VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style="color:red">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 0, 2, 1, 0, 0),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 0),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 0),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 1, 2, 1, 0, 2),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 0, 2, 1, 0, 2);

-- 
-- Вывод данных для таблицы dle_users
--
INSERT INTO dle_users VALUES
('gordondalos@gmail.com', 'a1559765651c0be3e7e23f8f82ef5398', 'gordondalos', 1, 7, 0, 1, '1452515991', '1451395820', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', '', '::1', 0, 0, '', '');

-- 
-- Вывод данных для таблицы dle_views
--

-- Таблица greensoft.dle_views не содержит данных

-- 
-- Вывод данных для таблицы dle_vote
--

-- Таблица greensoft.dle_vote не содержит данных

-- 
-- Вывод данных для таблицы dle_vote_result
--

-- Таблица greensoft.dle_vote_result не содержит данных

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;