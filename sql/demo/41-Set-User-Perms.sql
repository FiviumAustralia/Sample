use openeyes;

-- Add all user roles to admin user
INSERT INTO authassignment (itemname, userid) SELECT name, 1 FROM openeyes.authitem where type=2 AND name not in (SELECT itemname from authassignment where userid=1) AND name != 'API access';


-- Add contacts for new users
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'User');

-- Create new users
INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'cviclerical', 'CVI', 'Clerical', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'CVI' AND c.last_name = 'Clerical');

-- Set permissions for users
INSERT INTO `openeyes`.`authassignment` (`itemname`, `userid`) SELECT'Clerical CVI', (SELECT id FROM user WHERE first_name = 'CVI' AND last_name='Clerical');
INSERT INTO `openeyes`.`authassignment` (`itemname`, `userid`) SELECT'User', (SELECT id FROM user WHERE first_name = 'CVI' AND last_name='Clerical');
INSERT INTO `openeyes`.`authassignment` (`itemname`, `userid`) SELECT'View clinical', (SELECT id FROM user WHERE first_name = 'CVI' AND last_name='Clerical');
INSERT INTO `openeyes`.`authassignment` (`itemname`, `userid`) SELECT'Edit', (SELECT id FROM user WHERE first_name = 'CVI' AND last_name='Clerical');
INSERT INTO authassignment (itemname, userid) VALUES ('Patient Tickets', 6006);
INSERT INTO authassignment (itemname, userid) VALUES ('Patient Tickets admin', 6006);


UPDATE user set last_firm_id = 5;
