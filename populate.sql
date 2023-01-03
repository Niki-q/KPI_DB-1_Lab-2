-- ------------------------
-- Populate Authors table
-- ------------------------

INSERT INTO  Authors(auth_id, auth_name, auth_country, auth_date_birth)
VALUES('5775758', 'Dan Kendall', 'USA', '05-10-1985');

INSERT INTO  Authors(auth_id, auth_name, auth_country, auth_date_birth)
VALUES('5775759', 'Ryan Daly', 'Australia', '27-02-1975');

INSERT INTO  Authors(auth_id, auth_name, auth_country, auth_date_birth)
VALUES('5775760', 'Leo Laporte', 'USA', '18-12-2002');

INSERT INTO  Authors(auth_id, auth_name, auth_country, auth_date_birth)
VALUES('5775761', 'Ramon Pessoa', 'Brazil', '03-01-1973');

INSERT INTO  Authors(auth_id, auth_name, auth_country, auth_date_birth)
VALUES('5775762', 'Gustavo Caprioli', 'Italy', '27-08-1993');

INSERT INTO  Authors(auth_id, auth_name, auth_country, auth_date_birth)
VALUES('5775763', 'Henrik Möller', 'Switzerland', '23-01-1977');

-- ------------------------
-- Populate Podcasts table
-- ------------------------
INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000002', '5775758', 'Digital Health Today', 'English');

INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000003', '5775759', 'Power of Fishnets', 'English');

INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000004', '5775760', 'Radio Leo (Video LO)', 'English');
INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000005', '5775760', 'FLOSS Weekly (Video HD)', 'English');

INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000006', '5775761', 'CBN Dinheiro - Mauro Halfeld', 'Portuguese');
INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000007', '5775761', 'O Assunto é Dinheiro', 'Portuguese');

INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000008', '5775762', 'Business Immobiliare', 'Italian');

INSERT INTO  Podcasts(podc_id, auth_id, podc_title, podc_language)
VALUES('1000000009', '5775763', 'Udda Ting Swedish', 'Italian');


-- ------------------------
-- Populate Episodes table
-- ------------------------
INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328321', '1000000002', 'Dear Science: Lightning, Dead Cats and Hand Sanitizer', '3778','16-04-2018');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328322', '1000000002', 'Wednesday Wire with Lillian: 29th of November', '1515','08-12-2019');
 
INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328323', '1000000002', 'Only the Brave, Call my Agent! The French TV wave', '3776','30-09-2021');
 
INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328324', '1000000003', 'Richard from Glass Vaults', '2507','08-12-2018');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328325', '1000000003', 'The Steps Of Being A Blessed Man', '3572','27-03-2020');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328326', '1000000004', 'Christmas Prophecy of Immanuel', '3653','10-10-2019');
 
INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328327', '1000000005', 'South Africa Conf # 3 Numbers 35 The City of refuge', '907','08-02-2020');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328328', '1000000005', 'Guest Speaker - Missionary Steve Douglas', '961','21-05-2020');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328329', '1000000006', 'Reprobation Established', '2956','20-04-2019');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328330', '1000000006', 'Godly Goals of Raising Children', '3181','24-05-2018');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328331', '1000000006', 'The LORD Shall Be King', '3856','31-01-2021');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328332', '1000000007', 'The Pilgrims as Psalm Singers', '2340','11-10-2019');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328333', '1000000007', 'Westminster Shorter Catechism Question 028', '2787','19-09-2018');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328334', '1000000007', 'Pídete un cóctel "Medio Mundo" y quítate ', '1684','21-06-2021');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328335', '1000000007', 'Doing Gods Work In A Godly Way', '3162','19-08-2020');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328336', '1000000002', 'The Believer and His Relationship With God', '1479','23-07-2019');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328337', '1000000003', 'The Steps Of Being A Blessed Man', '689','03-09-2020');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328338', '1000000004', 'Five Fold Ministry 7 (Broadcast)', '1596','17-01-2021');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328339', '1000000006', 'God-Angering Complaining', '3830','14-06-2020');

INSERT INTO  Episodes(ep_id, podc_id, ep_title, ep_audio_lenth, ep_pub_date)
VALUES('4546649328340', '1000000005', 'Cremation: Is It Christian To Be Cremated?', '3797','19-09-2019');
