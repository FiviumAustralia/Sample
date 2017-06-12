use openeyes;

delete from audit;

update episode
    set firm_id = 2
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 1) and firm_id != 1;

update episode
    set firm_id = 3
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 3) and firm_id != 3;

update episode
    set firm_id = 4
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 4) and firm_id != 4;

update episode
    set firm_id = 5
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 5) and firm_id != 5;

update episode
    set firm_id = 6
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 6) and firm_id != 6;

update episode
    set firm_id = 7
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 7) and firm_id != 7;

update episode
    set firm_id = 8
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 8) and firm_id != 8;

update episode
    set firm_id = 9
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 9) and firm_id != 9;

update episode
    set firm_id = 10
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 15) and firm_id != 10;

update episode
    set firm_id = 11
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 10) and firm_id != 11;

update episode
    set firm_id = 12
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 12) and firm_id != 12;

update episode
    set firm_id = 13
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 2) and firm_id != 13;

update episode
    set firm_id = 14
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 13) and firm_id != 14;

update episode
    set firm_id = 15
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 14) and firm_id != 14;

update episode
    set firm_id = 16
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 11) and firm_id != 16;

update episode
    set firm_id = 17
    Where firm_id in (select id from firm where service_subspecialty_assignment_id = 16) and firm_id != 17;

/***************
* Clean referencing tables
****************/
update et_ophcotherapya_mrservicein set consultant_id = 9;

DELETE FROM ophcocorrespondence_firm_site_secretary where firm_id > 17;

DELETE FROM referral;

DELETE FROM patientticketing_ticketqueue_assignment;

-- Delete remaining firms
DELETE FROM firm WHERE id not in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 5, 28, 61, 215, 233, 256);

-- Rename firms
UPDATE `firm` SET `name`='Michael Morgan', `consultant_id`='6006' WHERE `id`='256';
UPDATE `firm` SET `name`='Michael Morgan', `consultant_id`='6006' WHERE `id`='28';
UPDATE `firm` SET `name`='Michael Morgan', `consultant_id`='6006' WHERE `id`='61';
UPDATE `firm` SET `name`='Michael Morgan', `consultant_id`='6006' WHERE `id`='215';
UPDATE `firm` SET `name`='Sandra Williams', `consultant_id`='453' WHERE `id`='233';
UPDATE `firm` SET `name`='Paul Godinho', `consultant_id`='11' WHERE `id`='1';

UPDATE user set last_firm_id = 5;
