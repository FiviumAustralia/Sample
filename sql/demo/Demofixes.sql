/******
* This script is used to add quick fixups to the sample data.
* In thime these should be absorbed into the sample database
* and can be removed from this file
*******/

/* add missing patient ticketing right for demo user */
INSERT INTO authassignment (itemname, userid) VALUES ('Patient Tickets', 6006);
INSERT INTO authassignment (itemname, userid) VALUES ('Patient Tickets admin', 6006);
