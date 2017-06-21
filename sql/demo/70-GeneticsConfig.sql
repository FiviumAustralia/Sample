use openeyes;

/***********************
* Create Genetics users
************************/
-- Add contacts
INSERT INTO `contact` (`primary_phone`, `title`, `first_name`, `last_name`) VALUES ('01234567890', 'Mr', 'Genetics', 'Clinical');
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'Administrator');
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'Lab Tech');
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'User');

-- Create Users
INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticsclinical', 'Genetics', 'Clinical', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'Clinical');

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticsadmin', 'Genetics', 'Administrator', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'Administrator');

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticstech', 'Genetics', 'Lab Tech', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'Lab Tech');

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticsuser', 'Genetics', 'User', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'User');

-- Set permissions
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics Clinical', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Clinical');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'User', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Clinical');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'View clinical', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Clinical');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Edit', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Clinical');

INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics Admin', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Administrator');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'User', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Administrator');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'View clinical', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Administrator');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Edit', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Administrator');

INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics Laboratory Technician', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Lab Tech');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'User', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Lab Tech');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'View clinical', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Lab Tech');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Edit', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Lab Tech');

INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics User', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='User');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'User', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='User');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'View clinical', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='User');
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Edit', (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='User');

UPDATE user set last_firm_id = 5;

-- Create study
INSERT INTO `genetics_study` (`name`, `criteria`) VALUES ('Demo Study', 'Anybody can join this study. It is for demonstration purposes only');
INSERT INTO `genetics_study_proposer` (`study_id`, `user_id`) SELECT 1, (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='User');
INSERT INTO `genetics_study_proposer` (`study_id`, `user_id`) SELECT 1, (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Clinical');
