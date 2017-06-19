/***********************************************************************
* OpenEyes Demo Loader file
************************************************************************
* This sets up some sample workflows
************************************************************************/


/* Workflow */
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (116,1,420,1,'2017-05-09 15:11:15',1,'2017-05-09 15:11:15',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (117,1,315,1,'2017-05-09 15:11:19',1,'2017-05-09 15:11:19',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (118,1,321,1,'2017-05-09 15:11:36',1,'2017-05-09 15:11:36',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (119,1,358,1,'2017-05-09 15:11:41',1,'2017-05-09 15:11:41',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (120,1,318,1,'2017-05-09 15:11:52',1,'2017-05-09 15:11:52',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (121,1,316,1,'2017-05-09 15:12:02',1,'2017-05-09 15:12:02',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (122,1,317,1,'2017-05-09 15:12:21',1,'2017-05-09 15:12:21',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (123,1,440,1,'2017-05-09 15:12:35',1,'2017-05-09 15:12:35',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (124,1,312,1,'2017-05-09 15:13:09',1,'2017-05-09 15:13:09',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (125,1,313,1,'2017-05-09 15:13:21',1,'2017-05-09 15:13:21',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (127,1,412,1,'2017-05-09 15:13:37',1,'2017-05-09 15:13:37',0,0);
INSERT INTO `ophciexamination_element_set_item` (`id`,`set_id`,`element_type_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`is_hidden`,`is_mandatory`) VALUES (128,1,431,1,'2017-05-09 15:14:54',1,'2017-05-09 15:14:54',0,0);


DELETE FROM ophciexamination_event_elementset_assignment WHERE step_id IN (SELECT id FROM ophciexamination_element_set WHERE workflow_id IN (4, 10, 11));
DELETE FROM ophciexamination_event_elementset_assignment_version;

DELETE FROM ophciexamination_element_set_item WHERE set_id IN (SELECT id FROM ophciexamination_element_set WHERE workflow_id IN (4, 10, 11));
DELETE FROM ophciexamination_element_set_item_version;

DELETE FROM ophciexamination_element_set WHERE workflow_id IN (4, 10, 11);
DELETE FROM ophciexamination_element_set_version;

DELETE FROM ophciexamination_workflow WHERE id IN (4, 10, 11);
DELETE FROM ophciexamination_workflow_version;
