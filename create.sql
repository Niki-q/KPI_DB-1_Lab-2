-- ----------------------
-- Create Authors table
-- ----------------------
CREATE TABLE Authors
(
  auth_id char(40) NOT NULL ,
  auth_name char(30) NOT NULL ,
  auth_country char(30) NOT NULL ,
  auth_date_birth date NOT NULL 
);


-- -----------------------
-- Create Podcasts table
-- -----------------------
CREATE TABLE Podcasts
(
  podc_id char(40) NOT NULL,
  auth_id char(40) NOT NULL ,
  podc_title char(40) NOT NULL ,
  podc_language char(20) NOT NULL
);


-- -------------------
-- Create Episodes table
-- -------------------
CREATE TABLE Episodes
(
  ep_id char(40) NOT NULL ,
  podc_id char(40) NOT NULL ,
  ep_title char(70) NOT NULL ,
  ep_audio_lenth int NOT NULL ,
  ep_pub_date date NOT NULL
);


-- -------------------
-- Define primary keys
-- -------------------
ALTER TABLE Authors ADD PRIMARY KEY (auth_id);
ALTER TABLE Podcasts ADD PRIMARY KEY (podc_id);
ALTER TABLE Episodes ADD PRIMARY KEY (ep_id);


-- -------------------
-- Define foreign keys
-- -------------------
ALTER TABLE Podcasts ADD CONSTRAINT FK_Podcasts_Authors
FOREIGN KEY (auth_id) REFERENCES Authors (auth_id);

ALTER TABLE Episodes ADD CONSTRAINT FK_Episodes_Podcasts 
FOREIGN KEY (podc_id) REFERENCES Podcasts (podc_id);

