# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: uk_covid_statistics
# Generation Time: 2020-08-22 18:27:21 +0000
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
  `nhs_condition_url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nhs_header_url` varchar(255) NOT NULL DEFAULT '',
  `nhs_api_response` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `nhs_condition_meta` WRITE;
/*!40000 ALTER TABLE `nhs_condition_meta` DISABLE KEYS */;

INSERT INTO `nhs_condition_meta` (`id`, `meta_requested`, `condition_name`, `description`, `symptoms`, `self_care`, `nhs_condition_url`, `nhs_header_url`, `nhs_api_response`)
VALUES
	(1,'2020-05-21 21:41:41','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.</p><p>To help stop the spread of coronavirus (COVID-19), stay at home as much as possible and try to avoid close contact with anyone you do not live with.</p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.</p>','<p>If you have mild symptoms of coronavirus, you should stay at home.</p><p>To help yourself stay well:</p><ul><li>drink plenty of water to stay hydrated – drink enough so your pee is pale and clear</li><li>take paracetamol to help ease your symptoms</li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely</li><li>try to keep yourself busy – you could try activities like cooking, reading, online learning and watching films</li><li>do light exercise, if you feel well enough to</li></ul>','https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"CollectionPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"WebPage\",\"name\":\"Coronavirus (COVID-19)\",\"alternateName\":[\"COVID-19\"]},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19), a new illness that affects your lungs and airways.\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), stay at home as much as possible and try to avoid close contact with anyone you do not live with.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Stay at home.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#self-care\",\"description\":\"\",\"text\":\"<p>If you have mild symptoms of coronavirus, you should stay at home.<\\/p><p>To help yourself stay well:<\\/p><ul><li>drink plenty of water to stay hydrated \\u2013 drink enough so your pee is pale and clear<\\/li><li>take paracetamol to help ease your symptoms<\\/li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely<\\/li><li>try to keep yourself busy \\u2013 you could try activities like cooking, reading, online learning and watching films<\\/li><li>do light exercise, if you feel well enough to<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-other\",\"description\":\"\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/staying-at-home-and-away-from-other-people\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), stay at home as much as possible and try to avoid close contact with anyone you do not live with.\",\"text\":\"<p>To stop coronavirus spreading, you should stay at home as much as possible.<\\/p><p>There are only a few specific reasons to leave your home, including:<\\/p><ul><li>for work, if you cannot work from home<\\/li><li>going to shops to get things like food and medicine, or to collect things you\'ve ordered<\\/li><li>to exercise or spend time outdoors<\\/li><li>for any medical reason, to donate blood, avoid injury or illness, escape risk of harm, provide care or help a vulnerable person<\\/li><\\/ul><p>When outside your home, it\'s important to try to stay 2 metres (3 steps) away from anyone you do not live with.<\\/p><p>If you can, wear something that covers your nose and mouth when it\'s hard to stay away from other people, such as on public transport<\\/p><p>You should also:<\\/p><ul><li>wash your hands with soap and water often \\u2013 for at least 20 seconds<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands<\\/li><li>not touch your face if your hands are not clean<\\/li><\\/ul>\",\"title\":\"\"}],\"dateModified\":\"2020-05-20T20:22:15+00:00\",\"genre\":\"hub\",\"mainEntity\":[{\"@type\":\"ItemPage\",\"name\":\"Check if you have coronavirus symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-18T14:53:02+00:00\",\"lastReviewed\":[\"2020-05-18T13:46:00+00:00\",\"2020-05-25T13:46:00+00:00\"],\"description\":\"Find out about the main symptoms of coronavirus (COVID-19) and where to get medical advice if you think you have them.\",\"text\":\"Find out about the main symptoms of coronavirus and where to get medical advice if you think you have them.\"},{\"@type\":\"ItemPage\",\"name\":\"What to do if you or someone you live with has symptoms of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-18T14:54:12+00:00\",\"description\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\",\"text\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\"},{\"@type\":\"ItemPage\",\"name\":\"Testing for coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-for-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-21T05:50:13+00:00\",\"description\":\"Information about testing to check if you have coronavirus and understanding your test result.\",\"text\":\"Information about testing to check if you have coronavirus and understanding your test result.\"},{\"@type\":\"ItemPage\",\"name\":\"People at higher risk from coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk-from-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-04-22T15:58:18+00:00\",\"description\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\"},{\"@type\":\"ItemPage\",\"name\":\"Coronavirus in children\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/coronavirus-in-children\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-18T14:53:49+00:00\",\"lastReviewed\":[\"2020-05-18T14:10:00+00:00\",\"2020-05-25T14:10:00+00:00\"],\"description\":\"Advice about symptoms of coronavirus (COVID-19) in children, including when to get medical help if your child seems unwell.\",\"text\":\"Advice about symptoms of coronavirus in children, including when to get medical help if your child seems unwell.\"},{\"@type\":\"ItemPage\",\"name\":\"Social distancing advice and changes to everyday life because of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-13T12:42:30+00:00\",\"description\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\"},{\"@type\":\"ItemPage\",\"name\":\"Links to more information about coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/links-to-more-information-about-coronavirus\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-13T06:40:08+00:00\",\"lastReviewed\":[\"2020-05-13T14:25:00+00:00\",\"2020-05-20T14:25:00+00:00\"],\"description\":\"Links to government advice about coronavirus (COVID-19), information for health professionals and advice for other parts of the UK.\",\"text\":\"Links to government advice, information for health professionals and advice for other parts of the UK.\"}],\"interactionStatistic\":[{\"interactionService\":{\"url\":\"<img style=\'border: 0; width: 1px; height: 1px;\' alt=\'\' src=\'http:\\/\\/statse.webtrendslive.com\\/dcs2221tai1ckz5huxw0mfq86_1m2w\\/njs.gif?dcsuri=&amp;wt.cg_n=&amp;wt.cg_s=&amp;synduserid=&amp;syndreviewdate=\'\\/>\",\"@type\":\"Website\",\"name\":\"Webtrends tracking pixel\"},\"@type\":\"InteractionCounter\"}]}'),
	(2,'2020-06-01 19:02:30','Coronavirus (COVID-19)','COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.','<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.</p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.</p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.</p>','<p>If you have mild symptoms of coronavirus, you must stay at home (self-isolate) and get a test.</p><p>To help yourself stay well:</p><ul><li>drink plenty of water to stay hydrated – drink enough so your pee is pale and clear</li><li>take paracetamol to help ease your symptoms</li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely</li><li>try to keep yourself busy – you could try activities like cooking, reading, online learning and watching films</li><li>do light exercise, if you feel well enough to</li></ul>','https://www.nhs.uk/conditions/coronavirus-covid-19/','https://www.nhs.uk/nhscwebservices/documents/logo1.jpg','{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"CollectionPage\",\"name\":\"Coronavirus (COVID-19)\",\"copyrightHolder\":{\"name\":\"Crown Copyright\",\"@type\":\"Organization\"},\"license\":\"https:\\/\\/developer.api.nhs.uk\\/terms\",\"author\":{\"url\":\"https:\\/\\/www.nhs.uk\",\"logo\":\"https:\\/\\/www.nhs.uk\\/nhscwebservices\\/documents\\/logo1.jpg\",\"email\":\"nhswebsite.servicedesk@nhs.net\",\"@type\":\"Organization\",\"name\":\"NHS website\"},\"about\":{\"@type\":\"WebPage\",\"name\":\"Coronavirus (COVID-19)\",\"alternateName\":[\"COVID-19\"]},\"description\":\"Get the latest NHS information and advice about coronavirus (COVID-19).\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"breadcrumb\":{\"@context\":\"http:\\/\\/schema.org\",\"@type\":\"BreadcrumbList\",\"itemListElement\":[{\"@type\":\"ListItem\",\"position\":0,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/\",\"name\":\"Health A to Z\",\"genre\":\"condition\"}},{\"@type\":\"ListItem\",\"position\":1,\"item\":{\"@id\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/\",\"name\":\"Coronavirus (COVID-19)\",\"genre\":\"hub\"}}]},\"headline\":\"Coronavirus (COVID-19)\",\"hasPart\":[{\"@type\":\"WebPageElement\",\"name\":\"overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#overview\",\"description\":\"COVID-19 is a new illness that can affect your lungs and airways. It\'s caused by a virus called coronavirus.\",\"text\":\"<p>The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.<\\/p><p>To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.<\\/p><p>You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"symptoms\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/#symptoms\",\"description\":\"The main symptoms of coronavirus (COVID-19) are a high temperature, a new, continuous cough and a loss or change to your sense of smell or taste.\",\"text\":\"<p>The main symptoms of coronavirus are:<\\/p><ul><li>a high temperature \\u2013 this means you feel hot to touch on your chest or back (you do not need to measure your temperature)<\\/li><li>a new, continuous cough \\u2013 this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual)<\\/li><li>a loss or change to your sense of smell or taste \\u2013 this means you\'ve noticed you cannot smell or taste anything, or things smell or taste different to normal<\\/li><\\/ul><p>To protect others, do not go to places like a GP surgery, pharmacy or hospital if you have any of these symptoms. Stay at home (self-isolate) and get a test.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"treatments_overview\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-summary\",\"description\":\"You can usually treat mild coronavirus (COVID-19) symptoms at home. If your symptoms are severe, you may need medical care until you recover.\",\"text\":\"\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"self_care\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#self-care\",\"description\":\"\",\"text\":\"<p>If you have mild symptoms of coronavirus, you must stay at home (self-isolate) and get a test.<\\/p><p>To help yourself stay well:<\\/p><ul><li>drink plenty of water to stay hydrated \\u2013 drink enough so your pee is pale and clear<\\/li><li>take paracetamol to help ease your symptoms<\\/li><li>stay in touch with family and friends over the phone or on social media, to help you avoid feeling low or lonely<\\/li><li>try to keep yourself busy \\u2013 you could try activities like cooking, reading, online learning and watching films<\\/li><li>do light exercise, if you feel well enough to<\\/li><\\/ul>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"other_treatments\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/how-to-treat-coronavirus-symptoms-at-home\\/#treatments-other\",\"description\":\"\",\"text\":\"<p>There is currently no specific treatment for coronavirus.<\\/p><p>Antibiotics do not help, as they do not work against viruses.<\\/p><p>Treatment aims to relieve the symptoms while your body fights the illness.<\\/p><p>You\'ll need to stay in isolation away from other people until you\'ve recovered.<\\/p>\",\"title\":\"\"},{\"@type\":\"WebPageElement\",\"name\":\"prevention\",\"url\":\"https:\\/\\/www.nhs.uk\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/staying-at-home-and-away-from-other-people\\/#prevention\",\"description\":\"To help stop the spread of coronavirus (COVID-19), avoid close contact with anyone you do not live with and wash your hands regularly.\",\"text\":\"<p>To stop coronavirus spreading:<\\/p><ul><li>stay at least 2 metres (3 steps) away from anyone you do not live with when outside your home<\\/li><li>wash your hands with soap and water often \\u2013 do this for at least 20 seconds<\\/li><li>use hand sanitiser gel if soap and water are not available<\\/li><li>wash your hands as soon as you get home<\\/li><li>cover your mouth and nose with a tissue or your sleeve (not your hands) when you cough or sneeze<\\/li><li>put used tissues in the bin immediately and wash your hands afterwards<\\/li><li>if you can, wear something that covers your nose and mouth when it\\u2019s hard to stay away from people, such as in shops or on public transport<\\/li><li>do not touch your eyes, nose or mouth if your hands are not clean<\\/li><\\/ul><p>Follow the government\\u2019s social distancing guidance about what you can and cannot do outside your home.<\\/p>\",\"title\":\"\"}],\"dateModified\":\"2020-05-28T11:43:38+00:00\",\"genre\":\"hub\",\"mainEntity\":[{\"@type\":\"ItemPage\",\"name\":\"Check if you have coronavirus symptoms\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/check-if-you-have-coronavirus-symptoms\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-06-01T16:30:56+00:00\",\"lastReviewed\":[\"2020-05-28T13:46:00+00:00\",\"2020-06-04T13:46:00+00:00\"],\"description\":\"Find out about the main symptoms of coronavirus (COVID-19) and where to get medical advice if you think you have them.\",\"text\":\"Find out about the main symptoms of coronavirus and where to get medical advice if you think you have them.\"},{\"@type\":\"ItemPage\",\"name\":\"What to do if you or someone you live with has symptoms of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/what-to-do-if-you-or-someone-you-live-with-has-coronavirus-symptoms\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-30T08:00:34+00:00\",\"description\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\",\"text\":\"Advice about staying at home (self-isolation) and looking after yourself if you or someone you live with has symptoms.\"},{\"@type\":\"ItemPage\",\"name\":\"Testing and tracing for coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/testing-for-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-28T07:07:13+00:00\",\"description\":\"Information about testing for coronavirus and what to do if you\'re contacted by the NHS Test and Trace service.\",\"text\":\"Information about testing for coronavirus and what to do if you\'re contacted by the NHS Test and Trace service.\"},{\"@type\":\"ItemPage\",\"name\":\"People at higher risk from coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/people-at-higher-risk-from-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-04-22T15:58:18+00:00\",\"description\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\",\"text\":\"Advice for people at higher risk from coronavirus, including older people, people with health conditions and pregnant women.\"},{\"@type\":\"ItemPage\",\"name\":\"Coronavirus in children\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/coronavirus-in-children\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-27T16:10:41+00:00\",\"lastReviewed\":[\"2020-05-27T14:10:00+00:00\",\"2020-06-03T14:10:00+00:00\"],\"description\":\"Advice about symptoms of coronavirus (COVID-19) in children, including when to get medical help if your child seems unwell.\",\"text\":\"Advice about symptoms of coronavirus in children, including when to get medical help if your child seems unwell.\"},{\"@type\":\"ItemPage\",\"name\":\"Social distancing advice and changes to everyday life because of coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/staying-at-home-to-avoid-getting-coronavirus\\/\",\"genre\":\"hub\",\"dateModified\":\"2020-05-13T12:42:30+00:00\",\"description\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\",\"text\":\"Advice about avoiding close contact with other people (social distancing), looking after your wellbeing and using the NHS and other services.\"},{\"@type\":\"ItemPage\",\"name\":\"Links to more information about coronavirus\",\"url\":\"\\/conditions\\/coronavirus-covid-19\\/links-to-more-information-about-coronavirus\\/\",\"genre\":\"guide\",\"dateModified\":\"2020-05-28T13:53:17+00:00\",\"lastReviewed\":[\"2020-05-28T14:25:00+00:00\",\"2020-06-04T14:25:00+00:00\"],\"description\":\"Links to government advice about coronavirus (COVID-19), information for health professionals and advice for other parts of the UK.\",\"text\":\"Links to government advice, information for health professionals and advice for other parts of the UK.\"}],\"interactionStatistic\":[{\"interactionService\":{\"url\":\"<img style=\'border: 0; width: 1px; height: 1px;\' alt=\'\' src=\'http:\\/\\/statse.webtrendslive.com\\/dcs2221tai1ckz5huxw0mfq86_1m2w\\/njs.gif?dcsuri=&amp;wt.cg_n=&amp;wt.cg_s=&amp;synduserid=&amp;syndreviewdate=\'\\/>\",\"@type\":\"Website\",\"name\":\"Webtrends tracking pixel\"},\"@type\":\"InteractionCounter\"}]}');

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
	(31,'2020-03-01',12,35),
	(32,'2020-03-02',5,40),
	(33,'2020-03-03',11,51),
	(34,'2020-03-04',34,85),
	(35,'2020-03-05',29,114),
	(36,'2020-03-06',46,160),
	(37,'2020-03-07',46,206),
	(38,'2020-03-08',65,271),
	(39,'2020-03-09',50,321),
	(40,'2020-03-10',52,373),
	(270,'2020-03-11',83,456),
	(271,'2020-03-12',134,590),
	(272,'2020-03-13',207,797),
	(273,'2020-03-14',264,1061),
	(274,'2020-03-15',330,1391),
	(275,'2020-03-16',152,1543),
	(276,'2020-03-17',407,1950),
	(277,'2020-03-18',676,2626),
	(278,'2020-03-19',643,3269),
	(279,'2020-03-20',714,3983),
	(280,'2020-03-21',1035,5018),
	(281,'2020-03-22',665,5683),
	(282,'2020-03-23',967,6650),
	(283,'2020-03-24',1427,8077),
	(284,'2020-03-25',1452,9529),
	(285,'2020-03-26',2129,11658),
	(286,'2020-03-27',2890,14548),
	(287,'2020-03-28',2556,17104),
	(288,'2020-03-29',2502,19606),
	(289,'2020-03-30',2665,22271),
	(290,'2020-03-31',3250,25521),
	(291,'2020-04-01',4567,30088),
	(292,'2020-04-02',4522,34610),
	(293,'2020-04-03',4672,39282),
	(294,'2020-04-04',4000,43282),
	(295,'2020-04-05',6199,49481),
	(296,'2020-04-06',4143,53624),
	(297,'2020-04-07',3888,57512),
	(298,'2020-04-08',5865,63377),
	(299,'2020-04-09',4675,68052),
	(300,'2020-04-10',5706,73758),
	(301,'2020-04-11',5234,78991),
	(302,'2020-04-12',5288,84279),
	(303,'2020-04-13',4342,88621),
	(304,'2020-04-14',5252,93873),
	(305,'2020-04-15',4605,98476),
	(306,'2020-04-16',4618,103093),
	(307,'2020-04-17',5599,108692),
	(308,'2020-04-18',5526,114217),
	(309,'2020-04-19',5850,120067),
	(310,'2020-04-20',4676,124743),
	(311,'2020-04-21',4301,129044),
	(312,'2020-04-22',4451,133495),
	(313,'2020-04-23',4583,138078),
	(314,'2020-04-24',5386,143464),
	(315,'2020-04-25',4913,148377),
	(316,'2020-04-26',4463,152840),
	(317,'2020-04-27',4310,157149),
	(318,'2020-04-28',3996,161145),
	(319,'2020-04-29',4076,165221),
	(320,'2020-04-30',6032,171253),
	(321,'2020-05-01',6201,177454),
	(322,'2020-05-02',4806,182260),
	(323,'2020-05-03',4339,186599),
	(324,'2020-05-04',3985,190584),
	(325,'2020-05-05',4406,194990),
	(326,'2020-05-06',6111,201101),
	(327,'2020-05-07',5614,206715),
	(328,'2020-05-08',4649,211364),
	(329,'2020-05-09',3896,215260),
	(330,'2020-05-10',3923,219183),
	(331,'2020-05-11',3877,223060),
	(332,'2020-05-12',3403,226463),
	(333,'2020-05-13',3242,229705),
	(334,'2020-05-14',3446,233151),
	(335,'2020-05-15',3560,236711),
	(336,'2020-05-16',3451,240161),
	(337,'2020-05-17',3562,243723),
	(338,'2020-05-18',2684,246406),
	(339,'2020-05-19',2412,248818),
	(340,'2020-05-20',2472,248293),
	(341,'2020-05-21',2615,250908),
	(342,'2020-05-22',3287,254195),
	(343,'2020-05-23',2959,257154),
	(344,'2020-05-24',2409,259559),
	(345,'2020-05-25',1625,261184),
	(346,'2020-05-26',2004,265227),
	(347,'2020-05-27',2013,267240),
	(348,'2020-05-28',1887,269127),
	(349,'2020-05-29',2095,271222),
	(350,'2020-05-30',2445,272826),
	(351,'2020-05-31',1936,274762),
	(352,'2020-06-01',1570,276332),
	(353,'2020-06-02',1653,277985),
	(354,'2020-06-03',1871,279856),
	(355,'2020-06-04',1805,281661),
	(356,'2020-06-05',1650,283311),
	(357,'2020-06-06',1557,284868),
	(358,'2020-06-07',1326,286194),
	(359,'2020-06-08',1205,287399),
	(360,'2020-06-09',1387,289140),
	(361,'2020-06-10',1003,290143),
	(362,'2020-06-11',1266,291409),
	(363,'2020-06-12',1541,292950),
	(364,'2020-06-13',1425,294375),
	(365,'2020-06-14',1514,295889),
	(366,'2020-06-15',1056,296857),
	(367,'2020-06-16',1279,298136),
	(368,'2020-06-17',1115,299251),
	(369,'2020-06-18',1218,300469),
	(370,'2020-06-19',1346,301815),
	(371,'2020-06-20',1295,303110),
	(372,'2020-06-21',1221,304331),
	(373,'2020-06-22',958,305289),
	(374,'2020-06-23',874,306210),
	(375,'2020-06-24',653,306862),
	(376,'2020-06-25',1118,307980),
	(377,'2020-06-26',1006,309360),
	(378,'2020-06-27',890,310250),
	(379,'2020-06-28',901,311151),
	(380,'2020-06-29',815,311965),
	(381,'2020-06-30',689,312654),
	(382,'2020-07-01',829,313483),
	(383,'2020-07-02',576,283757),
	(384,'2020-07-03',519,284276),
	(385,'2020-07-04',624,284900),
	(386,'2020-07-05',516,285416),
	(387,'2020-07-06',352,285768),
	(388,'2020-07-07',581,286349),
	(389,'2020-07-08',630,286979),
	(390,'2020-07-09',642,287621),
	(391,'2020-07-10',512,288133),
	(392,'2020-07-11',820,288953),
	(393,'2020-07-12',650,289603),
	(394,'2020-07-13',530,290133),
	(395,'2020-07-14',398,291373),
	(396,'2020-07-15',538,291911),
	(397,'2020-07-16',642,292552),
	(398,'2020-07-17',687,292239),
	(399,'2020-07-18',827,294066),
	(400,'2020-07-19',726,294792),
	(401,'2020-07-20',580,295817),
	(402,'2020-07-21',445,295817),
	(403,'2020-07-22',560,296377),
	(404,'2020-07-23',769,297146),
	(405,'2020-07-24',768,297914),
	(406,'2020-07-25',767,298681),
	(407,'2020-07-26',747,299426),
	(408,'2020-07-27',685,300111),
	(409,'2020-07-28',581,300692),
	(410,'2020-07-29',763,301455),
	(411,'2020-07-30',846,302301),
	(412,'2020-07-31',880,303181),
	(413,'2020-08-01',771,303952),
	(414,'2020-08-02',743,304695),
	(415,'2020-08-03',928,305623),
	(416,'2020-08-04',670,306293),
	(417,'2020-08-05',891,307184),
	(418,'2020-08-06',950,308134);

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
	(9,'2020-03-14',18,28),
	(10,'2020-03-15',15,43),
	(11,'2020-03-16',22,65),
	(12,'2020-03-17',16,81),
	(13,'2020-03-18',34,115),
	(14,'2020-03-19',43,158),
	(15,'2020-03-20',36,194),
	(16,'2020-03-21',56,250),
	(17,'2020-03-22',35,285),
	(18,'2020-03-23',74,359),
	(19,'2020-03-24',149,508),
	(20,'2020-03-25',186,694),
	(21,'2020-03-26',183,877),
	(22,'2020-03-27',284,1161),
	(23,'2020-03-28',294,1455),
	(24,'2020-03-29',214,1669),
	(25,'2020-03-30',374,2043),
	(26,'2020-03-31',382,2425),
	(27,'2020-04-01',670,3095),
	(28,'2020-04-02',652,3747),
	(29,'2020-04-03',714,4461),
	(30,'2020-04-04',760,5221),
	(31,'2020-04-05',644,5865),
	(32,'2020-04-06',568,6433),
	(33,'2020-04-07',1038,7471),
	(34,'2020-04-08',1034,8505),
	(35,'2020-04-09',1103,9608),
	(36,'2020-04-10',1152,10760),
	(37,'2020-04-11',839,11599),
	(38,'2020-04-12',686,12285),
	(39,'2020-04-13',744,13029),
	(40,'2020-04-14',1044,14073),
	(41,'2020-04-15',842,14915),
	(42,'2020-04-16',1029,15944),
	(43,'2020-04-17',935,16879),
	(44,'2020-04-18',1115,17994),
	(45,'2020-04-19',498,18492),
	(46,'2020-04-20',559,19051),
	(47,'2020-04-21',1172,20223),
	(48,'2020-04-22',837,21060),
	(49,'2020-04-23',727,21787),
	(50,'2020-04-24',1005,22792),
	(51,'2020-04-25',843,23635),
	(52,'2020-04-26',420,24055),
	(53,'2020-04-27',338,24393),
	(54,'2020-04-28',909,25302),
	(55,'2020-04-29',765,26097),
	(56,'2020-04-30',674,26771),
	(57,'2020-05-01',739,27501),
	(58,'2020-05-02',621,28131),
	(59,'2020-05-03',315,28446),
	(60,'2020-05-04',288,28734),
	(61,'2020-05-05',693,29427),
	(62,'2020-05-06',649,30076),
	(63,'2020-05-07',539,30615),
	(64,'2020-05-08',626,31241),
	(65,'2020-05-09',346,31587),
	(66,'2020-05-10',268,31855),
	(67,'2020-05-11',210,32065),
	(68,'2020-05-12',627,32692),
	(69,'2020-05-13',494,33186),
	(70,'2020-05-14',428,33614),
	(71,'2020-05-15',384,33998),
	(72,'2020-05-16',468,34466),
	(73,'2020-05-17',170,34636),
	(74,'2020-05-18',160,34796),
	(75,'2020-05-19',545,35341),
	(76,'2020-05-20',363,35704),
	(77,'2020-05-21',338,36042),
	(78,'2020-05-22',351,36393),
	(79,'2020-05-23',282,36675),
	(80,'2020-05-24',441,37116),
	(81,'2020-05-25',121,37237),
	(82,'2020-05-26',136,37373),
	(83,'2020-05-27',434,37807),
	(84,'2020-05-28',413,38220),
	(85,'2020-05-29',373,38593),
	(86,'2020-05-30',226,38819),
	(87,'2020-05-31',115,38934),
	(88,'2020-06-01',111,39045),
	(89,'2020-06-02',324,39369),
	(90,'2020-06-03',359,39728),
	(91,'2020-06-04',176,39904),
	(92,'2020-06-05',357,40261),
	(93,'2020-06-06',204,40465),
	(94,'2020-06-07',77,40542),
	(95,'2020-06-08',55,40597),
	(96,'2020-06-09',286,40883),
	(97,'2020-06-10',245,41128),
	(98,'2020-06-11',151,41279),
	(99,'2020-06-12',202,41481),
	(100,'2020-06-13',181,41662),
	(101,'2020-06-14',36,41698),
	(102,'2020-06-15',38,41736),
	(103,'2020-06-16',233,41969),
	(104,'2020-06-17',184,42153),
	(105,'2020-06-18',135,42288),
	(106,'2020-06-19',173,42461),
	(107,'2020-06-20',128,42589),
	(108,'2020-06-21',43,42632),
	(109,'2020-06-22',15,42647),
	(110,'2020-06-23',280,42927),
	(111,'2020-06-24',154,43081),
	(112,'2020-06-25',149,43230),
	(113,'2020-06-26',184,43414),
	(114,'2020-06-27',100,43514),
	(115,'2020-06-28',36,43550),
	(116,'2020-06-29',25,43575),
	(117,'2020-06-30',155,43730),
	(118,'2020-07-01',176,43906),
	(119,'2020-07-02',89,43995),
	(120,'2020-07-03',136,44131),
	(121,'2020-07-04',67,44198),
	(122,'2020-07-05',22,44220),
	(123,'2020-07-06',16,44236),
	(124,'2020-07-07',155,44391),
	(125,'2020-07-08',126,44517),
	(126,'2020-07-09',85,44602),
	(127,'2020-07-10',48,44650),
	(128,'2020-07-11',148,44798),
	(129,'2020-07-12',21,44819),
	(130,'2020-07-13',11,44830),
	(131,'2020-07-14',138,44968),
	(132,'2020-07-15',85,45053),
	(133,'2020-07-16',66,45119),
	(134,'2020-07-17',114,45233),
	(135,'2020-07-18',40,45273),
	(136,'2020-07-19',28,45301),
	(137,'2020-07-20',11,45312),
	(138,'2020-07-21',110,45422),
	(139,'2020-07-22',79,45501),
	(140,'2020-07-23',53,45554),
	(141,'2020-07-24',123,45677),
	(142,'2020-07-25',61,45738),
	(143,'2020-07-26',14,45752),
	(144,'2020-07-27',7,45759),
	(145,'2020-07-28',119,45878),
	(146,'2020-07-29',83,45961),
	(147,'2020-07-30',38,45999),
	(148,'2020-07-31',120,46119),
	(149,'2020-08-01',74,46193),
	(150,'2020-08-02',8,46201),
	(151,'2020-08-03',9,46210),
	(152,'2020-08-04',89,46299),
	(153,'2020-08-05',65,46364),
	(154,'2020-08-06',49,46413);

/*!40000 ALTER TABLE `uk_daily_covid_deaths` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
