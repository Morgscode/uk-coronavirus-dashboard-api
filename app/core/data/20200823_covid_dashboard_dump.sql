# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: uk_covid_statistics
# Generation Time: 2020-08-23 21:59:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user`;

CREATE TABLE `admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(255) NOT NULL DEFAULT '',
  `nhs_conditions_api_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;

INSERT INTO `admin_user` (`id`, `admin_email`, `nhs_conditions_api_key`)
VALUES
	(1,'morgan.luke94@gmail.com','824d16f001ee4cd79f7a266bd2739f20');

/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nhs_condition_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nhs_condition_meta`;

CREATE TABLE `nhs_condition_meta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `meta_requested` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `condition_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `symptoms` text NOT NULL,
  `self_care` text NOT NULL,
  `self_isolation` text NOT NULL,
  `other_treatments` text NOT NULL,
  `diagnosis` text NOT NULL,
  `prevention` text,
  `nhs_condition_url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nhs_header_url` varchar(255) NOT NULL DEFAULT '',
  `nhs_api_response` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `nhs_condition_meta` WRITE;
/*!40000 ALTER TABLE `nhs_condition_meta` DISABLE KEYS */;

INSERT INTO `nhs_condition_meta` (`id`, `meta_requested`, `condition_name`, `description`, `symptoms`, `self_care`, `self_isolation`, `other_treatments`, `diagnosis`, `prevention`, `nhs_condition_url`, `nhs_header_url`, `nhs_api_response`)
VALUES
	(1,'2020-05-21 21:41:41','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.</p><p>To help stop the spread of coronavirus (COVID-19), stay at home as much as possible and try to avoid close contact with anyone you do not live with.</p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.</p>','<p>If you have mild symptoms of coronavirus, you should stay at home.</p><p>To help yourself stay well:</p><ul><li>drink plenty of water to stay hydrated – drink enough so your pee is pale and clear</li><li>take paracetamol to help ease your symptoms</li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely</li><li>try to keep yourself busy – you could try activities like cooking, reading, online learning and watching films</li><li>do light exercise, if you feel well enough to</li></ul>','','','',NULL,'https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"CollectionPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"WebPage\",\"name\":\"Coronavirus (COVID-19)\",\"alternateName\":[\"COVID-19\"]},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19), a new illness that affects your lungs and airways.\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), stay at home as much as possible and try to avoid close contact with anyone you do not live with.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Stay at home.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#self-care\",\"description\":\"\",\"text\":\"<p>If you have mild symptoms of coronavirus, you should stay at home.<\\/p><p>To help yourself stay well:<\\/p><ul><li>drink plenty of water to stay hydrated \\u2013 drink enough so your pee is pale and clear<\\/li><li>take paracetamol to help ease your symptoms<\\/li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely<\\/li><li>try to keep yourself busy \\u2013 you could try activities like cooking, reading, online learning and watching films<\\/li><li>do light exercise, if you feel well enough to<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-other\",\"description\":\"\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/staying-at-home-and-away-from-other-people\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), stay at home as much as possible and try to avoid close contact with anyone you do not live with.\",\"text\":\"<p>To stop coronavirus spreading, you should stay at home as much as possible.<\\/p><p>There are only a few specific reasons to leave your home, including:<\\/p><ul><li>for work, if you cannot work from home<\\/li><li>going to shops to get things like food and medicine, or to collect things you\'ve ordered<\\/li><li>to exercise or spend time outdoors<\\/li><li>for any medical reason, to donate blood, avoid injury or illness, escape risk of harm, provide care or help a vulnerable person<\\/li><\\/ul><p>When outside your home, it\'s important to try to stay 2 metres (3 steps) away from anyone you do not live with.<\\/p><p>If you can, wear something that covers your nose and mouth when it\'s hard to stay away from other people, such as on public transport<\\/p><p>You should also:<\\/p><ul><li>wash your hands with soap and water often \\u2013 for at least 20 seconds<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands<\\/li><li>not touch your face if your hands are not clean<\\/li><\\/ul>\",\"title\":\"\"}],\"dateModified\":\"2020-05-20T20:22:15+00:00\",\"genre\":\"hub\",\"mainEntity\":[{\"@type\":\"ItemPage\",\"name\":\"Check if you have coronavirus symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-18T14:53:02+00:00\",\"lastReviewed\":[\"2020-05-18T13:46:00+00:00\",\"2020-05-25T13:46:00+00:00\"],\"description\":\"Find out about the main symptoms of coronavirus (COVID-19) and where to get medical advice if you think you have them.\",\"text\":\"Find out about the main symptoms of coronavirus and where to get medical advice if you think you have them.\"},{\"@type\":\"ItemPage\",\"name\":\"What to do if you or someone you live with has symptoms of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-18T14:54:12+00:00\",\"description\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\",\"text\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\"},{\"@type\":\"ItemPage\",\"name\":\"Testing for coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-for-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-21T05:50:13+00:00\",\"description\":\"Information about testing to check if you have coronavirus and understanding your test result.\",\"text\":\"Information about testing to check if you have coronavirus and understanding your test result.\"},{\"@type\":\"ItemPage\",\"name\":\"People at higher risk from coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk-from-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-04-22T15:58:18+00:00\",\"description\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\"},{\"@type\":\"ItemPage\",\"name\":\"Coronavirus in children\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/coronavirus-in-children\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-18T14:53:49+00:00\",\"lastReviewed\":[\"2020-05-18T14:10:00+00:00\",\"2020-05-25T14:10:00+00:00\"],\"description\":\"Advice about symptoms of coronavirus (COVID-19) in children, including when to get medical help if your child seems unwell.\",\"text\":\"Advice about symptoms of coronavirus in children, including when to get medical help if your child seems unwell.\"},{\"@type\":\"ItemPage\",\"name\":\"Social distancing advice and changes to everyday life because of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-13T12:42:30+00:00\",\"description\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\"},{\"@type\":\"ItemPage\",\"name\":\"Links to more information about coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/links-to-more-information-about-coronavirus\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-13T06:40:08+00:00\",\"lastReviewed\":[\"2020-05-13T14:25:00+00:00\",\"2020-05-20T14:25:00+00:00\"],\"description\":\"Links to government advice about coronavirus (COVID-19), information for health professionals and advice for other parts of the UK.\",\"text\":\"Links to government advice, information for health professionals and advice for other parts of the UK.\"}],\"interactionStatistic\":[{\"interactionService\":{\"url\":\"<img style=\'border: 0; width: 1px; height: 1px;\' alt=\'\' src=\'http:\\/\\/statse.webtrendslive.com\\/dcs2221tai1ckz5huxw0mfq86_1m2w\\/njs.gif?dcsuri=&amp;wt.cg_n=&amp;wt.cg_s=&amp;synduserid=&amp;syndreviewdate=\'\\/>\",\"@type\":\"Website\",\"name\":\"Webtrends tracking pixel\"},\"@type\":\"InteractionCounter\"}]}'),
	(2,'2020-06-01 19:02:30','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.</p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.</p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.</p>','<p>If you have mild symptoms of coronavirus, you must stay at home (self-isolate) and get a test.</p><p>To help yourself stay well:</p><ul><li>drink plenty of water to stay hydrated – drink enough so your pee is pale and clear</li><li>take paracetamol to help ease your symptoms</li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely</li><li>try to keep yourself busy – you could try activities like cooking, reading, online learning and watching films</li><li>do light exercise, if you feel well enough to</li></ul>','','','',NULL,'https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"CollectionPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"WebPage\",\"name\":\"Coronavirus (COVID-19)\",\"alternateName\":[\"COVID-19\"]},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19).\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Stay at home (self-isolate) and get a test.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#self-care\",\"description\":\"\",\"text\":\"<p>If you have mild symptoms of coronavirus, you must stay at home (self-isolate) and get a test.<\\/p><p>To help yourself stay well:<\\/p><ul><li>drink plenty of water to stay hydrated \\u2013 drink enough so your pee is pale and clear<\\/li><li>take paracetamol to help ease your symptoms<\\/li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely<\\/li><li>try to keep yourself busy \\u2013 you could try activities like cooking, reading, online learning and watching films<\\/li><li>do light exercise, if you feel well enough to<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-other\",\"description\":\"\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/staying-at-home-and-away-from-other-people\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.\",\"text\":\"<p>To stop coronavirus spreading:<\\/p><ul><li>stay at least 2 metres (3 steps) away from anyone you do not live with when outside your home<\\/li><li>wash your hands with soap and water often \\u2013 do this for at least 20 seconds<\\/li><li>use hand sanitiser gel if soap and water are not available<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue or your sleeve (not your hands) when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands afterwards<\\/li><li>if you can, wear something that covers your nose and mouth when it\\u2019s hard to stay away from people, such as in shops or on public transport<\\/li><li>do not touch your eyes, nose or mouth if your hands are not clean<\\/li><\\/ul><p>Follow the government\\u2019s social distancing guidance about what you can and cannot do outside your home.<\\/p>\",\"title\":\"\"}],\"dateModified\":\"2020-05-28T11:43:38+00:00\",\"genre\":\"hub\",\"mainEntity\":[{\"@type\":\"ItemPage\",\"name\":\"Check if you have coronavirus symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-06-01T16:30:56+00:00\",\"lastReviewed\":[\"2020-05-28T13:46:00+00:00\",\"2020-06-04T13:46:00+00:00\"],\"description\":\"Find out about the main symptoms of coronavirus (COVID-19) and where to get medical advice if you think you have them.\",\"text\":\"Find out about the main symptoms of coronavirus and where to get medical advice if you think you have them.\"},{\"@type\":\"ItemPage\",\"name\":\"What to do if you or someone you live with has symptoms of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-30T08:00:34+00:00\",\"description\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\",\"text\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\"},{\"@type\":\"ItemPage\",\"name\":\"Testing and tracing for coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-for-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-28T07:07:13+00:00\",\"description\":\"Information about testing for coronavirus and what to do if you\'re contacted by the NHS Test and Trace service.\",\"text\":\"Information about testing for coronavirus and what to do if you\'re contacted by the NHS Test and Trace service.\"},{\"@type\":\"ItemPage\",\"name\":\"People at higher risk from coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk-from-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-04-22T15:58:18+00:00\",\"description\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\"},{\"@type\":\"ItemPage\",\"name\":\"Coronavirus in children\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/coronavirus-in-children\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-27T16:10:41+00:00\",\"lastReviewed\":[\"2020-05-27T14:10:00+00:00\",\"2020-06-03T14:10:00+00:00\"],\"description\":\"Advice about symptoms of coronavirus (COVID-19) in children, including when to get medical help if your child seems unwell.\",\"text\":\"Advice about symptoms of coronavirus in children, including when to get medical help if your child seems unwell.\"},{\"@type\":\"ItemPage\",\"name\":\"Social distancing advice and changes to everyday life because of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-13T12:42:30+00:00\",\"description\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\"},{\"@type\":\"ItemPage\",\"name\":\"Links to more information about coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/links-to-more-information-about-coronavirus\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-28T13:53:17+00:00\",\"lastReviewed\":[\"2020-05-28T14:25:00+00:00\",\"2020-06-04T14:25:00+00:00\"],\"description\":\"Links to government advice about coronavirus (COVID-19), information for health professionals and advice for other parts of the UK.\",\"text\":\"Links to government advice, information for health professionals and advice for other parts of the UK.\"}],\"interactionStatistic\":[{\"interactionService\":{\"url\":\"<img style=\'border: 0; width: 1px; height: 1px;\' alt=\'\' src=\'http:\\/\\/statse.webtrendslive.com\\/dcs2221tai1ckz5huxw0mfq86_1m2w\\/njs.gif?dcsuri=&amp;wt.cg_n=&amp;wt.cg_s=&amp;synduserid=&amp;syndreviewdate=\'\\/>\",\"@type\":\"Website\",\"name\":\"Webtrends tracking pixel\"},\"@type\":\"InteractionCounter\"}]}'),
	(3,'2020-07-03 17:45:42','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.</p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.</p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.</p>','','','','',NULL,'https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"MedicalWebPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"MedicalCondition\",\"name\":\"Coronavirus (COVID-19)\"},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19).\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Stay at home (self-isolate) and get a test.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_isolation\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/when-to-self-isolate-and-what-to-do\\/#self-isolation\",\"description\":\"You must stay at home (self-isolate) and get a test if you have symptoms of coronavirus (COVID-19). Anyone you live with must also self-isolate.\",\"text\":\"<p>You must stay at home (self-isolate) and get a test if you have any of the main symptoms of coronavirus (COVID-19).<\\/p><p>The main symptoms are a high temperature, a new, continuous cough or a loss or change to your sense of smell or taste.<\\/p><p>While you\'re self-isolating, you and anyone you live with must not leave your home.<\\/p><ul><li>Do not go to work, school or public places.<\\/li><li>Do not go on public transport or use taxis.<\\/li><li>Do not go out to get food and medicine. Order it online or by phone, or ask someone to bring it to your home.<\\/li><li>Do not have visitors in your home, including friends and family (except for people providing essential care).<\\/li><li>Do not go out to exercise. Exercise at home or in your garden, if you have one.<\\/li><\\/ul><p>If you have symptoms, you\'ll usually need to self-isolate for at least 7 days.<\\/p><p>If you live with someone who has symptoms, you\'ll usually need to self-isolate for 14 days. This is because it can take up to 14 days for symptoms to appear.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#self-care\",\"description\":\"While you\\u2019re staying at home with coronavirus (COVID-19), you can ease mild symptoms by resting, drinking plenty of fluids and taking painkillers.\",\"text\":\"<p>There are things you can do to treat mild symptoms of coronavirus (COVID-19) while you\\u2019re staying at home (self-isolating).<\\/p><p>If you have a high temperature:<\\/p><ul><li>get lots of rest<\\/li><li>drink plenty of fluids (water is best) to avoid dehydration \\u2013 drink enough so your pee is light yellow and clear<\\/li><li>take paracetamol or ibuprofen if you feel uncomfortable<\\/li><\\/ul><p>If you have a cough:<\\/p><ul><li>avoid lying on your back \\u2013 lie on your side or sit upright instead<\\/li><li>try having a teaspoon of honey \\u2013 but do not give honey to babies under 12 months<\\/li><\\/ul><p>If you feel breathless:<\\/p><ul><li>keep your room cool by turning the heating down or opening a window \\u2013 do not use a fan as it may spread the virus<\\/li><li>sit upright in a chair and relax your shoulders<\\/li><li>try breathing slowly in through your nose and out through your mouth, with your lips together like you\'re gently blowing out a candle<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#treatments-other\",\"description\":\"\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"diagnosis\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/get-an-antigen-test-to-check-if-you-have-coronavirus\\/#diagnosis\",\"description\":\"If you have symptoms of coronavirus (COVID-19), go to www.nhs.uk\\/coronavirus to get a test. Call 119 to get a test if you do not have internet access.\",\"text\":\"<p>Get a test to check for coronavirus (COVID-19) if you have any of the main symptoms.<\\/p><p>The main symptoms are a high temperature, a new, continuous cough, or a loss or change to your sense of smell or taste.<\\/p><p>You can ask for a test:<\\/p><ul><li>for yourself, if you have symptoms<\\/li><li>for someone you live with, if they have symptoms<\\/li><\\/ul><p>Ask for a test as soon as you get symptoms. The test needs to be done in the first 5 days of symptoms starting.<\\/p><p>The test usually involves wiping a long cotton bud (swab) inside your nose and at the back of your throat.<\\/p><p>You can get a test on the NHS website. Go to www.nhs.uk\\/coronavirus. Call 119 to get a test if you do not have internet access.<\\/p><p>You may be able to choose between going to a drive-through or walk-through test site, or getting a home test kit.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/social-distancing\\/what-you-need-to-do\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.\",\"text\":\"<p>To stop coronavirus (COVID-19) spreading:<\\/p><ul><li>try to stay at least 2 metres (3 steps) away from anyone you do not live with or anyone not in your support bubble<\\/li><li>wash your hands with soap and water often \\u2013 do this for at least 20 seconds<\\/li><li>use hand sanitiser gel if soap and water are not available<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue or your sleeve (not your hands) when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands afterwards<\\/li><li>if you can, wear something that covers your nose and mouth when it\\u2019s hard to stay away from people, such as in shops or on public transport<\\/li><li>do not touch your eyes, nose or mouth if your hands are not clean<\\/li><\\/ul><p>Follow the government\'s social distancing guidance about what you can and cannot do outside your home.<\\/p>\",\"title\":\"\"}],\"dateModified\":\"2020-07-03T07:36:36+00:00\",\"genre\":\"hub\",\"mainEntityOfPage\":[{\"identifier\":\"23\",\"@type\":\"WebPageElement\",\"name\":\"toptasks\",\"headline\":\"\",\"text\":\"\",\"mainEntityOfPage\":[{\"@type\":\"WebPageElement\",\"headline\":\"Get a test to check if you have coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/get-an-antigen-test-to-check-if-you-have-coronavirus\\/\",\"identifier\":\"26\",\"text\":\"\",\"name\":\"link\"}]},{\"identifier\":\"24\",\"@type\":\"WebPageElement\",\"name\":\"canonicallinks\",\"headline\":\"\",\"text\":\"\",\"mainEntityOfPage\":[{\"@type\":\"WebPageElement\",\"headline\":\"Check if you or your child has symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/symptoms\\/\",\"identifier\":\"26\",\"text\":\"Find out about the main symptoms of coronavirus and what to do if you have them.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Testing and tracing\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/\",\"identifier\":\"26\",\"text\":\"Get a test to check if you have coronavirus, understand your test result and find out what to do if you\'re contacted by NHS Test and Trace.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Self-isolation and treatment if you have symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/\",\"identifier\":\"26\",\"text\":\"Advice about staying at home (self-isolation) and treatment for you and anyone you live with.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"People at higher risk\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk\\/\",\"identifier\":\"26\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Social distancing and changes to everyday life\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/social-distancing\\/\",\"identifier\":\"26\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<hr><h2>Government information and advice<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"GOV.UK: coronavirus \\u2013 guidance and support\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus\",\"name\":\"link\"},{\"headline\":\"GOV.UK: coronavirus action plan\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/government\\/publications\\/coronavirus-action-plan\",\"name\":\"link\"},{\"headline\":\"GOV.UK: advice for people travelling abroad\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/guidance\\/travel-advice-novel-coronavirus\",\"name\":\"link\"},{\"headline\":\"GOV.UK: how to self-isolate when you travel to the UK\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/government\\/publications\\/coronavirus-covid-19-how-to-self-isolate-when-you-travel-to-the-uk\\/coronavirus-covid-19-how-to-self-isolate-when-you-travel-to-the-uk\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Leicester lockdown advice<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"Leicester City Council: coronavirus advice\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.leicester.gov.uk\",\"url\":\"https:\\/\\/www.leicester.gov.uk\\/your-council\\/coronavirus\\/coronavirus-in-leicester-latest-news\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Information for health professionals<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"NHS England: coronavirus for health professionals\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.england.nhs.uk\",\"url\":\"https:\\/\\/www.england.nhs.uk\\/ourwork\\/eprr\\/coronavirus\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Advice in other parts of the UK<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"Scotland \\u2013 NHS Inform: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nhsinform.scot\",\"url\":\"https:\\/\\/www.nhsinform.scot\\/illnesses-and-conditions\\/infections-and-poisoning\\/coronavirus-covid-19\",\"name\":\"link\"},{\"headline\":\"Wales \\u2013 NHS Direct Wales: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nhsdirect.wales.nhs.uk\",\"url\":\"https:\\/\\/www.nhsdirect.wales.nhs.uk\\/coronavirus(2019ncov)\",\"name\":\"link\"},{\"headline\":\"Northern Ireland \\u2013 nidirect: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nidirect.gov.uk\",\"url\":\"https:\\/\\/www.nidirect.gov.uk\\/campaigns\\/coronavirus-covid-19\",\"name\":\"link\"}]}]}'),
	(4,'2020-07-25 13:42:07','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.</p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.</p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.</p>','','','','',NULL,'https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"MedicalWebPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"MedicalCondition\",\"name\":\"Coronavirus (COVID-19)\"},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19).\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Get a test to check if you have coronavirus and stay at home until you get your result.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_isolation\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/when-to-self-isolate-and-what-to-do\\/#self-isolation\",\"description\":\"You must stay at home (self-isolate) if you have symptoms of coronavirus (COVID-19) or you test positive. Anyone you live with must also self-isolate.\",\"text\":\"<p>You must stay at home (self-isolate) and get a test if you have any of the main symptoms of coronavirus (COVID-19).<\\/p><p>The main symptoms are a high temperature, a new, continuous cough or a loss or change to your sense of smell or taste.<\\/p><p>While you\'re self-isolating, you and anyone you live with must not leave your home.<\\/p><ul><li>Do not go to work, school or public places.<\\/li><li>Do not go on public transport or use taxis.<\\/li><li>Do not go out to get food and medicine. Order it online or by phone, or ask someone to bring it to your home.<\\/li><li>Do not have visitors in your home, including friends and family (except for people providing essential care).<\\/li><li>Do not go out to exercise. Exercise at home or in your garden, if you have one.<\\/li><\\/ul><p>If you have symptoms or you test positive (you have coronavirus), you\'ll usually need to self-isolate for at least 7 days.<\\/p><p>If you live with someone who has symptoms or has tested positive, you\'ll usually need to self-isolate for 14 days. This is because it can take up to 14 days for symptoms to appear.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#self-care\",\"description\":\"While you\\u2019re staying at home with coronavirus (COVID-19), you can ease mild symptoms by resting, drinking plenty of fluids and taking painkillers.\",\"text\":\"<p>There are things you can do to treat mild symptoms of coronavirus (COVID-19) while you\\u2019re staying at home (self-isolating).<\\/p><p>If you have a high temperature:<\\/p><ul><li>get lots of rest<\\/li><li>drink plenty of fluids (water is best) to avoid dehydration \\u2013 drink enough so your pee is light yellow and clear<\\/li><li>take paracetamol or ibuprofen if you feel uncomfortable<\\/li><\\/ul><p>If you have a cough:<\\/p><ul><li>avoid lying on your back \\u2013 lie on your side or sit upright instead<\\/li><li>try having a teaspoon of honey \\u2013 but do not give honey to babies under 12 months<\\/li><\\/ul><p>If you feel breathless:<\\/p><ul><li>keep your room cool by turning the heating down or opening a window \\u2013 do not use a fan as it may spread the virus<\\/li><li>sit upright in a chair and relax your shoulders<\\/li><li>try breathing slowly in through your nose and out through your mouth, with your lips together like you\'re gently blowing out a candle<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#treatments-other\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"diagnosis\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/get-a-test-to-check-if-you-have-coronavirus\\/#diagnosis\",\"description\":\"To get a test to check if you have coronavirus (COVID-19), go to www.nhs.uk\\/coronavirus. Call 119 if you need help getting a test.\",\"text\":\"<p>Get a test to check for coronavirus (COVID-19) if you have any of the main symptoms.<\\/p><p>The main symptoms are a high temperature, a new, continuous cough, or a loss or change to your sense of smell or taste.<\\/p><p>You can ask for a test:<\\/p><ul><li>for yourself, if you have symptoms<\\/li><li>for someone you live with, if they have symptoms<\\/li><\\/ul><p>Ask for a test as soon as you get symptoms. The test needs to be done in the first 5 days of symptoms starting.<\\/p><p>You can also sometimes get a test if you do not have symptoms. For example, if you live in England and have been told to have a test before you go into hospital, or if you\'re in a lockdown area with a coronavirus outbreak.<\\/p><p>The test involves wiping a long cotton bud (swab) inside your nose and at the back of your throat.<\\/p><p>You can get a test on the NHS website. Go to www.nhs.uk\\/coronavirus. Call 119 to get a test if you have problems using the internet.<\\/p><p>You can choose a test site near you today and get your result tomorrow, or get a home test kit.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/social-distancing\\/what-you-need-to-do\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.\",\"text\":\"<p>To stop coronavirus (COVID-19) spreading:<\\/p><ul><li>try to stay at least 2 metres (3 steps) away from anyone you do not live with or anyone not in your support bubble<\\/li><li>wash your hands with soap and water often \\u2013 do this for at least 20 seconds<\\/li><li>use hand sanitiser gel if soap and water are not available<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue or your sleeve (not your hands) when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands afterwards<\\/li><li>wear something that covers your nose and mouth when it\\u2019s hard to stay away from people, such as in shops or on public transport<\\/li><li>do not touch your eyes, nose or mouth if your hands are not clean<\\/li><\\/ul><p>Follow the government\'s social distancing guidance about what you can and cannot do outside your home.<\\/p>\",\"title\":\"\"}],\"dateModified\":\"2020-07-24T06:41:25+00:00\",\"genre\":\"hub\",\"mainEntityOfPage\":[{\"identifier\":\"23\",\"@type\":\"WebPageElement\",\"name\":\"toptasks\",\"headline\":\"\",\"text\":\"\",\"mainEntityOfPage\":[{\"@type\":\"WebPageElement\",\"headline\":\"Get a test to check if you have coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/get-a-test-to-check-if-you-have-coronavirus\\/\",\"identifier\":\"26\",\"text\":\"\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Sign up to be contacted for coronavirus vaccine research\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/research\\/coronavirus-vaccine-research\\/\",\"identifier\":\"26\",\"text\":\"\",\"name\":\"link\"}]},{\"identifier\":\"24\",\"@type\":\"WebPageElement\",\"name\":\"canonicallinks\",\"headline\":\"\",\"text\":\"\",\"mainEntityOfPage\":[{\"@type\":\"WebPageElement\",\"headline\":\"Check if you or your child has symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/symptoms\\/\",\"identifier\":\"26\",\"text\":\"Find out about the main symptoms of coronavirus and what to do if you have them.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Testing and tracing\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/\",\"identifier\":\"26\",\"text\":\"Get a test to check if you have coronavirus, understand your test result and find out what to do if you\'re contacted by NHS Test and Trace.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Self-isolation and treating symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/\",\"identifier\":\"26\",\"text\":\"Advice about staying at home (self-isolation) and treatment for you and anyone you live with.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"People at higher risk\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk\\/\",\"identifier\":\"26\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Social distancing and changes to everyday life\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/social-distancing\\/\",\"identifier\":\"26\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Take part in research\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/research\\/\",\"identifier\":\"26\",\"text\":\"Find out about health research studies and how you may be able to take part.\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<hr><h2>Government information and advice<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"GOV.UK: coronavirus \\u2013 guidance and support\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus\",\"name\":\"link\"},{\"headline\":\"GOV.UK: advice for people travelling abroad\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/guidance\\/travel-advice-novel-coronavirus\",\"name\":\"link\"},{\"headline\":\"GOV.UK: how to self-isolate when you travel to the UK\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/government\\/publications\\/coronavirus-covid-19-how-to-self-isolate-when-you-travel-to-the-uk\\/coronavirus-covid-19-how-to-self-isolate-when-you-travel-to-the-uk\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Work and financial support<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"GOV.UK: work and financial support\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus\\/worker-support\",\"name\":\"link\"},{\"headline\":\"GOV.UK: check if you should go back into work\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus-employee-risk-assessment\",\"name\":\"link\"},{\"headline\":\"Citizens Advice: coronavirus \\u2013 if you\\u2019re worried about working\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.citizensadvice.org.uk\",\"url\":\"https:\\/\\/www.citizensadvice.org.uk\\/work\\/coronavirus-if-youre-worried-about-working\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Leicester lockdown advice<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"Leicester City Council: coronavirus advice\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.leicester.gov.uk\",\"url\":\"https:\\/\\/www.leicester.gov.uk\\/your-council\\/coronavirus\\/coronavirus-in-leicester-latest-news\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Information for health professionals<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"NHS England: coronavirus for health professionals\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.england.nhs.uk\",\"url\":\"https:\\/\\/www.england.nhs.uk\\/ourwork\\/eprr\\/coronavirus\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Advice in other parts of the UK<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"Scotland \\u2013 NHS Inform: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nhsinform.scot\",\"url\":\"https:\\/\\/www.nhsinform.scot\\/illnesses-and-conditions\\/infections-and-poisoning\\/coronavirus-covid-19\",\"name\":\"link\"},{\"headline\":\"Wales \\u2013 NHS Direct Wales: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nhsdirect.wales.nhs.uk\",\"url\":\"https:\\/\\/www.nhsdirect.wales.nhs.uk\\/coronavirus(2019ncov)\",\"name\":\"link\"},{\"headline\":\"Northern Ireland \\u2013 nidirect: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nidirect.gov.uk\",\"url\":\"https:\\/\\/www.nidirect.gov.uk\\/campaigns\\/coronavirus-covid-19\",\"name\":\"link\"}]}]}'),
	(5,'2020-08-23 22:45:30','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are:</p><ul><li>a high temperature – this means you feel hot to touch on your chest or back (you do not need to measure your temperature)</li><li>a new, continuous cough – this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)</li><li>a loss or change to your sense of smell or taste – this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal</li></ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Get a test to check if you have coronavirus and stay at home until you get your result.</p>','<p>There are things you can do to treat mild symptoms of coronavirus (COVID-19) while you’re staying at home (self-isolating).</p><p>If you have a high temperature:</p><ul><li>get lots of rest</li><li>drink plenty of fluids (water is best) to avoid dehydration – drink enough so your pee is light yellow and clear</li><li>take paracetamol or ibuprofen if you feel uncomfortable</li></ul><p>If you have a cough:</p><ul><li>avoid lying on your back – lie on your side or sit upright instead</li><li>try having a teaspoon of honey – but do not give honey to babies under 12 months</li></ul><p>If you feel breathless:</p><ul><li>keep your room cool by turning the heating down or opening a window – do not use a fan as it may spread the virus</li><li>sit upright in a chair and relax your shoulders</li><li>try breathing slowly in through your nose and out through your mouth, with your lips together like you\'re gently blowing out a candle</li></ul>','<p>You must stay at home (self-isolate) and get a test if you have any of the main symptoms of coronavirus (COVID-19).</p><p>The main symptoms are a high temperature, a new, continuous cough or a loss or change to your sense of smell or taste.</p><p>While you\'re self-isolating, you and anyone you live with must not leave your home.</p><ul><li>Do not go to work, school or public places.</li><li>Do not go on public transport or use taxis.</li><li>Do not go out to get food and medicine. Order it online or by phone, or ask someone to bring it to your home.</li><li>Do not have visitors in your home, including friends and family (except for people providing essential care).</li><li>Do not go out to exercise. Exercise at home or in your garden, if you have one.</li></ul><p>If you have symptoms or you test positive (you have coronavirus), you\'ll usually need to self-isolate for at least 10 days.</p><p>If you live with someone who has symptoms or has tested positive, you\'ll usually need to self-isolate for 14 days. This is because it can take up to 14 days for symptoms to appear.</p>','<p>There is currently no specific treatment for coronavirus.</p><p>Antibiotics do not help, as they do not work against viruses.</p><p>Treatment aims to relieve the symptoms while your body fights the illness.</p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.</p>','<p>Get a test to check for coronavirus (COVID-19) if you have any of the main symptoms.</p><p>The main symptoms are a high temperature, a new, continuous cough, or a loss or change to your sense of smell or taste.</p><p>You can ask for a test:</p><ul><li>for yourself, if you have symptoms</li><li>for someone you live with, if they have symptoms</li></ul><p>Ask for a test as soon as you get symptoms. The test needs to be done in the first 5 days of symptoms starting.</p><p>You can also sometimes get a test if you do not have symptoms. For example, if your local council asks you to get a test.</p><p>The test involves wiping a long cotton bud (swab) inside your nose and at the back of your throat.</p><p>You can get a test on the NHS website. Go to www.nhs.uk/coronavirus. Call 119 to get a test if you have problems using the internet.</p><p>You can choose a test site near you today and get your result tomorrow, or get a home test kit.</p>','<p>To stop coronavirus (COVID-19) spreading:</p><ul><li>try to stay at least 2 metres (3 steps) away from anyone you do not live with or anyone not in your support bubble</li><li>wash your hands with soap and water often – do this for at least 20 seconds</li><li>use hand sanitiser gel if soap and water are not available</li><li>wash your hands as soon as you get home</li><li>cover your mouth and nose with a tissue or your sleeve (not your hands) when you cough or sneeze</li><li>put used tissues in the bin immediately and wash your hands afterwards</li><li>wear something that covers your nose and mouth when it’s hard to stay away from people, such as in shops or on public transport</li><li>do not touch your eyes, nose or mouth if your hands are not clean</li></ul><p>Follow the government\'s social distancing guidance about what you can and cannot do outside your home.</p>','https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"MedicalWebPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"MedicalCondition\",\"name\":\"Coronavirus (COVID-19)\"},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19).\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Get a test to check if you have coronavirus and stay at home until you get your result.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_isolation\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/when-to-self-isolate-and-what-to-do\\/#self-isolation\",\"description\":\"You must stay at home (self-isolate) if you have symptoms of coronavirus (COVID-19) or you test positive. Anyone you live with must also self-isolate.\",\"text\":\"<p>You must stay at home (self-isolate) and get a test if you have any of the main symptoms of coronavirus (COVID-19).<\\/p><p>The main symptoms are a high temperature, a new, continuous cough or a loss or change to your sense of smell or taste.<\\/p><p>While you\'re self-isolating, you and anyone you live with must not leave your home.<\\/p><ul><li>Do not go to work, school or public places.<\\/li><li>Do not go on public transport or use taxis.<\\/li><li>Do not go out to get food and medicine. Order it online or by phone, or ask someone to bring it to your home.<\\/li><li>Do not have visitors in your home, including friends and family (except for people providing essential care).<\\/li><li>Do not go out to exercise. Exercise at home or in your garden, if you have one.<\\/li><\\/ul><p>If you have symptoms or you test positive (you have coronavirus), you\'ll usually need to self-isolate for at least 10 days.<\\/p><p>If you live with someone who has symptoms or has tested positive, you\'ll usually need to self-isolate for 14 days. This is because it can take up to 14 days for symptoms to appear.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#self-care\",\"description\":\"While you\\u2019re staying at home with coronavirus (COVID-19), you can ease mild symptoms by resting, drinking plenty of fluids and taking painkillers.\",\"text\":\"<p>There are things you can do to treat mild symptoms of coronavirus (COVID-19) while you\\u2019re staying at home (self-isolating).<\\/p><p>If you have a high temperature:<\\/p><ul><li>get lots of rest<\\/li><li>drink plenty of fluids (water is best) to avoid dehydration \\u2013 drink enough so your pee is light yellow and clear<\\/li><li>take paracetamol or ibuprofen if you feel uncomfortable<\\/li><\\/ul><p>If you have a cough:<\\/p><ul><li>avoid lying on your back \\u2013 lie on your side or sit upright instead<\\/li><li>try having a teaspoon of honey \\u2013 but do not give honey to babies under 12 months<\\/li><\\/ul><p>If you feel breathless:<\\/p><ul><li>keep your room cool by turning the heating down or opening a window \\u2013 do not use a fan as it may spread the virus<\\/li><li>sit upright in a chair and relax your shoulders<\\/li><li>try breathing slowly in through your nose and out through your mouth, with your lips together like you\'re gently blowing out a candle<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/how-to-treat-symptoms-at-home\\/#treatments-other\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"diagnosis\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/get-a-test-to-check-if-you-have-coronavirus\\/#diagnosis\",\"description\":\"To get a test to check if you have coronavirus (COVID-19), go to www.nhs.uk\\/coronavirus. Call 119 if you need help getting a test.\",\"text\":\"<p>Get a test to check for coronavirus (COVID-19) if you have any of the main symptoms.<\\/p><p>The main symptoms are a high temperature, a new, continuous cough, or a loss or change to your sense of smell or taste.<\\/p><p>You can ask for a test:<\\/p><ul><li>for yourself, if you have symptoms<\\/li><li>for someone you live with, if they have symptoms<\\/li><\\/ul><p>Ask for a test as soon as you get symptoms. The test needs to be done in the first 5 days of symptoms starting.<\\/p><p>You can also sometimes get a test if you do not have symptoms. For example, if your local council asks you to get a test.<\\/p><p>The test involves wiping a long cotton bud (swab) inside your nose and at the back of your throat.<\\/p><p>You can get a test on the NHS website. Go to www.nhs.uk\\/coronavirus. Call 119 to get a test if you have problems using the internet.<\\/p><p>You can choose a test site near you today and get your result tomorrow, or get a home test kit.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/social-distancing\\/what-you-need-to-do\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.\",\"text\":\"<p>To stop coronavirus (COVID-19) spreading:<\\/p><ul><li>try to stay at least 2 metres (3 steps) away from anyone you do not live with or anyone not in your support bubble<\\/li><li>wash your hands with soap and water often \\u2013 do this for at least 20 seconds<\\/li><li>use hand sanitiser gel if soap and water are not available<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue or your sleeve (not your hands) when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands afterwards<\\/li><li>wear something that covers your nose and mouth when it\\u2019s hard to stay away from people, such as in shops or on public transport<\\/li><li>do not touch your eyes, nose or mouth if your hands are not clean<\\/li><\\/ul><p>Follow the government\'s social distancing guidance about what you can and cannot do outside your home.<\\/p>\",\"title\":\"\"}],\"dateModified\":\"2020-08-10T13:17:57+00:00\",\"genre\":\"hub\",\"mainEntityOfPage\":[{\"identifier\":\"23\",\"@type\":\"WebPageElement\",\"name\":\"toptasks\",\"headline\":\"\",\"text\":\"\",\"mainEntityOfPage\":[{\"@type\":\"WebPageElement\",\"headline\":\"Get a test to check if you have coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/get-a-test-to-check-if-you-have-coronavirus\\/\",\"identifier\":\"26\",\"text\":\"\",\"name\":\"link\"}]},{\"identifier\":\"24\",\"@type\":\"WebPageElement\",\"name\":\"canonicallinks\",\"headline\":\"\",\"text\":\"\",\"mainEntityOfPage\":[{\"@type\":\"WebPageElement\",\"headline\":\"Check if you or your child has symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/symptoms\\/\",\"identifier\":\"26\",\"text\":\"Find out about the main symptoms of coronavirus and what to do if you have them.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Testing and tracing\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-and-tracing\\/\",\"identifier\":\"26\",\"text\":\"Get a test to check if you have coronavirus, understand your test result and find out what to do if you\'re contacted by NHS Test and Trace.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Self-isolation and treating symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/self-isolation-and-treatment\\/\",\"identifier\":\"26\",\"text\":\"Advice about staying at home (self-isolation) and treatment for you and anyone you live with.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"People at higher risk\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk\\/\",\"identifier\":\"26\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Social distancing and changes to everyday life\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/social-distancing\\/\",\"identifier\":\"26\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"name\":\"link\"},{\"@type\":\"WebPageElement\",\"headline\":\"Take part in research\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/research\\/\",\"identifier\":\"26\",\"text\":\"Find out about health research studies and how you may be able to take part.\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<hr><h2>Government information and advice<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"GOV.UK: coronavirus \\u2013 guidance and support\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus\",\"name\":\"link\"},{\"headline\":\"GOV.UK: advice for people travelling abroad\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/guidance\\/travel-advice-novel-coronavirus\",\"name\":\"link\"},{\"headline\":\"GOV.UK: how to self-isolate when you travel to the UK\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/government\\/publications\\/coronavirus-covid-19-how-to-self-isolate-when-you-travel-to-the-uk\\/coronavirus-covid-19-how-to-self-isolate-when-you-travel-to-the-uk\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Local outbreak advice<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"GOV.UK: local restrictions \\u2013 areas with an outbreak of coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/government\\/collections\\/local-restrictions-areas-with-an-outbreak-of-coronavirus-covid-19\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Work and financial support<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"GOV.UK: work and financial support\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus\\/worker-support\",\"name\":\"link\"},{\"headline\":\"GOV.UK: check if you should go back into work\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.gov.uk\",\"url\":\"https:\\/\\/www.gov.uk\\/coronavirus-employee-risk-assessment\",\"name\":\"link\"},{\"headline\":\"Citizens Advice: coronavirus \\u2013 if you\\u2019re worried about working\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.citizensadvice.org.uk\",\"url\":\"https:\\/\\/www.citizensadvice.org.uk\\/work\\/coronavirus-if-youre-worried-about-working\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Information for health professionals<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"NHS England: coronavirus for health professionals\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.england.nhs.uk\",\"url\":\"https:\\/\\/www.england.nhs.uk\\/ourwork\\/eprr\\/coronavirus\\/\",\"name\":\"link\"}]},{\"identifier\":\"27\",\"@type\":\"WebPageElement\",\"name\":\"RelatedLinks\",\"headline\":\"<h2>Advice in other parts of the UK<\\/h2>\",\"text\":\"\",\"mainEntityOfPage\":[{\"headline\":\"Scotland \\u2013 NHS Inform: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nhsinform.scot\",\"url\":\"https:\\/\\/www.nhsinform.scot\\/illnesses-and-conditions\\/infections-and-poisoning\\/coronavirus-covid-19\",\"name\":\"link\"},{\"headline\":\"Wales \\u2013 NHS Direct Wales: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nhsdirect.wales.nhs.uk\",\"url\":\"https:\\/\\/www.nhsdirect.wales.nhs.uk\\/coronavirus(2019ncov)\",\"name\":\"link\"},{\"headline\":\"Northern Ireland \\u2013 nidirect: coronavirus\",\"@type\":\"WebPageElement\",\"identifier\":\"26\",\"text\":\"www.nidirect.gov.uk\",\"url\":\"https:\\/\\/www.nidirect.gov.uk\\/campaigns\\/coronavirus-covid-19\",\"name\":\"link\"}]}]}');

/*!40000 ALTER TABLE `nhs_condition_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table uk_daily_covid_cases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `uk_daily_covid_cases`;

CREATE TABLE `uk_daily_covid_cases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_confirmed_cases` int(11) DEFAULT NULL,
  `uk_total_confirmed_cases` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `uk_daily_covid_cases` WRITE;
/*!40000 ALTER TABLE `uk_daily_covid_cases` DISABLE KEYS */;

INSERT INTO `uk_daily_covid_cases` (`id`, `date`, `daily_confirmed_cases`, `uk_total_confirmed_cases`)
VALUES
	(1,'2020-03-01',12,35),
	(2,'2020-03-02',5,40),
	(3,'2020-03-03',11,51),
	(4,'2020-03-04',34,85),
	(5,'2020-03-05',29,114),
	(6,'2020-03-06',46,160),
	(7,'2020-03-07',46,206),
	(8,'2020-03-08',65,271),
	(9,'2020-03-09',50,321),
	(10,'2020-03-10',52,373),
	(11,'2020-03-11',83,456),
	(12,'2020-03-12',134,590),
	(13,'2020-03-13',207,797),
	(14,'2020-03-14',264,1061),
	(15,'2020-03-15',330,1391),
	(16,'2020-03-16',152,1543),
	(17,'2020-03-17',407,1950),
	(18,'2020-03-18',676,2626),
	(19,'2020-03-19',643,3269),
	(20,'2020-03-20',714,3983),
	(21,'2020-03-21',1035,5018),
	(22,'2020-03-22',665,5683),
	(23,'2020-03-23',967,6650),
	(24,'2020-03-24',1427,8077),
	(25,'2020-03-25',1452,9529),
	(26,'2020-03-26',2129,11658),
	(27,'2020-03-27',2890,14548),
	(28,'2020-03-28',2556,17104),
	(29,'2020-03-29',2502,19606),
	(30,'2020-03-30',2665,22271),
	(31,'2020-03-31',3250,25521),
	(32,'2020-04-01',4567,30088),
	(33,'2020-04-02',4522,34610),
	(34,'2020-04-03',4672,39282),
	(35,'2020-04-04',4000,43282),
	(36,'2020-04-05',6199,49481),
	(37,'2020-04-06',4143,53624),
	(38,'2020-04-07',3888,57512),
	(39,'2020-04-08',5865,63377),
	(40,'2020-04-09',4675,68052),
	(41,'2020-04-10',5706,73758),
	(42,'2020-04-11',5234,78991),
	(43,'2020-04-12',5288,84279),
	(44,'2020-04-13',4342,88621),
	(45,'2020-04-14',5252,93873),
	(46,'2020-04-15',4605,98476),
	(47,'2020-04-16',4618,103093),
	(48,'2020-04-17',5599,108692),
	(49,'2020-04-18',5526,114217),
	(50,'2020-04-19',5850,120067),
	(51,'2020-04-20',4676,124743),
	(52,'2020-04-21',4301,129044),
	(53,'2020-04-22',4451,133495),
	(54,'2020-04-23',4583,138078),
	(55,'2020-04-24',5386,143464),
	(56,'2020-04-25',4913,148377),
	(57,'2020-04-26',4463,152840),
	(58,'2020-04-27',4310,157149),
	(59,'2020-04-28',3996,161145),
	(60,'2020-04-29',4076,165221),
	(61,'2020-04-30',6032,171253),
	(62,'2020-05-01',6201,177454),
	(63,'2020-05-02',4806,182260),
	(64,'2020-05-03',4339,186599),
	(65,'2020-05-04',3985,190584),
	(66,'2020-05-05',4406,194990),
	(67,'2020-05-06',6111,201101),
	(68,'2020-05-07',5614,206715),
	(69,'2020-05-08',4649,211364),
	(70,'2020-05-09',3896,215260),
	(71,'2020-05-10',3923,219183),
	(72,'2020-05-11',3877,223060),
	(73,'2020-05-12',3403,226463),
	(74,'2020-05-13',3242,229705),
	(75,'2020-05-14',3446,233151),
	(76,'2020-05-15',3560,236711),
	(77,'2020-05-16',3451,240161),
	(78,'2020-05-17',3562,243723),
	(79,'2020-05-18',2684,246406),
	(80,'2020-05-19',2412,248818),
	(81,'2020-05-20',2472,248293),
	(82,'2020-05-21',2615,250908),
	(83,'2020-05-22',3287,254195),
	(84,'2020-05-23',2959,257154),
	(85,'2020-05-24',2409,259559),
	(86,'2020-05-25',1625,261184),
	(87,'2020-05-26',2004,265227),
	(88,'2020-05-27',2013,267240),
	(89,'2020-05-28',1887,269127),
	(90,'2020-05-29',2095,271222),
	(91,'2020-05-30',2445,272826),
	(92,'2020-05-31',1936,274762),
	(93,'2020-06-01',1570,276332),
	(94,'2020-06-02',1613,277985),
	(95,'2020-06-03',1871,279856),
	(96,'2020-06-04',1805,281661),
	(97,'2020-06-05',1650,283311),
	(98,'2020-06-06',1557,284868),
	(99,'2020-06-07',1326,286194),
	(100,'2020-06-08',1205,287399),
	(101,'2020-06-09',1387,289140),
	(102,'2020-06-10',1003,290143),
	(103,'2020-06-11',1266,291409),
	(104,'2020-06-12',1541,292950),
	(105,'2020-06-13',1425,294375),
	(106,'2020-06-14',1514,295889),
	(107,'2020-06-15',1056,296857),
	(108,'2020-06-16',1279,298136),
	(109,'2020-06-17',1115,299251),
	(110,'2020-06-18',1218,300469),
	(111,'2020-06-19',1346,301815),
	(112,'2020-06-20',1295,303110),
	(113,'2020-06-21',1221,304331),
	(114,'2020-06-22',958,305289),
	(115,'2020-06-23',874,306210),
	(116,'2020-06-24',653,306862),
	(117,'2020-06-25',1118,307980),
	(118,'2020-06-26',1006,309360),
	(119,'2020-06-27',890,310250),
	(120,'2020-06-28',901,311151),
	(121,'2020-06-29',815,311965),
	(122,'2020-06-30',689,312654),
	(123,'2020-07-01',829,313483),
	(124,'2020-07-02',576,283757),
	(125,'2020-07-03',544,284276),
	(126,'2020-07-04',624,284900),
	(127,'2020-07-05',516,285416),
	(128,'2020-07-06',352,285768),
	(129,'2020-07-07',581,286349),
	(130,'2020-07-08',630,286979),
	(131,'2020-07-09',642,287621),
	(132,'2020-07-10',512,288133),
	(133,'2020-07-11',820,288953),
	(134,'2020-07-12',650,289603),
	(135,'2020-07-13',530,290133),
	(136,'2020-07-14',398,291373),
	(137,'2020-07-15',538,291911),
	(138,'2020-07-16',642,292552),
	(139,'2020-07-17',687,293239),
	(140,'2020-07-18',827,294066),
	(141,'2020-07-19',726,294792),
	(142,'2020-07-20',580,295372),
	(143,'2020-07-21',445,295817),
	(144,'2020-07-22',560,296377),
	(145,'2020-07-23',769,297146),
	(146,'2020-07-24',768,297914),
	(147,'2020-07-25',767,298681),
	(148,'2020-07-26',747,299426),
	(149,'2020-07-27',685,300111),
	(150,'2020-07-28',581,300692),
	(151,'2020-07-29',763,301455),
	(152,'2020-07-30',846,302301),
	(153,'2020-07-31',880,303181),
	(154,'2020-08-01',761,303942),
	(155,'2020-08-02',743,304685),
	(156,'2020-08-03',938,305623),
	(157,'2020-08-04',670,306293),
	(158,'2020-08-05',892,307184),
	(159,'2020-08-06',950,308134),
	(160,'2020-08-07',871,309005),
	(161,'2020-08-08',758,309763),
	(162,'2020-08-09',1062,310825),
	(163,'2020-08-10',816,311641),
	(164,'2020-08-11',1148,312789),
	(165,'2020-08-12',1009,313798),
	(166,'2020-08-13',1129,314927),
	(167,'2020-08-14',1441,316367),
	(168,'2020-08-15',1077,317444),
	(169,'2020-08-16',1040,318484),
	(170,'2020-08-17',713,319197),
	(171,'2020-08-18',1089,320286),
	(172,'2020-08-19',812,321098),
	(173,'2020-08-20',1182,322280),
	(174,'2020-08-21',1033,323313),
	(175,'2020-08-22',1288,324601);

/*!40000 ALTER TABLE `uk_daily_covid_cases` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table uk_daily_covid_deaths
# ------------------------------------------------------------

DROP TABLE IF EXISTS `uk_daily_covid_deaths`;

CREATE TABLE `uk_daily_covid_deaths` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `daily_uk_covid_deaths` int(11) DEFAULT NULL,
  `uk_death_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `uk_daily_covid_deaths` WRITE;
/*!40000 ALTER TABLE `uk_daily_covid_deaths` DISABLE KEYS */;

INSERT INTO `uk_daily_covid_deaths` (`id`, `date`, `daily_uk_covid_deaths`, `uk_death_total`)
VALUES
	(1,'2020-03-06',1,1),
	(2,'2020-03-07',1,2),
	(3,'2020-03-08',0,2),
	(4,'2020-03-09',1,3),
	(5,'2020-03-10',4,7),
	(6,'2020-03-11',0,7),
	(7,'2020-03-12',2,9),
	(8,'2020-03-13',1,10),
	(9,'2020-03-14',18,29),
	(10,'2020-03-15',14,43),
	(11,'2020-03-16',22,65),
	(12,'2020-03-17',16,82),
	(13,'2020-03-18',34,116),
	(14,'2020-03-19',45,162),
	(15,'2020-03-20',32,194),
	(16,'2020-03-21',58,252),
	(17,'2020-03-22',36,288),
	(18,'2020-03-23',76,364),
	(19,'2020-03-24',148,512),
	(20,'2020-03-25',191,703),
	(21,'2020-03-26',181,884),
	(22,'2020-03-27',288,1172),
	(23,'2020-03-28',292,1464),
	(24,'2020-03-29',212,1676),
	(25,'2020-03-30',374,2050),
	(26,'2020-03-31',403,2453),
	(27,'2020-04-01',672,3125),
	(28,'2020-04-02',657,3782),
	(29,'2020-04-03',736,4518),
	(30,'2020-04-04',756,5274),
	(31,'2020-04-05',599,5873),
	(32,'2020-04-06',567,6440),
	(33,'2020-04-07',1105,7545),
	(34,'2020-04-08',1030,8575),
	(35,'2020-04-09',1116,9691),
	(36,'2020-04-10',1122,10813),
	(37,'2020-04-11',843,11656),
	(38,'2020-04-12',657,12313),
	(39,'2020-04-13',724,13037),
	(40,'2020-04-14',1076,14113),
	(41,'2020-04-15',880,14993),
	(42,'2020-04-16',1036,16029),
	(43,'2020-04-17',913,16942),
	(44,'2020-04-18',1105,18047),
	(45,'2020-04-19',432,18479),
	(46,'2020-04-20',570,19049),
	(47,'2020-04-21',1224,20273),
	(48,'2020-04-22',847,21120),
	(49,'2020-04-23',682,21802),
	(50,'2020-04-24',1010,22812),
	(51,'2020-04-25',815,23627),
	(52,'2020-04-26',364,23991),
	(53,'2020-04-27',320,24311),
	(54,'2020-04-28',969,25280),
	(55,'2020-04-29',769,26049),
	(56,'2020-04-30',634,26683),
	(57,'2020-05-01',698,27381),
	(58,'2020-05-02',584,27965),
	(59,'2020-05-03',253,28218),
	(60,'2020-05-04',272,28490),
	(61,'2020-05-05',726,29216),
	(62,'2020-05-06',647,29863),
	(63,'2020-05-07',458,30321),
	(64,'2020-05-08',579,30900),
	(65,'2020-05-09',275,31175),
	(66,'2020-05-10',217,31392),
	(67,'2020-05-11',187,31579),
	(68,'2020-05-12',614,32193),
	(69,'2020-05-13',447,32640),
	(70,'2020-05-14',352,32992),
	(71,'2020-05-15',350,33342),
	(72,'2020-05-16',411,33753),
	(73,'2020-05-17',67,33820),
	(74,'2020-05-18',146,33966),
	(75,'2020-05-19',500,34466),
	(76,'2020-05-20',328,34794),
	(77,'2020-05-21',273,35067),
	(78,'2020-05-22',291,35358),
	(79,'2020-05-23',220,35578),
	(80,'2020-05-24',379,35957),
	(81,'2020-05-25',104,36061),
	(82,'2020-05-26',131,36192),
	(83,'2020-05-27',422,36614),
	(84,'2020-05-28',343,36957),
	(85,'2020-05-29',274,37231),
	(86,'2020-05-30',154,37385),
	(87,'2020-05-31',60,37445),
	(88,'2020-06-01',86,37531),
	(89,'2020-06-02',249,37780),
	(90,'2020-06-03',254,38034),
	(91,'2020-06-04',130,38164),
	(92,'2020-06-05',258,38422),
	(93,'2020-06-06',143,38565),
	(94,'2020-06-07',54,38619),
	(95,'2020-06-08',47,38666),
	(96,'2020-06-09',195,38861),
	(97,'2020-06-10',164,39025),
	(98,'2020-06-11',76,39101),
	(99,'2020-06-12',131,39232),
	(100,'2020-06-13',107,39339),
	(101,'2020-06-14',27,39366),
	(102,'2020-06-15',29,39395),
	(103,'2020-06-16',120,39515),
	(104,'2020-06-17',110,39625),
	(105,'2020-06-18',67,39692),
	(106,'2020-06-19',84,39776),
	(107,'2020-06-20',71,39847),
	(108,'2020-06-21',31,39878),
	(109,'2020-06-22',14,39892),
	(110,'2020-06-23',94,39986),
	(111,'2020-06-24',87,40073),
	(112,'2020-06-25',99,40172),
	(113,'2020-06-26',79,40249),
	(114,'2020-06-27',40,40289),
	(115,'2020-06-28',31,40320),
	(116,'2020-06-29',21,40341),
	(117,'2020-06-30',53,40394),
	(118,'2020-07-01',97,40491),
	(119,'2020-07-02',41,40532),
	(120,'2020-07-03',50,40581),
	(121,'2020-07-04',32,40613),
	(122,'2020-07-05',19,40632),
	(123,'2020-07-06',11,40643),
	(124,'2020-07-07',54,40697),
	(125,'2020-07-08',57,40754),
	(126,'2020-07-09',31,40785),
	(127,'2020-07-10',34,40819),
	(128,'2020-07-11',17,40836),
	(129,'2020-07-12',9,40845),
	(130,'2020-07-13',10,40855),
	(131,'2020-07-14',44,40899),
	(132,'2020-07-15',26,40925),
	(133,'2020-07-16',24,40949),
	(134,'2020-07-17',26,40975),
	(135,'2020-07-18',9,40984),
	(136,'2020-07-19',11,40995),
	(137,'2020-07-20',10,41005),
	(138,'2020-07-21',25,41030),
	(139,'2020-07-22',17,41047),
	(140,'2020-07-23',9,41056),
	(141,'2020-07-24',32,41088),
	(142,'2020-07-25',15,41103),
	(143,'2020-07-26',8,41111),
	(144,'2020-07-27',3,41114),
	(145,'2020-07-28',21,41135),
	(146,'2020-07-29',34,41169),
	(147,'2020-07-30',0,41169),
	(148,'2020-07-31',20,41189),
	(149,'2020-08-01',13,41202),
	(150,'2020-08-02',5,41207),
	(151,'2020-08-03',1,41208),
	(152,'2020-08-04',18,41226),
	(153,'2020-08-05',14,41240),
	(154,'2020-08-06',18,41258),
	(155,'2020-08-07',12,41270),
	(156,'2020-08-08',3,41273),
	(157,'2020-08-09',5,41278),
	(158,'2020-08-10',18,41296),
	(159,'2020-08-11',13,41309),
	(160,'2020-08-12',20,41329),
	(161,'2020-08-13',18,41347),
	(162,'2020-08-14',11,41358),
	(163,'2020-08-15',3,41361),
	(164,'2020-08-16',5,41366),
	(165,'2020-08-17',3,41369),
	(166,'2020-08-18',12,41381),
	(167,'2020-08-19',16,41397),
	(168,'2020-08-20',6,41403),
	(169,'2020-08-21',2,41405),
	(170,'2020-08-22',18,41423);

/*!40000 ALTER TABLE `uk_daily_covid_deaths` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
