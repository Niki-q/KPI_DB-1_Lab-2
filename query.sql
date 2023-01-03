-- query №1
SELECT TRIM(auth_country), COUNT(auth_id) FROM authors group by auth_country;

-- query №2
SELECT podc_language, COUNT(podc_id) FROM podcasts group by podc_language;

-- query №3
SELECT TRIM(podc_title), SUM(ep_audio_lenth) AS total_duration FROM podcasts, episodes
WHERE episodes.podc_id = podcasts.podc_id 
group by podc_title ORDER BY total_duration DESC;
