/**
CREATE TABLE Authentication (
	id_auth INT NOT NULL AUTO_INCREMENT,
	id_person INT NOT NULL AUTO_INCREMENT,
	id_token TEXT NOT NULL AUTO_INCREMENT,
	id_token_sms TEXT NOT NULL AUTO_INCREMENT UNIQUE,
	PRIMARY KEY ('id_auth')
);
CREATE TABLE 'Auction' (
	'id_person' INT NOT NULL,
	'id_number' INT(100) NOT NULL AUTO_INCREMENT,
	'id_date' INT(100) NOT NULL AUTO_INCREMENT,
	'id_time_start' INT(100) NOT NULL AUTO_INCREMENT,
	'id_time_finish' INT(100) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY ('id_person')
);
CREATE TABLE 'Lots' (
	'id_lots' INT(255) NOT NULL AUTO_INCREMENT,
	'id_date_start' INT NOT NULL AUTO_INCREMENT,
	'id_time_start' INT(100) NOT NULL AUTO_INCREMENT,
	'id_time_finish' INT(100) NOT NULL AUTO_INCREMENT,
	'id_name' TEXT(255) NOT NULL UNIQUE,
	'id_description' TEXT(255) NOT NULL UNIQUE,
	'id_image' INT(255) NOT NULL UNIQUE,
	'id_min_price' INT(255) NOT NULL UNIQUE,
	'id_price' INT(255) NOT NULL AUTO_INCREMENT UNIQUE,
	'id_date_finish' INT(255) NOT NULL AUTO_INCREMENT UNIQUE,
	PRIMARY KEY ('id_lots')
);
CREATE TABLE 'Category' (
	'id_name_auction' INT NOT NULL AUTO_INCREMENT,
	'id_category' int(100) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY ('id_name_auction')
);
CREATE TABLE 'Rate' (
	'id_person' INT NOT NULL AUTO_INCREMENT,
	'id_person_rate' INT NOT NULL AUTO_INCREMENT,
	'id_rate' INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY ('id_person')
);
ALTER TABLE 'Authentication' ADD CONSTRAINT 'Authentication_fk0' FOREIGN KEY ('id_person') REFERENCES 'Auction'('id_person');
ALTER TABLE 'Auction' ADD CONSTRAINT 'Auction_fk0' FOREIGN KEY ('id_person') REFERENCES 'Category'('id_category');
ALTER TABLE 'Auction' ADD CONSTRAINT 'Auction_fk1' FOREIGN KEY ('id_number') REFERENCES 'Rate'('id_person_rate');
ALTER TABLE 'Lots' ADD CONSTRAINT 'Lots_fk0' FOREIGN KEY ('id_lots') REFERENCES 'Auction'('id_number');
ALTER TABLE 'Lots' ADD CONSTRAINT 'Lots_fk1' FOREIGN KEY ('id_time_start') REFERENCES 'Auction'('id_time_start');
ALTER TABLE 'Lots' ADD CONSTRAINT 'Lots_fk2' FOREIGN KEY ('id_time_finish') REFERENCES 'Auction'('id_time_finish');
ALTER TABLE 'Lots' ADD CONSTRAINT 'Lots_fk3' FOREIGN KEY ('id_min_price') REFERENCES 'Auction'('id_time_finish');
ALTER TABLE 'Category' ADD CONSTRAINT 'Category_fk0' FOREIGN KEY ('id_category') REFERENCES 'Lots'('id_lots');
ALTER TABLE 'Rate' ADD CONSTRAINT 'Rate_fk0' FOREIGN KEY ('id_person_rate') REFERENCES 'Lots'('id_lots');
ALTER TABLE 'Rate' ADD CONSTRAINT 'Rate_fk1' FOREIGN KEY ('id_rate') REFERENCES 'Lots'('id_price');
*/