use openeyes;

DELETE FROM audit;

UPDATE contact_location SET site_id = 4 WHERE site_id > 4;
DELETE from contact_location_version;

UPDATE et_ophcocorrespondence_letter SET site_id = 4 WHERE site_id > 4;
UPDATE et_ophcocorrespondence_letter_version SET site_id = 4 WHERE site_id > 4;

UPDATE et_ophcotherapya_mrservicein SET site_id = 4 WHERE site_id > 4;
UPDATE et_ophcotherapya_mrservicein_version SET site_id = 4 WHERE site_id > 4;

UPDATE et_ophtrintravitinjection_site SET site_id = 4 WHERE site_id > 4;
UPDATE et_ophtrintravitinjection_site_version SET site_id = 4 WHERE site_id > 4;

UPDATE et_ophtroperationbooking_operation SET site_id = 4 WHERE site_id > 4;
UPDATE et_ophtroperationbooking_operation_version SET site_id = 4 WHERE site_id > 4;

DELETE FROM ophtroperationnote_postop_site_subspecialty_drug WHERE site_id > 4;
DELETE FROM ophtroperationnote_postop_site_subspecialty_drug_version WHERE site_id > 4;

DELETE FROM ophtroperationnote_site_subspecialty_postop_instructions WHERE site_id > 4;
DELETE FROM ophtroperationnote_site_subspecialty_postop_instructions_version WHERE site_id > 4;

DELETE FROM site_subspecialty_anaesthetic_agent WHERE site_id > 4;
DELETE FROM site_subspecialty_anaesthetic_agent_default WHERE site_id > 4;
DELETE FROM site_subspecialty_anaesthetic_agent_default_version WHERE site_id > 4;
DELETE FROM site_subspecialty_anaesthetic_agent_version WHERE site_id > 4;
DELETE FROM site_subspecialty_drug WHERE site_id > 4;
DELETE FROM site_subspecialty_drug_version WHERE site_id > 4;
DELETE FROM site_subspecialty_operative_device WHERE site_id > 4;
DELETE FROM site_subspecialty_operative_device_version WHERE site_id > 4;
DELETE FROM site_version WHERE id > 4;

UPDATE et_ophtroperationnote_site_theatre SET site_id = 4 WHERE site_id > 4;
UPDATE et_ophtroperationnote_site_theatre_version SET site_id = 4 WHERE site_id > 4;

UPDATE ophtroperationbooking_operation_theatre SET site_id = 4 WHERE site_id > 4;
UPDATE ophtroperationbooking_operation_theatre_version SET site_id = 4 WHERE site_id > 4;

UPDATE user SET last_site_id = 1;
DELETE FROM user_version;

DELETE FROM site WHERE id > 4;


-- Rename sites
UPDATE `site` SET `name`='Kings Hospital', `short_name`='Kings', `telephone`='0123456789' WHERE `id`='1';
UPDATE `site` SET `name`='Queens Hospital', `remote_id`='BBBB', `short_name`='Queens', `fax`='020 876 3252', `telephone`='020 234 5678' WHERE `id`='3';
UPDATE `site` SET `name`='Princess Hospital', `remote_id`='CCCC', `short_name`='Princess', `fax`=' 020 242 8888', `telephone`='0203 777 4321/4028' WHERE `id`='4';

-- Update addresses
UPDATE `address` SET `address1`='100 Main Road', `city`='London', `postcode`='W1 1AA' WHERE `id`='1';
UPDATE `address` SET `address1`='10 Maypole Buildings', `address2`='200 Uxbridge Road', `postcode`='BR3  3AA', `county`=NULL WHERE `id`='1982804';
UPDATE `address` SET `address1`='210 Uxbridge Road', `postcode`='BR3 3AB' WHERE `id`='2155503';

UPDATE `contact` SET `nick_name`='Post in at Kings', `first_name`='Greg', `last_name`='Jones' WHERE `id`='113059';
UPDATE `contact` SET `last_name`='Simpson' WHERE `id`='278379';
UPDATE `contact` SET `qualifications`='System administrator' WHERE `id`='1';
