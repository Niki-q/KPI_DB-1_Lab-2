import psycopg2
import matplotlib.pyplot as plt

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
    cur = conn.cursor()


    def draw_bar():

        cur.execute(query_1)
        country = []
        authors = []

        for row in cur:
            country.append(row[0])
            authors.append(row[1])

        x_range = range(len(country))

        plt.bar(x_range, authors, label='Запит 1')
        plt.title('Кількість авторів за країнами')
        plt.xlabel('Назви країн')
        plt.ylabel('Кількість, чол.')
        plt.xticks(x_range, labels=country)
        plt.show()


    def draw_pie():
        cur.execute(query_2)
        language = []
        authors = []

        for row in cur:
            language.append(row[0])
            authors.append(row[1])

        plt.pie(authors, labels=language, autopct='%1.1f%%')
        plt.title('Кількість подкастів за мовами')
        plt.show()


    def draw_graph():
        fig = plt.figure()
        fig.set_figheight(8)
        fig.set_figwidth(11)
        cur.execute(query_3)
        title = []
        duration = []

        for row in cur:
            title.append(row[0])
            duration.append(row[1])
        plt.plot(title, duration, marker='o')
        plt.xticks(rotation=20, ha='right')
        plt.xlabel('Назва подкасту')
        plt.ylabel('Тривалість, хв.')
        plt.title('Рейтинг подкастів за кількістю хвилин у їх епізодах')

        for qnt, price in zip(title, duration):
            plt.annotate(price, xy=(qnt, price), xytext=(7, 2), textcoords='offset points')

        plt.show()


    draw_bar()
    draw_pie()
    draw_graph()
