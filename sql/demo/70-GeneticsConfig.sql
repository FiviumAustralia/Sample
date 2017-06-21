use openeyes;

/***********************
* Create Genetics users
************************/
-- Add contacts
INSERT INTO `contact` (`primary_phone`, `title`, `first_name`, `last_name`) VALUES ('01234567890', 'Mr', 'Genetics', 'Clinical');
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'Administrator');
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'Lab Tech');
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mrs', 'CVI', 'Clerical');

-- Create Users
INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticsclinical', 'Genetics', 'Clinical', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'Clinical');

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticsadmin', 'Genetics', 'Administrator', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'Administrator');

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'geneticstech', 'Genetics', 'Lab Tech', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'Genetics' AND c.last_name = 'Lab Tech');

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'cviclerical', 'CVI', 'Clerical', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', (SELECT id from contact c WHERE c.first_name = 'CVI' AND c.last_name = 'Clerical');
