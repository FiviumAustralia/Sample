use openeyes;

DELETE i FROM openeyes.institution i
LEFT JOIN openeyes.contact_location l ON l.institution_id = i.id
WHERE l.id IS NULL AND i.id > 1;


UPDATE `institution` SET `name`='The Monachs Trust', `remote_id`='RP6' WHERE `id`='1';
UPDATE `institution` SET `name`='Jacobson Health Institute', `remote_id`='DEM2' WHERE `id`='83';
UPDATE `institution` SET `name`='Windsor Trust', `remote_id`='DEM3' WHERE `id`='93';
UPDATE `institution` SET `name`='Ace Medical', `remote_id`='DEM4' WHERE `id`='119';
UPDATE `institution` SET `name`="St Mungo's Hospital for Magical Maladies and Injuries", `remote_id`='DEM5' WHERE `id`='128';
UPDATE `institution` SET `name`='High Street Optical', `remote_id`='DEM6' WHERE `id`='180';
