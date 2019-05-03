/*
 Navicat Premium Data Transfer

 Source Server         : mampdatabase
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:8889
 Source Schema         : esame

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/05/2019 16:42:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(600) NOT NULL,
  `correct_answer` varchar(600) DEFAULT NULL,
  `incorrect1` varchar(600) DEFAULT NULL,
  `incorrect2` varchar(600) DEFAULT NULL,
  `incorrect3` varchar(255) DEFAULT NULL,
  `category` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
BEGIN;
INSERT INTO `questions` VALUES (2, 'The Harvard architecture for micro-controllers added which additional bus??', 'marco', 'Address', 'Data', 'Control', 0);
INSERT INTO `questions` VALUES (3, 'In any programming language, what is the most common way to iterate through an array??', 'marco', '&#039;If&#039; Statements', 'Do-while loops', 'While loops', 0);
INSERT INTO `questions` VALUES (4, 'Which internet company began life as an online bookstore called &#039;Cadabra&#039;??', 'marco', 'eBay', 'Overstock', 'Shopify', 0);
INSERT INTO `questions` VALUES (5, 'What amount of bits commonly equals one byte??', 'marco', '1', '2', '64', 0);
INSERT INTO `questions` VALUES (6, 'Which computer hardware device provides an interface for all other connected devices to communicate??', 'marco', 'Central Processing Unit', 'Hard Disk Drive', 'Random Access Memory', 0);
INSERT INTO `questions` VALUES (7, 'On which computer hardware device is the BIOS chip located??', 'marco', 'Hard Disk Drive', 'Central Processing Unit', 'Graphics Processing Unit', 0);
INSERT INTO `questions` VALUES (8, 'What does the Prt Sc button do??', 'marco', 'Nothing', 'Saves a .png file of what&#039;s on the screen in your screenshots folder in photos', 'Closes all windows', 0);
INSERT INTO `questions` VALUES (9, 'Nvidia&#039;s headquarters are based in which Silicon Valley city??', 'marco', 'Palo Alto', 'Cupertino', 'Mountain View', 0);
INSERT INTO `questions` VALUES (10, 'What is the most preferred image format used for logos in the Wikimedia database??', 'marco', '.png', '.jpeg', '.gif', 0);
INSERT INTO `questions` VALUES (11, 'What was the name given to Android 4.3??', 'marco', 'Lollipop', 'Nutella', 'Froyo', 0);
INSERT INTO `questions` VALUES (12, 'What is the domain name for the country Tuvalu??', 'marco', '.tu', '.tt', '.tl', 0);
INSERT INTO `questions` VALUES (13, 'The internet domain .fm is the country-code top-level domain for which Pacific Ocean island nation??', 'marco', 'Fiji', 'Tuvalu', 'Marshall Islands', 0);
INSERT INTO `questions` VALUES (14, 'On Twitter, what is the character limit for a Tweet??', 'marco', '120', '160', '100', 0);
INSERT INTO `questions` VALUES (15, 'In CSS, which of these values CANNOT be used with the position property??', 'marco', 'static', 'absolute', 'relative', 0);
INSERT INTO `questions` VALUES (16, 'Which of these was the name of a bug found in April 2014 in the publicly available OpenSSL cryptography library??', 'marco', 'Shellshock', 'Corrupted Blood', 'Shellscript', 0);
INSERT INTO `questions` VALUES (17, 'What is the correct term for the metal object in between the CPU and the CPU fan within a computer system??', 'marco', 'CPU Vent', 'Temperature Decipator', 'Heat Vent', 0);
INSERT INTO `questions` VALUES (18, 'Which computer language would you associate Django framework with??', 'marco', 'C#', 'C++', 'Java', 0);
INSERT INTO `questions` VALUES (19, 'What does LTS stand for in the software market??', 'marco', 'Long Taco Service', 'Ludicrous Transfer Speed', 'Ludicrous Turbo Speed', 0);
INSERT INTO `questions` VALUES (20, 'Which operating system was released first??', 'marco', 'Windows', 'Linux', 'OS/2', 0);
INSERT INTO `questions` VALUES (21, '.rs is the top-level domain for what country??', 'marco', 'Romania', 'Russia', 'Rwanda', 0);
INSERT INTO `questions` VALUES (22, 'What does the term GPU stand for??', 'marco', 'Gaming Processor Unit', 'Graphite Producing Unit', 'Graphical Proprietary Unit', 0);
INSERT INTO `questions` VALUES (23, 'What is the name of the process that sends one quibit of information using two bits of classical information??', 'marco', 'Super Dense Coding', 'Quantum Entanglement', 'Quantum Programming', 0);
INSERT INTO `questions` VALUES (24, 'Which of these is not a key value of Agile software development??', 'marco', 'Individuals and interactions', 'Customer collaboration', 'Responding to change', 0);
INSERT INTO `questions` VALUES (25, 'What was the first company to use the term Golden Master?', 'marco', 'IBM', 'Microsoft', 'Google', 0);
INSERT INTO `questions` VALUES (26, 'Released in 2001, the first edition of Apples Mac OS X operating system (version 10.0) was given what animal code name??', 'marco', 'Puma', 'Tiger', 'Leopard', 0);
INSERT INTO `questions` VALUES (27, 'The C programming language was created by this American computer scientist. ', 'marco', 'Tim Berners Lee', 'al-Khwārizmī', 'Willis Ware', 0);
INSERT INTO `questions` VALUES (28, 'Which programming language was developed by Sun Microsystems in 1995??', 'marco', 'Python', 'Solaris OS', 'C++', 0);
INSERT INTO `questions` VALUES (29, 'The name of technology company HP stands for what??', 'marco', 'Howard Packmann', 'Husker-Pollosk', 'Hellman-Pohl', 0);
INSERT INTO `questions` VALUES (30, 'What is the name given to layer 4 of the Open Systems Interconnection (ISO) model??', 'marco', 'Session', 'Data link', 'Network', 0);
INSERT INTO `questions` VALUES (31, 'Who invented the Spanning Tree Protocol??', 'marco', 'Paul Vixie', 'Vint Cerf', 'Michael Roberts', 0);
COMMIT;

-- ----------------------------
-- Table structure for results
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `matricola` varchar(255) NOT NULL,
  `punteggio` int(255) DEFAULT NULL,
  `bonus` int(255) DEFAULT NULL,
  `malus` int(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of results
-- ----------------------------
BEGIN;
INSERT INTO `results` VALUES ('354123', 3, NULL, NULL, 'Antonio', 'Sibilla');
INSERT INTO `results` VALUES ('568253', 26, 6, 0, 'Michele', 'De Palma');
INSERT INTO `results` VALUES ('568254', 30, 6, 0, 'Marco', 'Rizzi');
INSERT INTO `results` VALUES ('568255', 22, 0, 0, 'Antonio', 'Ribezzi');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;