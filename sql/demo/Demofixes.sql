/******
* This script is used to add quick fixups to the sample data.
* In thime these should be absorbed into the sample database
* and can be removed from this file
*******/

-- Add a glaucoma management plan to the glaucoma test patients
INSERT INTO `et_ophciexamination_overallmanagementplan` (`event_id`, `left_target_iop_id`, `right_target_iop_id`, `gonio_id`, `clinic_interval_id`, `photo_id`, `oct_id`, `hfa_id`, `hrt_id`, `eye_id`) VALUES ('244', '15', '15', '2', '1', '1', '4', '5', '1', '3');
INSERT INTO `et_ophciexamination_overallmanagementplan` (`event_id`, `left_target_iop_id`, `right_target_iop_id`, `gonio_id`, `clinic_interval_id`, `photo_id`, `oct_id`, `hfa_id`, `hrt_id`, `eye_id`) VALUES ('3373284', '15', '15', '2', '1', '1', '4', '5', '1', '3');

INSERT INTO `address` (`address1`, `city`, `postcode`, `county`, `country_id`, `contact_id`) VALUES ('1 The street', 'Townsville', 'TW1 1NN', 'Essex', '1', '9489');
INSERT INTO `address` (`address1`, `address2`, `city`, `postcode`, `county`, `country_id`, `contact_id`) VALUES ('River Cottage', '123 The lane', 'Hull', 'HU1 1LL', 'Berkshire', '1', '8031');
INSERT INTO `address` (`address1`, `city`, `postcode`, `county`, `country_id`, `contact_id`) VALUES ('74 Brommels Road', 'London', 'SW4 1AB', 'London', '1', '8092');
INSERT INTO `address` (`address1`, `city`, `postcode`, `county`, `country_id`, `contact_id`) VALUES ('24 Peticoat Lane', 'London', 'EC2 1QQ', 'London', '1', '9498');
INSERT INTO `address` (`address1`, `city`, `postcode`, `county`, `country_id`, `contact_id`) VALUES ('1 The street', 'Townsville', 'TW1 1NN', 'Essex', '1', '9499');
INSERT INTO `address` (`address1`, `city`, `country_id`, `contact_id`) VALUES ('The North Pole', 'Lapland', '76', '8095');
