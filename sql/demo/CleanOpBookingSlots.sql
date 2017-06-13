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
