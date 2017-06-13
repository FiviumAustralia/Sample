/******
* This script is used to add quick fixups to the sample data.
* In thime these should be absorbed into the sample database
* and can be removed from this file
*******/

/* add missing patient ticketing right for demo user */
INSERT INTO authassignment (itemname, userid) VALUES ('Patient Tickets', 6006);
INSERT INTO authassignment (itemname, userid) VALUES ('Patient Tickets admin', 6006);

-- Add a glaucoma management plan to the glaucoma test patients
INSERT INTO `et_ophciexamination_overallmanagementplan` (`event_id`, `left_target_iop_id`, `right_target_iop_id`, `gonio_id`, `clinic_interval_id`, `photo_id`, `oct_id`, `hfa_id`, `hrt_id`, `eye_id`) VALUES ('244', '15', '15', '2', '1', '1', '4', '5', '1', '3');
INSERT INTO `et_ophciexamination_overallmanagementplan` (`event_id`, `left_target_iop_id`, `right_target_iop_id`, `gonio_id`, `clinic_interval_id`, `photo_id`, `oct_id`, `hfa_id`, `hrt_id`, `eye_id`) VALUES ('3373284', '15', '15', '2', '1', '1', '4', '5', '1', '3');
