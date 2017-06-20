use openeyes;

update ophtroperationbooking_operation_session
set sequence_id = NULL
where sequence_id > 20;

delete FROM openeyes.ophtroperationbooking_operation_sequence where id > 20;
delete FROM openeyes.ophtroperationbooking_operation_sequence_version where id > 20;

-- Remove unused old sessions
DELETE FROM ophtroperationbooking_operation_erod;
DELETE FROM ophtroperationbooking_operation_erod_version;

DELETE a FROM ophtroperationbooking_operation_session a
LEFT JOIN ophtroperationbooking_operation_booking b ON b.session_id = a.id
WHERE b.session_id IS NULL;

/*
DELETE a FROM ophtroperationbooking_operation_session a
LEFT JOIN ophtroperationbooking_operation_booking b ON b.session_id = a.id
LEFT JOIN ophtroperationbooking_operation_erod e ON e.session_id = a.id
WHERE b.session_id IS NULL AND e.session_id IS NULL;
*/

DELETE v FROM ophtroperationbooking_operation_session_version v WHERE v.id NOT IN (SELECT id FROM ophtroperationbooking_operation_session);


/* TODO: Reassign sequences to theatres 1-3  then remove other theatres*/
-- Reasign sequences to theatres 1-4
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='1' WHERE `id`='1';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='2' WHERE `id`='2';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='3' WHERE `id`='3';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='4' WHERE `id`='4';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='1' WHERE `id`='5';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='2' WHERE `id`='6';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='3' WHERE `id`='7';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='4' WHERE `id`='8';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='1' WHERE `id`='9';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='2' WHERE `id`='10';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='3' WHERE `id`='11';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='4' WHERE `id`='12';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='1' WHERE `id`='13';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='2' WHERE `id`='14';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='3' WHERE `id`='15';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='4' WHERE `id`='16';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='1' WHERE `id`='17';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='2' WHERE `id`='18';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='3' WHERE `id`='19';
UPDATE `ophtroperationbooking_operation_sequence` SET `theatre_id`='4' WHERE `id`='20';

-- distribute operations between sites and theatres
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1', `theatre_id`='1' WHERE `id`='1';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3', `theatre_id`='2' WHERE `id`='2';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='5';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='4' WHERE `id`='6';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='7';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='8';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='10';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='11';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='13';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='14';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='16';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='17';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='19';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='20';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='22';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='23';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='25';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='26';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='28';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='29';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='31';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='32';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='34';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='35';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='37';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='38';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='40';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='41';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='1' WHERE `id`='43';
UPDATE `et_ophtroperationnote_site_theatre` SET `site_id`='3' WHERE `id`='44';
UPDATE et_ophtroperationnote_site_theatre SET site_id = 3 WHERE id > 299 AND id < 400;
UPDATE et_ophtroperationnote_site_theatre SET site_id = 1 WHERE id > 149 AND id < 300;
UPDATE et_ophtroperationnote_site_theatre SET site_id = 4 WHERE id > 44 AND id < 150;
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='205';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='207';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='210';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='213';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='215';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='218';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='220';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='223';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='226';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='232';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='235';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='240';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='238';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='245';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='257';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='258';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='259';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='272';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='274';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='275';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='280';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='278';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='288';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='290';
UPDATE `et_ophtroperationnote_site_theatre` SET `theatre_id`='2' WHERE `id`='289';


-- Rename theatres and assign to sites
UPDATE `ophtroperationbooking_operation_theatre` SET `name`='Ophthalmology Theatre', `site_id`='3' WHERE `id`='3';
UPDATE `ophtroperationbooking_operation_theatre` SET `name`='Theatre 1', `site_id`='4' WHERE `id`='4';
DELETE FROM `ophtroperationbooking_operation_theatre_version`;

-- Clean up and remove extra theatres
UPDATE ophtroperationbooking_operation_session SET theatre_id = 2 where theatre_id not in (1, 2, 3, 4) and theatre_id > 10;
UPDATE ophtroperationbooking_operation_session SET theatre_id = 3 where theatre_id not in (1, 2, 3, 4) and theatre_id > 7;
UPDATE ophtroperationbooking_operation_session SET theatre_id = 4 where theatre_id not in (1, 2, 3, 4) and theatre_id > 6;
UPDATE ophtroperationbooking_operation_session SET theatre_id = 1 where theatre_id not in (1, 2, 3, 4);
UPDATE ophtroperationbooking_operation_booking b INNER JOIN ophtroperationbooking_operation_session s ON s.id=b.session_id SET b.session_theatre_id = s.theatre_id;
UPDATE ophtroperationbooking_admission_letter_warning_rule SET theatre_id = 1 WHERE theatre_id IS NOT NULL;
UPDATE ophtroperationbooking_letter_contact_rule SET theatre_id = 1 WHERE theatre_id IS NOT NULL;
UPDATE `ophtroperationbooking_admission_letter_warning_rule` SET `warning_text`='please telephone 020 7123 4567 and ask to speak to a nurse for advice' WHERE `id`='25';
UPDATE `ophtroperationbooking_admission_letter_warning_rule` SET `warning_text`='please telephone 020 8123 1234 and ask to speak to a nurse for advice' WHERE `id`='26';
UPDATE `ophtroperationbooking_admission_letter_warning_rule` SET `warning_text`='Please contact the Children\'s Ward as soon as possible on 0207 123 1234 to discuss pre-operative instructions' WHERE `id`='11';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `refuse_title`='Theatre Administrator' WHERE `id`='26';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `refuse_title`='Theatre Administrator' WHERE `id`='27';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `refuse_title`=' Theatre Administrator' WHERE `id`='28';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `health_telephone`='0207 123 1234and ask to speak to a nurse' WHERE `id`='9';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `health_telephone`='020 123 1234 X 4336 and ask for a Laser Nurse' WHERE `id`='10';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `health_telephone`='0207 123 1234 and ask to speak to a nurse' WHERE `id`='11';
UPDATE `ophtroperationbooking_letter_contact_rule` SET `health_telephone`='020 8123 1234' WHERE `id`='16';
UPDATE ophtroperationbooking_letter_contact_rule SET refuse_telephone = '01234 567 890';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='4';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='31';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='18';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='12';
UPDATE `openeyes`.`ophtroperationbooking_letter_contact_rule` SET `firm_id`='3' WHERE `id`='2';
UPDATE `openeyes`.`ophtroperationbooking_letter_contact_rule` SET `firm_id`='5' WHERE `id`='3';
UPDATE `openeyes`.`ophtroperationbooking_letter_contact_rule` SET `firm_id`='7' WHERE `id`='6';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='15';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='29';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='16';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='17';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='19';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='20';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='21';
UPDATE `openeyes`.`ophtroperationbooking_letter_contact_rule` SET `site_id`='3' WHERE `id`='22';
UPDATE `openeyes`.`ophtroperationbooking_letter_contact_rule` SET `site_id`='4' WHERE `id`='26';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='30';
DELETE FROM `openeyes`.`ophtroperationbooking_letter_contact_rule` WHERE `id`='32';
DELETE FROM ophtroperationbooking_operation_name_rule;

DELETE FROM ophtroperationbooking_operation_theatre WHERE id > 4;
