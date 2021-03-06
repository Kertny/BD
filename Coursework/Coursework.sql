--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.10.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.10.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: trigger_creature(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.trigger_creature() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN

IF TG_OP = 'INSERT' THEN

IF NEW.creature > 1900 THEN

return NEW;

ELSE

RETURN OLD;

END IF;

END IF;

END;

$$;


ALTER FUNCTION public.trigger_creature() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author (
    book text,
    author text
);


ALTER TABLE public.author OWNER TO postgres;

--
-- Name: book_rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_rating (
    book text,
    rating real
);


ALTER TABLE public.book_rating OWNER TO postgres;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    book text NOT NULL,
    creature integer
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: description; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.description (
    book text,
    description text
);


ALTER TABLE public.description OWNER TO postgres;

--
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    book text,
    regions_dev text
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- Name: regions_description; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions_description (
    regions_dev text NOT NULL,
    regions_description text
);


ALTER TABLE public.regions_description OWNER TO postgres;

--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.author (book, author) FROM stdin;
Электротехника	Синдеев Ю.Г
Алгоритмы для начинающих	Луридас Панос
Грокаем глубокое обучение	Траск Эндрю
Грокаем алгоритмы	Бхаргава Адитья
Алгоритмы для чайников	Мюллер Джон Поль
Идеальный программист	Мартин Роберт
Чистый код	Мартин Роберт
Чистая архитектура	Мартин Роберт
Совершенный код	Макконнелл Стив
Алгоритмы	Стивенс Род
Найти идею	Альтшуллер Г.С
Структуры данных и алгоритмы	Лафоре Роберт
Глубокое обучение	Бенджио Иошуа
Алгоритмы, построение и анализ	Кормен Томас Х
Совершенный алгоритм	Рафгарден Тим
Алгоритмы на C++	Роберт Седжвик
Алгоритмы Справочник	Джордж Хайнеман
Алгоритмы и структура данных	Вирт Никлаус
Алгоритмы оптимизация	Кохендерфер Майкл
Искусство быть невидимым	Митник Кевин
Big Data простым языком	Благирев А.П
Data Science	Грас Джоэл
Базы данных	Кэмпбелл Лейн
SQL. Полное руководство	Грофф Джеймс Р
Секреты Oracle SQL	Мишра Санжей
Наука о данных	Скиена Стивен С
Язык T-SQL	 Форта Бен
Системы баз данных	Ульман Джеффри Д
PostgreSQL	Моргунов Е.П
Изучаем PostgreSQL 10	Волков Андрей
Mongo DB	Брэдшоу Шэннон
MySQL по максимуму	Петр Зайцев
Теоретичекий минимум по BD	Су Кеннет
Вся технология в одной книге	Вайгенд Андреас
Google BigQuery	Лашкманан Валиаппа
Мастерство Визуализации Данных	Базалева О.И
Все о ноутбуков для чайников	О.И.Бойкова
Windows10	Леонтьев В.П
Ноутбук для новичков	Зинаида Орлова
Народный самоучитель	Жуков Иван
Ноутбук	Жуков Иван
Microspft Excel	Николай Павлов
Excel Новейший Самоучитель	Леонтьев В.П
Photoshop на примерах	Прохоров А.А
Photoshop CC	Шаффлботэм Роберт
Photoshop	Фуллер Д.М
Компьютер для чайников	Дэн Гукин
Интернет для чайников	Левин Джон Р.
Windows 10 для чайников	Ратбон Энди
Microsoft office 2019	Вонг Уоллес
Excel 2016 для чайников	Харвей Грег
Домашний Компьютер	Симонович С.В
Компьютерный букварь	Левина Л.Т
Все о ноутбуке	Левина Л.Т
Windows XP для чайников	Ратбон Энди
Потрачено	Кушнер Дэвид
Кровь, пот и пиксели	Джейсон Шрейер
Повелители DOOM	Кушнер Дэвид
Создай свою компьтерную игру	Вудкок Йон
Hey! Listen!	Стив Макнил
Unity в действии	Джозеф Хокинг
Изучаем Python	Мэтиз Эрик
Мастера геймдизайна	Конста К, Хорро Г
3ds Max 2020	Александр Г
Геймдизайн	Шелл Джесси
Время игр!	Подшибякин А.М
Unity и C#	Гибсон Бонд
Реальность под вопросом	Макгонигал Джейн
Кодзима - гений	Вулф Терри
Миллионы миллиардов	Максим Михеенко
Нарисуй свою вселенную	Ле Ненан Ян
Игра	Барикко Алессандро
Вторжение	Даниил Туровский
Подпольный интернет	Джейми Бартлетт
Искусство легального...	Райтман М.А
Взлом	Комиссаров
Компьютерные сети	Олифер В.Г
Cистемный администратор	Кенин А.М
Техника сетевых атак	Крис Касперски
Записки исследователя вирусов	Крис Касперски
Укрощение Интернета	Крис Касперски
Вирусы изнутри и снаружи	Крис Касперски
Техника хакерских атак	Крис Касперски
Основы хакерства	Крис Касперски
Техника оптимизации программ	Крис Касперски
Восстановление данных	Крис Касперски
Искусство дизассемблирования	Крис Касперски
Техника отладки программ	Крис Касперски
Техника защиты компакт-дисков	Крис Касперски
Энциклопедия примет погоды	Крис Касперски
ПК: решение проблем	Крис Касперски
Linux. Карманный справочник	Граннеман С
Linux	Колисниченко Д.Н
Bash	Арнольд Роббинс
Внутреннее устройство Linux	Брайан Уорд
Современные ОС	Таненбаум
Unix и Linux	Немет, Снайдер
Kali Linux	Парасрам
OS X Mountain Lion	Денис Колисниченко
Android для женщин	Дремова, Михайлов
Ядро Linux	Роберт Лав
Mac OS X - UNIX для всех	Волк С
Mac OS X 10.5	Лахоцкая О
Mac OS X Lion	Груман Г
UNIX изнутри	Вахалия Ю
Секреты Unix	Джеймс Армстронг
Использование Linux	Бендел Д
Just for fun	Линус Торвальдс
Искусственный интеллект	Джон Брокман
SWIFT	Усов Василий
C++ Шаг за шагом	Герберт Шилдт
Java для всех	Васильев А.Н
Программирование на C#	Васильев А.Н
Arduino для изобретателей	Ранберг
Программирование на C++	Васильев А.Н
Блокчейн	Сингхал Б
Программируем на Python	М.Доусон
Легкий способ выучить Python	Шоу Зед
Python 3. Самое необходимое	Дронов В.А
C# для чайников	Мюллер Джон Поль
Язык программирования C++	Страуструп Бьерн
TensorFlow	Рамсундар Бхарат
Изучаем Arduino	Блум Джереми
Программирование на Python	МакГрат Майк
Java за 24 часа	Кейденхед Роджерс
Сам себе программист	Альтхофф Кори
Язык C	Прохоренок Н.А
Привет, Python!	Томашевский П.Р
100 примеров на С++	Акимова А.В
Python. Карманный справочник	Лутц Марк
JavaScript	Дронов В.А
HTML 5, CSS 3 и Web 2.0	Дронов В.А
Новая большая книга CSS	Макфарланд Дэвид
SEO искусство раскрутки сайтов	Энж Эрик, Спенсер С
HTML5 + CSS3	Хрусталев А.А
Изучаем React	Чиннатамби Кирупа
HTML, CSS, SCRATCH, PYTHON	Дубовик Е.В
Изучаем работу с jQuery	Райан Бенедетти
Разгони свой сайт	Мациевский Н
PHP. Сборник рецептов	Дэвид Скляр
Изучаем Ruby	Фитцджеральд М
PHP5	Котеров Д
Front-end	Крис Аквино
Веб-разработка	Итан Браун
JavaScript для детей	Морган Ник
Ubuntu Linux c нуля	Волох Сергей
\.


--
-- Data for Name: book_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_rating (book, rating) FROM stdin;
Электротехника	4.5
Алгоритмы для начинающих	4.8
Грокаем глубокое обучение	3.9
Грокаем алгоритмы	5
Алгоритмы для чайников	4.7
Идеальный программист	4.9
Чистый код	5
Чистая архитектура	4.6
Совершенный код	5
Алгоритмы	4.2
Найти идею	5
Структуры данных и алгоритмы	5
Глубокое обучение	4.7
Алгоритмы, построение и анализ	4.6
Совершенный алгоритм	4.9
Алгоритмы на C++	4.1
Алгоритмы Справочник	4.8
Алгоритмы и структура данных	4
Алгоритмы оптимизация	4.6
Big Data простым языком	5
Data Science	5
Базы данных	4.8
SQL. Полное руководство	5
Секреты Oracle SQL	4.6
Наука о данных	5
Язык T-SQL	5
Системы баз данных	4.9
PostgreSQL	5
Изучаем PostgreSQL 10	5
Mongo DB	4.7
MySQL по максимуму	5
Теоретичекий минимум по BD	5
Вся технология в одной книге	4.6
Google BigQuery	5
Мастерство Визуализации Данных	4.9
Все о ноутбуков для чайников	4.7
Windows10	5
Ноутбук для новичков	4.8
Народный самоучитель	5
Ноутбук	4
Excel Новейший Самоучитель	4.9
Photoshop на примерах	5
Photoshop CC	5
Photoshop	4.6
Компьютер для чайников	4.1
Интернет для чайников	4.7
Windows 10 для чайников	5
Microsoft office 2019	4.2
Excel 2016 для чайников	4.3
Домашний Компьютер	5
Компьютерный букварь	5
Все о ноутбуке	5
Windows XP для чайников	5
Потрачено	4.8
Кровь, пот и пиксели	5
Повелители DOOM	5
Создай свою компьтерную игру	5
Hey! Listen!	4
Unity в действии	4.7
Изучаем Python	4.6
Мастера геймдизайна	4.9
3ds Max 2020	4.6
Геймдизайн	5
Время игр!	5
Unity и C#	4.9
Реальность под вопросом	4.6
Кодзима - гений	5
Миллионы миллиардов	5
Нарисуй свою вселенную	5
Игра	5
Вторжение	5
Подпольный интернет	5
Искусство легального...	5
Взлом	4.7
Компьютерные сети	4.9
Cистемный администратор	5
Техника сетевых атак	5
Записки исследователя вирусов	5
Укрощение Интернета	4.8
Вирусы изнутри и снаружи	5
Техника хакерских атак	5
Основы хакерства	4.7
Техника оптимизации программ	4.4
Восстановление данных	5
Искусство дизассемблирования	5
Техника отладки программ	5
Техника защиты компакт-дисков	4.6
Энциклопедия примет погоды	4.8
ПК: решение проблем	4.6
Linux. Карманный справочник	4.7
Linux	5
Bash	4.2
Внутреннее устройство Linux	4.9
Ubuntu Linux c нуля	5
Современные ОС	5
Unix и Linux	4.9
Kali Linux	4.8
OS X Mountain Lion	5
Android для женщин	3.9
Ядро Linux	4.6
Mac OS X - UNIX для всех	4.1
Mac OS X 10.5	5
Mac OS X Lion	5
UNIX изнутри	4.9
Секреты Unix	5
Использование Linux	4.7
Just for fun	4.1
Microspft Excel	5
Искусственный интеллект	5
SWIFT	4.9
C++ Шаг за шагом	5
Java для всех	5
Программирование на C#	4.6
Arduino для изобретателей	5
Программирование на C++	5
Блокчейн	4.7
Программируем на Python	4.4
Легкий способ выучить Python	5
Python 3. Самое необходимое	5
C# для чайников	4.7
Язык программирования C++	5
TensorFlow	4.6
Изучаем Arduino	4.9
Программирование на Python	5
Java за 24 часа	5
Сам себе программист	5
Язык C	4.9
Привет, Python!	5
100 примеров на С++	5
Python. Карманный справочник	5
JavaScript	4.7
Искусство быть невидимым	4.9
HTML 5, CSS 3 и Web 2.0	4.7
Новая большая книга CSS	4.9
SEO искусство раскрутки сайтов	5
HTML5 + CSS3	5
Изучаем React	5
HTML, CSS, SCRATCH, PYTHON	5
Изучаем работу с jQuery	4
Разгони свой сайт	4.6
PHP. Сборник рецептов	5
Изучаем Ruby	4.8
PHP5	5
Front-end	4.7
Веб-разработка	4.9
JavaScript для детей	4.9
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (book, creature) FROM stdin;
Электротехника	2020
Алгоритмы для начинающих	2018
Грокаем глубокое обучение	2019
Грокаем алгоритмы	2019
Алгоритмы для чайников	2018
Идеальный программист	2018
Чистый код	2019
Чистая архитектура	2018
Совершенный код	2017
Алгоритмы	2016
Найти идею	2020
Структуры данных и алгоритмы	2018
Глубокое обучение	2017
Алгоритмы, построение и анализ	2019
Совершенный алгоритм	2020
Алгоритмы на C++	2019
Алгоритмы Справочник	2017
Алгоритмы и структура данных	2016
Алгоритмы оптимизация	2020
Big Data простым языком	2019
Data Science	2020
Базы данных	2020
SQL. Полное руководство	2018
Секреты Oracle SQL	2006
Наука о данных	2020
Язык T-SQL	2017
Системы баз данных	2017
PostgreSQL	2019
Изучаем PostgreSQL 10	2019
Mongo DB	2020
MySQL по максимуму	2018
Теоретичекий минимум по BD	2019
Вся технология в одной книге	2018
Google BigQuery	2021
Мастерство Визуализации Данных	2018
Все о ноутбуков для чайников	2018
Windows10	2015
Ноутбук для новичков	2019
Народный самоучитель	2017
Ноутбук	2020
Excel Новейший Самоучитель	2016
Photoshop на примерах	2017
Photoshop CC	2017
Photoshop	2017
Компьютер для чайников	2017
Интернет для чайников	2014
Windows 10 для чайников	2016
Microsoft office 2019	2019
Excel 2016 для чайников	2019
Домашний Компьютер	2006
Компьютерный букварь	2018
Все о ноутбуке	2019
Windows XP для чайников	2002
Потрачено	2020
Кровь, пот и пиксели	2017
Повелители DOOM	2020
Создай свою компьтерную игру	2018
Hey! Listen!	2020
Unity в действии	2020
Изучаем Python	2020
Мастера геймдизайна	2020
3ds Max 2020	2020
Геймдизайн	2020
Время игр!	2019
Unity и C#	2019
Реальность под вопросом	2018
Кодзима - гений	2019
Миллионы миллиардов	2021
Нарисуй свою вселенную	2020
Игра	2019
Вторжение	2019
Подпольный интернет	2017
Искусство легального...	2017
Взлом	2020
Компьютерные сети	2020
Cистемный администратор	2019
Техника сетевых атак	2001
Записки исследователя вирусов	2006
Укрощение Интернета	2002
Вирусы изнутри и снаружи	2006
Техника хакерских атак	2004
Основы хакерства	2004
Техника оптимизации программ	2003
Восстановление данных	2003
Искусство дизассемблирования	2008
Техника отладки программ	2005
Техника защиты компакт-дисков	2004
Энциклопедия примет погоды	2004
ПК: решение проблем	2003
Linux. Карманный справочник	2020
Linux	2020
Bash	2017
Внутреннее устройство Linux	2018
Ubuntu Linux c нуля	2018
Современные ОС	2019
Unix и Linux	2020
Kali Linux	2020
OS X Mountain Lion	2013
Android для женщин	2015
Ядро Linux	2019
Mac OS X - UNIX для всех	2002
Mac OS X 10.5	2008
Mac OS X Lion	2012
UNIX изнутри	2003
Секреты Unix	2001
Использование Linux	2005
Just for fun	2002
Microspft Excel	2014
Искусственный интеллект	2020
SWIFT	2020
C++ Шаг за шагом	2013
Java для всех	2020
Программирование на C#	2019
Arduino для изобретателей	2018
Программирование на C++	2016
Блокчейн	2020
Программируем на Python	2019
Легкий способ выучить Python	2017
Python 3. Самое необходимое	2019
C# для чайников	2019
Язык программирования C++	2017
TensorFlow	2019
Изучаем Arduino	2018
Программирование на Python	2015
Java за 24 часа	2019
Сам себе программист	2018
Язык C	2020
Привет, Python!	2017
100 примеров на С++	2018
Python. Карманный справочник	2019
JavaScript	2020
Искусство быть невидимым	2019
HTML 5, CSS 3 и Web 2.0	2013
Новая большая книга CSS	2018
SEO искусство раскрутки сайтов	2017
HTML5 + CSS3	2018
Изучаем React	2019
HTML, CSS, SCRATCH, PYTHON	2018
Изучаем работу с jQuery	2012
Разгони свой сайт	2013
PHP. Сборник рецептов	2005
Изучаем Ruby	2008
PHP5	2011
Front-end	2018
Веб-разработка	2016
JavaScript для детей	2014
\.


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.description (book, description) FROM stdin;
Электротехника	Электротехника с основами электроники. Учебное пособие
Алгоритмы для начинающих	Алгоритмы нужны для того, чтобы помогать людям бездельничать... На примере языка Python
Грокаем глубокое обучение	Глубокое обучение - это раздел искусственного интеллекта
Грокаем алгоритмы	Иллюстрированное пособие для программистов и любопытствующих
Алгоритмы для чайников	Не нужно иметь ученую степень, чтобы понять смысл алгоритмов. Это ясное и доступное руководство
Идеальный программист	Как стать профессионалом разработки ПО
Чистый код	Если код не является "чистым", это всегда будет мешать развитию проекта
Чистая архитектура	Искусство разработки программного обеспечения
Совершенный код	В этой книге вы найдете информацию, она заставит вас размышлять и поможет создать совершенный код
Алгоритмы	Теория и практическое применение
Найти идею	Введение в ТРИЗ — теорию решения изобретательских задач
Структуры данных и алгоритмы	Алгоритмы - это основа программирования, определяющая, каким образом будет написан код
Глубокое обучение	Машинное обучени, наделющее компьютеры способностью учиться на ошибках
Алгоритмы, построение и анализ	Удачно объединяет в себе полноту охвата и строгость изложения материала
Совершенный алгоритм	Алгоритмы - это сердце и душа computer science
Алгоритмы на C++	Анализ структуры данных. Сортировка. Поиск. Алгоритмы на графах
Алгоритмы Справочник	Справочник с примерами на C, C++, Java и Python
Алгоритмы и структура данных	На примерах проработаны основные темы алгоритмов
Алгоритмы оптимизация	Комплексное введение в оптимизацию с упором на практические алгоритмы проектирования систем
Big Data простым языком	Наш телефон знает о нас больше, чем мы думаем. Он умеет собирать и анализировать информацию
Data Science	Книга позволяет изучить науку о данных (Data Science) и применить полученные знания на практике
Базы данных	В сфере IT произошла настоящая революция - с инфраструктурой стали работать как с кодом
SQL. Полное руководство	Эта книга расскажет вам, как работать с командами и инструкциями SQL
Секреты Oracle SQL	Большинство книг по SQL не выходит за рамки обсуждения синтаксиса и азов применения
Наука о данных	Для того чтобы понять мир, необходимо собрать и проанализировать данные о нем
Язык T-SQL	Язык T-SQL для Microsoft SQL Server за 10 минут
Системы баз данных	Книга известного специалиста в области компьютерных наук Дж.Ульмана
PostgreSQL	Учебно-практическое пособие охватывает первую, базовую, часть учебного курса по языку SQL
Изучаем PostgreSQL 10	Руководство для начинающих по созданию высокопроизводительных решений для базы данных PostgreSQL
Mongo DB	В этой книге детально рассматривается обновленная версия MongoDB 4.2
MySQL по максимуму	Хотите выжать из MySQL максимум возможностей? Вам поможет уникальная книга, написанная экспертами
Теоретичекий минимум по BD	Нашей жизню управляет информация, и извлечение выгоды из нее становится целью
Вся технология в одной книге	Технологии монитизации больших данных от гигантов рынка
Google BigQuery	Вас пугает необходимость обрабатывать петабайтные наборы данных
Мастерство Визуализации Данных	Эта книга - отличное руководство по принципам и методам визуализации любых данных
Все о ноутбуков для чайников	Пора осваивать новые горизонты — портативный компьютер — он же ноутбук.
Windows10	Новейшая операционная система Windows 10 предлагает массу новых возможностей
Ноутбук для новичков	Нужно освоить ноутбук, но вы даже не знаете, как его включить?
Народный самоучитель	для изучения компьютера. Максимально просто и понятно!
Ноутбук	Самоучитель для новичков. Все подробно и «по полочкам»
Microspft Excel	Книга представляет собой полноценный сборник готовых решений самых распространенных проблем и задач
Excel Новейший Самоучитель	С помощью Microsoft Excel 2016 вы сможете создавать электронные таблицылюбой сложности
Photoshop на примерах	Эта книга представляет собой наглядное практическое руководство по работе с photoshop
Photoshop CC	В книге сложные и запутанные процедуры разбиты на легко выполняемые шаги
Photoshop	Если вы хотите освоить и научиться эффективно пользоваться Photoshop
Компьютер для чайников	Перед вами книга о персональных компьютерах
Интернет для чайников	В наше время Интернет прочно вошел в провседневную жизнь и по популярности уже превзошел телевизор
Windows 10 для чайников	Windows 10 сочетает в себе все лучшее, что было в предыдущих версиях системы
Microsoft office 2019	Эта книга поможет вам освоить все популярные версии офисных приложений
Excel 2016 для чайников	Хотите быстро освоить Excel и сразу же приступить к созданию электронных таблиц?
Домашний Компьютер	Книга является уникальным самоучителем
Компьютерный букварь	Вы устали слышать фразу "Ой, я тут куда-то нажала, и все исчезло"?
Все о ноутбуке	В чем отличие ноутбука от настольного компьютера, кроме мобильности?
Windows XP для чайников	Перед вами книга о самой полседней редакции оперционной системы от компании Microsoft
Потрачено	Беспредельная история создания GTA
Кровь, пот и пиксели	Лучшая книга об игровой индустрии от известного американского журналиста Джейсона Шрейера
Повелители DOOM	Как два парня создали культовый шутер и раскачали индустрию видеоигр
Создай свою компьтерную игру	Стань магистром Scratch - анимируй спрайты, создавай и совершенствуй свои компьютерные игры
Hey! Listen!	Путешествие по золотому веку видеоигр
Unity в действии	Unity представляют как набор компонентов, не требующих программирования, что в корне неверно
Изучаем Python	Программирование игр, визуализация данных, веб-приложения
Мастера геймдизайна	Как создавались Angry Birds, Max Payne и другие игры-бестселлеры
3ds Max 2020	В основу книги положена эффективная методика обучения работе с программой 3ds Max
Геймдизайн	Как создать игру, в которую будут играть все
Время игр!	Эта книга о том, как все начиналось и, вне всяких сомнений, будет продолжаться в будущем
Unity и C#	Впервые введнение в геймдизайн, прототипирование и геймдев объединены в одну книгу
Реальность под вопросом	Почему игры делают нас лучше и как они могут изменить мир
Кодзима - гений	История разработчика, превернувшиго индустрию видеоигр
Миллионы миллиардов	Как стартовать в игровой индустрии, работая удаленно, заробатывать денег и создавать игру мечты
Нарисуй свою вселенную	Весь мир игры в одной книге, в 80 пошаговых рисунках
Игра	Эссе о стремительно наступающей цифровой революции и реакции обычного человека на новые игры
Вторжение	Краткая история русских хакеров
Подпольный интернет	Интернет – это не только социальные сети, интернет-магазины и поисковые сайты
Искусство легального...	Искусство легального, анонимного и безопасного доступа к ресурсам Интернета
Взлом	В сборнике избранных статей из журнала "Хакер" описана технология поиска и эксплуатации уязвимостей
Компьютерные сети	Принципы, технологии, протоколы
Cистемный администратор	Изложены основные задачи системного администрирования, описаны базовые протоколы
Техника сетевых атак	В доступной форме рассказывает о проблемах безопасности сетевых сообщений
Записки исследователя вирусов	Атаки в последнее время стали слишком интенсивными и никто не может чувствовать себя в безопасности
Укрощение Интернета	В доступной для пользователей средней квалификации форме книга о секретах работы с Интернетом
Вирусы изнутри и снаружи	Что находится внутри вируса? Какие шестеренки приводят его в движение?
Техника хакерских атак	Взлом - это естественная потребность всякого разумного существа
Основы хакерства	Книга, которую вы сейчас держите в руках, открывает двери в удивительный мир защитных механизмов
Техника оптимизации программ	Хотите научиться минимальными усилиями создавать эффективный программный код
Восстановление данных	Книга представляет пошаговое руководство по восстановлению поврежденных данных на жестких
Искусство дизассемблирования	Книга посвящена методам дизассемблирования, знание которых позволит эффективно защитить программы
Техника отладки программ	Даны практические рекомендации по использованию популярных отладчиков
Техника защиты компакт-дисков	Рассмотрены устройство и организация данных на дисках CD-ROM/CD-R/CD-RW
Энциклопедия примет погоды	Эта книга расскажет, как по небу и поведению животных предсказать погоду, определить, будет ли дождь
ПК: решение проблем	Книга представляет собой сборник разнообразных советов и рекомендаций
Linux. Карманный справочник	Среди всех элементов системы Linux самым важным, пожалуй, является командная строка
Linux	Даны ответы на все вопросы, возникающие при работе с Linux
Bash	Карманный справочник системного администратора
Внутреннее устройство Linux	Она описывает все тонкости работы с операционной системой Linux
Ubuntu Linux c нуля	С позиции пользователя рассмотрена работа в популярной операционной системе Ubuntu Linux
Современные ОС	Книга необходимая для понимания функционирования современных операционных систем
Unix и Linux	Это издание предназначено для тех, чьи системы работают в облаке или в виртуализированных центрах
Kali Linux	Знания из области информационной безопасности будут плюсом
OS X Mountain Lion	Эта книга - практическое руководство по использованию компьютеров компании Apple
Android для женщин	Вы стали обладателем планшета на Android и встал вопрос, как извлечь из него максимум возможного?
Ядро Linux	Описание процесса разработки
Mac OS X - UNIX для всех	Книга состоит из трех основных разделов
Mac OS X 10.5	Книга "Mac OS X 10.5: руководство по приручению Леопарда"
Mac OS X Lion	Эта книга охватывает все новые возможности, а также содержит все основные сведения о системе Mac
UNIX изнутри	Здесь рассказывается обо всех аспектах ядра 
Секреты Unix	Эта книга выделяется среди других публикаций, посвященных UNIX
Использование Linux	В книге linux представлены практические аспекты работы с Linux
Just for fun	Книга, несомненно, Must Have!
SWIFT	Основы разработки приложений под iOS, iPadOS и macOS
C++ Шаг за шагом	Предлагаемая книга представляет собой самоучитель, который расскажет основы C++
Искусственный интеллект	Книга авторитетного эксперта в области компьютерных технологий — призыв к здравомыслию
Java для всех	Java - один из самых популярных и востребованных языков в мире
Программирование на C#	Особенности языка
Arduino для изобретателей	Обучение электронике на 10 проектах
Программирование на C++	Книга предназначена для изучения языка программирования C++
Блокчейн	Книга предназначена для изучения фундаментальных основ блокчейна и решения прикладных задач
Программируем на Python	Эта книга — идеальное пособие для начинающих изучать Python
Легкий способ выучить Python	Никогда не программировали, но мечтаете научиться?
Python 3. Самое необходимое	Описан базовый синтаксис языка Python 3
C# для чайников	Даже если вы никогда не имели дела с программированием, эта книга поможет вам освоить язык C#
Язык программирования C++	Книга написана Бьерном Страуструпом - автором языка программирования С++
TensorFlow	Книга знакомит с основами программной библиотеки TensorFlow и принципами глубокого обучения
Изучаем Arduino	Инструменты и методы технического волшебства
Программирование на Python	Книга «Программирование на Python для начинающих» является исчерпывающим руководством
Java за 24 часа	Программировать на Java гораздо проще, чем вы думаете
Сам себе программист	Как за год научиться программировать и устроиться разработчиком в Ebay?
Язык C	Описан базовый синтаксис современного языка C
Привет, Python!	Хотите научиться программировать, но не знаете, как это сделать?
100 примеров на С++	Эта книга является превосходным учебным пособием для изучения C++
Python. Карманный справочник	Этот краткий справочник по Python карманного типа
JavaScript	В книге 20 иллюстрированных уроков, 40 практических упражнений на тему программирования
Искусство быть невидимым	Думаете, ваши данные в Интернете хорошо защищены?
HTML 5, CSS 3 и Web 2.0	Практическое руководство по созданию современных Web-сайтов, соответствующих концепции Web 2.0
Новая большая книга CSS	Технология CSS3 позволяет создавать профессионально оформленные сайты
SEO искусство раскрутки сайтов	Полное и подробное руководство по поисковой оптимизации (SEO)
HTML5 + CSS3	Основы современного WEB-дизайна
Изучаем React	Первая обучающая книга по React
HTML, CSS, SCRATCH, PYTHON	Хотите научиться создавать программы и сайты, но не знаете, как это сделать?
Изучаем работу с jQuery	Эта книга посвящена одной из самых важных и универсальных библиотек JavaScript
Разгони свой сайт	Сайт тормозит, и вы не представляете, как с этим справиться?
PHP. Сборник рецептов	PHP - это простой, но мощный язык с открытым исходным кодом
Изучаем Ruby	Книга представляет собой руководство по созданию веб-приложений на языке Ruby
PHP5	Рассматриваются основы функционирования Web-серверов, сборка исполняемого модуля PHP в ОС UNIX
Front-end	В книге рассмотрены все важнейшие навыки работы с JavaScript, HTML5 и CSS3
Веб-разработка	Хотите научиться создавать программы и сайты, но не знаете, как это сделать?
JavaScript для детей	JavaScript - самый популярный язык написания клиентских сценариев
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regions (book, regions_dev) FROM stdin;
Электротехника	operatingsystem
Электротехника	algorithms
Алгоритмы для начинающих	software
Алгоритмы для начинающих	algorithms
Грокаем глубокое обучение	algorithms
Грокаем алгоритмы	algorithms
Алгоритмы для чайников	fordummies
Алгоритмы для чайников	algorithms
Идеальный программист	software
Идеальный программист	operatingsystem
Чистый код	software
Чистый код	algorithms
Чистая архитектура	software
Чистая архитектура	algorithms
Совершенный код	algorithms
Совершенный код	software
Алгоритмы	algorithms
Алгоритмы	software
Найти идею	develop
Структуры данных и алгоритмы	bigdata
Структуры данных и алгоритмы	algorithms
Структуры данных и алгоритмы	develop
Глубокое обучение	software
Глубокое обучение	algorithms
Алгоритмы, построение и анализ	algorithms
Совершенный алгоритм	develop
Совершенный алгоритм	software
Совершенный алгоритм	algorithms
Алгоритмы на C++	algorithms
Алгоритмы на C++	software
Алгоритмы Справочник	algorithms
Алгоритмы и структура данных	algorithms
Алгоритмы и структура данных	bigdata
Алгоритмы оптимизация	algorithms
Искусство быть невидимым	bigdata
Искусство быть невидимым	hackers
Big Data простым языком	bigdata
Data Science	bigdata
Data Science	datascience
Базы данных	bigdata
SQL. Полное руководство	bigdata
Секреты Oracle SQL	bigdata
Наука о данных	bigdata
Язык T-SQL	bigdata
Системы баз данных	bigdata
PostgreSQL	bigdata
Изучаем PostgreSQL 10	bigdata
Mongo DB	bigdata
MySQL по максимуму	bigdata
Теоретичекий минимум по BD	bigdata
Вся технология в одной книге	software
Google BigQuery	bigdata
Мастерство Визуализации Данных	bigdata
Мастерство Визуализации Данных	datascience
Все о ноутбуков для чайников	fordummies
Все о ноутбуков для чайников	operatingsystem
Windows10	operatingsystem
Ноутбук для новичков	fordummies
Ноутбук для новичков	operatingsystem
Народный самоучитель	fordummies
Ноутбук	fordummies
Microspft Excel	fordummies
Microspft Excel	software
Excel Новейший Самоучитель	fordummies
Excel Новейший Самоучитель	software
Photoshop на примерах	fordummies
Photoshop на примерах	software
Photoshop CC	fordummies
Photoshop CC	software
Photoshop	fordummies
Photoshop	software
Компьютер для чайников	fordummies
Компьютер для чайников	operatingsystem
Интернет для чайников	fordummies
Интернет для чайников	operatingsystem
Windows 10 для чайников	fordummies
Windows 10 для чайников	operatingsystem
Microsoft office 2019	fordummies
Microsoft office 2019	software
Excel 2016 для чайников	fordummies
Excel 2016 для чайников	software
Домашний Компьютер	fordummies
Компьютерный букварь	fordummies
Все о ноутбуке	fordummies
Windows XP для чайников	fordummies
Windows XP для чайников	operatingsystem
Потрачено	gamedev
Потрачено	software
Кровь, пот и пиксели	gamedev
Повелители DOOM	gamedev
Создай свою компьтерную игру	gamedev
Hey! Listen!	gamedev
Unity в действии	gamedev
Изучаем Python	gamede
Изучаем Python	webdev
Изучаем Python	software
Мастера геймдизайна	gamedev
3ds Max 2020	fordummies
3ds Max 2020	software
Геймдизайн	gamedev
Время игр!	gamedev
Unity и C#	gamedev
Unity и C#	software
Реальность под вопросом	gamedev
Кодзима - гений	gamedev
Миллионы миллиардов	gamedev
Нарисуй свою вселенную	gamedev
Игра	gamedev
Вторжение	hackers
Подпольный интернет	hackers
Подпольный интернет	webdev
Искусство легального...	hackers
Искусство легального...	webdev
Взлом	hackers
Компьютерные сети	network
Cистемный администратор	network
Техника сетевых атак	network
Техника сетевых атак	hackers
Записки исследователя вирусов	hackers
Укрощение Интернета	webdev
Вирусы изнутри и снаружи	hackers
Вирусы изнутри и снаружи	network
Техника хакерских атак	network
Техника хакерских атак	hackers
Основы хакерства	hackers
Основы хакерства	network
Техника оптимизации программ	software
Восстановление данных	software
Искусство дизассемблирования	software
Искусство дизассемблирования	operatingsystem
Техника отладки программ	software
Техника защиты компакт-дисков	software
Энциклопедия примет погоды	algorithms
ПК: решение проблем	operatingsystem
Linux. Карманный справочник	operatingsystem
Linux	operatingsystem
Bash	software
Внутреннее устройство Linux	operatingsystem
Внутреннее устройство Linux	software
Ubuntu Linux c нуля	operatingsystem
Современные ОС	operatingsystem
Unix и Linux	operatingsystem
Kali Linux	operatingsystem
Kali Linux	hackers
OS X Mountain Lion	operatingsystem
Android для женщин	fordummies
Ядро Linux	operatingsystem
Mac OS X - UNIX для всех	operatingsystem
Mac OS X 10.5	operatingsystem
Mac OS X Lion	operatingsystem
UNIX изнутри	operatingsystem
Секреты Unix	operatingsystem
Использование Linux	operatingsystem
Just for fun	software
Microspft Excel	fordummies
Искусственный интеллект	software
SWIFT	algorithms
SWIFT	software
C++ Шаг за шагом	algorithms
C++ Шаг за шагом	software
Искусственный интеллект	algorithms
Искусственный интеллект	software
Java для всех	algorithms
Java для всех	software
Программирование на C#	algorithms
Программирование на C#	software
Arduino для изобретателей	algorithms
Arduino для изобретателей	software
Программирование на C++	algorithms
Программирование на C++	software
Блокчейн	algorithms
Программируем на Python	algorithms
Программируем на Python	software
Программируем на Python	webdev
Легкий способ выучить Python	algorithms
Легкий способ выучить Python	software
Легкий способ выучить Python	webdev
Python 3. Самое необходимое	algorithms
Python 3. Самое необходимое	software
Python 3. Самое необходимое	webdev
C# для чайников	algorithms
C# для чайников	software
Язык программирования C++	algorithms
Язык программирования C++	software
TensorFlow	algorithms
TensorFlow	software
Изучаем Arduino	algorithms
Изучаем Arduino	software
Программирование на Python	algorithms
Программирование на Python	software
Программирование на Python	webdev
Java за 24 часа	algorithms
Java за 24 часа	software
Сам себе программист	algorithms
Язык C	algorithms
Язык C	software
Привет, Python!	algorithms
Привет, Python!	webdev
Привет, Python!	software
100 примеров на С++	algorithms
100 примеров на С++	software
Python. Карманный справочник	software
Python. Карманный справочник	algorithms
Изучаем Python	algorithms
Изучаем Python	software
Изучаем Python	webdev
JavaScript	algorithms
JavaScript	software
JavaScript	webdev
HTML 5, CSS 3 и Web 2.0	algorithms
HTML 5, CSS 3 и Web 2.0	webdev
HTML 5, CSS 3 и Web 2.0	software
Новая большая книга CSS	algorithms
Новая большая книга CSS	webdev
SEO искусство раскрутки сайтов	webdev
HTML5 + CSS3	algorithms
HTML5 + CSS3	webdev
Изучаем React	webdev
HTML, CSS, SCRATCH, PYTHON	algorithms
HTML, CSS, SCRATCH, PYTHON	software
HTML, CSS, SCRATCH, PYTHON	webdev
Изучаем работу с jQuery	algorithms
Изучаем работу с jQuery	software
Изучаем работу с jQuery	webdev
Разгони свой сайт	webdev
PHP. Сборник рецептов	algorithms
PHP. Сборник рецептов	software
PHP. Сборник рецептов	webdev
Изучаем Ruby	algorithms
Изучаем Ruby	software
PHP5	algorithms
PHP5	software
PHP5	webdev
Front-end	algorithms
Front-end	software
Front-end	webdev
Веб-разработка	algorithms
Веб-разработка	software
Веб-разработка	webdev
JavaScript для детей	algorithms
JavaScript для детей	software
JavaScript для детей	webdev
\.


--
-- Data for Name: regions_description; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regions_description (regions_dev, regions_description) FROM stdin;
algorithms	Книги о алгоритмах и какие из них применяются в программировании
software	Книги о разработке ПО и его использования
webdev	Веб программирование и все что с ним связано
bigdata	Наука о больших данных
datascience	Наука, изучающая проблемы анализа, обработку и представление данных в цифровой форме
operatingsystem	Книги о операционных системах
hackers	Книги о программном обеспеченье и методов хакеров
network	Книги о сетя
gamedev	Книги о игровой индустрии и разработке игр
fordummies	Книги для чайников
develop	Книги для разработчиков приложений
\.


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book);


--
-- Name: regions_description regions_description_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions_description
    ADD CONSTRAINT regions_description_pkey PRIMARY KEY (regions_dev);


--
-- Name: books stop; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER stop BEFORE INSERT OR UPDATE ON public.books FOR EACH ROW EXECUTE FUNCTION public.trigger_creature();


--
-- Name: author author_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_book_fkey FOREIGN KEY (book) REFERENCES public.books(book);


--
-- Name: book_rating book_rating_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_rating
    ADD CONSTRAINT book_rating_book_fkey FOREIGN KEY (book) REFERENCES public.books(book);


--
-- Name: description description_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_book_fkey FOREIGN KEY (book) REFERENCES public.books(book);


--
-- Name: regions regions_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_book_fkey FOREIGN KEY (book) REFERENCES public.books(book);


--
-- PostgreSQL database dump complete
--

