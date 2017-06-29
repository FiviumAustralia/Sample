use openeyes;

-- Allergies
INSERT INTO `patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '1', '2016-01-01 01:01:01', '2016-01-01 01:01:01', 'Test migration 1');
INSERT INTO `patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '2', '2016-02-02 02:02:02', '2016-02-02 02:02:02', 'Test Migration 2');
INSERT INTO `patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '3', '2016-03-03 03:03:03', '2016-03-03 03:03:03', 'Test Migration 3');
--INSERT INTO `patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '4', '2016-04-04 04:04:04', '2016-04-04 04:04:04', 'Test Migration 4');
INSERT INTO `patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_user_id`, `last_modified_date`, `created_user_id`, `created_date`, `other`, `comments`) VALUES ('1990875', '17', '1', '2017-06-29 09:31:10', '1', '2017-06-29 09:31:10', 'Test Other Allery', 'Test Migration 5');
-- Test history of edits
DELETE FROM `patient_allergy_assignment_version` WHERE id=1448;
INSERT INTO `patient_allergy_assignment_version` (`id`,`patient_id`,`allergy_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`version_date`,`version_id`,`other`,`comments`) VALUES (1448,1990875,4,1,'2016-04-04 04:04:04',1,'2016-04-04 04:04:04','2017-06-29 10:56:25',13,NULL,'Test Migration 4');
