/***********************************************************************
* OpenEyes Demo Loader file
************************************************************************
* This file creates perpetual 'automatic' worklists for all contexts,
* containing patients used for demontration
************************************************************************/

/* Create worklist Definitions */
INSERT INTO `worklist_definition` (`id`,`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (1,'Cataract Demo Patients','Patients for cataract demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:45:14',NULL,0,0,1,'2017-05-09 11:45:14',1,'2017-05-09 11:45:14');
INSERT INTO `worklist_definition` (`id`,`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (2,'Medical Retina Demo Patients','Patients for MR demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:45:48',NULL,0,0,1,'2017-05-09 11:45:48',1,'2017-05-09 11:45:48');
INSERT INTO `worklist_definition` (`id`,`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (3,'Glaucoma Demo Patients','Patients for Glaucoma demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');
INSERT INTO `worklist_definition` (`id`,`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (4,'Blank Demo Patients','Empty patient records for demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');
INSERT INTO `worklist_definition` (`id`,`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (5,'Vitreoretinal Demo Patients','Patients for Vitreoretinal demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');

/*Create Worklist instances*/
INSERT INTO `worklist` (`id`,`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES (1,'Cataract Demo Patients','Patients for cataract demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:58:42',1,'2017-05-09 12:58:42',1);
INSERT INTO `worklist` (`id`,`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES (2,'Medical Retina Demo Patients','Patients for MR demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:08',1,'2017-05-09 12:59:08',2);
INSERT INTO `worklist` (`id`,`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES (3,'Glaucoma Demo Patients','Patients for Glaucoma demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',3);
INSERT INTO `worklist` (`id`,`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES (4,'Blank Demo Patients','Empty patient records for demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',4);
INSERT INTO `worklist` (`id`,`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES (5,'Vitreoretinal Demo Patients','Patients for Vitreoretinal demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',5);

/* Add Cataract Patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT 1, id from patient p where p.hos_num
	in (
    '1009604',
	'1009605',
	'1008003',
	'1009412',
	'1009411',
	'1007942',
	'1009402'
    );

/* Add MR Patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT 2, id from patient p where p.hos_num
	in (
    '1140873',
    '1152572',
    '1776515',
	'1796962',
	'1835099',
	'1840181',
	'1869032',
	'1897143'
    );

/* Add Glaucoma patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT 3, id from patient p where p.hos_num
	in (
    '1009797',
	'0755231'
    );

/* Add Empty patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT 4, id from patient p where p.hos_num
	in (
    '1008006',
    '1008007'
    );

/* Add VR patients */
	Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT 5, id from patient p where p.hos_num
	in (
    '1932578'
    );


/* SET Order */
UPDATE `openeyes`.`worklist_patient` SET `when`='0000-00-00 09:00:00' WHERE `id`='6';
UPDATE `openeyes`.`worklist_patient` SET `when`='0000-00-00 09:00:05' WHERE `id`='7';
UPDATE `openeyes`.`worklist_patient` SET `when`='0000-00-00 09:00:10' WHERE `id`='3';
UPDATE `openeyes`.`worklist_patient` SET `when`='0000-00-00 09:00:15' WHERE `id`='5';
UPDATE `openeyes`.`worklist_patient` SET `when`='0000-00-00 09:00:20' WHERE `id`='4';
