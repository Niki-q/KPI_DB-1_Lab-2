import psycopg2

from prettytable import PrettyTable

username = 'student01'
password = '12345'
database = 'lab2'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(auth_country), COUNT(auth_id) FROM authors group by auth_country;
'''

query_2 = '''
SELECT podc_language, COUNT(podc_id) FROM podcasts group by podc_language;
'''

query_3 = '''
SELECT TRIM(podc_title), SUM(ep_audio_lenth) AS total_duration FROM podcasts, episodes
WHERE episodes.podc_id = podcasts.podc_id 
group by podc_title ORDER BY total_duration DESC;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    def console_query(query='''''', field_names=[]):
        cur = conn.cursor()
        cur.execute(query)
        my_table1 = PrettyTable()
        my_table1.field_names = field_names
        for row in cur:
            my_table1.add_row([row[0], row[1]])
        return print(my_table1)
    print("\nQuery 1\n")
    console_query(query_1, ["Country name", "Quantity of authors from this country"])
    print("\nQuery 2\n")
    console_query(query_2, ["Language", "Quantity of podcasts in that language"])
    print("\nQuery 3\n")
    console_query(query_3, ["Podcast name", "Total duration"])
