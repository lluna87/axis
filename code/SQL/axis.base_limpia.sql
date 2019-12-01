/*
Navicat PGSQL Data Transfer

Source Server         : AXIS
Source Server Version : 90105
Source Host           : localhost:5432
Source Database       : axis
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90105
File Encoding         : 65001

Date: 2013-12-08 22:25:02
*/


-- ----------------------------
-- Sequence structure for "public"."article_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_id_seq";
CREATE SEQUENCE "public"."article_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."article_image_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_image_id_seq";
CREATE SEQUENCE "public"."article_image_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."article_rate_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_rate_id_seq";
CREATE SEQUENCE "public"."article_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."article_section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_section_id_seq";
CREATE SEQUENCE "public"."article_section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_group_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_group_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_permission_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 75
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_groups_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_user_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."author_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."author_id_seq";
CREATE SEQUENCE "public"."author_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."author_rate_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."author_rate_id_seq";
CREATE SEQUENCE "public"."author_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."choice_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."choice_id_seq";
CREATE SEQUENCE "public"."choice_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."comment_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."comment_id_seq";
CREATE SEQUENCE "public"."comment_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_admin_log_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_content_type_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."image_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."image_id_seq";
CREATE SEQUENCE "public"."image_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."poll_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."poll_id_seq";
CREATE SEQUENCE "public"."poll_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."poll_section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."poll_section_id_seq";
CREATE SEQUENCE "public"."poll_section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."publication_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."publication_id_seq";
CREATE SEQUENCE "public"."publication_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."publisher_rate_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."publisher_rate_id_seq";
CREATE SEQUENCE "public"."publisher_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."section_id_seq";
CREATE SEQUENCE "public"."section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."source_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."source_id_seq";
CREATE SEQUENCE "public"."source_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."south_migrationhistory_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."south_migrationhistory_id_seq";
CREATE SEQUENCE "public"."south_migrationhistory_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."tag_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tag_id_seq";
CREATE SEQUENCE "public"."tag_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."user_profile_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."user_profile_id_seq";
CREATE SEQUENCE "public"."user_profile_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."vote_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."vote_id_seq";
CREATE SEQUENCE "public"."vote_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."article"
-- ----------------------------
DROP TABLE "public"."article";
CREATE TABLE "public"."article" (
"article_id" int4 NOT NULL,
"author_id" int4,
"title" varchar(80) NOT NULL,
"content_summary" varchar(1000) NOT NULL,
"body_text" varchar(15000) NOT NULL,
"visits" int8 NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."article_image"
-- ----------------------------
DROP TABLE "public"."article_image";
CREATE TABLE "public"."article_image" (
"id" int4 DEFAULT nextval('article_image_id_seq'::regclass) NOT NULL,
"article_id" int4,
"image_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article_image
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."article_rate"
-- ----------------------------
DROP TABLE "public"."article_rate";
CREATE TABLE "public"."article_rate" (
"article_id" int4 NOT NULL,
"article_rate_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"rating" int2 NOT NULL,
"date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article_rate
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."article_section"
-- ----------------------------
DROP TABLE "public"."article_section";
CREATE TABLE "public"."article_section" (
"article_section_id" int4 NOT NULL,
"section_id" int4 NOT NULL,
"article_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article_section
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."auth_group"
-- ----------------------------
DROP TABLE "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO "public"."auth_group" VALUES ('1', 'administrator');
INSERT INTO "public"."auth_group" VALUES ('2', 'publisher');
INSERT INTO "public"."auth_group" VALUES ('3', 'reader');

-- ----------------------------
-- Table structure for "public"."auth_group_permissions"
-- ----------------------------
DROP TABLE "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."auth_permission"
-- ----------------------------
DROP TABLE "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(50) NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add migration history', '7', 'add_migrationhistory');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change migration history', '7', 'change_migrationhistory');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete migration history', '7', 'delete_migrationhistory');
INSERT INTO "public"."auth_permission" VALUES ('22', 'Can add image', '8', 'add_image');
INSERT INTO "public"."auth_permission" VALUES ('23', 'Can change image', '8', 'change_image');
INSERT INTO "public"."auth_permission" VALUES ('24', 'Can delete image', '8', 'delete_image');
INSERT INTO "public"."auth_permission" VALUES ('25', 'Can add user profile', '9', 'add_userprofile');
INSERT INTO "public"."auth_permission" VALUES ('26', 'Can change user profile', '9', 'change_userprofile');
INSERT INTO "public"."auth_permission" VALUES ('27', 'Can delete user profile', '9', 'delete_userprofile');
INSERT INTO "public"."auth_permission" VALUES ('28', 'Can add author', '10', 'add_author');
INSERT INTO "public"."auth_permission" VALUES ('29', 'Can change author', '10', 'change_author');
INSERT INTO "public"."auth_permission" VALUES ('30', 'Can delete author', '10', 'delete_author');
INSERT INTO "public"."auth_permission" VALUES ('31', 'Can add article', '11', 'add_article');
INSERT INTO "public"."auth_permission" VALUES ('32', 'Can change article', '11', 'change_article');
INSERT INTO "public"."auth_permission" VALUES ('33', 'Can delete article', '11', 'delete_article');
INSERT INTO "public"."auth_permission" VALUES ('34', 'Can add poll', '12', 'add_poll');
INSERT INTO "public"."auth_permission" VALUES ('35', 'Can change poll', '12', 'change_poll');
INSERT INTO "public"."auth_permission" VALUES ('36', 'Can delete poll', '12', 'delete_poll');
INSERT INTO "public"."auth_permission" VALUES ('37', 'Can add choice', '13', 'add_choice');
INSERT INTO "public"."auth_permission" VALUES ('38', 'Can change choice', '13', 'change_choice');
INSERT INTO "public"."auth_permission" VALUES ('39', 'Can delete choice', '13', 'delete_choice');
INSERT INTO "public"."auth_permission" VALUES ('40', 'Can add publication', '14', 'add_publication');
INSERT INTO "public"."auth_permission" VALUES ('41', 'Can change publication', '14', 'change_publication');
INSERT INTO "public"."auth_permission" VALUES ('42', 'Can delete publication', '14', 'delete_publication');
INSERT INTO "public"."auth_permission" VALUES ('43', 'Can add section', '15', 'add_section');
INSERT INTO "public"."auth_permission" VALUES ('44', 'Can change section', '15', 'change_section');
INSERT INTO "public"."auth_permission" VALUES ('45', 'Can delete section', '15', 'delete_section');
INSERT INTO "public"."auth_permission" VALUES ('46', 'Can add article section', '16', 'add_articlesection');
INSERT INTO "public"."auth_permission" VALUES ('47', 'Can change article section', '16', 'change_articlesection');
INSERT INTO "public"."auth_permission" VALUES ('48', 'Can delete article section', '16', 'delete_articlesection');
INSERT INTO "public"."auth_permission" VALUES ('49', 'Can add poll section', '17', 'add_pollsection');
INSERT INTO "public"."auth_permission" VALUES ('50', 'Can change poll section', '17', 'change_pollsection');
INSERT INTO "public"."auth_permission" VALUES ('51', 'Can delete poll section', '17', 'delete_pollsection');
INSERT INTO "public"."auth_permission" VALUES ('52', 'Can add source', '18', 'add_source');
INSERT INTO "public"."auth_permission" VALUES ('53', 'Can change source', '18', 'change_source');
INSERT INTO "public"."auth_permission" VALUES ('54', 'Can delete source', '18', 'delete_source');
INSERT INTO "public"."auth_permission" VALUES ('55', 'Can add tag', '19', 'add_tag');
INSERT INTO "public"."auth_permission" VALUES ('56', 'Can change tag', '19', 'change_tag');
INSERT INTO "public"."auth_permission" VALUES ('57', 'Can delete tag', '19', 'delete_tag');
INSERT INTO "public"."auth_permission" VALUES ('58', 'Can add vote', '20', 'add_vote');
INSERT INTO "public"."auth_permission" VALUES ('59', 'Can change vote', '20', 'change_vote');
INSERT INTO "public"."auth_permission" VALUES ('60', 'Can delete vote', '20', 'delete_vote');
INSERT INTO "public"."auth_permission" VALUES ('61', 'Can add article rate', '21', 'add_articlerate');
INSERT INTO "public"."auth_permission" VALUES ('62', 'Can change article rate', '21', 'change_articlerate');
INSERT INTO "public"."auth_permission" VALUES ('63', 'Can delete article rate', '21', 'delete_articlerate');
INSERT INTO "public"."auth_permission" VALUES ('64', 'Can add author rate', '22', 'add_authorrate');
INSERT INTO "public"."auth_permission" VALUES ('65', 'Can change author rate', '22', 'change_authorrate');
INSERT INTO "public"."auth_permission" VALUES ('66', 'Can delete author rate', '22', 'delete_authorrate');
INSERT INTO "public"."auth_permission" VALUES ('67', 'Can add publisher rate', '23', 'add_publisherrate');
INSERT INTO "public"."auth_permission" VALUES ('68', 'Can change publisher rate', '23', 'change_publisherrate');
INSERT INTO "public"."auth_permission" VALUES ('69', 'Can delete publisher rate', '23', 'delete_publisherrate');
INSERT INTO "public"."auth_permission" VALUES ('70', 'Can add comment', '24', 'add_comment');
INSERT INTO "public"."auth_permission" VALUES ('71', 'Can change comment', '24', 'change_comment');
INSERT INTO "public"."auth_permission" VALUES ('72', 'Can delete comment', '24', 'delete_comment');
INSERT INTO "public"."auth_permission" VALUES ('73', 'Can add article image', '25', 'add_articleimage');
INSERT INTO "public"."auth_permission" VALUES ('74', 'Can change article image', '25', 'change_articleimage');
INSERT INTO "public"."auth_permission" VALUES ('75', 'Can delete article image', '25', 'delete_articleimage');

-- ----------------------------
-- Table structure for "public"."auth_user"
-- ----------------------------
DROP TABLE "public"."auth_user";
CREATE TABLE "public"."auth_user" (
"id" int4 DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
"password" varchar(128) NOT NULL,
"last_login" timestamptz(6) NOT NULL,
"is_superuser" bool NOT NULL,
"username" varchar(30) NOT NULL,
"first_name" varchar(30) NOT NULL,
"last_name" varchar(30) NOT NULL,
"email" varchar(75) NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"date_joined" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES ('1', 'pbkdf2_sha256$12000$6XrhrSsZnHsk$FccxQ2cngYFXo8BKWrsQB1e1HdInNyUt14bemkIb4O8=', '2013-12-08 22:22:42.227-03', 't', 'webmaster', '', '', 'webmaster@axis.com', 't', 't', '2013-12-08 04:11:32.091-03');

-- ----------------------------
-- Table structure for "public"."auth_user_groups"
-- ----------------------------
DROP TABLE "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
"id" int4 DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO "public"."auth_user_groups" VALUES ('1', '1', '1');
INSERT INTO "public"."auth_user_groups" VALUES ('2', '1', '2');
INSERT INTO "public"."auth_user_groups" VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for "public"."auth_user_user_permissions"
-- ----------------------------
DROP TABLE "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
"id" int4 DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."author"
-- ----------------------------
DROP TABLE "public"."author";
CREATE TABLE "public"."author" (
"author_id" int4 NOT NULL,
"user_profile_id" int4,
"added_by" int4 NOT NULL,
"image_id" int4,
"first_name" varchar(30),
"last_name" varchar(30),
"biography" varchar(1000),
"description" varchar(300) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of author
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."author_rate"
-- ----------------------------
DROP TABLE "public"."author_rate";
CREATE TABLE "public"."author_rate" (
"author_id" int4 NOT NULL,
"author_rate_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"rating" int2 NOT NULL,
"date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of author_rate
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."choice"
-- ----------------------------
DROP TABLE "public"."choice";
CREATE TABLE "public"."choice" (
"poll_id" int4 NOT NULL,
"choice_id" int4 NOT NULL,
"text" varchar(200) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of choice
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."comment"
-- ----------------------------
DROP TABLE "public"."comment";
CREATE TABLE "public"."comment" (
"article_id" int4 NOT NULL,
"comment_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"content" varchar(400) NOT NULL,
"deleted" bool NOT NULL,
"moderated" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."django_admin_log"
-- ----------------------------
DROP TABLE "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"user_id" int4 NOT NULL,
"content_type_id" int4,
"object_id" text,
"object_repr" varchar(200) NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."django_content_type"
-- ----------------------------
DROP TABLE "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"name" varchar(100) NOT NULL,
"app_label" varchar(100) NOT NULL,
"model" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('3', 'group', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('4', 'user', 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES ('7', 'migration history', 'south', 'migrationhistory');
INSERT INTO "public"."django_content_type" VALUES ('8', 'image', 'web', 'image');
INSERT INTO "public"."django_content_type" VALUES ('9', 'user profile', 'web', 'userprofile');
INSERT INTO "public"."django_content_type" VALUES ('10', 'author', 'web', 'author');
INSERT INTO "public"."django_content_type" VALUES ('11', 'article', 'web', 'article');
INSERT INTO "public"."django_content_type" VALUES ('12', 'poll', 'web', 'poll');
INSERT INTO "public"."django_content_type" VALUES ('13', 'choice', 'web', 'choice');
INSERT INTO "public"."django_content_type" VALUES ('14', 'publication', 'web', 'publication');
INSERT INTO "public"."django_content_type" VALUES ('15', 'section', 'web', 'section');
INSERT INTO "public"."django_content_type" VALUES ('16', 'article section', 'web', 'articlesection');
INSERT INTO "public"."django_content_type" VALUES ('17', 'poll section', 'web', 'pollsection');
INSERT INTO "public"."django_content_type" VALUES ('18', 'source', 'web', 'source');
INSERT INTO "public"."django_content_type" VALUES ('19', 'tag', 'web', 'tag');
INSERT INTO "public"."django_content_type" VALUES ('20', 'vote', 'web', 'vote');
INSERT INTO "public"."django_content_type" VALUES ('21', 'article rate', 'web', 'articlerate');
INSERT INTO "public"."django_content_type" VALUES ('22', 'author rate', 'web', 'authorrate');
INSERT INTO "public"."django_content_type" VALUES ('23', 'publisher rate', 'web', 'publisherrate');
INSERT INTO "public"."django_content_type" VALUES ('24', 'comment', 'web', 'comment');
INSERT INTO "public"."django_content_type" VALUES ('25', 'article image', 'web', 'articleimage');

-- ----------------------------
-- Table structure for "public"."django_session"
-- ----------------------------
DROP TABLE "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) NOT NULL,
"session_data" text NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('cbuju2rnuz8domop1m8gd5ezw5a7mmjf', 'MWQwZjZlMThiZWFlNTBhZmRkNjdjNTU2NTJlNmZjODJlNjZjMDJiMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2013-12-22 22:22:42.25-03');

-- ----------------------------
-- Table structure for "public"."image"
-- ----------------------------
DROP TABLE "public"."image";
CREATE TABLE "public"."image" (
"image_id" int4 NOT NULL,
"path" varchar(100) NOT NULL,
"is_main" bool NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."poll"
-- ----------------------------
DROP TABLE "public"."poll";
CREATE TABLE "public"."poll" (
"poll_id" int4 NOT NULL,
"title" varchar(60) NOT NULL,
"description" varchar(300) NOT NULL,
"multiple_choice" bool NOT NULL,
"voting_period_start" timestamptz(6) NOT NULL,
"voting_period_end" timestamptz(6) NOT NULL,
"deleted" bool NOT NULL,
"editable" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of poll
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."poll_section"
-- ----------------------------
DROP TABLE "public"."poll_section";
CREATE TABLE "public"."poll_section" (
"poll_section_id" int4 NOT NULL,
"section_id" int4 NOT NULL,
"poll_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of poll_section
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."publication"
-- ----------------------------
DROP TABLE "public"."publication";
CREATE TABLE "public"."publication" (
"publication_id" int4 NOT NULL,
"article_id" int4,
"poll_id" int4,
"user_profile_id" int4 NOT NULL,
"date" timestamptz(6) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of publication
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."publisher_rate"
-- ----------------------------
DROP TABLE "public"."publisher_rate";
CREATE TABLE "public"."publisher_rate" (
"pub_user_profile_id" int4 NOT NULL,
"publisher_rate_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"rating" int2 NOT NULL,
"date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of publisher_rate
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."section"
-- ----------------------------
DROP TABLE "public"."section";
CREATE TABLE "public"."section" (
"section_id" int4 NOT NULL,
"name" varchar(30) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of section
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."source"
-- ----------------------------
DROP TABLE "public"."source";
CREATE TABLE "public"."source" (
"article_id" int4 NOT NULL,
"source_id" int4 NOT NULL,
"url" varchar(2000) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of source
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."south_migrationhistory"
-- ----------------------------
DROP TABLE "public"."south_migrationhistory";
CREATE TABLE "public"."south_migrationhistory" (
"id" int4 DEFAULT nextval('south_migrationhistory_id_seq'::regclass) NOT NULL,
"app_name" varchar(255) NOT NULL,
"migration" varchar(255) NOT NULL,
"applied" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of south_migrationhistory
-- ----------------------------
INSERT INTO "public"."south_migrationhistory" VALUES ('1', 'web', '0001_initial', '2013-12-08 04:12:57.691-03');

-- ----------------------------
-- Table structure for "public"."tag"
-- ----------------------------
DROP TABLE "public"."tag";
CREATE TABLE "public"."tag" (
"article_id" int4 NOT NULL,
"tag_id" int4 NOT NULL,
"text" varchar(30) NOT NULL,
"deleted" bool NOT NULL,
"moderated" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."user_profile"
-- ----------------------------
DROP TABLE "public"."user_profile";
CREATE TABLE "public"."user_profile" (
"user_profile_id" int4 NOT NULL,
"user_id" int4 NOT NULL,
"profile_image_id" int4,
"biography" varchar(300) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO "public"."user_profile" VALUES ('1', '1', null, '''''', 'f');

-- ----------------------------
-- Table structure for "public"."vote"
-- ----------------------------
DROP TABLE "public"."vote";
CREATE TABLE "public"."vote" (
"poll_id" int4 NOT NULL,
"choice_id" int4 NOT NULL,
"vote_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of vote
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."article_image_id_seq" OWNED BY "article_image"."id";
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."south_migrationhistory_id_seq" OWNED BY "south_migrationhistory"."id";

-- ----------------------------
-- Indexes structure for table article
-- ----------------------------
CREATE INDEX "article_author_id" ON "public"."article" USING btree ("author_id");

-- ----------------------------
-- Primary Key structure for table "public"."article"
-- ----------------------------
ALTER TABLE "public"."article" ADD PRIMARY KEY ("article_id");

-- ----------------------------
-- Indexes structure for table article_image
-- ----------------------------
CREATE INDEX "article_image_image_id" ON "public"."article_image" USING btree ("image_id");

-- ----------------------------
-- Uniques structure for table "public"."article_image"
-- ----------------------------
ALTER TABLE "public"."article_image" ADD UNIQUE ("image_id");
ALTER TABLE "public"."article_image" ADD UNIQUE ("article_id", "image_id");

-- ----------------------------
-- Primary Key structure for table "public"."article_image"
-- ----------------------------
ALTER TABLE "public"."article_image" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table article_rate
-- ----------------------------
CREATE INDEX "article_rate_article_id" ON "public"."article_rate" USING btree ("article_id");
CREATE INDEX "article_rate_user_profile_id" ON "public"."article_rate" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD UNIQUE ("article_id", "user_profile_id");

-- ----------------------------
-- Checks structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD CHECK (rating >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD PRIMARY KEY ("article_rate_id");

-- ----------------------------
-- Indexes structure for table article_section
-- ----------------------------
CREATE INDEX "article_section_article_id" ON "public"."article_section" USING btree ("article_id");
CREATE INDEX "article_section_section_id" ON "public"."article_section" USING btree ("section_id");

-- ----------------------------
-- Uniques structure for table "public"."article_section"
-- ----------------------------
ALTER TABLE "public"."article_section" ADD UNIQUE ("article_id", "section_id");

-- ----------------------------
-- Primary Key structure for table "public"."article_section"
-- ----------------------------
ALTER TABLE "public"."article_section" ADD PRIMARY KEY ("article_section_id");

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_like" ON "public"."auth_group" USING btree ("name" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table "public"."auth_group"
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table "public"."auth_group"
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id" ON "public"."auth_group_permissions" USING btree ("group_id");
CREATE INDEX "auth_group_permissions_permission_id" ON "public"."auth_group_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id" ON "public"."auth_permission" USING btree ("content_type_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_like" ON "public"."auth_user" USING btree ("username" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table "public"."auth_user"
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user"
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id" ON "public"."auth_user_groups" USING btree ("group_id");
CREATE INDEX "auth_user_groups_user_id" ON "public"."auth_user_groups" USING btree ("user_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id" ON "public"."auth_user_user_permissions" USING btree ("permission_id");
CREATE INDEX "auth_user_user_permissions_user_id" ON "public"."auth_user_user_permissions" USING btree ("user_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table author
-- ----------------------------
CREATE INDEX "author_added_by" ON "public"."author" USING btree ("added_by");

-- ----------------------------
-- Uniques structure for table "public"."author"
-- ----------------------------
ALTER TABLE "public"."author" ADD UNIQUE ("user_profile_id");
ALTER TABLE "public"."author" ADD UNIQUE ("image_id");

-- ----------------------------
-- Primary Key structure for table "public"."author"
-- ----------------------------
ALTER TABLE "public"."author" ADD PRIMARY KEY ("author_id");

-- ----------------------------
-- Indexes structure for table author_rate
-- ----------------------------
CREATE INDEX "author_rate_author_id" ON "public"."author_rate" USING btree ("author_id");
CREATE INDEX "author_rate_user_profile_id" ON "public"."author_rate" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."author_rate"
-- ----------------------------
ALTER TABLE "public"."author_rate" ADD UNIQUE ("author_id", "author_rate_id");

-- ----------------------------
-- Checks structure for table "public"."author_rate"
-- ----------------------------
ALTER TABLE "public"."author_rate" ADD CHECK (rating >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."author_rate"
-- ----------------------------
ALTER TABLE "public"."author_rate" ADD PRIMARY KEY ("author_rate_id");

-- ----------------------------
-- Indexes structure for table choice
-- ----------------------------
CREATE INDEX "choice_poll_id" ON "public"."choice" USING btree ("poll_id");

-- ----------------------------
-- Uniques structure for table "public"."choice"
-- ----------------------------
ALTER TABLE "public"."choice" ADD UNIQUE ("poll_id", "choice_id");

-- ----------------------------
-- Primary Key structure for table "public"."choice"
-- ----------------------------
ALTER TABLE "public"."choice" ADD PRIMARY KEY ("choice_id");

-- ----------------------------
-- Indexes structure for table comment
-- ----------------------------
CREATE INDEX "comment_user_profile_id" ON "public"."comment" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."comment"
-- ----------------------------
ALTER TABLE "public"."comment" ADD UNIQUE ("comment_id", "article_id");

-- ----------------------------
-- Primary Key structure for table "public"."comment"
-- ----------------------------
ALTER TABLE "public"."comment" ADD PRIMARY KEY ("article_id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id" ON "public"."django_admin_log" USING btree ("content_type_id");
CREATE INDEX "django_admin_log_user_id" ON "public"."django_admin_log" USING btree ("user_id");

-- ----------------------------
-- Checks structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table "public"."django_content_type"
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table "public"."django_content_type"
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date" ON "public"."django_session" USING btree ("expire_date");
CREATE INDEX "django_session_session_key_like" ON "public"."django_session" USING btree ("session_key" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Primary Key structure for table "public"."django_session"
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table "public"."image"
-- ----------------------------
ALTER TABLE "public"."image" ADD PRIMARY KEY ("image_id");

-- ----------------------------
-- Primary Key structure for table "public"."poll"
-- ----------------------------
ALTER TABLE "public"."poll" ADD PRIMARY KEY ("poll_id");

-- ----------------------------
-- Indexes structure for table poll_section
-- ----------------------------
CREATE INDEX "poll_section_poll_id" ON "public"."poll_section" USING btree ("poll_id");
CREATE INDEX "poll_section_section_id" ON "public"."poll_section" USING btree ("section_id");

-- ----------------------------
-- Uniques structure for table "public"."poll_section"
-- ----------------------------
ALTER TABLE "public"."poll_section" ADD UNIQUE ("poll_id", "section_id");

-- ----------------------------
-- Primary Key structure for table "public"."poll_section"
-- ----------------------------
ALTER TABLE "public"."poll_section" ADD PRIMARY KEY ("poll_section_id");

-- ----------------------------
-- Indexes structure for table publication
-- ----------------------------
CREATE INDEX "publication_user_profile_id" ON "public"."publication" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."publication"
-- ----------------------------
ALTER TABLE "public"."publication" ADD UNIQUE ("article_id");
ALTER TABLE "public"."publication" ADD UNIQUE ("poll_id");

-- ----------------------------
-- Primary Key structure for table "public"."publication"
-- ----------------------------
ALTER TABLE "public"."publication" ADD PRIMARY KEY ("publication_id");

-- ----------------------------
-- Indexes structure for table publisher_rate
-- ----------------------------
CREATE INDEX "publisher_rate_pub_user_profile_id" ON "public"."publisher_rate" USING btree ("pub_user_profile_id");
CREATE INDEX "publisher_rate_user_profile_id" ON "public"."publisher_rate" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."publisher_rate"
-- ----------------------------
ALTER TABLE "public"."publisher_rate" ADD UNIQUE ("pub_user_profile_id", "publisher_rate_id");

-- ----------------------------
-- Checks structure for table "public"."publisher_rate"
-- ----------------------------
ALTER TABLE "public"."publisher_rate" ADD CHECK (rating >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."publisher_rate"
-- ----------------------------
ALTER TABLE "public"."publisher_rate" ADD PRIMARY KEY ("publisher_rate_id");

-- ----------------------------
-- Primary Key structure for table "public"."section"
-- ----------------------------
ALTER TABLE "public"."section" ADD PRIMARY KEY ("section_id");

-- ----------------------------
-- Indexes structure for table source
-- ----------------------------
CREATE INDEX "source_article_id" ON "public"."source" USING btree ("article_id");

-- ----------------------------
-- Uniques structure for table "public"."source"
-- ----------------------------
ALTER TABLE "public"."source" ADD UNIQUE ("article_id", "source_id");

-- ----------------------------
-- Primary Key structure for table "public"."source"
-- ----------------------------
ALTER TABLE "public"."source" ADD PRIMARY KEY ("source_id");

-- ----------------------------
-- Primary Key structure for table "public"."south_migrationhistory"
-- ----------------------------
ALTER TABLE "public"."south_migrationhistory" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tag
-- ----------------------------
CREATE INDEX "tag_article_id" ON "public"."tag" USING btree ("article_id");

-- ----------------------------
-- Uniques structure for table "public"."tag"
-- ----------------------------
ALTER TABLE "public"."tag" ADD UNIQUE ("article_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table "public"."tag"
-- ----------------------------
ALTER TABLE "public"."tag" ADD PRIMARY KEY ("tag_id");

-- ----------------------------
-- Uniques structure for table "public"."user_profile"
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD UNIQUE ("user_id");
ALTER TABLE "public"."user_profile" ADD UNIQUE ("profile_image_id");
ALTER TABLE "public"."user_profile" ADD UNIQUE ("user_profile_id", "user_id");

-- ----------------------------
-- Primary Key structure for table "public"."user_profile"
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD PRIMARY KEY ("user_profile_id");

-- ----------------------------
-- Indexes structure for table vote
-- ----------------------------
CREATE INDEX "vote_choice_id" ON "public"."vote" USING btree ("choice_id");
CREATE INDEX "vote_poll_id" ON "public"."vote" USING btree ("poll_id");
CREATE INDEX "vote_user_profile_id" ON "public"."vote" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."vote"
-- ----------------------------
ALTER TABLE "public"."vote" ADD UNIQUE ("poll_id", "vote_id", "choice_id");

-- ----------------------------
-- Primary Key structure for table "public"."vote"
-- ----------------------------
ALTER TABLE "public"."vote" ADD PRIMARY KEY ("vote_id");

-- ----------------------------
-- Foreign Key structure for table "public"."article"
-- ----------------------------
ALTER TABLE "public"."article" ADD FOREIGN KEY ("author_id") REFERENCES "public"."author" ("author_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."article_image"
-- ----------------------------
ALTER TABLE "public"."article_image" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."article_image" ADD FOREIGN KEY ("image_id") REFERENCES "public"."image" ("image_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."article_rate" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."article_section"
-- ----------------------------
ALTER TABLE "public"."article_section" ADD FOREIGN KEY ("section_id") REFERENCES "public"."section" ("section_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."article_section" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."author"
-- ----------------------------
ALTER TABLE "public"."author" ADD FOREIGN KEY ("image_id") REFERENCES "public"."image" ("image_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."author" ADD FOREIGN KEY ("added_by") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."author" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."author_rate"
-- ----------------------------
ALTER TABLE "public"."author_rate" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."author_rate" ADD FOREIGN KEY ("author_id") REFERENCES "public"."author" ("author_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."choice"
-- ----------------------------
ALTER TABLE "public"."choice" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."comment"
-- ----------------------------
ALTER TABLE "public"."comment" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."comment" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."poll_section"
-- ----------------------------
ALTER TABLE "public"."poll_section" ADD FOREIGN KEY ("section_id") REFERENCES "public"."section" ("section_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."poll_section" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."publication"
-- ----------------------------
ALTER TABLE "public"."publication" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."publication" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."publication" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."publisher_rate"
-- ----------------------------
ALTER TABLE "public"."publisher_rate" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."publisher_rate" ADD FOREIGN KEY ("pub_user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."source"
-- ----------------------------
ALTER TABLE "public"."source" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."tag"
-- ----------------------------
ALTER TABLE "public"."tag" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."user_profile"
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD FOREIGN KEY ("profile_image_id") REFERENCES "public"."image" ("image_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_profile" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."vote"
-- ----------------------------
ALTER TABLE "public"."vote" ADD FOREIGN KEY ("choice_id") REFERENCES "public"."choice" ("choice_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."vote" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."vote" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
