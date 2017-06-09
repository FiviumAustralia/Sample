use openeyes;

update ophtroperationbooking_operation_session
set sequence_id = NULL
where sequence_id > 20;

delete FROM openeyes.ophtroperationbooking_operation_sequence where id > 20;
