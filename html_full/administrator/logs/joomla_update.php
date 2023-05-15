#
#<?php die('Forbidden.'); ?>
#Date: 2023-05-15 11:54:01 UTC
#Software: Joomla! 4.2.8 Stable [ Uaminifu ] 16-February-2023 15:00 GMT

#Fields: datetime	priority clientip	category	message
2023-05-15T11:54:01+00:00	INFO 172.16.12.225	update	Update started by user admin (210). Old version is 4.2.8.
2023-05-15T11:54:03+00:00	INFO 172.16.12.225	update	Downloading update file from https://s3-us-west-2.amazonaws.com/joomla-official-downloads/joomladownloads/joomla4/Joomla_4.3.1-Stable-Update_Package.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA6LXDJLNUINX2AVMH%2F20230515%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230515T115352Z&X-Amz-Expires=60&X-Amz-SignedHeaders=host&X-Amz-Signature=0a8fd6f322479b67a796b64b138340a469d4ace7edfb8e152c485aea83a4adba.
2023-05-15T11:54:10+00:00	INFO 172.16.12.225	update	File Joomla_4.3.1-Stable-Update_Package.zip downloaded.
2023-05-15T11:54:10+00:00	INFO 172.16.12.225	update	Starting installation of new version.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Finalising installation.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Start of SQL updates.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	The current database version (schema) is 4.2.9-2023-03-07.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2022-09-23. Query text: UPDATE `#__extensions` SET `params` = REPLACE(`params`, '}', ',"difference":"Sid.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2022-11-06. Query text: DELETE FROM `#__assets` WHERE `name` LIKE '#__ucm_content.%';.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-01-30. Query text: UPDATE `#__extensions`    SET `params` = REPLACE(`params`, '"negotiate_tls":1', .
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-01-30. Query text: UPDATE `#__extensions`    SET `params` = REPLACE(`params`, '"negotiate_tls":0', .
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-01-30. Query text: UPDATE `#__extensions`    SET `params` = REPLACE(`params`, '"encryption":"none"'.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-01-30. Query text: UPDATE `#__extensions`    SET `params` = REPLACE(`params`, '"host":"ldaps:\\/\\/.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: CREATE TABLE IF NOT EXISTS `#__guidedtours` (   `id` int NOT NULL AUTO_INCREMENT.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: INSERT IGNORE INTO `#__guidedtours` (`id`, `title`, `description`, `ordering`, `.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: CREATE TABLE IF NOT EXISTS `#__guidedtour_steps` (   `id` int NOT NULL AUTO_INCR.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: INSERT IGNORE INTO `#__guidedtour_steps` (`id`, `tour_id`, `title`, `published`,.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: INSERT INTO `#__extensions` (`package_id`, `name`, `type`, `element`, `folder`, .
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `c.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-15. Query text: INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES (LAST_INSERT_ID(), 0.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-02-25. Query text: ALTER TABLE `#__banners` MODIFY `clickurl` VARCHAR(2048) NOT NULL DEFAULT '';.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-07. Query text: UPDATE `#__guidedtour_steps` SET `target` = '#jform_description,#jform_descripti.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-07. Query text: UPDATE `#__guidedtour_steps` SET `target` = '#jform_articletext,#jform_articlete.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-09. Query text: UPDATE `#__guidedtour_steps` SET `target` = '#jform_published' WHERE `target` = .
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-09. Query text: UPDATE `#__guidedtour_steps` SET `target` = '#jform_sendEmail0' WHERE `target` =.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-09. Query text: UPDATE `#__guidedtour_steps` SET `target` = '#jform_block0' WHERE `target` = '#j.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-09. Query text: UPDATE `#__guidedtour_steps` SET `target` = '#jform_requireReset0' WHERE `target.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-10. Query text: UPDATE `#__guidedtour_steps` SET `type` = 2, `interactive_type` = 2 WHERE `id` I.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-10. Query text: UPDATE `#__guidedtour_steps` SET `type` = 2, `interactive_type` = 3 WHERE `id` I.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-10. Query text: UPDATE `#__guidedtour_steps` SET `target` = 'joomla-field-fancy-select .choices .
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-10. Query text: UPDATE `#__guidedtour_steps` SET `target` = 'joomla-field-fancy-select .choices[.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-10. Query text: UPDATE `#__guidedtour_steps` SET `target` = 'joomla-field-fancy-select .choices[.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-28. Query text: ALTER TABLE `#__guidedtours` DROP COLUMN `asset_id` ;.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-28. Query text: DELETE FROM `#__assets` WHERE `name` LIKE 'com_guidedtours.tour.%';.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-29. Query text: UPDATE `#__guidedtour_steps` SET `target` = 'joomla-field-fancy-select .choices'.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Ran query from file 4.3.0-2023-03-29. Query text: UPDATE `#__guidedtour_steps` SET `target` = 'joomla-field-fancy-select .choices[.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	End of SQL updates.
2023-05-15T11:54:19+00:00	INFO 172.16.12.225	update	Deleting removed files and folders.
2023-05-15T11:54:21+00:00	INFO 172.16.12.225	update	Cleaning up after installation.
2023-05-15T11:54:21+00:00	INFO 172.16.12.225	update	Update to version 4.3.1 is complete.
