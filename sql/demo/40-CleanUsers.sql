use openeyes;
delete from audit;

DELETE FROM authassignment WHERE userid NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

UPDATE et_ophtrconsent_other SET consultant_id = 7 WHERE consultant_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtrconsent_other_version SET consultant_id = 7 WHERE consultant_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

UPDATE et_ophtroperationnote_surgeon SET surgeon_id = 7 WHERE surgeon_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtroperationnote_surgeon_version SET surgeon_id = 7 WHERE surgeon_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

UPDATE et_ophtroperationbooking_operation SET named_consultant_id = 7 WHERE named_consultant_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtroperationbooking_operation_version SET named_consultant_id = 7 WHERE named_consultant_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

UPDATE et_ophtrintravitinjection_treatment SET left_injection_given_by_id = 7 WHERE left_injection_given_by_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtrintravitinjection_treatment SET right_injection_given_by_id = 7 WHERE right_injection_given_by_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtrintravitinjection_treatment_version SET left_injection_given_by_id = 7 WHERE left_injection_given_by_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtrintravitinjection_treatment_version SET right_injection_given_by_id = 7 WHERE right_injection_given_by_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

DELETE FROM ophtrintravitinjection_injectionuser WHERE user_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
DELETE FROM ophtrintravitinjection_injectionuser_version;

UPDATE ophtroperationbooking_operation_booking SET cancellation_user_id = 7 WHERE cancellation_user_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE ophtroperationbooking_operation_booking_version SET cancellation_user_id = 7 WHERE cancellation_user_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

UPDATE et_ophtroperationbooking_operation SET cancellation_user_id = 7 WHERE cancellation_user_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtroperationbooking_operation_version SET cancellation_user_id = 7 WHERE cancellation_user_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

UPDATE et_ophtrlaser_site SET operator_id = 7 WHERE operator_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
UPDATE et_ophtrlaser_site_version SET operator_id = 7 WHERE operator_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

DELETE FROM ophtrlaser_laser_operator WHERE user_id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);
DELETE FROM ophtrlaser_laser_operator_version;

DELETE FROM user
WHERE id NOT IN (1, 2, 3, 6, 7, 11, 6006, 453, 833, 6652);

-- rename users and contacts
UPDATE user SET first_name = 'Zeiss' WHERE id = 6652;
UPDATE `user` SET `username`='jonesg', `first_name`='George', `last_name`='Jones', `email`='jonesg@test.com', `code`='MUUID010976', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='3';
UPDATE `user` SET `username`='stevenss', `first_name`='Simon', `last_name`='Stevens', `email`='stevenss@test.com', `code`='MUUID013489', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='833';
UPDATE `user` SET `title`='Mrs', `code`='MUUID011718', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='453';
UPDATE `user` SET `username`='jacobsp', `last_name`='Jacobs', `email`='jacobsp@test.com', `code`='MUUID011842', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='11';
UPDATE `user` SET `username`='hamiltonr', `first_name`='Richard', `email`='hamiltonr@test.com', `code`='MUUID012627', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='6';
UPDATE `user` SET `email`='templarm@test.com', `code`='MUUID013476', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='7';
UPDATE `user` SET `email`='strawj@test.com', `code`='MUUID014559', `password`='b0c6e884403a5c05bd634943df1b9a08', `salt`='7jMG6UQ2dY' WHERE `id`='2';
UPDATE `user` SET `last_name`='Admin', `qualifications`='', `role`='System Administrator' WHERE `id`='1';
UPDATE `user` SET `code`='MUUID018041' WHERE `id`='6006';

UPDATE `contact` SET `nick_name`='PJ', `last_name`='Jacobs' WHERE `id`='11';
UPDATE `contact` SET `nick_name`='Mike' WHERE `id`='7';
UPDATE `contact` SET `nick_name`=NULL WHERE `id`='2';
UPDATE `contact` SET `nick_name`='Tom', `first_name`='George', `last_name`='Jones' WHERE `id`='3';
UPDATE `contact` SET `nick_name`='Dick', `first_name`='Richard' WHERE `id`='6';
UPDATE `contact` SET `nick_name`=NULL, `title`='Mrs' WHERE `id`='8272';
UPDATE `contact` SET `nick_name`=NULL, `title`='Dr', `first_name`='Simon', `last_name`='Stevens' WHERE `id`='8650';
UPDATE `contact` SET `nick_name`=NULL WHERE `id`='247804';

UPDATE contact SET nick_name = NULL WHERE id not in (SELECT contact_id from user);

-- Add laser operators
INSERT INTO `ophtrlaser_laser_operator` (`user_id`) VALUES ('2');
INSERT INTO `ophtrlaser_laser_operator` (`user_id`) VALUES ('3');
INSERT INTO `ophtrlaser_laser_operator` (`user_id`) VALUES ('6006');

-- Add more injection users
INSERT INTO `ophtrintravitinjection_injectionuser` (`user_id`) VALUES ('6006');
INSERT INTO `ophtrintravitinjection_injectionuser` (`user_id`) VALUES ('2');
