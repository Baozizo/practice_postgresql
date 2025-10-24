--
-- PostgreSQL database dump
--

\restrict iHMV3gDOm1pzHMr3hhhUHtpMjmDw7iSh3VFkxHDSMdxEmvdma6YxioQNoX6WBzB

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-24 13:36:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 16397)
-- Name: culture_data; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA culture_data;


ALTER SCHEMA culture_data OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16416)
-- Name: culture_palaces_clubs; Type: TABLE; Schema: culture_data; Owner: postgres
--

CREATE TABLE culture_data.culture_palaces_clubs (
    "data.general.name" character varying(128),
    "data.general.locale.name" character varying(50),
    "data.general.locale.timezone" character varying(50),
    "data.general.address.street" character varying(64),
    "data.general.address.comment" character varying(512),
    "data.general.address.fullAddress" character varying(128),
    "data.general.address.mapPosition" jsonb NOT NULL,
    "data.general.description" text,
    "data.general.contacts.website" character varying(256),
    "data.general.contacts.email" character varying(50),
    "data.general.contacts.phones" jsonb,
    "data.general.image" jsonb,
    "data.general.gallery" jsonb,
    "data.general.category.type" character varying(50),
    "data.general.category.name" character varying(50),
    "data.general.organization.name" character varying(256),
    "data.general.organization.locale.name" character varying(50),
    "data.general.organization.locale.timezone" character varying(50),
    "data.general.organization.address.street" character varying(128),
    "data.general.organization.address.comment" character varying(50),
    "data.general.organization.address.fullAddress" character varying(128),
    "data.general.organization.address.mapPosition" character varying(50),
    "data.general.organization.inn" bigint,
    "data.general.organization.type" character varying(50),
    "data.general.organization.subordination.name" character varying(50),
    "data.general.organization.subordination.timezone" character varying(50),
    "data.general.organization.socialGroups" character varying(32767),
    "data.general.organization.id" integer,
    "data.general.tags" jsonb,
    "data.general.videoHostings" character varying(4096),
    "data.general.workingSchedule.0" jsonb,
    "data.general.workingSchedule.1" jsonb,
    "data.general.workingSchedule.2" jsonb,
    "data.general.workingSchedule.3" jsonb,
    "data.general.workingSchedule.4" jsonb,
    "data.general.workingSchedule.5" jsonb,
    "data.general.workingSchedule.6" jsonb,
    "data.general.extraFields.artType" character varying(50),
    "data.general.extraFields.audienceType" character varying(50),
    "data.general.extraFields.language" character varying(50),
    "data.general.extraFields.professionalLevel" character varying(50),
    "data.general.extraFields.virtualTour" character varying(50),
    "data.general.extraFields.types" character varying(50),
    "data.general.seances" character varying(50),
    "data.general.id" integer,
    "data.general.externalInfo" character varying(1024),
    "data.general.externalIds.eipskId" integer,
    "data.general.externalIds.culturarf" integer,
    "data.general.externalIds.goscatalogId" character varying(50),
    "data.general.externalIds.statistic" character varying(50),
    "data.info.createDate" character varying(50),
    "data.info.updateDate" character varying(50),
    geom culture_data.geometry(Point,4326)
);


ALTER TABLE culture_data.culture_palaces_clubs OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 29262)
-- Name: culture_palaces_clubs_json_id_seq; Type: SEQUENCE; Schema: culture_data; Owner: postgres
--

CREATE SEQUENCE culture_data.culture_palaces_clubs_json_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE culture_data.culture_palaces_clubs_json_id_seq OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 29261)
-- Name: data_general_id_seq; Type: SEQUENCE; Schema: culture_data; Owner: postgres
--

CREATE SEQUENCE culture_data.data_general_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE culture_data.data_general_id_seq OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 30410)
-- Name: m2m_culture_palaces_clubs_tags; Type: TABLE; Schema: culture_data; Owner: postgres
--

CREATE TABLE culture_data.m2m_culture_palaces_clubs_tags (
    id integer NOT NULL,
    culture_palace_id bigint,
    tag_id integer
);


ALTER TABLE culture_data.m2m_culture_palaces_clubs_tags OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 30409)
-- Name: m2m_culture_palaces_clubs_tags_id_seq; Type: SEQUENCE; Schema: culture_data; Owner: postgres
--

CREATE SEQUENCE culture_data.m2m_culture_palaces_clubs_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE culture_data.m2m_culture_palaces_clubs_tags_id_seq OWNER TO postgres;

--
-- TOC entry 5864 (class 0 OID 0)
-- Dependencies: 232
-- Name: m2m_culture_palaces_clubs_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: culture_data; Owner: postgres
--

ALTER SEQUENCE culture_data.m2m_culture_palaces_clubs_tags_id_seq OWNED BY culture_data.m2m_culture_palaces_clubs_tags.id;


--
-- TOC entry 224 (class 1259 OID 29267)
-- Name: seq_culture_palaces_clubs_id; Type: SEQUENCE; Schema: culture_data; Owner: postgres
--

CREATE SEQUENCE culture_data.seq_culture_palaces_clubs_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE culture_data.seq_culture_palaces_clubs_id OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 30399)
-- Name: tags; Type: TABLE; Schema: culture_data; Owner: postgres
--

CREATE TABLE culture_data.tags (
    id integer NOT NULL,
    tag_name character varying(255) NOT NULL
);


ALTER TABLE culture_data.tags OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 30398)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: culture_data; Owner: postgres
--

CREATE SEQUENCE culture_data.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE culture_data.tags_id_seq OWNER TO postgres;

--
-- TOC entry 5865 (class 0 OID 0)
-- Dependencies: 230
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: culture_data; Owner: postgres
--

ALTER SEQUENCE culture_data.tags_id_seq OWNED BY culture_data.tags.id;


--
-- TOC entry 5682 (class 2604 OID 30413)
-- Name: m2m_culture_palaces_clubs_tags id; Type: DEFAULT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.m2m_culture_palaces_clubs_tags ALTER COLUMN id SET DEFAULT nextval('culture_data.m2m_culture_palaces_clubs_tags_id_seq'::regclass);


--
-- TOC entry 5681 (class 2604 OID 30402)
-- Name: tags id; Type: DEFAULT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.tags ALTER COLUMN id SET DEFAULT nextval('culture_data.tags_id_seq'::regclass);


--
-- TOC entry 5851 (class 0 OID 16416)
-- Dependencies: 221
-- Data for Name: culture_palaces_clubs; Type: TABLE DATA; Schema: culture_data; Owner: postgres
--

COPY culture_data.culture_palaces_clubs ("data.general.name", "data.general.locale.name", "data.general.locale.timezone", "data.general.address.street", "data.general.address.comment", "data.general.address.fullAddress", "data.general.address.mapPosition", "data.general.description", "data.general.contacts.website", "data.general.contacts.email", "data.general.contacts.phones", "data.general.image", "data.general.gallery", "data.general.category.type", "data.general.category.name", "data.general.organization.name", "data.general.organization.locale.name", "data.general.organization.locale.timezone", "data.general.organization.address.street", "data.general.organization.address.comment", "data.general.organization.address.fullAddress", "data.general.organization.address.mapPosition", "data.general.organization.inn", "data.general.organization.type", "data.general.organization.subordination.name", "data.general.organization.subordination.timezone", "data.general.organization.socialGroups", "data.general.organization.id", "data.general.tags", "data.general.videoHostings", "data.general.workingSchedule.0", "data.general.workingSchedule.1", "data.general.workingSchedule.2", "data.general.workingSchedule.3", "data.general.workingSchedule.4", "data.general.workingSchedule.5", "data.general.workingSchedule.6", "data.general.extraFields.artType", "data.general.extraFields.audienceType", "data.general.extraFields.language", "data.general.extraFields.professionalLevel", "data.general.extraFields.virtualTour", "data.general.extraFields.types", "data.general.seances", "data.general.id", "data.general.externalInfo", "data.general.externalIds.eipskId", "data.general.externalIds.culturarf", "data.general.externalIds.goscatalogId", "data.general.externalIds.statistic", "data.info.createDate", "data.info.updateDate", geom) FROM stdin;
Талицкий сельский дом культуры	Кирилловский район	Europe/Moscow	ул Чучина,д 12	\N	обл Вологодская,р-н Кирилловский,с Талицы,ул Чучина,д 12	{"type": "Point", "coordinates": [38.803843, 59.645873]}	<p>Здесь работают творческие люди. Проводятся всевозможные мероприятия: концерты, викторины, конкурсные программы, театрализованные представления, спортивные игры. Работают кружки народно-прикладного творчества, клубы по интересам, кружки художественной самодеятельности: сольное пение, танцевальный, театральный, художественное слово. Ведется работа с детьми, молодежью и жителями пожилого возраста. <br /></p><p>В Доме культуры ведут деятельность 21 клубное формироване различных жанровых направлений. Кружки посещают не только взрослые, но и дети. Театральный кружок – активный участник и постоянный призер районных фестивалей и конкурсов. Вокальные формирования принимают участие и в межрайонных, и в областных фестивалях и конкурсах. <br /></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/b43bee73c5236864765bd745a1297b91.jpg", "title": "тАЛИЦЫ ЗАЛ.jpg"}	\N	\N	Дворцы культуры и клубы	АУК КМР «ЦКР»	Кирилловский район	Europe/Moscow	ул Гагарина,д 98	\N	обл Вологодская,р-н Кирилловский,г Кириллов,ул Гагарина,д 98	\N	3511006791	mincult	Кирилловский район	Europe/Moscow	[{"network":"vk","name":"Центр культурного развития","networkId":"17831631","updateDate":"2018-05-29T07:22:36Z","createDate":"2018-05-29T07:22:36Z","accountId":21387,"postingGroupId":18946}]	20401	[{"id": 28, "name": "Литература", "sysName": "literatura"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78226	[{"url":"https://www.culture.ru/institutes/91108/talickii-selskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-27T09:15:52Z	2023-03-28T08:46:18Z	0101000020E61000002C0FD253E4664340492F6AF7ABD24D40
Центр развития культуры «Тотьма»	Тотемский район	Europe/Moscow	ул Вологодская,д 11	\N	обл Вологодская,р-н Тотемский,д Варницы,ул Вологодская,д 11	{"type": "Point", "coordinates": [42.755945, 59.988041]}	<p>Центр развития культуры «Тотьма» – это центр культурной жизни тотьмичей, источник приятных эмоций и хорошего настроения. </p><p>В июле 2018 года ЦРК распахнул свои двери для работников и посетителей. В своей деятельности учреждение опирается на следующие основные направления: патриотическое воспитание граждан, сохранение воспитательного потенциала семьи, развитие спорта, а также сохранение и возрождение народных традиций, обрядов, праздников и обычаев. Здесь ведется работа по организации досуга для всех возрастных категорий населения.</p><p> Творческие коллективы ЦРК «Тотьма» принимают активное участие в организации и проведении всех мероприятий округа. Клубы по интересам посещают желающие научиться петь, танцевать, играть на гитаре, а также любители театрального искусства и декоративно-прикладного творчества. И создает все это дружная работоспособная команда профессионалов, людей увлеченных и любящих свою профессию. <br /></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/1257879faa26cb268b7dd3d43a1bfa76.jpg", "title": "jQQTf-c2KQQ.jpg"}	[{"url": "https://all.culture.ru/uploads/cdf9fa8cfca0d60d8f9404bd8d7aea8a.jpg", "title": "JL3GJkvKIdI.jpg"}, {"url": "https://all.culture.ru/uploads/bc3fef95f320fd6e9c7d794e52783922.jpg", "title": "CE3oWklt4y0.jpg"}]	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Центр развития культуры «Тотьма»	Тотемский район	Europe/Moscow	Вологодская,11	\N	обл Вологодская,р-н Тотемский,д Варницы,Вологодская,11	\N	3518003616	mincult	Тотемский район	Europe/Moscow	\N	25908	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "21:00:00", "from": "08:00:00"}	{"to": "21:00:00", "from": "08:00:00"}	{"to": "21:00:00", "from": "08:00:00"}	{"to": "21:00:00", "from": "08:00:00"}	{"to": "21:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	78222	[{"url":"https://www.culture.ru/institutes/91114/centr-razvitiya-kultury-totma","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/totma/dvorcy-kultury-i-kluby/98859pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-27T06:59:09Z	2023-04-06T09:54:51Z	0101000020E6100000904946CEC2604540B70DA32078FE4D40
Усть-Алексеевский клуб	Великоустюгский район	Europe/Moscow	ул Меркурьева,д 47	\N	обл Вологодская,р-н Великоустюгский,с Усть-Алексеево,ул Меркурьева,д 47	{"type": "Point", "coordinates": [46.495847, 60.462864]}	<p><span>История основания Усть-Алексеевского клуба уводит в далекий 1926 год. В то время на территории села<span> </span>находилась изба-читальня. Здесь проводились лекции, беседы, спектакли, вечеринки, посиделки, массовые собрания, работали кружки. </span><span></span></p> <p><span> Главным в работе учреждения является создание условий для организации досуга и отдыха людей, предоставление населению разнообразных услуг социально-культурного и развлекательного характера. </span><span>Работают 15 клубных формирований, которые посещают 210 человек.</span></p> <p><span>Для людей пожилого возраста ведет работу <span> </span>развлекательный клуб «Посиделки» и познавательный клуб «Горенка», организована<span> </span>группа здоровья<span> </span>«Движение» и вокальный ансамбль «Русская песня». Действует</span><span> семейный клуб «Счастливы вместе». <span></span></span><span>Для детей создан познавательный клуб «Калейдоскоп» и клуб «Мастерская». <span> </span>Для молодежи работает досуговый клуб «Юность» и фольклорный клуб «Околица». <span> О</span></span><span></span><span>рганизованы 3 вокальных и 2 театральных коллектива, клуб любителей русской песни.</span></p>	http://кдцву.рф	mukuadk@mail.ru	[{"value": "78173868187", "comment": ""}, {"value": "79211426207", "comment": ""}]	{"url": "https://all.culture.ru/uploads/216508af0b96af2ec673e4f816481c64.jpg", "title": "6GRWytFgoEE.jpg"}	[{"url": "https://all.culture.ru/uploads/d9ae904ef5aa062ad86cc4262dee611d.jpg", "title": "3Q1_kO5m9xg.jpg"}, {"url": "https://all.culture.ru/uploads/7fdeb51eee732aa340ba56c96e850aff.jpg", "title": "_TMVGrMotYI.jpg"}, {"url": "https://all.culture.ru/uploads/ba1acc775bc603e507eac0452b7169b2.jpg", "title": "Avnh_HMWiFg.jpg"}, {"url": "https://all.culture.ru/uploads/c1a5a751aa18a0e54ba2a3ff6697dfcd.jpg", "title": "Ial_BPn1Jd4.jpg"}, {"url": "https://all.culture.ru/uploads/4d29163467a740ae675fd17dcc423473.jpg", "title": "l_8w0nUOtco.jpg"}, {"url": "https://all.culture.ru/uploads/d95ae2f8c8febf71c46d038f07fef6b9.jpg", "title": "QkZeH3z6ass.jpg"}, {"url": "https://all.culture.ru/uploads/73f03e3f92f33891f4739cedd86300be.jpg", "title": "nWpV-t46rts.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	{"to": "17:00:00", "from": "09:00:00"}	{"to": "17:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "17:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "22:00:00", "from": "20:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78271	[{"url":"https://www.culture.ru/institutes/91128/ust-alekseevskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/99094pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-28T08:31:41Z	2023-05-25T07:35:05Z	0101000020E6100000EC681CEA773F4740753FA7203F3B4E40
Аристовский клуб	Великоустюгский район	Europe/Moscow	ул Виноградова,д 8	\N	обл Вологодская,р-н Великоустюгский,д Аристово,ул Виноградова,д 8	{"type": "Point", "coordinates": [46.401515, 60.76726]}	<p>Клуб был построен в 1968 году в с/с Шемогодское. Поселение в те времена было более 2 тысяч человек, дом культуры для многих был вторым домом. Проводились мероприятия по старым обычаям, традициям, проходили масленичные, рождественские гуляния, колядки. Люди старшего поколения проводили различные встречи, танцы, кинопоказам вечерами уделяли особое внимание. Со временем приходила молодежь стали проводить еще больше мероприятий: КВН, танцы различных возрастных групп, песенные конкурсы, кружки.</p><p>Сейчас свою работу продолжают клубные формирования и проводятся разные мероприятия для всех возрастов. На сегодняшний день в клубе работают 4 клуба по интересам, которые посещают 37 участников (от 7 лет и старше). Жители активно приходят в клуб, где проходят встречи, концерты, праздники, а также занятия в клубных объединениях.</p><p></p><p> </p>	http://кдцву.рф	aristovodk@mail.ru	[{"value": "78173865432", "comment": "Заведущий Соболева Людмила Владимировна"}, {"value": "78173865837", "comment": "Менеджер Жирохова Наталья Викторовна"}]	{"url": "https://all.culture.ru/uploads/911d28dada3cacafa901d7ae74145271.jpg", "title": "raBRol-4VUw.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 325, "name": "Творческий коллектив", "sysName": "tvorcheskiy-kollektiv"}, {"id": 329, "name": "Ремесла и художественные промыслы", "sysName": "remesla-i-hudozhestvennye-promysly"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-201598362&id=456239035&hash=c49acbe42fc94671&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195948369&id=456239117&hash=0b63882e8e61c7d9&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195948369&id=456239115&hash=68e32ef123fbd753&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-117993849&id=456240263&hash=47bacaba80983aab&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195948369&id=456239136&hash=ea0f44275d52ff3f&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195948369&id=456239140&hash=f7f6b3348748f91d&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-152985925&id=456240646&hash=23ad914f4cd52bc0&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"}]	\N	{"to": "18:00:00", "from": "12:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	\N	\N	\N	\N	\N	\N	\N	77911	[{"url":"https://www.culture.ru/institutes/90793/aristovskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/101180pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-20T12:39:36Z	2023-05-25T07:39:50Z	0101000020E61000003EEDF0D764334740B5C35F9335624E40
Анохинский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Центральная,д 42	\N	обл Вологодская,р-н Грязовецкий,д Анохино,ул Центральная,д 42	{"type": "Point", "coordinates": [40.790673, 58.795178]}	<p><span>Здание было построено в 1991 году и с тех пор ежедневно притягивает к себе местное население. Для сельчан созданы все условия для приятного времяпрепровождения: для досуговой деятельности есть два больших зала, отличающихся комфортом.</span><br /></p><p>В филиале осуществляют свою деятельность кружки для посетителей всех возрастов. На сегодняшний день здесь ведут работу 13 клубных формирований различной жанровой направленности, в которых занимаются 160 человек. Вокал, декоративно-прикладное творчество, хореография – самые востребованные среди местных жителей направления.</p><p>Все коллективы Анохинского сельского дома культуры успешно и результативно принимают участие во многих фестивалях и конкурсах.</p>	\N	balashova.i2017@yandex.ru	[{"value": "78175549212"}]	{"url": "https://all.culture.ru/uploads/8103193a4a6909acc73fd760ae3f55ab.jpg", "title": "D_V4T9snV2Q (1).jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73709	[{"url":"https://www.culture.ru/institutes/86791/anokhinskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/89002pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-12-02T12:55:32Z	2023-07-31T13:45:26Z	0101000020E6100000446ADAC534654440D53F8864C8654D40
Ведерковский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Центральная,д 9	\N	обл Вологодская,р-н Грязовецкий,д Бушуиха,ул Центральная,д 9	{"type": "Point", "coordinates": [40.38892, 59.081738]}	<p>Ведерковский сельский дом культуры был основан в 1979 году и по сей день является центром культурной жизни деревни. Здесь занимаются все возрастные группы, есть и хореографическое отделение, и класс вокала, и развивающие занятия для самых юных. </p><p>В 2016 году на базе Ведерковского сельского дома культуры был образован вокальный ансамбль «Серпантин» – участник районных и региональных конкурсов и фестивалей. Самые юные посетители занимаются в коллективах «Карамельки» и «Непоседы», для подростков ведет деятельность коллектив «Ассорти». Хорошие результаты показывает и вокальный коллектив «Русская душа». </p>	\N	shigina.nataliya@yandex.ru	[{"value": "79814322977"}]	{"url": "https://all.culture.ru/uploads/54b26dcfff8790334ded6b63070c622b.jpg", "title": "1.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73688	[{"url":"https://www.culture.ru/institutes/86768/vederkovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/89259pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-12-02T09:57:42Z	2023-08-07T13:49:10Z	0101000020E610000052616C21C8314440946B0A64768A4D40
Сосновский сельский клуб	Кадуйский район	Europe/Moscow	ул Центральная,зд 5а	\N	обл Вологодская,р-н Кадуйский,п Сосновка,ул Центральная,зд 5а	{"type": "Point", "coordinates": [36.497867, 59.582464]}	<p><span>Здание Сосновского сельского клуба построено в 1955 году. До 2016 года клуб был самостоятельным учреждением, юридическим лицом. Сейчас это филиал Кадуйского центра культурного развития. </span></p> <p><span>Клуб является центром культурной жизни села и его окрестностей. На базе учреждения создан замечательный вокальный ансамбль «Конфетки-бараночки», который по праву является украшением культурной жизни поселка</span><span>. Также работает клуб «Белая королева» для любителей шахмат, клуб «Охота на рыбалку» для рыболовов и охотников, музыкально-инструментальная студия, детское объединение «Детсовет» и спортивная секция «Не отстаем от Шараповой».</span></p>	\N	\N	[]	{"url": "https://all.culture.ru/uploads/b778a641eaa67d146d3f87991b27d40e.jpg", "title": "сосновка дк.jpg"}	[{"url": "https://all.culture.ru/uploads/f6891ed0fddd237226ebb14359d740e6.jpg", "title": "сосновка дк 2.jpg"}]	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	83329	[{"url":"https://www.culture.ru/institutes/96276/sosnovskii-selskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110840pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2024-02-26T08:52:25Z	2024-02-27T05:17:25Z	0101000020E6100000FA60191BBA3F4240768C2B2E8ECA4D40
Хохловский дом культуры	Кадуйский район	Europe/Moscow	ул Торфяников,д 12	\N	обл Вологодская,р-н Кадуйский,рп Хохлово,ул Торфяников,д 12	{"type": "Point", "coordinates": [37.398078, 59.146555]}	<p>Хохловский дом культуры был открыт в 1988 году. В нем работают 32 клубных формирования, в них занимается 741 человек. Ежегодно коллективом Хохловского дома культуры проводится более 3 000 мероприятий, которые посещает около 40 000 человек. </p><p>Коллективы художественной самодеятельности – постоянные участники областных и районных мероприятий, победители всероссийских, региональных и областных конкурсов. Народный самодеятельный коллектив ансамбль «Тальянка», являющийся лауреатом различных конкурсов, известен и за пределами региона. </p><p>В здании размещены 3 экспозиции Центра народной традиционной культуры и ремесел: «Улома железная», коллекции музыкальных инструментов и вышивки. Они пользуются популярностью у жителей и гостей поселка Хохлово и Кадуйского округа. </p>	\N	dk.hohlovo@mail.ru	[]	{"url": "https://all.culture.ru/uploads/48a27f6f9cb4cd77114becce7a8b35a9.jpg", "title": "7f36ed9f03f201bf2c889c0984547fff.jpg"}	[{"url": "https://all.culture.ru/uploads/cb94afd3a204ee667ce304ea5420f757.jpg", "title": "2a1b0e5dcee20a1bf8cba6931fe45f9e.jpg"}]	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 25, "name": "Классическое искусство", "sysName": "klassicheskoe-iskusstvo"}, {"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:05:00", "from": "10:00:00"}	{"to": "18:05:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "22:00:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	83328	[{"url":"https://www.culture.ru/institutes/96275/khokhlovskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110839pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2024-02-26T08:49:51Z	2024-02-27T05:14:31Z	0101000020E6100000E8A04B38F4B242405B087250C2924D40
Биряковский дом культуры	Сокольский район	Europe/Moscow	ул Н.Рубцова,д 6	\N	обл Вологодская,р-н Сокольский,с Биряково,ул Н.Рубцова,д 6	{"type": "Point", "coordinates": [41.48703625039993, 59.58304798606954]}	<p>Биряковский дом культуры начал работу в 2003 году, а в 2018 году вошел в состав Центра народной культуры и художественных ремесел «Сокольский». </p><p>Приоритетными направлениями деятельности являются сохранение традиционной народной культуры на основе местного фольклорного материала; работа с пожилыми людьми, ветеранами труда и Великой Отечественной войны, тружениками тыла; работа с детьми, молодыми семьями.</p><p> Проводятся календарные праздники, выпускные, вечера отдыха, концертные программы, торжественные и юбилейные вечера, ярмарки. На базе учреждения работают 14 клубных формирований, из них 1 – на платной основе. Клубные формирования посещают 250 участников. </p> 	\N	kultura.biryakovo@mail.ru	[{"value": "78173346150"}]	{"url": "https://all.culture.ru/uploads/dd947d791e308063399a318cce2caab1.jpg", "title": "биряк.jpg"}	\N	\N	Дворцы культуры и клубы	БУК СМО ЦНКИХР «Сокольский»	Сокольский район	Europe/Moscow	ул Советская,д 16	\N	обл Вологодская,р-н Сокольский,г Сокол,ул Советская,д 16	\N	3527011797	mincult	Сокольский район	Europe/Moscow	\N	15137	\N	\N	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77652	[{"url":"https://www.culture.ru/institutes/90508/biryakovskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/sokol/dvorcy-kultury-i-kluby/96871pl","serviceName":"Афиша7"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=e4a6bf75-bb1b-4bb5-b429-0e38f6301efb&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-03-13T08:44:45Z	2024-09-05T07:36:22Z	0101000020E610000093B72F3457BE44406B150051A1CA4D40
Юровский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Центральная,д 1	\N	обл Вологодская,р-н Грязовецкий,д Юрово,ул Центральная,д 1	{"type": "Point", "coordinates": [39.986151, 58.969871]}	<p>Юровский сельский Дом культуры является одним из филиалов бюджетного учреждения культуры Грязовецкого муниципального района Вологодской области «Культурно-досуговый центр» , территориально находится в Юровском муниципальном образовании.</p><p>Здание филиала построено в 1972 году.</p><p>Работа Юровского сельского Дома культуры делится на 7 направлений: хореография, вокал, экология, изобразительное искусство, спортивно-оздоровительное, исследовательно-познавательное и досуговое.</p><p>В филиале регулярно проводятся концерты, фестивали и конкурсы, участие в которых принимают не только жители Грязовецкого района, но и соседи из других областей.</p><p>Изменения в филиале происходят каждый год: в 2014 году был произведен ремонт кровли, в 2019 по нацпроекту «Культура» был произведен капитальный ремонт.</p><p>Ежегодно во благо посетителей укрепляется материально-техническая база филиала за счет привлечения средств местного и регионального бюджета.</p>	\N	\N	[{"value": "79005332080"}]	{"url": "https://all.culture.ru/uploads/a227a9873dc79038b3c3b5c1cc24b14c.jpg", "title": "ovCQHy3xuFY.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального района Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2021-06-24T12:12:36Z","createDate":"2021-06-24T12:12:36Z","accountId":38444,"postingGroupId":34916}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	72964	[{"url":"https://www.culture.ru/institutes/86075/yurovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/87010pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-18T12:27:53Z	2022-11-28T07:45:14Z	0101000020E610000077F52A323AFE43405E2BA1BB247C4D40
Дом традиций и ремесел «Морошка»	Тотьма	Europe/Moscow	ул Володарского,д 7	\N	обл Вологодская,р-н Тотемский,г Тотьма,ул Володарского,д 7	{"type": "Point", "coordinates": [42.764605, 59.970754]}	<p>Дом традиций и ремесел «Морошка» открылся в августе 2021 года в рамках реализации проекта «Соль – в традициях!», поддержанного Фондом президентских грантов. Здесь проходят интерактивные и познавательные программы по народной культуре, традиционные праздники народного календаря, ремесленные, гастрономические мастер-классы, творческие встречи и др. </p><p>На базе Дома традиций и ремесел «Морошка» занимаются вокальные коллективы, детский фольклорный клуб «Потешка», работает народный самодеятельный коллектив декоративно-прикладного и изобразительного искусства клуб «Тотьма», клуб вологодского кружевоплетения «Плетея». Изюминкой Дома традиций является лавка ремесленников, где представлены изделия ручной работы более 70 мастеров и мастериц Тотемского округа.<br /></p><p>Дом традиций и ремесел «Морошка» – организатор ежегодного межокружного фестиваля народного творчества «Тотемский лапоть», участник городских и окружных мероприятий. Относится к объектам туристского показа. </p>	\N	\N	[]	{"url": "https://all.culture.ru/uploads/f677b3b840aa22b357ac48957518fb00.jpg", "title": "500HcgBQ_sc.jpg"}	[{"url": "https://all.culture.ru/uploads/ca9173da575b0b86beeebc8bfbe727fe.jpg", "title": "5iU2B8CAT8c.jpg"}, {"url": "https://all.culture.ru/uploads/5c242441f59d96171c4250f32054d58d.jpg", "title": "OfM-pKEJQ.jpg"}]	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Центр развития культуры «Тотьма»	Тотемский район	Europe/Moscow	Вологодская,11	\N	обл Вологодская,р-н Тотемский,д Варницы,Вологодская,11	\N	3518003616	mincult	Тотемский район	Europe/Moscow	\N	25908	\N	\N	\N	{"to": "20:00:00", "from": "08:30:00"}	{"to": "20:00:00", "from": "08:30:00"}	{"to": "20:00:00", "from": "08:30:00"}	{"to": "20:00:00", "from": "08:30:00"}	{"to": "17:00:00", "from": "10:00:00"}	{"to": "17:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	79999	\N	\N	\N	\N	\N	2023-06-21T08:54:17Z	2023-06-22T08:25:48Z	0101000020E6100000D6AD9E93DE614540083BC5AA41FC4D40
Чучковский дом культуры	Сокольский район	Europe/Moscow	ул Центральная,д 3а	\N	обл Вологодская,р-н Сокольский,д Чучково,ул Центральная,д 3а	{"type": "Point", "coordinates": [41.236435, 59.598761]}	<p style="text-align:justify"><span> </span></p><p style="text-align:justify"><span> </span></p><p>Чучковский Дом культуры начал свою работу в 1971 году, а с 2018 года он вошел в состав филиалов БУК СМО «Центр народной культуры и художественных ремесел «Сокольский». Сейчас он является местом комфортного досуга, общения и творческой самореализации жителей. Деятельность учреждения <span><span> </span></span>направлена на организацию культурно-массового досуга всех категорий населения, проживающих на территории сельского поселения Чучковское, и прочно связана с жизненным укладом сельских жителей и народными традициями села, бережно хранимыми и передаваемыми из поколения в поколение. В Доме культуры ведется не только культурно-досуговая работа, но и организуются выставки, конкурсы и экскурсии, проводятся беседы по искусству, праздничные вечера. В дружеской атмосфере проходят различные праздники и концертные программы. </p><p>На базе учреждения работают 14 клубных формирований, из них 1 на платной основе. Клубные формирования посещают 235 участников. Для каждой возрастной группы создана авторская программа обучения. Количество участников кружка постоянно увеличивается. </p> <p></p><p style="text-align:justify"><span></span></p>	\N	dk.huhkovo@yandex.ru	[{"value": "78817334512"}]	{"url": "https://all.culture.ru/uploads/70c55372f8283661b8430ff5142790a3.jpg", "title": "чуч.jpg"}	\N	\N	Дворцы культуры и клубы	БУК СМО ЦНКИХР «Сокольский»	Сокольский район	Europe/Moscow	ул Советская,д 16	\N	обл Вологодская,р-н Сокольский,г Сокол,ул Советская,д 16	\N	3527011797	mincult	Сокольский район	Europe/Moscow	\N	15137	\N	\N	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77650	[{"url":"https://www.culture.ru/institutes/90505/chuchkovskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-13T08:35:46Z	2023-03-22T08:59:55Z	0101000020E61000009C508880439E4440658F5033A4CC4D40
Дом культуры «Варницкий»	Тотемский район	Europe/Moscow	ул Воскресенская,д 7	\N	обл Вологодская,р-н Тотемский,д Варницы,ул Воскресенская,д 7	{"type": "Point", "coordinates": [42.750187, 59.985656]}	<p>В 1988 году было сдано эксплуатацию здание Дома культуры совхоза «Тотемский». В настоящее время это филиал ЦРК «Тотьма».<br /></p><p>ДК «Варницкий» – это самая большая сцена на территории Тотемского муниципального округа (216 мест). В здании филиала занимаются 35 клубных формирований, из них 13 – платные. Занятия посещает 441 житель деревни, встречи клубов на платной основе – 156 человек.</p><p>Ежегодно в филиале проводится фестиваль для старшего поколения «Родники российских деревень», фестиваль хореографического искусства «Хрустальный башмачок», тематические вечера отдыха, концерты, дискотеки для молодежи и др.</p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/eff112805a509b4ffa995ab87fe2e8cc.jpg", "title": "_EOPOjcWZ6Y.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Центр развития культуры «Тотьма»	Тотемский район	Europe/Moscow	Вологодская,11	\N	обл Вологодская,р-н Тотемский,д Варницы,Вологодская,11	\N	3518003616	mincult	Тотемский район	Europe/Moscow	\N	25908	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	78973	[{"url":"https://www.culture.ru/institutes/91823/dom-kultury-varnickii","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/totma/dvorcy-kultury-i-kluby/99445pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-12T18:05:16Z	2023-04-13T09:35:39Z	0101000020E61000003271AB2006604540978DCEF929FE4D40
Марденгский клуб	Великоустюгский район	Europe/Moscow	ул Школьная,д 8	проезд от Великого Устюга до деревни Благовещенье	обл Вологодская,р-н Великоустюгский,д Благовещенье,ул Школьная,д 8	{"type": "Point", "coordinates": [46.099465, 60.728613]}	<p><span> Марденгский дом культуры начал свою деятельность в 2000 году. Деятельность учреждения направлена на предоставление населению услуг просветительского, социокультурного и развлекательного характера; поддержку любительского художественного творчества; сохранение народной традиционной культуры; создание условий для развития и реализации потенциальных способностей личности.</span></p> <p><span> В настоящее время культурное обслуживание населения представлено двумя сферами деятельности: организация культурно-массовых мероприятий и организация работы клубных формирований.</span></p><p><span> <span>Ансамбли и солисты учреждения проводят 2–3 концерта в месяц как в зрительном здании, так и на открытом воздухе. </span></span></p> <p><span><span> </span>Функционируют 8 клубных формирований: декоративно-прикладной кружок «Умелые ручки»; спортивно-оздоровительный кружок «Фитнес»; кружки «Шахматы», «Гитара», «Вокал»; вокальные ансамбли «Сударушка» и «Надежда»; литературно-музыкальная гостиная «Творческие люди».</span><span> </span></p>	https://кдцву.рф	mard.dk@mail.ru	[{"value": "79211261977", "comment": "начальник Михаил Васильевич Кудряшов"}, {"value": "78173865837", "comment": "менеджер Наталья Викторовна Жирохова"}]	{"url": "https://all.culture.ru/uploads/573aa479b77b9b78724f3a6f2b8285ae.jpg", "title": "4tmaZ7G5CbQ.jpg"}	[{"url": "https://all.culture.ru/uploads/fb2e7c2dc63d5ac779c22008b0d34156.jpeg", "title": "dsc006263_auto_auto.jpg"}, {"url": "https://all.culture.ru/uploads/13c0d53eb61812fbf21ee1be140712a8.png", "title": "1_800_auto.png"}, {"url": "https://all.culture.ru/uploads/e529e2887386e68144b7a842ce52f52e.jpg", "title": "image201407150004_800_auto.jpg"}, {"url": "https://all.culture.ru/uploads/68c250add39cf63a10a0867cc2f4c8b3.jpeg", "title": "dsc00604_umen_sheno_auto_auto.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 28, "name": "Литература", "sysName": "literatura"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 325, "name": "Творческий коллектив", "sysName": "tvorcheskiy-kollektiv"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-187436350&id=456239091&hash=c1baccb6d20615d7&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-187436350&id=456239087&hash=56e9598106ac348f&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-187436350&id=456239084&hash=fa13006d2c7a7135&hd=1\\" width=\\"640\\" height=\\"360\\"></iframe>"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	78781	[{"url":"https://www.culture.ru/institutes/91653/mardengskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/99117pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-07T13:35:19Z	2023-04-10T06:42:40Z	0101000020E61000005F0CE544BB0C47406138D730435D4E40
Лукинский дом культуры	Чагодощенский район	Europe/Moscow	ул Мира,д 7	\N	обл Вологодская,р-н Чагодощенский,д Анишино,ул Мира,д 7	{"type": "Point", "coordinates": [35.31705904002335, 58.884974065512026]}	<p><span>Здание Лукинского дома культуры было открыто в 1974 году. Первым директором стала Лидия Моисеевна Голубева. За время существования Дома культуры произошло много изменений. В 2017 году он был присоединен к </span><span>Белокрестскому социально-культурному объединению. В 2020 году по программе «Сельский дом культуры» проведен капитальный ремонт.</span></p><p><span>На базе Дома культуры работают кружки по интересам: декоративно-прикладного направления – «Сделай сам», «Вязание на спицах», «Вязание крючком»; творческого направления – «Театральный», «Художественная самодеятельность»; физкультурно-оздоровительного направления – «Группа здоровья». А также действуют клубы по интересам: «Хозяюшка» и молодежный клуб «Мечта». Проводятся концерты, культурно-массовые и просветительские мероприятия для детей и взрослых.</span> </p>	\N	dk.lukinsky@yandex.ru	[{"value": "78174131225", "comment": ""}, {"value": "78174131225", "comment": ""}]	{"url": "https://all.culture.ru/uploads/03bf45db3f79e0cedee6309383af359c.jpg", "title": "IMG-20230410-WA0002.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Белокрестское СКО»	Чагодощенский район	Europe/Moscow	ул Кооперативная,д 23Б	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Кооперативная,д 23Б	\N	3522003619	mincult	Чагодощенский район	Europe/Moscow	\N	17335	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "18:40:00", "from": "15:00:00"}	{"to": "18:40:00", "from": "15:00:00"}	{"to": "18:40:00", "from": "15:00:00"}	{"to": "18:40:00", "from": "15:00:00"}	\N	{"to": "18:40:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	78773	[{"url":"https://www.culture.ru/institutes/91629/lukinskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-04-07T10:57:25Z	2023-04-10T06:13:59Z	0101000020E610000096E6FF6395A84140569786D446714D40
Покровский культурно-досуговый центр	Чагодощенский район	Europe/Moscow	ул Молодежная,зд 100б	\N	обл Вологодская,р-н Чагодощенский,с Покровское,ул Молодежная,зд 100б	{"type": "Point", "coordinates": [35.577183691787724, 58.95449691207478]}	<p><span>В 1994 году был создан Покровский культурно-досуговый центр. </span></p><p><span>Се</span><span>годня он является центром культурной жизни и общения для местных жителей. Это основная площадка для проведения организованного досуга, место встреч односельчан. Разнообразные конкурсы, концерты, массовые театрализованные праздники и представления, танцевальные вечера, народные гулянья – сегодня без них невозможно представить деятельность учреждения. </span><span></span><span>Работники культуры и члены творческих коллективов принимают участие в праздничных концертах, ярмарках, конкурсах и других мероприятиях, проводимых в районе, области и далеко за ее пределами.</span></p> <p><span>На базе КДЦ ведут работу хоровые, танцевальные, интеллектуальные клубные формирования:</span></p> <ul><li><span>музыкальный клуб;</span></li><li><span>молодежный клуб;</span></li><li><span>интеллектуальный клуб «Знатоки»;</span></li><li><span>клуб «Сударушки+»;</span></li><li><span>клуб семейных пар.</span></li></ul>	\N	pokrovska.bibliotekasmironova@yandex.ru	[{"value": "78174131225", "comment": ""}, {"value": "78174131225", "comment": ""}]	{"url": "https://all.culture.ru/uploads/2c8c272d72cb877cc563f3874bb9e1e4.jpg", "title": "1ea9f542-ace2-4289-bc18-b7f205f2603f.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Белокрестское СКО»	Чагодощенский район	Europe/Moscow	ул Кооперативная,д 23Б	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Кооперативная,д 23Б	\N	3522003619	mincult	Чагодощенский район	Europe/Moscow	\N	17335	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "18:40:00", "from": "15:00:00"}	{"to": "18:40:00", "from": "15:00:00"}	{"to": "18:40:00", "from": "15:00:00"}	{"to": "18:40:00", "from": "15:00:00"}	\N	{"to": "18:40:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	78770	[{"url":"https://www.culture.ru/institutes/91625/pokrovskii-kulturno-dosugovyi-centr","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-04-07T10:20:29Z	2023-04-13T07:25:13Z	0101000020E6100000A401BC27E1C9414041BF6EF42C7A4D40
Кузинский клуб	Великоустюгский район	Europe/Moscow	ул Лермонтова,д 12	в летний период – паром из г. Великий Устюг; в зимний период – по ледовой переправе, расположенной на 680-м км реки Северная Двина	обл Вологодская,р-н Великоустюгский,рп Кузино,ул Лермонтова,д 12	{"type": "Point", "coordinates": [46.372688, 60.732906]}	<p>В архивных фондах первое упоминание о Кузинском доме культуры относится к 20 ноября 1919 году. </p> <p>Дом культуры предоставляет широкий спектр услуг: концертные, конкурсные, развлекательные, игровые, познавательные программы, литературно-музыкальные, тематические и танцевальные вечера-встречи, детские и молодежные дискотеки, конкурсные выставки.</p> <p><span> <span></span><span></span></span><span></span></p> <p><span>На базе учреждения работают 9 клубных формирований:</span></p><ol><li><span>Для детей: танцевальный коллектив «Нежность», вокальный коллектив «Юность», танцевальный фитнес «Зумба», кружок декоративно-прикладного искусства «Очумелые ручки», кружок «Веселая карусель». </span></li><li><span>Для взрослых: ансамбль «Лейся, песня», клуб «Хозяюшки», «Кузинские девчата», вокальный коллектив «От души, с любовью». </span></li></ol><p><span>Возраст участников клубных формирований – от 8 до 75 лет, на бесплатной основе занимается 131 человек.</span></p><p><span></span><span>Коллективы художественной самодеятельности участвуют в</span><span> </span><span>районных и</span><span> </span><span>межрегиональных конкурсах, фестивалях и я</span><span>вляются победителями, лауреатами многих конкурсов.</span></p><p><span> Ежегодно проводятся праздники: День защитника Отечества, Международный женский день, День Победы, День защиты детей, День России, День поселка, День пожилого человека, День народного единства, День матери, новогодние праздники и многие другие.</span></p><p><span>Традиционным праздником стал день Иван Купалы «Костры купальской ночи»: в начале июля на берег реки приходят не только жители близлежащих населенных пунктов, но и туристы из других городов.</span></p>	http://кдцву.рф	dkkuzino@mail.ru	[{"value": "79535220483", "comment": "Директор Соколова Татьяна Анатольевна"}, {"value": "79814247579", "comment": "Художественный руководитель Маркова Елена Руслановна"}]	{"url": "https://all.culture.ru/uploads/fc0eda03eafd673b32387bbdeea3fad4.jpg", "title": "Вход для посетителей.jpg"}	[{"url": "https://all.culture.ru/uploads/39e64caa54b642b369b21954e41ccecd.jpg", "title": "nj9hcLS5ZEI.jpg"}, {"url": "https://all.culture.ru/uploads/cf31f6de40486252879bc73160333dfb.jpg", "title": "hDiFBmQEskM.jpg"}, {"url": "https://all.culture.ru/uploads/8eda53459846ba16b2b9319d91ee3a26.jpg", "title": "2.jpg"}, {"url": "https://all.culture.ru/uploads/79e0e57060b0cc98298403d2fa210c94.jpg", "title": "3.jpg"}, {"url": "https://all.culture.ru/uploads/ccfea7e161bdb131c4ed4f81fe224323.jpg", "title": "-Nn7HrbHbE.jpg"}, {"url": "https://all.culture.ru/uploads/b9ec202e1807ee9b5b7184d8835b09a6.jpg", "title": "CbZ-DZMC3og.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "16:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "12:00:00"}	\N	\N	\N	\N	\N	\N	\N	78764	[{"url":"https://www.culture.ru/institutes/91605/kuzinskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-04-07T08:25:11Z	2023-04-10T05:41:23Z	0101000020E61000004ACE893DB42F4740668522DDCF5D4E40
Белокрестский дом культуры	Чагодощенский район	Europe/Moscow	ул Луговая,д 9	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Луговая,д 9	{"type": "Point", "coordinates": [35.24678890324826, 59.079291918750506]}	<p><span>Помещения под Белокрестский дом культуры были выделены в 2019 г. </span></p><p><span>Сегодня <span> </span>Дом культуры является центром культурной жизни и общения для местных жителей. Это основная площадка для проведения организованного досуга, место встреч односельчан. Здесь можно интересно и увлекательно провести время всей семьей и воплотить в жизнь творческие задумки. Здесь проводятся разнообразные мероприятия – сегодня без них невозможно представить деятельность учреждения. </span><span>Работники культуры и члены творческих коллективов принимают участие в праздничных концертах, ярмарках, конкурсах и других мероприятиях, проводимых в районе и области.</span></p> <p><span>На базе Дома культуры действуют различные клубные формирования, среди них особенно известны:</span></p> <ol><li><span>Клуб «Селяночка».</span></li><li><span>Клуб «Почемучки».</span></li><li><span>Экологический клуб «Лесовичок».</span></li><li><span>Хоровой коллектив<span> </span>«Селяночка».</span></li><li><span>Танцевальный коллектив «Карабаночки».</span></li></ol>	\N	mubk-skobk@yandex.ru	[{"value": "78174131225"}, {"value": "78174131225"}]	{"url": "https://all.culture.ru/uploads/eee8be4878e1b9bc54b5019a5f4d3db8.jpg", "title": "b647ed00-3b6d-4bdf-9975-2d4d9ae0ca94.jpg"}	[{"url": "https://all.culture.ru/uploads/6d1d30e140b7c446f2a6f2d88005e294.jpg", "title": "FJ5zInoiIxE.jpg"}, {"url": "https://all.culture.ru/uploads/419a967e44a0a3b1815b4854806da869.jpg", "title": "8569eaff-47a1-4ce8-a139-cfedafd02f6e.jpg"}]	\N	Дворцы культуры и клубы	МБУ «Белокрестское СКО»	Чагодощенский район	Europe/Moscow	ул Кооперативная,д 23Б	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Кооперативная,д 23Б	\N	3522003619	mincult	Чагодощенский район	Europe/Moscow	\N	17335	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "17:40:00", "from": "14:00:00"}	{"to": "17:40:00", "from": "14:00:00"}	{"to": "17:40:00", "from": "14:00:00"}	{"to": "17:40:00", "from": "14:00:00"}	\N	{"to": "17:40:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	78726	[{"url":"https://www.culture.ru/institutes/91594/belokrestskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/chagoda/dvorcy-kultury-i-kluby/98909pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-06T10:38:11Z	2023-04-06T14:04:29Z	0101000020E6100000C63B5EC7969F41406DEFD23C268A4D40
Мегринский дом культуры	Чагодощенский район	Europe/Moscow	ул Северная,д 6	\N	обл Вологодская,р-н Чагодощенский,д Мегрино,ул Северная,д 6	{"type": "Point", "coordinates": [35.588893239425644, 59.147417969022776]}	<p><span>Здание Дома культуры было построено и введено в эксплуатацию в 1974 году.</span></p> <p><span> Дом культуры – центр общественной и культурной жизни людей в селе, место общения и развития творческих способностей земляков.</span><span><span></span></span></p> <p><span>Ведется р</span><span>абота с детьми и подростками, </span>с населением среднего, старшего и пожилого возраста, а также по таким направлениям, как:</p><ul><li> организация досуговой деятельности молодежи;</li><li><span>организация семейного досуга;</span><span></span></li><li><span>возрождение и сохранение народной культуры;</span></li><li><span>духовно-нравственное и патриотическое воспитание населения.</span></li></ul> <p><span>Работники культуры и коллективы художественной самодеятельности активно принимают участие в праздничных концертах, ярмарках, конкурсах, различных мероприятиях, проводимых в районе и области.</span></p> <p><span>На базе Дома культуры действуют такие клубные формирования, как:</span></p> <ol><li><span>Женский хор.</span></li><li><span>Детский вокальный кружок<span> </span>«ДоМиСолька».</span></li><li><span>Танцевальный коллектив «Вдохновение».</span></li><li><span>Интеллектуальный клуб «Эрудит».</span></li><li><span>Ветеранский клуб «Берегиня».</span></li><li><span>Клуб выходного дня.</span></li><li><span>Изостудия.</span></li></ol>	\N	megrinodk@mail.ru	[{"value": "78174131225", "comment": ""}, {"value": "78174131225", "comment": ""}]	{"url": "https://all.culture.ru/uploads/4bc4f079eda8627ead427fe212dc77c8.jpg", "title": "20211029_092431.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Белокрестское СКО»	Чагодощенский район	Europe/Moscow	ул Кооперативная,д 23Б	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Кооперативная,д 23Б	\N	3522003619	mincult	Чагодощенский район	Europe/Moscow	\N	17335	[{"id": 26, "name": "Современное искусство", "sysName": "sovremennoe-iskusstvo"}, {"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	\N	{"to": "21:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	78723	[{"url":"https://www.culture.ru/institutes/91591/megrinskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/chagoda/dvorcy-kultury-i-kluby/98908pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-06T09:49:16Z	2023-04-06T13:13:31Z	0101000020E610000096158ADA60CB4140D5E58D97DE924D40
Перьевский клуб	Вологодский район	Europe/Moscow	ул Пошехонская,д 1	\N	обл Вологодская,р-н Вологодский,п Перьево,ул Пошехонская,д 1	{"type": "Point", "coordinates": [39.777365, 59.042436]}	<p>Клуб начал свою деятельность в 1996 году. С 2011 года являлся филиалом МБУК «Спасский дом культуры», с 1 октября 2020 года стал структурным подразделением Спасского дома культуры – филиала МБУК ВМР «Центр культурного развития». Площадь здания – <span>389 кв. м.</span> </p><p>На базе клуба ведут работу 14 клубных формирований разных направлений: хореография, вокал, декоративно-прикладное творчество, спорт, техника, инструментальное исполнительство, изучение языков, театральное творчество и др.</p><p>В клубе занимаются пять вокальных коллективов (два детских и три взрослых). Ансамблями «Алые паруса», «Малые паруса», «Перьевчаночки» и группой «РОКовые» руководит А. Д. Фатеева, ансамблем русской песни «Вдохновение» (смешанный состав, возрастная категория – от 33 лет) – Е. В. Шишебарова. </p><p>На занятиях в студии «Музыкальный сувенир» взрослые и дети осваивают игру на музыкальных инструментах. Для школьников в возрасте от 6 до 18 лет работает студия журналистики «Спасское ТВ». Основы театрального творчества можно изучить в студии «Талантино» для взрослых и детей, а основы хореографии – в студии «Созвездие». </p><p>Клубными формированиями декоративно-прикладного творчества руководит преподаватель О. А. Бахтурова. </p><p>Также созданы клубы по робототехнике, проектированию, компьютерной и телефонной грамотности, «Веселый английский», волонтерский отряд «СилычЪ», военно-патриотический клуб «Хищник».</p><p>Члены коллективов Перьевского клуба активно принимают участие в различных конкурсах, фестивалях и культурно-массовых мероприятиях.<span></span></p>	\N	belovskyidk@yandex.ru	[{"value": "79814229055", "comment": ""}]	{"url": "https://all.culture.ru/uploads/b0d1abfd31ed2d5d1e14fbc9e869922d.jpg", "title": "v5L9AM1PXyQ.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры Вологодского муниципального района «Центр культурного развития»	Вологодский район	Europe/Moscow	ул Ленина,д 50	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 50	\N	3525221703	mincult	Вологодский район	Europe/Moscow	\N	26358	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "20:00:00", "from": "14:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	\N	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	78670	[{"url":"https://www.culture.ru/institutes/91542/perevskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vologda/dvorcy-kultury-i-kluby/99104pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-05T11:08:17Z	2023-04-10T12:12:43Z	0101000020E61000000C0742B280E343402716F88A6E854D40
Избоищский дом культуры	Чагодощенский район	Europe/Moscow	ул Набережная,д 1	\N	обл Вологодская,р-н Чагодощенский,д Избоищи,ул Набережная,д 1	{"type": "Point", "coordinates": [35.28625590653255, 58.98399520017931]}	<p><span>Работа дома культуры, как центра обеспечения организованного досуга населения, началась еще в 1923 году. За вековой период сменилось четыре места расположения учреждения. В настоящее время дом культуры находится в благоустроенном кирпичном двухэтажном здании, занимая часть площади первого этажа. </span></p> <p><span>Это место, где можно собраться жителям, разделяющим одни и те же интересы, где постоянно идет патриотическое воспитание детей и молодежи, где каждый желающий может развивать те или иные способности, где идет работа по сохранению культурных традиций. <span> </span>Деятельность учреждения имеет различные направления. Это концертные, тематические и конкурсные программы, массовые театрализованные гулянья, танцевальные вечера, профилактические беседы-презентации, интеллектуальные игры, спортивные мероприятия. Два творческих коллектива  имеют звание «Народный<span> </span>самодеятельный коллектив»: хор и вокальный ансамбль «Ретро».</span></p> <p><span>На базе учреждения действуют<span> </span>вокальные, хореографические, театральные коллективы, а также клубные формирования:</span></p> <ol> <li><span>Клуб ветеранов «Сударушка».</span></li> <li><span>Семейный клуб выходного дня.</span></li> <li><span>Интеллектуальный клуб «Что? Где? Когда?».</span></li> <li><span>Интеллектуальный детский клуб.</span></li> </ol>	\N	dkizboishi@yandex.ru	[{"value": "78174131225", "comment": ""}]	{"url": "https://all.culture.ru/uploads/8137657d6f1bb3b6b644b51ce2767214.jpg", "title": "Избоищский ДК фасад.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Белокрестское СКО»	Чагодощенский район	Europe/Moscow	ул Кооперативная,д 23Б	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Кооперативная,д 23Б	\N	3522003619	mincult	Чагодощенский район	Europe/Moscow	\N	17335	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "17:40:00", "from": "14:00:00"}	{"to": "17:40:00", "from": "14:00:00"}	{"to": "17:40:00", "from": "14:00:00"}	{"to": "17:40:00", "from": "14:00:00"}	\N	{"to": "17:40:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	78669	[{"url":"https://www.culture.ru/institutes/91527/izboishskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/chagoda/dvorcy-kultury-i-kluby/98785pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-05T11:07:54Z	2023-04-05T12:15:58Z	0101000020E61000000D6C9608A4A441407618028EF37D4D40
Борисовский дом культуры	Чагодощенский район	Europe/Moscow	ул Октябрьская,д 29	\N	обл Вологодская,р-н Чагодощенский,п Борисово,ул Октябрьская,д 29	{"type": "Point", "coordinates": [35.377929, 59.102318]}	<p><span>Борисовский дом культуры, здание которого было построено в 1966 г., сегодня является центром культурной жизни и общения для местных жителей. </span><span> </span><span>Это основная площадка для проведения организованного досуга, место встреч односельчан. </span><span>На базе учреждения проводятся концерты, культурно-массовые и просветительские мероприятия для детей и взрослых.</span></p> <p><span>Работник культуры и члены творческих коллективов активно принимают участие в праздничных концертах, ярмарках, конкурсах и других мероприятиях, проводимых в районе.</span></p> <p><span>Здесь действуют следующие клубные формирования:</span></p> <ol><li><span>Клуб любителей декоративно-прикладного творчества.</span><span></span></li><li><span>Детский танцевальный коллектив.</span><span></span></li><li><span>Изобразительная студия.</span><span></span></li><li><span>Детский вокальный коллектив.</span><span></span></li><li><span>Фитнес для детей.</span><span></span></li><li><span>Кружок по вокалу.</span><span></span></li><li><span>Театр малых форм.</span><span></span></li><li><span>Игротека – клуб любителей игр.</span><span></span></li><li><span>Клуб ветеранов.</span><span></span></li><li><span>Молодежный клуб общения.</span></li></ol>	\N	mbuborisovskiidk@yandex.ru	[{"value": "78174131225", "comment": ""}]	{"url": "https://all.culture.ru/uploads/def3f14224265ffc28ad3fc892b899e0.jpg", "title": "IMG_20221116_095935.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Белокрестское СКО»	Чагодощенский район	Europe/Moscow	ул Кооперативная,д 23Б	\N	обл Вологодская,р-н Чагодощенский,с Белые Кресты,ул Кооперативная,д 23Б	\N	3522003619	mincult	Чагодощенский район	Europe/Moscow	\N	17335	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "21:20:00", "from": "14:00:00"}	{"to": "21:20:00", "from": "14:00:00"}	{"to": "21:20:00", "from": "14:00:00"}	{"to": "21:20:00", "from": "14:00:00"}	{"to": "21:20:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78657	[{"url":"https://www.culture.ru/institutes/91526/borisovskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/chagoda/dvorcy-kultury-i-kluby/98779pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-05T09:08:06Z	2023-04-05T12:03:35Z	0101000020E6100000E19A3BFA5FB0414064E597C1188D4D40
Борисовский дом культуры	Вологодский район	Europe/Moscow	д 62	\N	обл Вологодская,р-н Вологодский,д Новое,д 62	{"type": "Point", "coordinates": [39.700577, 59.211534]}	<p>Борисовский дом культуры открыл свои двери в ноябре 1979 г.</p><p>Для посетителей проводятся мероприятия различных форм: </p><ul><li>конкурсные, развлекательные, концертные программы;</li><li>викторины;</li><li>выставки;</li><li>вечера отдыха;</li><li> торжественные митинги и акции;</li><li> мероприятия ко Дню пожилого человека;</li><li>народные гулянья;</li><li> новогодние праздники для детей и взрослых;</li><li>дискотеки для детей и взрослых.<br /></li></ul><p>В Доме культуры работают клубные формирования: </p><ul><li>кружок по выжиганию;</li><li>«Умелые ручки»;</li><li>кружок по изготовлению мягкой игрушки;</li><li>танцевальный кружок;</li><li>«МукосОлька»;</li><li>группа здоровья;</li><li>кружок по вязанию;</li><li>кружок по бисероплетению;</li><li>клуб «Приходи, сказка»;</li><li>клуб любителей настольных игр;</li><li>клуб «Почемучка»;</li><li> клуб «Сударыня»;</li><li> клуб выходного дня.</li></ul>	\N	\N	[{"value": "78172773256", "comment": ""}]	{"url": "https://all.culture.ru/uploads/c3ba5e129585b9e4ed2affbde8760bcd.png", "title": "FD6325D5-C36D-4C70-B835-83F56D3AF0E4.png"}	[{"url": "https://all.culture.ru/uploads/40ce27b7f4e2684ea7f516283510be99.jpeg", "title": "08344E81-40BB-4FED-B4AC-A8FA1B9EC847.jpeg"}, {"url": "https://all.culture.ru/uploads/fa2182df1e637ed3dad4226ad3a86762.jpeg", "title": "D4985055-6026-46BA-B800-245C1AEA47E1.jpeg"}, {"url": "https://all.culture.ru/uploads/3651ca54f2180475df16c413a3a779dc.png", "title": "EC04B873-4A0B-4365-842B-235313BDA127.png"}]	\N	Дворцы культуры и клубы	МБУК ВМО «Кубенское КДО»	Вологодский район	Europe/Moscow	ул Ленина,д 48	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 48	\N	3507303576	mincult	Вологодский район	Europe/Moscow	[{"network":"vk","name":"МБУК ВМО\\"Кубенское КДО\\" филиал\\"ОСТАХОВСКИЙ КЛУБ\\"","networkId":"164012905","updateDate":"2023-04-04T14:37:50Z","createDate":"2023-04-04T14:37:50Z","accountId":46927,"postingGroupId":41496}]	13691	[{"id": 21, "name": "Выставочные залы", "sysName": "vystavochnye-zaly"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "19:00:00", "from": "13:00:00"}	{"to": "19:00:00", "from": "13:00:00"}	{"to": "19:00:00", "from": "13:00:00"}	{"to": "19:00:00", "from": "13:00:00"}	{"to": "14:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	\N	\N	\N	\N	\N	\N	\N	78628	[{"url":"https://www.culture.ru/institutes/91494/borisovskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vologda/dvorcy-kultury-i-kluby/98760pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-04T19:52:13Z	2023-04-05T17:25:17Z	0101000020E610000037AAD381ACD94340FCFECD8B139B4D40
Полдарский клуб	Великоустюгский район	Europe/Moscow	ул Центральная,д 1	автобус от автовокзала Великого Устюга по расписанию	обл Вологодская,р-н Великоустюгский,п Полдарса,ул Центральная,д 1	{"type": "Point", "coordinates": [45.398654, 60.595198]}	<p>В 1955 году Полдарский клуб впервые распахнул свои двери для жителей поселка. На тот период деятельность клуба заключалась в кинопоказах художественных фильмов. Здание было деревянное, лишь в 80-х годах его усилили кирпичом. В 1997 году клуб был передан отделу культуры и получил статус «Дом культуры». </p><p>Деятельность учреждения направлена на сохранение и развитие самодеятельного художественного творчества, в том числе организацию деятельности коллективов и досуга населения с учетом различных возрастных категорий. Клуб проводит различные мероприятия: концертные, конкурсно-развлекательные, литературно-музыкальные, тематические вечера, фестивали и смотры.</p><p><a href="http://xn--b1adr2bn.xn--p1ai/_si/0/16841406.jpg" target="_blank"></a></p><p>На базе клуба занимаются вокальные коллективы «Гармония», «Вдохновение», «Кичужаночки». Для молодежи функционирует спортивный клуб по интересам «Настольный теннис», а для людей старшего возраста – клубы по интересам «Здоровье», «Творческая мастерская», «Рукодельница», спортивный. Дети могут проявить себя на занятиях кружка «Умелые ручки».</p>	http://кдцву.рф	kultura.dom2013@yandex.ru	[{"value": "79114487200", "comment": "начальник обособленного подразделения Мустяцэ Наталья Владимировна"}, {"value": "78173865837", "comment": "менеджер Жирохова Наталья Викторовна"}]	{"url": "https://all.culture.ru/uploads/f7dff4f71ae692b49f0e6ef12be69ebc.jpg", "title": "6g15Drmeryc.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "20:00:00", "from": "17:00:00"}	{"to": "20:00:00", "from": "17:00:00"}	{"to": "20:00:00", "from": "17:00:00"}	{"to": "20:00:00", "from": "17:00:00"}	{"to": "00:00:00", "from": "21:00:00"}	{"to": "17:00:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	78627	[{"url":"https://www.culture.ru/institutes/91493/poldarskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-04-04T15:55:09Z	2023-04-21T14:01:08Z	0101000020E6100000B535221807B346408352B4722F4C4E40
Шолоховский клуб	Вологодский район	Europe/Moscow	ул Школьная,стр 2	\N	обл Вологодская,р-н Вологодский,д Шолохово,ул Школьная,стр 2	{"type": "Point", "coordinates": [39.439032, 59.55529]}	<p> Здание Шолоховского клуба было построено в 1914 году. Сейчас в филиале работает 4 клубных формирования для детей и взрослых по различным направлениям деятельности: спортивно-оздоровительное, вокальное, познавательное, игровое, изобразительной деятельности, клуб «Аптечка здоровья», клуб «Ветеран». Ветераны занимаются скандинавской ходьбой, активно посещают мероприятия. Концерты проводятся ко всем праздничным и памятным датам. Дети любят игровые программы, дискотеки. В филиале для всех категорий населения проводятся различные развлекательные и тематические мероприятия, выставки, конкурсы, соревнования, викторины. Самыми любимыми у зрителей являются День деревни, Новый год и 8 Марта.</p>	\N	\N	[{"value": "79115026593"}]	{"url": "https://all.culture.ru/uploads/3c473f16ae91385707df31f33c9cb29e.jpg", "title": "a0C-pFftbCg.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Новленский Дом культуры»	Вологодский район	Europe/Moscow	ул Советская,д 30	\N	обл Вологодская,р-н Вологодский,с Новленское,ул Советская,д 30	\N	3507303368	mincult	Вологодский район	Europe/Moscow	\N	14125	[{"id": 28, "name": "Литература", "sysName": "literatura"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}]	\N	\N	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	78608	[{"url":"https://www.culture.ru/institutes/91497/sholokhovskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-04-04T11:51:11Z	2023-04-05T09:18:08Z	0101000020E6100000E0F2583332B84340DEE522BE13C74D40
Дом культуры «Северные зори»	Вологодский район	Europe/Moscow	д 24	\N	обл Вологодская,р-н Вологодский,д Фофанцево,д 24	{"type": "Point", "coordinates": [39.994766, 59.32803]}	<p>Дом культуры создан в декабре 1970 года. В настоящее время организует работу кружков и любительских объединений, проводит праздничные вечера и концерты, тематические программы, семейные праздники, спектакли и другие мероприятия.</p><p> На базе Дома культуры работают 24 кружка, в которых постоянно занимается более 300 человек. Участники вокальных, танцевальных и театральных коллективов неоднократно становились победителями всероссийских, региональных, районных фестивалей и конкурсов. Руководителями клубных формирований «Сударушка», «Колечко», «Ладушка», «Непоседы», «Бабушкино ремесло», «Грация» и других являются работники учреждения культуры.</p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/00f29276173175ef8b73fc85cb7770ac.jpg", "title": "IMG_20230405_145011.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК ДК «Северные Зори»	Вологодский район	Europe/Moscow	д 24	\N	обл Вологодская,р-н Вологодский,д Фофанцево,д 24	\N	3507303304	mincult	Вологодский район	Europe/Moscow	\N	14069	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "20:15:00", "from": "09:00:00"}	{"to": "20:30:00", "from": "09:00:00"}	{"to": "20:00:00", "from": "09:00:00"}	{"to": "20:30:00", "from": "09:00:00"}	{"to": "22:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	78590	[{"url":"https://www.culture.ru/institutes/91461/dom-kultury-severnye-zori","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vologda/dvorcy-kultury-i-kluby/98870pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-04T09:34:18Z	2023-04-06T13:56:46Z	0101000020E61000001C96067E54FF4340AE0D15E3FCA94D40
Остаховский клуб	Вологодский район	Europe/Moscow	ул Центральная,д 4	\N	обл Вологодская,р-н Вологодский,с Остахово,ул Центральная,д 4	{"type": "Point", "coordinates": [39.50558, 59.378887]}	<p>История клуба началась в 1953 году. Сегодня он является любимым местом культурного досуга и отдыха, общения и творческой самореализации жителей. </p><p>В Остаховском клубе ведут работу кружки для разных возрастных групп посетителей: танцевальный, «Веселые нотки», «ОчУмелые ручки», для людей старшего поколения – клуб «Ветеран». Молодежь занимается на тренажерах и играет в бильярд. Проводятся выставки, конкурсные программы, вечера отдыха, дискотеки для взрослых и детей.</p><p>Все коллективы принимают активное участие в праздниках, концертных программах и конкурсах клуба.</p><p>Самым массовым и любимым праздником жителей села является Масленица.</p>	\N	khrustaleva9191@bk.ru	[{"value": "79005588258"}, {"value": "79005588258"}]	{"url": "https://all.culture.ru/uploads/b8e2a01cdcbcf3660f6aa3bc7edb5dee.jpg", "title": "здание дк.jpg"}	[{"url": "https://all.culture.ru/uploads/1890dcf40ff0bfec9cd1ec99d890904b.jpg", "title": "масленица дети.jpg"}, {"url": "https://all.culture.ru/uploads/fe3886b8b9f25aca0e8beba9c5eb4572.jpg", "title": "новый год.jpg"}, {"url": "https://all.culture.ru/uploads/2295add708ac7a2cad6ef20a1f6889d2.jpg", "title": "околица.jpg"}]	\N	Дворцы культуры и клубы	МБУК ВМО «Кубенское КДО»	Вологодский район	Europe/Moscow	ул Ленина,д 48	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 48	\N	3507303576	mincult	Вологодский район	Europe/Moscow	[{"network":"vk","name":"МБУК ВМО\\"Кубенское КДО\\" филиал\\"ОСТАХОВСКИЙ КЛУБ\\"","networkId":"164012905","updateDate":"2023-04-04T14:37:50Z","createDate":"2023-04-04T14:37:50Z","accountId":46927,"postingGroupId":41496}]	13691	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "17:00:00", "from": "14:00:00"}	{"to": "17:00:00", "from": "14:00:00"}	{"to": "17:00:00", "from": "14:00:00"}	{"to": "17:00:00", "from": "14:00:00"}	{"to": "16:00:00", "from": "14:00:00"}	{"to": "16:00:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	78472	[{"url":"https://www.culture.ru/institutes/91344/ostakhovskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-31T16:26:45Z	2023-04-03T14:58:58Z	0101000020E61000007FC16ED8B6C0434095F0845E7FB04D40
Дом культуры с. Кубенского	Вологодский район	Europe/Moscow	ул Ленина,д 48	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 48	{"type": "Point", "coordinates": [39.669127, 59.434492]}	<p>Дом культуры в селе Кубенском был основан в 30-х годах прошлого столетия в здании бывшего Дмитриевского храма. В 1978 году было пристроено основное здание Дома культуры площадью 1 241,9 кв. м. </p><p>Основное направление деятельности – организация досуга и приобщение людей к творчеству, культурному развитию и самообразованию, любительскому искусству, традиционной народной культуре. В Доме культуры работают 26 коллективов художественного творчества и любительских объединений. </p><p>Народный самодеятельный коллектив ансамбль русской песни «Кубяночка» создан в 2002 году, является лауреатом областных, всероссийских и международный конкурсов и фестивалей. Образцовый художественный коллектив хореографического направления работает в Доме культуры с 1994 года, в нем 7 возрастных групп, более 70 человек. Работают коллективы: киноклуб «В гостях у сказки», театр малых форм, детский эстрадный хор, вокальный ансамбль «Улыбка», коллектив солистов (взрослый и детский), клуб ритмики для взрослых. </p>	\N	kubdk@mail.ru	[{"value": "79517302388"}]	{"url": "https://all.culture.ru/uploads/2d31728b81e5547979e2a7acc744c3b6.JPG", "title": "IMG_2272 - копия.JPG"}	[{"url": "https://all.culture.ru/uploads/a79a84255ce0f09cef1ac4e9f3375878.jpg", "title": "JAF6OV6eeg.jpg"}, {"url": "https://all.culture.ru/uploads/02d204c6633ca920fe517fd1f4e7a22e.jpg", "title": "X_vnSzFDUJE.jpg"}, {"url": "https://all.culture.ru/uploads/907b38a4b1cdf40c6bb13f24b03fd1cf.JPG", "title": "IMG_0711.JPG"}]	\N	Дворцы культуры и клубы	МБУК ВМО «Кубенское КДО»	Вологодский район	Europe/Moscow	ул Ленина,д 48	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 48	\N	3507303576	mincult	Вологодский район	Europe/Moscow	[{"network":"vk","name":"МБУК ВМО\\"Кубенское КДО\\" филиал\\"ОСТАХОВСКИЙ КЛУБ\\"","networkId":"164012905","updateDate":"2023-04-04T14:37:50Z","createDate":"2023-04-04T14:37:50Z","accountId":46927,"postingGroupId":41496}]	13691	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	78457	[{"url":"https://www.culture.ru/institutes/91302/dom-kultury-s-kubenskogo","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-31T10:22:29Z	2023-03-31T10:51:46Z	0101000020E610000070EF1AF4A5D54340D32F116F9DB74D40
Погореловский дом культуры	Вологодский район	Europe/Moscow	ул Центральная,д 1	\N	обл Вологодская,р-н Вологодский,с Погорелово (Сосновское МО),ул Центральная,д 1	{"type": "Point", "coordinates": [39.589455, 59.148535]}	<p><span>Погореловский дом культуры был открыт 30 декабря 1972 года. Общая площадь здания – 319,1 кв. м, зрительный зал рассчитан на 100 мест. В зоне обслуживания проживает более 500 человек. </span><span>Коллектив Дома культуры активно сотрудничает со школой, детским садом, библиотекой и учреждением спорта. Дом культуры является центром развития и поддержки культурно-социальных инициатив населения, развития творческих способностей и организации активного отдыха. </span></p><p></p><p><span>На базе учреждения работают 18 клубных формирований разных направлений, для взрослых – 5, для детей – 13.<span> Общее количество</span> участников – 160 человек. Ведут активную деятельность кружки изобразительного искусства, декоративно-прикладного, вокального, хореографического и театрального творчества. </span></p><p><span>Для посетителей проводятся игровые и развлекательные программы, театрализованные представления и праздники, концерты, вечера отдыха. </span></p><p></p>	\N	nick.anosov2016@yandex.ru	[{"value": "79115212241"}, {"value": "78172775559", "comment": "Основной"}]	{"url": "https://all.culture.ru/uploads/f2055655dacff07345e922b06a8295c2.jpg", "title": "4reSw2atIU.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «КДО «Сосновское»	Вологодский район	Europe/Moscow	ул Молодежная,д 3	\N	обл Вологодская,р-н Вологодский,п Сосновка,ул Молодежная,д 3	\N	3507313790	mincult	Вологодский район	Europe/Moscow	\N	13824	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	78438	[{"url":"https://www.culture.ru/institutes/91313/pogorelovskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-31T07:43:16Z	2023-03-31T12:05:12Z	0101000020E61000005ABBED4273CB4340DBA7E33103934D40
Центр культурного развития с. Кубенского	Вологодский район	Europe/Moscow	ул Ленина,д 50	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 50	{"type": "Point", "coordinates": [39.668821, 59.434885]}	<p><span>Центр культурного развития открыт 1 января 2018 года. Он</span><span> создан для организации досуга и приобщения населения округа к творчеству, культурному развитию, самообразованию, традиционной народной культуре. </span><span>Работа учреждения высоко ценится органами местного самоуправления и неоднократно была отмечена благодарностями. </span></p><p><span>С 2018 года организовано и проведено более 150 крупных культурно-массовых мероприятий, основными из которых являются:</span><span></span></p><ul><li><span>фестиваль исторической реконструкции «Дворянских гнезд заветные аллеи» (июль 2018–2022 годов);</span></li><li><span>патриотический праздник «Открытое небо» (август 2018–2022 годов).</span></li></ul> <p><span>Реализуемый с 2018 года фестиваль исторической реконструкции «Дворянских гнезд заветные аллеи» стал ярким и узнаваемым проектом культурной жизни Вологодчины. В 2020 году он получил 3-е место в национальной премии «События России – 2020» в номинации «Культура. Военно-исторические и культурные реконструкции».</span></p>	\N	cultura35@mail.ru	[{"value": "79210559101", "comment": ""}]	{"url": "https://all.culture.ru/uploads/25930c63cf5c44baba7057928e204751.jpg", "title": "RZ9zSTVYa60.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры Вологодского муниципального района «Центр культурного развития»	Вологодский район	Europe/Moscow	ул Ленина,д 50	\N	обл Вологодская,р-н Вологодский,с Кубенское,ул Ленина,д 50	\N	3525221703	mincult	Вологодский район	Europe/Moscow	\N	26358	[{"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}]	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	78399	[{"url":"https://www.culture.ru/institutes/91554/centr-kulturnogo-razvitiya-s-kubenskogo","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-30T11:48:06Z	2023-04-06T05:55:46Z	0101000020E610000063F030ED9BD54340AF42CA4FAAB74D40
Майский дом культуры	Вологодский район	Europe/Moscow	д 14	\N	обл Вологодская,р-н Вологодский,п Майский,д 14	{"type": "Point", "coordinates": [39.745798, 59.25896]}	<p><span><span> </span>История Дома культуры в п. Майском началась в 1976 году. </span></p><p><span></span><span>В 2019 году<span> </span>практически во всех помещениях здания был выполнен капитальный ремонт, и</span><span> сейчас Дом культуры <span> </span>является любимым местом комфортного досуга, общения и творческой самореализации жителей.</span></p> <p><span><span> </span>Здесь проводятся занятия кружков для всех возрастных групп населения. </span><span>В коллективе постоянно ведется не только учебная работа, но и организуются выставки, конкурсы и экскурсии, проводятся беседы по искусству, праздничные вечера. </span></p> <p><span><span> </span>С 2022 года в Майском доме культуры регулярно проходят интеллектуально-развлекательные игры, которые пользуются большой популярностью не только у местных жителей. В 2023 году Татьяна Владимировна Бойко организовала медиаклуб «Звезды «Севера ТВ», где ребят обучают журналистике, актерскому мастерству и<span> </span>премудростям монтажа.</span></p> <p><span><span> </span></span></p> <p><span><span> </span>В дружеской атмосфере проходят различные праздники и концертные программы. Самые массовые и горячо любимые мероприятия – День поселка, День меда, гулянья, посвященные Масленице, и др.</span></p> <p><span><span> </span></span></p>	\N	Mayskiy.dk@bk.ru	[{"value": "79814402316"}, {"value": "79110452263", "comment": "тел. директора"}]	{"url": "https://all.culture.ru/uploads/126b664474d567e2a224ed56ec4859ab.jpg", "title": "про культура 1.jpg"}	[{"url": "https://all.culture.ru/uploads/d116a036458d5a6b54b209ee477044a4.jpg", "title": "1.1.jpg"}, {"url": "https://all.culture.ru/uploads/166de680d6a35870465993cfec8428ac.jpg", "title": "1.2.jpg"}, {"url": "https://all.culture.ru/uploads/7be236dd82aa26218f0a19bfd832ef84.jpg", "title": "1.4.jpg"}, {"url": "https://all.culture.ru/uploads/075af3895d46ad11c19c88f66775fd79.jpg", "title": "1.31.jpg"}, {"url": "https://all.culture.ru/uploads/fb43e2eef0087e6017646ba417e97d54.jpg", "title": "1.2.jpg"}, {"url": "https://all.culture.ru/uploads/3f1637df6957b526bcf3b4a9126746b8.jpg", "title": "3.2.jpg"}, {"url": "https://all.culture.ru/uploads/3c67ef7315a8d670d7e381475b1cdb0b.jpg", "title": "2.18.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Майский Дом культуры»	Вологодский район	Europe/Moscow	д 14	\N	обл Вологодская,р-н Вологодский,п Майский,д 14	\N	3507303463	mincult	Вологодский район	Europe/Moscow	\N	14049	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78356	[{"url":"https://www.culture.ru/institutes/91246/maiskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vologda/dvorcy-kultury-i-kluby/98302pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-29T14:07:23Z	2023-03-31T07:35:11Z	0101000020E61000000BB6114F76DF4340707CED9925A14D40
Учреждение культуры «Феникс»	Вологодский район	Europe/Moscow	д 36	авт. № 426, 427 «Вологда – Кипелово»	обл Вологодская,р-н Вологодский,п Федотово,д 36	{"type": "Point", "coordinates": [39.18211170083671, 59.20573473194112]}	<p><span>Учреждение культуры «Феникс» создано 26 декабря 2019 года.</span><span> После капитального ремонта бывшего Дома офицеров здесь вновь появилась активная деятельность.</span><br /></p><p><span>Приоритетными направлениями работы являются театрализованные концерты, праздники народного календаря (гулянбья), игровые, конкурсные, развлекательные, познавательные программы, областные и районные форумы и конкурсы, выставки, вечера отдых<a name="_GoBack"></a>а для семей и пожилых, дискотеки молодежные, детские и подростковые, утренники, интерактивные мероприятия для детей. Практикуется сдача помещений в аренду.</span></p><p><span>В учреждении активно проводятся мастер-классы и работают кружки прикладного творчества («Планета игрушек», «Простолепкино», «Семь красок радости»), танцевальные коллективы («Карамель» и «Каскад»), вокально-инструментальный ансамбль «Кигуруми», ансамбль народных инструментов «Карусель», вокальный ансамбль «Мелодии души» и другие клубные формирования.</span></p>	\N	kulturadm@bk.ru	[{"value": "78172551022", "comment": "директор"}, {"value": "78172551035", "comment": "вахта"}]	{"url": "https://all.culture.ru/uploads/8e61f94e85a377f5c060aa67989a1faa.jpg", "title": "7JhzYbX26AU.jpg"}	[{"url": "https://all.culture.ru/uploads/ec5b49dc1bfa023bce6693cae305efae.jpg", "title": "oNND6GBSMrQ.jpg"}, {"url": "https://all.culture.ru/uploads/ad24938065069c24396b10876e2d8a8d.jpg", "title": "vHyAjZwigHw.jpg"}, {"url": "https://all.culture.ru/uploads/e46e846a0f58f69d3b5b8e8da3b1025e.jpg", "title": "Q49N0BUAwuY.jpg"}, {"url": "https://all.culture.ru/uploads/93cd2b54018ade9f5e92d64903ddafc1.jpg", "title": "fiFit1vYFjk.jpg"}, {"url": "https://all.culture.ru/uploads/a9159aa3895fa1ee4f05e8670963a79f.jpg", "title": "Когда мы были молодые1.jpg"}, {"url": "https://all.culture.ru/uploads/546bea32400754f9b2e90d090d4af798.jpg", "title": "dv593pbUBb4.jpg"}, {"url": "https://all.culture.ru/uploads/b241c890659c2501e3d9fcd07d4d355b.jpg", "title": "h9z_Z3gcygs.jpg"}]	\N	Дворцы культуры и клубы	МБУК Вологодского МО «Феникс»	Вологодский район	Europe/Moscow	36	\N	обл Вологодская,р-н Вологодский,п Федотово,36	\N	3507315211	mincult	Вологодский район	Europe/Moscow	\N	26348	[{"id": 21, "name": "Выставочные залы", "sysName": "vystavochnye-zaly"}, {"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-191943046&id=456239379&hash=d72c40669c8d69a8&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"}]	\N	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78334	[{"url":"https://www.culture.ru/institutes/91223/uchrezhdenie-kultury-feniks","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-29T09:48:51Z	2023-03-31T08:56:50Z	0101000020E610000003A8AB6F4F97434052AB0484559A4D40
Сямженский центр культуры	Сямженский район	Europe/Moscow	ул Советская,д 10	\N	обл Вологодская,р-н Сямженский,с Сямжа,ул Советская,д 10	{"type": "Point", "coordinates": [41.076562, 60.019136]}	<p>Датой своего рождения Сямженский центр культуры считает апрель 1962 года. Строительство здания было комсомольской стройкой. В ней принимали участие жители села, работали почти без техники. </p><p>Здание Центра культуры двухэтажное. Имеется зрительный зал на 180 мест, сцена, танцевальный зал для проведения массовых мероприятий, праздников, игровых программ для детей, вечеров отдыха для населения, ветеранов и молодежных дискотек. На втором этаже расположены кабинеты специалистов. </p><p>На базе учреждения работают 17 клубных формирований, которые посещают 303 участника: дети, молодежь, люди среднего возраста и ветераны.</p>	\N	rsc_syamzha@mail.ru	[{"value": "79815043684", "comment": ""}]	{"url": "https://all.culture.ru/uploads/01e26c4efcbb8424958d2cb37658b52f.jpg", "title": "5PeDnrPJFI.jpg"}	\N	\N	Дворцы культуры и клубы	Бюджетное учреждение культуры Сямженского МР «Сямженский районный центр культуры»	Сямженский район	Europe/Moscow	ул Советская,д 10	\N	обл Вологодская,р-н Сямженский,с Сямжа,ул Советская,д 10	\N	3516003307	mincult	Сямженский район	Europe/Moscow	\N	17544	[{"id": 323, "name": "Исполнительское искусство", "sysName": "ispolnitelskoe-iskusstvo"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	78301	[{"url":"https://www.culture.ru/institutes/91144/syamzhenskii-centr-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/syamzha/dvorcy-kultury-i-kluby/98153pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-28T13:40:39Z	2023-03-30T05:49:42Z	0101000020E6100000E50E9BC8CC8944409016670C73024E40
Вотчинский клуб	Вологодский район	Europe/Moscow	д 44	\N	обл Вологодская,р-н Вологодский,д Севастьяново,д 44	{"type": "Point", "coordinates": [39.161606, 59.55932]}	<p>Вотчинский Дом культуры был построен в 1969 году в деревне Вотча, где находилась школа, почта, библиотека, сельсовет. Но в 2007 году здание закрыли, и клуб с 1 декабря 2011 года был переведен в здание бывшей администрации Вотчинского сельсовета в деревню Севастьяново.<br /></p> <p><span><span> Сейчас в клубе </span>функционирует десять клубных формирований для взрослых и детей: вокальные, театральный, танцевальный, спортивный, рукоделие. Итогом<span> </span>кружковой работы являются <span> </span>концерты на каждый значимый праздник. Творческие работы детского кружка «Умелые ручки» являются украшением всех мероприятий. </span></p> <p><span> Участвуем во всех поселенческих фестивалях для детей и взрослых, народном празднике «Заговенье», совместных концертах. Наиболее значимыми мероприятиями для населения являются день деревни Севастьяново, театрализованные музыкальные спектакли, концертные программы на День пожилого человека, 8 марта, День защитников Отечества, День Победы, День семьи, любви и верности. </span></p> <p><span> </span></p> <p><span> </span></p> <p><span> </span></p><p></p>	\N	\N	[{"value": "78172555041"}]	{"url": "https://all.culture.ru/uploads/680eda7bc1fb6a5f9c2be68f8092e0ef.jpg", "title": "sCPlKsB5Qwc.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Новленский Дом культуры»	Вологодский район	Europe/Moscow	ул Советская,д 30	\N	обл Вологодская,р-н Вологодский,с Новленское,ул Советская,д 30	\N	3507303368	mincult	Вологодский район	Europe/Moscow	\N	14125	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 59, "name": "Ансамбли", "sysName": "ansambli"}]	\N	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78236	[{"url":"https://www.culture.ru/institutes/91132/votchinskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-27T11:14:42Z	2023-03-28T11:51:07Z	0101000020E61000002F6B6281AF944340D6FF39CC97C74D40
Кипеловский дом культуры	Вологодский район	Europe/Moscow	ул Железнодорожная,д 14	\N	обл Вологодская,р-н Вологодский,п Кипелово,ул Железнодорожная,д 14	{"type": "Point", "coordinates": [39.1431, 59.235552]}	<p><span>История создания Кипеловского Дома культуры началась в 2000 году.<span> </span>10 лет поселок был вынужден обходиться без Дома культуры, так как старый был закрыт из– за аварийного состояния. Силами общественности и администрации Кипеловского сельского совета было выкуплено здание старого универмага и переоборудовано в ДК. Общая площадь составляет </span><span>402,5 кв.м. со зрительным залом 100 посадочных мест.</span><span></span></p> <p><span>В Доме культуры успешно работает 17 клубных формирований для детей и взрослых: ансамбль «Надежда», детский театральный кружок , драматический<span> </span>кружок для взрослых, вокальный ансамбль «Смайлики», творческий кружок «Чудо ручки» и другие.<span> </span>Благодаря их деятельности, в Доме культуры проводятся интересные и содержательные концертные программы, вечера отдыха, тематические конкурсы,<span> </span>развлекательно – игровые программы, спортивно – игровые программы<span> </span>как для детей, так и для взрослых, выставки и викторины.</span></p> <p><span>Большой популярностью у зрителей пользуются театрализованные представления на Масленицу, День защиты детей, День пожилого человека и День поселка.</span></p>	\N	\N	[{"value": "78172552057"}]	{"url": "https://all.culture.ru/uploads/ba7855b85e6551f505c1408b2dc5acd4.jpg", "title": "Кипеловский ДК здание.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение «Старосельский дом культуры»	Вологодский район	Europe/Moscow	д 12	\N	обл Вологодская,р-н Вологодский,д Стризнево,д 12	\N	3507303248	mincult	Вологодский район	Europe/Moscow	\N	14112	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78233	[{"url":"https://www.culture.ru/institutes/91106/kipelovskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-27T10:57:26Z	2023-03-28T08:42:05Z	0101000020E61000005F07CE1951924340F2406491269E4D40
Пудегский дом культуры	Вологодский район	Europe/Moscow	ул Центральная,д 12	\N	обл Вологодская,р-н Вологодский,п Уткино,ул Центральная,д 12	{"type": "Point", "coordinates": [39.414351119049044, 59.1418519314694]}	<p><span>В 1960-х<span> </span>годах<span> </span>в п. Уткино было открыто первое деревянное здание Клуба на 95 мест. В последствие его переименовали в Пудегский Дом культуры. В начале 70-х годов в том здании проходили съемки художественного фильма режиссера Петра Тодоровского<span> </span>«Своя земля», который вышел в кинопрокат в 1973 году. В 1987 году<span> </span>было построено<span> </span>новое<span> </span>кирпичное<span> </span>здание Дома культуры общей площадью 1112,2 кв.м<span> </span>со зрительным залом на 200 мест, которое смогло вместить всех желающих на<span> </span>мероприятия, концерты и вечера отдыха.<span> </span>С 2012 года после объединения сельских территорий Пудегский ДК стал филиалом МБУК «Старосельский ДК». </span></p> <p><span>При Пудегском доме культуры работают 24 клубных формирования. Из них 11 для детей и 13 </span><span>для взрослого населения.</span><span></span></p> <p><span>Наиболее популярные клубные формирования:</span><span></span></p> <p><span>Клуб молодой семьи «Азбука счастья» являются постоянными участниками областного форума клубов молодой семьи «Погода в доме», а так же сотрудничают с центром молодежной политики Вологодской области «Содружество» участвуют в районных акциях и конкурсах .</span></p> <p><span>Спортсмены секции «Единоборств» ежегодно становятся призерами турниров по борьбе в ФЦ «Пластилин» г. Вологда,<span> </span>в соревнованиях по джиу-ждитсу на «Кубок города Вологда», в «Чемпионате Вологодской области по Джиу – джитсу»</span></p> <p><span>Школа рисования и развития «Акварель» – участники и призеры всероссийских онлайн конкурсов рисунков, участники акции «Рисуем Победу»</span></p> <p><span>Ребята из студии «Веселые нотки» – участники и призеры<span> </span>районного конкурса детского творчества «Утренняя звезда»</span></p> <p><span>Ансамбль «Русская песня» и солисты дома культуры – участники и призеры вокального конкурса «Снеговея», конкурса молодежного творчества «Арт – тайм», районных онлайн-конкурсов<span> </span>«Песни нашей Победы» и др.</span></p> <p><span>Ансамбль «Русская частушка» – участники и призеры<span> </span>онлайн-конкурса «Улома поющая», фестиваля творчества ветеранов,<span> </span>призеры онлайн – конкурса «Песни нашей Победы», лауреаты 3 ст. всероссийского конкурса «Забота. Творчество. Долголетие» и др.</span></p> <p><span> </span></p> <p><span>В Пудегском доме культуры ведется работа с разнообразными группами населения: со школьниками, с учащимися коррекционных классов, дошкольных групп, с подростками и молодежью, с людьми пенсионного возраста и ветеранами, с молодыми семьями, </span><span>c</span><span> </span><span>женскими коллективами и другими группами. Дом культуры<span> </span>поддерживает дружеские отношения с Первомайской средней школой, Пудегской библиотекой, женсоветом и советом ветеранов п Уткино.</span></p> <p><span> </span></p>	\N	\N	[{"value": "78172775797"}]	{"url": "https://all.culture.ru/uploads/69543409c50dfe6468ab55b9379fb01a.jpg", "title": "M0m-omgYeY0.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение «Старосельский дом культуры»	Вологодский район	Europe/Moscow	д 12	\N	обл Вологодская,р-н Вологодский,д Стризнево,д 12	\N	3507303248	mincult	Вологодский район	Europe/Moscow	\N	14112	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "20:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	78232	[{"url":"https://www.culture.ru/institutes/91149/pudegskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-27T10:38:15Z	2023-03-28T09:00:48Z	0101000020E610000036B01C7509B543408B443F3428924D40
Нефедовский дом культуры	Вологодский район	Europe/Moscow	ул Центральная,д 25	\N	обл Вологодская,р-н Вологодский,д Нефедово,ул Центральная,д 25	{"type": "Point", "coordinates": [39.070346, 59.763892]}	<p><span>Нефедовский филиал<span> </span>МБУК ВМО «Новленское КДО»</span></p> <p><span><span> </span></span></p><p><span> Здание<span> </span>Нефедовского филиала построено в 1914 году в д.Нефедово. </span><span>Сейчас в филиале работает 10 клубных формирований для детей и взрослых по различным направлениям деятельности: спортивно – оздоровительное, вокальное, познавательное, игровое, изо-деятельности, клуб любителей гармони «Гармошечка», клуб «Ветеран». Ветераны</span><span> занимаются скандинавской ходьбой, посещают спортивно – оздоровительный клуб «ЗОЖ». Участники вокального ансамбля «Надежда» и клуба любителей гармони «Гармошечка» выступают на музыкальных вечерах, концертах. Концерты проводятся <span> </span> ко всем праздничным и памятным датам. Дети любят игровые программы, дискотеки. В филиале для всех категорий населения проводятся различные развлекательные и тематические мероприятия, выставки, конкурсы, соревнования, викторины. Самыми любимыми у зрителей являются день деревни Нефедово, Масленица, новогоднее театрализованное представление, мероприятия на день пожилого человека.</span></p> <p></p>	\N	\N	[{"value": "78172774553"}]	{"url": "https://all.culture.ru/uploads/fd8029325fcc1ed09a3233662289e77e.jpg", "title": "wR8v3MoVTUo.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Новленский Дом культуры»	Вологодский район	Europe/Moscow	ул Советская,д 30	\N	обл Вологодская,р-н Вологодский,с Новленское,ул Советская,д 30	\N	3507303368	mincult	Вологодский район	Europe/Moscow	\N	14125	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 59, "name": "Ансамбли", "sysName": "ansambli"}]	\N	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78200	[{"url":"https://www.culture.ru/institutes/91131/nefedovskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-24T12:00:41Z	2023-03-28T12:01:16Z	0101000020E6100000C4B304190189434088D68A36C7E14D40
Новленский дом культуры	Вологодский район	Europe/Moscow	ул Советская,д 30	\N	обл Вологодская,р-н Вологодский,с Новленское,ул Советская,д 30	{"type": "Point", "coordinates": [39.33251, 59.619666]}	<p><span>Новленский Дом культуры образован в 1932 году. </span><span>На базе учреждения работают <span>детские и взрослых </span>клубные формирования различного направления: </span><span>вокальные, танцевальные, театральные, семейный клуб, клуб здоровья, клуб «Ветеран», клуб «Оформитель», детская творческая мастерская.<span> Коллективы клубных формирований принимают активное участие в межпоселенческих, районных, областных, всероссийских конкурсах, фестивалях. </span></span><span>В учреждении традиционными и любимыми зрителями стали такие массовые мероприятия, как народный праздник «Заговенье», фестиваль художественного творчества «Поклонимся великим тем годам», фестиваль гармонистов, баянистов и частушечников «Играй и пой, Вологодская гармонь!», Фестиваль – конкурс детского и юношеского творчества «Радуга талантов», Фестиваль самодеятельного художественного<span> </span>творчества среди людей<span> </span>«золотого» возраста «Завалинка», концертно – театрализованная программа «Дети войны» и многие другие.</span></p> <p><span> </span></p> <p style="text-align:justify"><span></span></p><p style="text-align:justify"><span></span><span></span></p> <p><span> </span></p>	\N	novlendk@mail.ru	[{"value": "77182776296", "comment": ""}]	{"url": "https://all.culture.ru/uploads/fe7f478533f15f58d10dd97eb6044666.jpg", "title": "O7MtjNaAoJ8 (1).jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Новленский Дом культуры»	Вологодский район	Europe/Moscow	ул Советская,д 30	\N	обл Вологодская,р-н Вологодский,с Новленское,ул Советская,д 30	\N	3507303368	mincult	Вологодский район	Europe/Moscow	\N	14125	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 59, "name": "Ансамбли", "sysName": "ansambli"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78196	[{"url":"https://www.culture.ru/institutes/90997/novlenskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-24T11:27:15Z	2023-03-28T12:20:13Z	0101000020E6100000E6CB0BB08FAA4340B9382A3751CF4D40
Старосельский дом культуры	Вологодский район	Europe/Moscow	ул Зеленая,д 12	\N	обл Вологодская,р-н Вологодский,д Стризнево,ул Зеленая,д 12	{"type": "Point", "coordinates": [39.293074, 59.195325]}	<p><span>Дом культуры находится в д. Стризнево Вологодского района. Здание 1990 года постройки, двухэтажное со спортивным залом. Общая площадь здания 1750,0 кв. м, зрительный зал на 300 мест.</span><span> В зоне обслуживания Дома культуры проживает около 950 человек (зона охвата – 43 населенных пункта).</span><span></span></p> <p><span>На базе дома культуры работает 22 клубных формирования различных направлений. Для детей работают кружки изобразительного искусства, прикладного и вокального творчества, патриотической и спортивной направленности. Для людей старшего поколения более 15 лет существует клуб ветеранов <span> </span>«Родничок», работает кружок прикладного творчества «Рукодельница». В доме культуры проводятся игровые и<span> </span>развлекательные программы, театрализованные праздники, концерты, вечера отдыха.</span></p> <p><span><span> </span>Старосельский ДК является площадкой для проведения районных и областных мероприятий и сходов, с 2013 года<span> </span>в доме культуры </span><span>проходит фестиваль духовно-патриотической музыки «Крещенский сочельник», который со временем<span> </span>приобрел статус<span> </span></span><span>межрайонного фестиваля<span> </span>православной культуры и традиций «Крещенский сочельник». В фестивале принимают участие творческие коллективы Вологодского и близлежащих районов и городов Вологда, Череповец, Великий Устюг.</span></p>	\N	staroselskiy_dk@mail.ru	[]	{"url": "https://all.culture.ru/uploads/70446c7d69a3a5fd622e0bbb9d464790.jpg", "title": "6vUxnyTf4sI.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение «Старосельский дом культуры»	Вологодский район	Europe/Moscow	д 12	\N	обл Вологодская,р-н Вологодский,д Стризнево,д 12	\N	3507303248	mincult	Вологодский район	Europe/Moscow	\N	14112	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "16:00:00", "from": "09:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "09:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	{"to": "19:00:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	78192	[{"url":"https://www.culture.ru/institutes/91085/staroselskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-24T08:55:06Z	2023-03-27T14:53:43Z	0101000020E610000069A7E67283A54340AC8BDB6800994D40
Двиницкий дом культуры	Сокольский район	Europe/Moscow	ул Первомайская,д 5а	\N	обл Вологодская,р-н Сокольский,д Чекшино,ул Первомайская,д 5а	{"type": "Point", "coordinates": [40.553527, 59.655158]}	<p>Двиницкий дом культуры начал свою работу в 1960 году, а в 2018 году вошел в состав Центра народной культуры и художественных ремесел «Сокольский». Приоритетным направлением деятельности является работа с пожилыми людьми, ветеранами труда и Великой Отечественной войны, тружениками тыла, работа с детьми, молодыми семьями. </p><p>Специалисты Дома культуры проводят календарные праздники, выпускные, вечера отдыха, концертные программы, торжественные и юбилейные вечера, ярмарки. На базе учреждения работают 14 клубных формирований, из них 1 – на платной основе. Клубные формирования посещают 250 участников. </p> 	\N	dvinclub@mail.ru	[{"value": "78173343144"}]	{"url": "https://all.culture.ru/uploads/ac6a83a97cdaf20c3e343c8d72058f95.jpg", "title": "двин.jpg"}	\N	\N	Дворцы культуры и клубы	БУК СМО ЦНКИХР «Сокольский»	Сокольский район	Europe/Moscow	ул Советская,д 16	\N	обл Вологодская,р-н Сокольский,г Сокол,ул Советская,д 16	\N	3527011797	mincult	Сокольский район	Europe/Moscow	\N	15137	\N	\N	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77647	[{"url":"https://afisha7.ru/sokol/dvorcy-kultury-i-kluby/96870pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/90510/dvinickii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-13T08:28:23Z	2024-09-05T07:23:25Z	0101000020E6100000FC3905F9D94644403CDBA337DCD34D40
Минькинский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Новая,д 61	\N	обл Вологодская,р-н Грязовецкий,с Минькино,ул Новая,д 61	{"type": "Point", "coordinates": [39.755509, 58.962201]}	<p>Минькинский дом культуры был основан в 1981 году, с тех пор является центром культурной жизни села.</p><p>В Доме культуры занимается порядка 50 односельчан в 10 клубных формированиях. Основными направлениями деятельности филиала являются вокал, хореография, театральное мастерство и декоративно-прикладное творчество.</p><p>Регулярно здесь проходят акции, мастер-классы, праздничные программы, патриотические концерты, фестивали и конкурсы как среди местных жителей, так и среди гостей из близлежащих населенных пунктов, а в последнее время Минькинский сельский дом культуры стал для односельчан любимым местом проведения детских игровых программ.</p><p></p><p>Заведующая филиалом – Наталья Алексеевна Ломтева.</p>	\N	nat.lomteva2014@yandex.ru	[{"value": "78175550243"}]	{"url": "https://all.culture.ru/uploads/ea93270fb2d446d2bb80179b0c44fcb4.jpg", "title": "20221007_134449.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	[{"id": 25, "name": "Классическое искусство", "sysName": "klassicheskoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}]	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	79404	[{"url":"https://www.culture.ru/institutes/92238/minkinskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/100365pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-05-03T12:26:09Z	2023-05-03T13:16:59Z	0101000020E6100000B66AD784B4E04340D9960167297B4D40
Обнорский сельский дом культуры	Грязовецкий район	Europe/Moscow	д 67	\N	обл Вологодская,р-н Грязовецкий,д Вараксино,д 67	{"type": "Point", "coordinates": [40.442891, 58.606085]}	<p>Обнорский сельский дом культуры был основан в 1979 году, с тех пор является центром культурной жизни деревень Вараксино, Батово и близлежащих поселков.</p><p>В Доме культуры занимается порядка 100 односельчан в 11 клубных формированиях. Основными направлениями деятельности филиала являются вокал, хореография, театральное мастерство и декоративно-прикладное творчество.</p><p>Регулярно здесь проходят мастер-классы, праздничные программы, патриотические концерты, фестивали и конкурсы как среди местных жителей, так и среди гостей из близлежащих населенных пунктов.</p><p></p><p>Заведующая филиалом – Светлана Николаевна Мосина.</p>	\N	mosina.69@internet.ru	[{"value": "79626723727"}]	{"url": "https://all.culture.ru/uploads/65bc27792768d807888f1fddc5b82a64.jpg", "title": "Ts05fyQfNvs.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	[{"id": 25, "name": "Классическое искусство", "sysName": "klassicheskoe-iskusstvo"}, {"id": 26, "name": "Современное искусство", "sysName": "sovremennoe-iskusstvo"}]	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	79397	[{"url":"https://www.culture.ru/institutes/92232/obnorskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/100358pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-05-03T09:05:20Z	2023-05-03T10:21:30Z	0101000020E6100000AC58FCA6B03844404FCC7A31944D4D40
Чагодощенский дом культуры	Чагодощенский район	Europe/Moscow	ул Кирова,д 5	\N	обл Вологодская,р-н Чагодощенский,рп Чагода,ул Кирова,д 5	{"type": "Point", "coordinates": [35.336094, 59.167888]}	<p>Здание, в котором располагается учреждение, было построено в 1948 году. Чагодощенский дом культуры – это центр культурной жизни, а также главная концертная площадка округа. Здесь проводятся все основные районные праздничные мероприятия: концерты, смотры, выставки, спектакли, юбилеи, фестивали, творческие встречи, конкурсы, а также вечера отдыха, дискотеки, лекции, киносеансы, детские утренники. </p><p>Учреждение занимается организацией досуга не только жителей, но и гостей района. В Доме культуры работают кружки, студии, клубные формирования, любительские объединения по культурно-познавательным, художественно-творческим и иным интересам.</p>	https://chagodadk.esgms.ru	Chagodardk@bk.ru	[{"value": "78174121238"}]	{"url": "https://all.culture.ru/uploads/6379a83be5f45b0e43a9b95bd24e00dd.jpg", "title": "5O2Q4Ix_IH0.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Чагодощенский районный дом культуры»	Чагодощенский район	Europe/Moscow	ул Кирова,д 5	\N	обл Вологодская,р-н Чагодощенский,п Чагода,ул Кирова,д 5	\N	3522001481	mincult	Чагодощенский район	Europe/Moscow	\N	20453	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "20:00:00", "from": "08:00:00"}	{"to": "20:00:00", "from": "08:00:00"}	{"to": "20:00:00", "from": "08:00:00"}	{"to": "20:00:00", "from": "08:00:00"}	{"to": "20:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	79274	[{"url":"https://www.culture.ru/institutes/92113/chagodoshenskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-04-25T15:51:30Z	2023-04-27T06:25:10Z	0101000020E6100000E030D12005AB414007B29E5A7D954D40
Юдинский клуб	Великоустюгский район	Europe/Moscow	д 6А	авт. № 125	обл Вологодская,р-н Великоустюгский,п Стрига,д 6А	{"type": "Point", "coordinates": [46.33712918650815, 60.79727357750445]}	<p>Юдинский дом культуры был построен в 1968 г. и находился в д. Аксеново. Должность заведующей занимала Павлова Эмилия Ивановна. Здесь проводились многочисленные мероприятия: концерты, выездные мероприятия агитбригады на фермы и поля, субботники, творческие отчеты. В 1988 г. клуб перевезли в п. Стрига.</p><p>Для населения работают клубные формирования:</p><ol><li> «ОчУмелые ручки».</li><li>Танцевальный кружок.</li><li>«Звонкий колокольчик».</li><li>«Теннис».</li><li>«Юдинские девчата».</li><li>«Здоровье».</li><li>«Волшебная петелька».</li><li>«Лоскутное шитье».</li><li>«Рукодельница».</li><li>«Самбо».</li><li>«Чудеса своими руками» (в д. Будрино).</li></ol><p> Общее количество участников – 90 человек. </p><p> Все коллективы и исполнители – постоянные участники районных праздников и фестивалей. </p><p>С 2019 г. клуб постоянно участвует в программе «Народный бюджет». Для качественного проведения мероприятий в 2019 г. были приобретены ноутбук, проектор, аудиосистема. В 2020 г. для ансамбля «Юдинские девчата» сшили сценические костюмы. В 2021 г. в здании были установлены окна ПВХ. Приобрели швейные машины для кружка «Рукодельницы». В 2022 г. были закуплены столы для кройки и шитья. Вставили входную металлическую дверь, а также приобрели борцовский ковер для занятия спортом. </p><p>В настоящее время всю работу по организации досуга населения Юдинского поселения осуществляют 3 специалиста. <br /></p><p> </p>	http://кдцву.рф	strigaclyb@rambler.ru	[{"value": "78173863546", "comment": "начальник подразделения Надежда Васильевна Опалихина"}, {"value": "78173865837", "comment": "менеджер Наталья Викторовна Жирохова"}]	{"url": "https://all.culture.ru/uploads/9ef1776e34c3208b75509a10745c2e2e.jpg", "title": "SYI0P5Kw9uE.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-160210512&id=456239065&hash=948c8be9a3bdecfb&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-160210512&id=456239063&hash=aad16893273245fb&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-160210512&id=456239063&hash=aad16893273245fb&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"}]	\N	{"to": "17:30:00", "from": "12:00:00"}	{"to": "17:30:00", "from": "12:00:00"}	{"to": "17:30:00", "from": "12:00:00"}	{"to": "17:30:00", "from": "12:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	79008	[{"url":"https://www.culture.ru/institutes/91855/yudinskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/99465pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-13T12:32:54Z	2023-04-24T09:06:34Z	0101000020E6100000304A970C272B47405BAC820F0D664E40
Центр культуры «Вытегра»	Вытегорский район	Europe/Moscow	пр-кт Ленина,д 5а	\N	обл Вологодская,р-н Вытегорский,г Вытегра,пр-кт Ленина,д 5а	{"type": "Point", "coordinates": [36.448307, 61.006411]}	<p>Дата основания Центра культуры «Вытегра» – 22 декабря 2005 года. Учреждение предоставляет населению разнообразные услуги социально-культурного, просветительского и развлекательного характера. </p><p> В концертном зале проводятся различные мероприятия: концерты, спектакли, вокальные, танцевальные и театральные конкурсы, фестивали, торжественная часть последних звонков и выпускных, подростковые дискотеки, вечера отдыха для людей пожилого возраста, игровые программы для детей, общественные собрания для обсуждения социальных вопросов. Также в зале проходят репетиции танцевальных, вокальных и театральных взрослых и детских коллективов.</p><p>В мастерской проходят занятия детских клубных формирований по аппликации и рисованию, лепке из теста и глины. Также проводятся мастер-классы по лепке из глины и росписи готовых глиняных поделок.</p>	http://ckvytegra.vlg.muzkult.ru	gdkvytegra@mail.ru	[{"value": "78174621195"}]	{"url": "https://all.culture.ru/uploads/9414d1152612969156adc774bdab6b09.jpg", "title": "z2U-Ho5VPdA.jpg"}	[{"url": "https://all.culture.ru/uploads/efca44ba4a751b538536090b2641fdc8.jpg", "title": "skyVVpFeG8.jpg"}, {"url": "https://all.culture.ru/uploads/6ce6a0c7f62c250e04718a8f01ef7131.jpg", "title": "HohjXmLkmj8.jpg"}, {"url": "https://all.culture.ru/uploads/bd990f2e7bbe8d0887221f96c8d4f864.jpg", "title": "M1fSgkxh68M.jpg"}]	\N	Дворцы культуры и клубы	БУК «ЦК «Вытегра»	Вытегорский район	Europe/Moscow	пр-кт Ленина,5а	\N	обл Вологодская,р-н Вытегорский,г Вытегра,пр-кт Ленина,5а	\N	3508006255	mincult	Вытегорский район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Центр Культуры \\"Вытегра\\"","networkId":"105546668","updateDate":"2023-04-17T12:25:18Z","createDate":"2023-04-17T12:25:18Z","accountId":47211,"postingGroupId":41806}]	20279	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "21:00:00", "from": "08:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	{"to": "20:00:00", "from": "17:00:00"}	\N	\N	\N	\N	\N	\N	\N	78646	[{"url":"https://www.culture.ru/institutes/91518/centr-kultury-vytegra","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vytegra/dvorcy-kultury-i-kluby/99245pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-04-05T07:02:51Z	2023-06-08T13:24:20Z	0101000020E6100000B0C8AF1F62394240D6AA5D13D2804E40
Явенгский сельский дом культуры	Вожегодский район	Europe/Moscow	ул Советская,д 12а	\N	обл Вологодская,р-н Вожегодский,п База,ул Советская,д 12а	{"type": "Point", "coordinates": [40.150309, 60.605379]}	<p>Явенгский сельский дом культуры был построен в рамках национального проекта «Культура» и сдан в эксплуатацию 24 декабря 2020 года. В общей сложности он обслуживает около 1000 человек. В деятельности Дома культуры основным направлением является сохранение традиций местности, развитие народного исполнительства фольклорной и авторской песни. Большое внимание уделяется духовности, воспитанию патриотизма, сохранению исторической памяти. </p><p>В Доме культуры организована работа 26 кружковых объединений различного направления для детей, молодежи и взрослого населения, в которых занимается более 200 человек. Наиболее стабильно работают вокальные группы «Рябинушки», «Сударушка», «Девчата», имеющие большой опыт и стаж. Молодежные коллективы имеют свою специфику – танцевальное и театральное направления. Дети занимаются в кружках сольного пения, танцевальном кружке, клубе «Игровичок».</p>	\N	ksk-1-61@mail.ru	[{"value": "79218263757", "comment": ""}]	{"url": "https://all.culture.ru/uploads/02accf92f228f00af532d7020c2a7758.jpg", "title": "20210104_110938.jpg"}	[{"url": "https://all.culture.ru/uploads/9229e8ea3bbc2b0aaaedb09db5991d28.jpg", "title": "20220718_160029.jpg"}, {"url": "https://all.culture.ru/uploads/4eae137d71440115b41da64eba13e5ab.jpg", "title": "20220718_180854.jpg"}, {"url": "https://all.culture.ru/uploads/fc26a959e75c07cb2b0ccf16431d406a.jpg", "title": "20220723_130700.jpg"}, {"url": "https://all.culture.ru/uploads/133b4b459211daf59d8ac2e3a719e6ec.jpg", "title": "1640526732049.jpg"}]	\N	Дворцы культуры и клубы	МБУ КСК Явенгское	Вожегодский район	Europe/Moscow	д 67	\N	обл Вологодская,р-н Вожегодский,с Покровское,д 67	\N	3506005023	mincult	Вожегодский район	Europe/Moscow	\N	20173	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "22:00:00", "from": "13:00:00"}	{"to": "19:00:00", "from": "13:00:00"}	\N	\N	\N	\N	\N	\N	\N	72981	[{"url":"https://www.culture.ru/institutes/85849/yavengskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vozhega/dvorcy-kultury-i-kluby/86576pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-18T20:06:00Z	2023-06-21T08:00:01Z	0101000020E6100000B1A547533D134440B4571F0F7D4D4E40
Тимановский сельский дом культуры	Бабушкинский район	Europe/Moscow	д 3	\N	обл Вологодская,р-н Бабушкинский,д Тиманова Гора,д 3	{"type": "Point", "coordinates": [43.701601, 59.939627]}	<p>Здание расположено на территории Тимановского сельского поселения. В 2020 году был проведен ремонт по программе губернатора «Сельский дом культуры».</p><p>Коллективы учреждения принимают активное участие не только в жизни своего клуба, но и посещают районные фестивали, такие как «Родники российских деревень», «Костры Леденьги», фестиваль танца «Свой стиль», фестиваль «Белый гриб» и другие.</p><p>Филиал посещают гости из области по программе губернатора «Культурный экспресс». Каждый год ДК становится площадкой районного спортивного соревнования «Тимановские игрища».</p><p>Ежегодно проводится мероприятие районного уровня, приуроченное ко Дню вывода советских войск из Афганистана (15 февраля). В учреждении собираются все воины-интернационалисты Бабушкинского района. Проводится торжественный митинг на могиле И. П. Филиппова.</p><p>Ежегодно работники совместно с участниками клубных формирований организуют День деревни Тиманова Гора и праздник Троицы в деревне Пожарище.</p>	\N	timanovsdk@mail.ru	[{"value": "78174534207", "comment": "Заведующий"}]	{"url": "https://all.culture.ru/uploads/bb602adbeda8bd6b58c8625a8260bf51.jpg", "title": "iylG1oKdH10.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Центральный Дом культуры» Бабушкинского муниципального округа	Бабушкинский район	Europe/Moscow	ул. Бабушкина,63	\N	обл Вологодская,р-н Бабушкинский,с им Бабушкина,ул. Бабушкина,63	\N	3502005590	mincult	Бабушкинский район	Europe/Moscow	\N	26248	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	{"to": "16:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "12:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	72843	[{"url":"https://www.culture.ru/institutes/85964/timanovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/imeni-babushkina/dvorcy-kultury-i-kluby/86696pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-17T08:10:52Z	2023-06-21T15:01:06Z	0101000020E6100000A2EBC20FCED9454024B891B245F84D40
Советский сельский клуб	Тотемский район	Europe/Moscow	ул Октябрьская,д 6	\N	обл Вологодская,р-н Тотемский,п Советский,ул Октябрьская,д 6	{"type": "Point", "coordinates": [42.71773, 59.921421]}	<p>Год основания Советского сельского клуба – 1967-й. В настоящее время это филиал Центра развития культуры «Тотьма». </p><p>В филиале занимаются 29 клубных формирований разных направлений: патриотическое воспитание, сохранение народных традиций, спорт, танцы, театр, вокал. Их посещают 715 человек разных возрастных категорий. </p><p>Советский клуб – единственный филиал, где есть инклюзивные формирования: танцевальный коллектив и театральная студия «Будоражка». Для детей с ОВЗ работает программа «Радуга». Занимаются 45 детей. </p><p>Ежегодно в филиале проводятся отчетные концерты танцевальных, вокальных и театральных коллективов. Творческие коллективы регулярно принимают участие в организации и проведении выездных концертов в других филиалах Центра развития культуры.</p>	\N	\N	[]	{"url": "https://all.culture.ru/uploads/4a2048f4b7687412e02a747fb09bbcfb.jpg", "title": "l5wAhewwS0M.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Центр развития культуры «Тотьма»	Тотемский район	Europe/Moscow	Вологодская,11	\N	обл Вологодская,р-н Тотемский,д Варницы,Вологодская,11	\N	3518003616	mincult	Тотемский район	Europe/Moscow	\N	25908	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	80065	[{"url":"https://www.culture.ru/institutes/93050/sovetskii-selskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/totma/dvorcy-kultury-i-kluby/102363pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-06-29T07:45:29Z	2023-06-29T08:00:05Z	0101000020E6100000D6AD9E93DE5B45407F6C921FF1F54D40
Никольский дом культуры	Тотемский район	Europe/Moscow	ул Н.Рубцова,д 30	\N	обл Вологодская,р-н Тотемский,с Никольское,ул Н.Рубцова,д 30	{"type": "Point", "coordinates": [42.531025, 59.488789]}	<p> Никольский дом культуры является одним из центров культуры и досуга населения села. Расположен в типовом здании 1972 года постройки. В 2021–2022 годах по программам губернатора «Сельский дом культуры» и «Местный дом культуры» произведен капитальный ремонт здания и приобретено новое оборудование.</p><p>Село Никольское славится тем, что в нем жил и творил русский поэт Николай Михайлович Рубцов. Поэтому сюда часто приезжают поэты и писатели, вокальные коллективы, исполняющие песни на его стихи. Местом, где проходили и проходят встречи гостей с сельчанами, стал именно Дом культуры. Мероприятия, посвященные творчеству Николая Рубцова, такие как «Рубцовские чтения», «Рубцовский костер на Толшме», «Рубцовская осень», стали для села традиционными и собирают почитателей творчества поэта со всей России.</p><p> В настоящее время при Доме культуры осуществляют свою деятельность 16 клубных формирований разной направленности, в которых занимаются 116 участников. <br /></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/f2599697f37585472858bd5f137ec70b.jpg", "title": "DiYmy8jmAyc.jpg"}	\N	\N	Дворцы культуры и клубы	Муниципальное бюджетное учреждение культуры «Центр развития культуры «Тотьма»	Тотемский район	Europe/Moscow	Вологодская,11	\N	обл Вологодская,р-н Тотемский,д Варницы,Вологодская,11	\N	3518003616	mincult	Тотемский район	Europe/Moscow	\N	25908	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "17:00:00", "from": "11:00:00"}	{"to": "17:00:00", "from": "11:00:00"}	{"to": "17:00:00", "from": "11:00:00"}	{"to": "17:00:00", "from": "11:00:00"}	{"to": "17:00:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	80030	[{"url":"https://www.culture.ru/institutes/93042/nikolskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/totma/dvorcy-kultury-i-kluby/102271pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-06-26T08:26:26Z	2023-06-26T10:34:06Z	0101000020E6100000E02D90A0F843454080D250A390BE4D40
Плосковский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Школьная,д 1	\N	обл Вологодская,р-н Грязовецкий,п Плоское,ул Школьная,д 1	{"type": "Point", "coordinates": [40.28000977909849, 58.64341485828253]}	<p>Плосковский сельский дом культуры является одним из филиалов бюджетного учреждения культуры Грязовецкого муниципального района Вологодской области «Культурно-досуговый центр», территориально расположен в Ростиловском муниципальном образовании.</p><p>Дом культуры впервые распахнул свои двери для посетителей 1 января 1979 года. С того момента и по сей день он является центром культурной жизни поселка. Сегодня здесь ведут творческую деятельность 11 клубных формирований. Еженедельно для населения проводятся разнообразные торжественные мероприятия, праздничные концерты, развлекательные программы и акции.<br /></p>	\N	t.sushkova2018@yandex.ru	[{"value": "79115465285"}]	{"url": "https://all.culture.ru/uploads/ec335b2f9362499a5051b29aed5bcacb.jpg", "title": "rzGLnQ29aAk.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73589	[{"url":"https://www.culture.ru/institutes/86688/ploskovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/88062pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-30T14:20:59Z	2023-07-14T08:20:54Z	0101000020E6100000E4E4455CD7234440BF0A076B5B524D40
Сидоровский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Школьная,д 3	\N	обл Вологодская,р-н Грязовецкий,с Сидорово,ул Школьная,д 3	{"type": "Point", "coordinates": [40.97710406005709, 58.7566198887365]}	<p>Сидоровский сельский дом культуры является одним из филиалов бюджетного учреждения культуры Грязовецкого муниципального района Вологодской области «Культурно-досуговый центр», территориально расположен в Сидоровском муниципальном образовании.</p><p>История Дома культуры началась в 1962 г., когда люди после работы вечерами собирались в одном из бараков, где был обустроен красный уголок – очаг культуры. Люди устраивали посиделки с гармонью, танцы. Здесь создавались агитбригады, организовывались концерты.</p><p>С увеличением населения села и улучшением качества жизни необходимость расширения клуба была очевидна. В стенах нового клуба развернулась бурная деятельность: концерты, тематические вечера, народные гулянья и многое другое – все было пронизано задором, энергией и оптимизмом. Здесь проводились и лекции, и собрания, и танцы. В клубе выступали школьные хоры, воспитанники детского сада, вокально-инструментальные ансамбли. Здесь принимали в пионеры и комсомол, чествовали передовиков производства.</p><p>В настоящее время в Сидоровском сельском доме культуры действуют 13 клубных формирований, количество участников – 160 человек. Приоритетное направление деятельности – работа с вокальными и хореографическими коллективами.</p>	\N	lidya.puga4eva@yandex.ru	[{"value": "78175561306"}]	{"url": "https://all.culture.ru/uploads/3effb5e3a583bc14d5d978b29b5979a7.JPG", "title": "IMG_4307.JPG"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73577	[{"url":"https://www.culture.ru/institutes/86689/sidorovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/88060pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-30T12:03:49Z	2023-07-14T08:27:11Z	0101000020E6100000F45DEFBE117D44402FD0A6EBD8604D40
Зайчиковский сельский дом культуры	Бабушкинский район	Europe/Moscow	ул Школьная,д 15а	\N	обл Вологодская,р-н Бабушкинский,п Зайчики,ул Школьная,д 15а	{"type": "Point", "coordinates": [44.123603, 59.599276]}	<p>Здание Зайчиковского сельского дома культуры было открыто в 1979 году. В 2021 году был проведен ремонт по программе губернатора «Сельский дом культуры».</p><p>Основными видами деятельности являются создание и организация работы кружков, любительских объединений, клубов по интересам различной направленности. Подготовка и проведение концертных программ, тематических вечеров, фольклорных посиделок.<br /></p><p>На базе филиала созданы следующие клубные формирования:</p><ul><li>клуб ветеранов «Добрые соседи»;</li><li>вокальный коллектив «Рябинушка»; </li><li>танцевальный коллектив «Товарочки» (ветераны); </li><li>творческий клуб для ветеранов «Посиделки»;</li><li> детский танцевальный коллектив «Солнышко»;</li><li>творческий коллектив «Мозаика»; </li><li>спортивный кружок «Здоровячок» для детей и «Жить здорово» для ветеранов; </li><li>юношеский клуб «Юность»; </li><li>семейный клуб выходного дня «Отдыхай-ка».</li></ul><p>Коллективы дома культуры принимают участие в районных фестивалях, таких как «Родники российских деревень», «Костры «Леденьги» и другие. Кроме того, филиал участвует в программе губернатора «Культурный экспресс».</p>	\N	clubz35@yandex.ru	[{"value": "79814454220", "comment": "Заведующий"}]	{"url": "https://all.culture.ru/uploads/4a2add021c71222e0a0304acb68d7f22.jpg", "title": "xLEt7NWK2k.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Центральный Дом культуры» Бабушкинского муниципального округа	Бабушкинский район	Europe/Moscow	ул. Бабушкина,63	\N	обл Вологодская,р-н Бабушкинский,с им Бабушкина,ул. Бабушкина,63	\N	3502005590	mincult	Бабушкинский район	Europe/Moscow	\N	26248	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "16:00:00", "from": "11:00:00"}	{"to": "16:00:00", "from": "11:00:00"}	{"to": "16:00:00", "from": "11:00:00"}	{"to": "16:00:00", "from": "11:00:00"}	{"to": "21:00:00", "from": "18:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73512	[{"url":"https://www.culture.ru/institutes/86620/zaichikovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/imeni-babushkina/dvorcy-kultury-i-kluby/87922pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-29T12:13:23Z	2023-07-13T11:36:36Z	0101000020E610000000581D39D20F46408CA37213B5CC4D40
Сидоровский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Центральная,д 8	\N	обл Вологодская,р-н Грязовецкий,д Сидоровское,ул Центральная,д 8	{"type": "Point", "coordinates": [40.397508, 58.718253]}	<p>Сидоровский сельский дом культуры является филиалом Культурно-досугового центра.</p><p>Здание учреждения введено в эксплуатацию в 1983, с тех пор является популярным местом встреч и отдыха не только для жителей деревни, но и близлежащих населенных пунктов.</p><p>Население д. Сидоровское занимается в клубных формированиях хорового пения, танцевальных, театральных кружках, студиях декоративно-прикладного творчества, вязания и вышивки лентами. Особой гордостью дома культуры является вокальный коллектив «Куделя», который принимает участие в районных, областных мероприятиях, концертах и фестивалях, а также является номинантом международной премии «Филантроп».</p><p>Осенью 2022 года в здании филиала произведен ремонт кровли, замена окон и дверей.</p>	\N	\N	[{"value": "79005020178"}]	{"url": "https://all.culture.ru/uploads/4f1836b68e7aa49784ad898bfd22fe8c.jpg", "title": "hUyHCvRCD0U.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	72960	[{"url":"https://www.culture.ru/institutes/86063/sidorovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/87905pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-18T12:04:05Z	2023-07-13T15:06:10Z	0101000020E6100000FEF2C98AE13244407FA0DCB6EF5B4D40
Комьянский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Сосновая	\N	обл Вологодская,р-н Грязовецкий,д Хорошево,ул Сосновая	{"type": "Point", "coordinates": [40.27721429951374, 59.01996451016252]}	<p>Здание Комьянского сельского дома культуры было введено в эксплуатацию в 1989 году и имеет достаточное количество отдельных помещений для культурно-досуговой работы.</p><p>В филиале осуществляют свою деятельность клубные формирования разных направлений, участниками которых являются 398 человек. Общее количество кружков и клубов – 24. Ведут работу 16 коллективов самодеятельного творчества: вокальные, танцевальные, декоративно-прикладного творчества, которые успешно и результативно принимают участие во многих фестивалях и конкурсах различного уровня. Здесь каждому найдется занятие по душе!</p>	\N	\N	[{"value": "78175543257"}]	{"url": "https://all.culture.ru/uploads/8ecd3db6f41af8d593edb49a7b7b7cce.jpg", "title": "3fzPw-AaHg8.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	72955	[{"url":"https://www.culture.ru/institutes/86053/komyanskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/86842pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-18T11:44:11Z	2023-06-27T13:19:58Z	0101000020E6100000913217C27B234440451D73328E824D40
Городской дом культуры «Мир»	Харовский район	Europe/Moscow	ул Энергетиков,д 11	\N	обл Вологодская,р-н Харовский,г Харовск,ул Энергетиков,д 11	{"type": "Point", "coordinates": [40.21833, 59.951303]}	<p>Городской дом культуры «Мир» был введен в эксплуатацию в 1967 году. Зрительный зал рассчитан на 300 посадочных мест. Также в здании есть танцевальный зал, зал для занятий хореографией, игровые комнаты. Благодаря победе в конкурсе Федерального фонда социальной и экономической поддержки кинематографии кинозал обрел новую жизнь накануне 50-летия Дома культуры. </p><p>Ежегодно более 300 культурно-досуговых мероприятий ГДК посещает более 50 тысяч человек. Ведут работу 40 клубных формирований, в которых занимаются местные жители в возрастной категории от 4 до 70 лет. Четыре коллектива имеют звание «народный».<span> Творческие к</span>оллективы<span> </span>являются активными участниками федеральных, региональных, муниципальных, городских фестивалей, конкурсов и мероприятий. </p>	https://gdkmirx.ru	gdk.mirharovsk@yandex.ru	[{"value": "78173221731", "comment": "Т. Н. Скворцова"}]	{"url": "https://all.culture.ru/uploads/e2eeb5a1b921310d2ce0e800bd7af049.jpg", "title": "6.jpg"}	[{"url": "https://all.culture.ru/uploads/ddd973dbeeb7d01b459a7103e7c9a6c0.jpg", "title": "a-1-w31-SXo.jpg"}, {"url": "https://all.culture.ru/uploads/45a3e02af2616d3ba2c0aa7e1b183e4d.jpg", "title": "mdkALQp2ZKw.jpg"}]	\N	Дворцы культуры и клубы	МБУК «ГДК «МИР»	Харовский район	Europe/Moscow	ул Энергетиков,д 11	\N	обл Вологодская,р-н Харовский,г Харовск,ул Энергетиков,д 11	\N	3521006279	mincult	Харовский район	Europe/Moscow	\N	20589	[{"id": 122, "name": "Искусство", "sysName": "iskusstvo"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 753, "name": "Кинозал", "sysName": "kinozal"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	61727	[{"url":"https://www.culture.ru/institutes/62434/gorodskoi-dom-kultury-mir","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/harovsk/dvorcy-kultury-i-kluby/88037pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-02-11T07:16:47Z	2023-07-14T11:08:20Z	0101000020E61000002BDEC83CF21B444019CBF44BC4F94D40
Фроловской сельский дом культуры	Грязовецкий район	Europe/Moscow	д 26	\N	обл Вологодская,р-н Грязовецкий,д Фрол,д 26	{"type": "Point", "coordinates": [40.491615, 58.921619]}	<p>На базе дома культуры осуществляют культурно-досуговую деятельность 11 клубных формирований.</p><p>Для людей старшего возраста функционирует оздоровительный кружок «Вымпел», кружок декоративно-прикладного творчества «Фантазия», поэтический клуб «Вдохновение», вокальный ансамбль ветеранов «Забавушка».</p><p>Для детей и гостей учреждения проводятся интерактивные программы по сохранению народной традиционной культуры, а также разработана туристическая программ «Путешествие в старину».</p><p>В 2021 году был произведен ремонт входной группы, в 2022 году отремонтированы кровля, окна, двери.</p>	\N	frolovskoidk@yandex.ru	[{"value": "78175545245"}]	{"url": "https://all.culture.ru/uploads/24cc6ca1b2203fdb339d43bf5b0ee977.jpg", "title": "Фроловской  филиал (1) (1).jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73718	[{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/88518pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/86800/frolovskoi-selskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2022-12-02T13:47:30Z	2023-07-25T11:17:28Z	0101000020E61000008D9C853DED3E4440A52F849CF7754D40
Чернецкий сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Центральная,д 47	\N	обл Вологодская,р-н Грязовецкий,д Скородумка,ул Центральная,д 47	{"type": "Point", "coordinates": [40.01615954886525, 58.86367138054447]}	<p>Дом культуры является культурным центром д. Скородумка, располагается в большом кирпичном здании 1988 года постройки, а под культурно-досуговую деятельность выделено 10 помещений, включая зрительный и танцевальный зал.</p><p>Учреждение пользуется большой популярностью у местных жителей. Здесь проводится более 200 мероприятий в год, работают творческие и спортивные кружки для детей и людей старшего поколения, занимаются вокальные и хореографические коллективы. Ежегодно дом культуры становится площадкой для проведения межпоселенческого фестиваля патриотической песни «Война и песня» и открытого фестиваля «Круче всех». </p><p>Участники художественной самодеятельности успешно представляют района на областных конкурсах.</p><p>Одним из главных направлений работы дома культуры является привлечение людей старшего поколения к активной культурной жизни, разнообразие их досуга.</p>	\N	mocrova.nata@yandex.ru	[{"value": "78175559288"}]	{"url": "https://all.culture.ru/uploads/dbbc23fa8219464d3332ba8c85be7fd6.jpg", "title": "IMG_20221201_111121 (1).jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73714	[{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/88517pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/86796/cherneckii-selskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2022-12-02T13:25:45Z	2023-07-25T11:10:57Z	0101000020E61000007AF21E8411024440FFF6A6C88C6E4D40
Лежский сельский дом культуры	Грязовецкий район	Europe/Moscow	д 32	\N	обл Вологодская,р-н Грязовецкий,д Спасское,д 32	{"type": "Point", "coordinates": [40.746387, 58.923426]}	<p>Лежский сельский дом культуры всегда был центром притяжения жителей села Спасского. Он располагается в одноэтажном здании 1975 года постройки. Несмотря на небольшую площадь, в Лежском сельском доме культуры имеются два оборудованных досуговых помещения и просторный зрительный зал, который ежедневно распахивает своих двери для жителей села.</p><p>Культурно-досуговая деятельность поддерживается на высоком уровне, обеспечивая односельчан интересным времяпровождением и досугом: кружковыми занятиями, концертами и фестивалями различного уровня. Сотрудники Лежского сельского дома культуры регулярно проходят профессиональные курсы переподготовки, что позволяет учреждению оставаться современным.</p>	\N	natalyahlusova@yandex.ru	[{"value": "79517477194"}]	{"url": "https://all.culture.ru/uploads/ebbbdcc54d04dff0d4854bcdce1437b5.JPG", "title": "SAM_2029.JPG"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73710	[{"url":"https://www.culture.ru/institutes/86793/lezhskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/89264pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-12-02T13:07:10Z	2023-08-07T13:44:41Z	0101000020E61000006C94F59B895F44405723BBD232764D40
Ростиловский сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Молодежная,д 4	\N	обл Вологодская,р-н Грязовецкий,д Ростилово,ул Молодежная,д 4	{"type": "Point", "coordinates": [40.264737, 58.800297]}	<p>Ростиловский сельский дом культуры основан в 1968 году, с тех пор пользуется огромным спросом среди жителей не только деревни Ростилово, но и близлежащих населенных пунктов. Творческая жизнь Дома культуры очень насыщена и разнообразна: здесь есть и кружки по различным интересам, и клубные формирования, общая численность посетителей в которых – 366 человек. </p><p>Регулярно проводятся праздничные концерты, театральные постановки, а также фестивали и конкурсы для односельчан и жителей Грязовецкого муниципального района. Особенно популярен хореографический ансамбль «Стиль», который становится лауреатом конкурсов различного уровня.</p>	\N	dom.kultury.rostilovo@mail.ru	[{"value": "78175554292"}]	{"url": "https://all.culture.ru/uploads/0cd863e359479af84cc437b381ef7ac6.jpg", "title": "EBeKaWvYWWg.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73653	[{"url":"https://www.culture.ru/institutes/86737/rostilovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/88510pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-12-01T13:55:14Z	2023-08-07T09:42:54Z	0101000020E61000004485EAE6E2214440200BD12170664D40
Межпоселенческий центральный дом культуры п. Тоншалово	Череповецкий район	Europe/Moscow	пл Труда,д 3	автобус № 122	обл Вологодская,р-н Череповецкий,п Тоншалово,пл Труда,д 3	{"type": "Point", "coordinates": [37.947964, 59.189462]}	<p><span> В учреждении работают 24 клубных формирования. Ведущими творческими коллективами являются образцовый художественный коллектив цирковая студия «Карабас-Барабас», образцовый художественный коллектив вокальный ансамбль «Веснушки», народный хор ветеранов «Любава», театральный кружок «Крыжовник», вокально-эстрадный ансамбль «Забияки», вокальный ансамбль «Юность», студия танца «Манго», секция карате, фитнес для детей и фитнес для взрослых.</span></p><p><span> Коллектив Дома культуры является организатором районных и областных мероприятий, конкурсов и фестивалей детского и юношеского творчества. В учреждении реализуются проекты для детей и взрослых, самые известные среди них – «Песня детям», «Даешь, молодежь!», «Взрослые и дети», «Не стареют душой ветераны», «Я здесь живу, и край мне этот дорог», «Победа деда – моя победа», открытый районный праздник «Играй, гармонь череповецкая».</span><span> </span></p>	http://dkcher.ru	mtsdkcherrayon@yandex.ru	[{"value": "78202694030", "comment": ""}]	{"url": "https://all.culture.ru/uploads/f705fca59d1be17d7e5f7e3cf2e84302.jpg", "title": "VMylwWBiSKA.jpg"}	[{"url": "https://all.culture.ru/uploads/7430e452c472fa16bb92b40cc56e3d11.jpg", "title": "0Zz0xbgBIAJiXS1D8hDrGZ-nJ50m445RGF2J-3Bj4Ul8lyKz_HVeQUPDealMXx5aZgmGtR_RXb48tvllMBmJQhg4.jpg"}, {"url": "https://all.culture.ru/uploads/c75f8c7415f01604851d2465f1c32f26.jpg", "title": "1.jpg"}, {"url": "https://all.culture.ru/uploads/4c4666ab57911dd001ce762b62dec51d.jpg", "title": "AT13jmY1SzrD-i65Bx1tuYTBbDOXXJWzRJ4yXr7TYEZ_vcbubKtLQ6aiNs8sjh6aBxHXd7Q1MMZ5ykzYFdNK.jpg"}, {"url": "https://all.culture.ru/uploads/56f6e2e0c13038fa930566cc444e5ada.jpg", "title": "_n2Tp0eFj6A.jpg"}, {"url": "https://all.culture.ru/uploads/01b7f52a43e8119fbd219fa63a34b041.jpg", "title": "_cjndvjNZe4.jpg"}, {"url": "https://all.culture.ru/uploads/c58b3eeb4b8e72768c04019df9e58eef.jpg", "title": "9urZhW6ZDHs.jpg"}, {"url": "https://all.culture.ru/uploads/dac344fa238fc352c998d8c723d70e8c.jpg", "title": "F-Or0XrxfZ_J-Lewi1InPx8zrtdKa1V9beCxOUPW6HiG3ePsVaehryMldVe0dnFLkRVRO1dOOOg3Ku2Hf_h32mhh.jpg"}]	\N	Дворцы культуры и клубы	МУК «Межпоселенческий центральный дом культуры»	Череповецкий район	Europe/Moscow	Труда,3	\N	обл Вологодская,р-н Череповецкий,с/мо Тоншаловское сельское поселение,Труда,3	\N	3523014490	mincult	Череповецкий район	Europe/Moscow	[{"network":"vk","name":"Дом Культуры Тоншалово","networkId":"35492903","updateDate":"2018-10-03T07:26:57Z","createDate":"2018-10-03T07:26:57Z","accountId":22557,"postingGroupId":19948},{"network":"vk","name":"Культура Череповецкого района","networkId":"206861193","updateDate":"2022-11-24T11:37:01Z","createDate":"2022-11-24T11:37:01Z","accountId":22557,"postingGroupId":37541}]	20217	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	73626	[{"url":"https://www.culture.ru/institutes/86711/mezhposelencheskii-centralnyi-dom-kultury-p-tonshalovo","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/cherepovec/dvorcy-kultury-i-kluby/88649pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-12-01T09:11:23Z	2023-07-25T07:25:53Z	0101000020E610000086E464E256F94240D9EA724A40984D40
Миньковский сельский дом культуры	Бабушкинский район	Europe/Moscow	ул Школьная,д 13	\N	обл Вологодская,р-н Бабушкинский,с Миньково,ул Школьная,д 13	{"type": "Point", "coordinates": [43.4864666659359, 59.698941644293676]}	<p>Дом культуры расположен в самом центре села, что является удобным при проведении всех мероприятий. В филиале проведен ремонт по программе «Национальные проекты России». В 2022 году Дому культуры исполнилось 35 лет. В нем работает слаженный творческий коллектив.<span><br /></span></p><p><span>В филиале действуют 13 клубных формирований, в них занимается 197 человек. </span><span> Творческие коллективы являются постоянными участниками мероприятий и любимцами публики. Кроме того, они с удовольствием выезжают с концертными программами в малонаселенные пункты района.</span></p><p><span> Ежегодно Дом культуры принимает участие в районных фестивалях и конкурсах: «Родники российских деревень», «Свой стиль», «Костры Леденьги», фестиваль «Белого гриба» и т. д. </span><span> Изюминкой филиала являются его музеи: музей старины и музей СССР. Они пользуются большой популярностью не только у местных жителей, но и у гостей районного центра.</span></p><p><span> Во время пандемии работники Дома культуры создали 2 проекта: «Былое» и «Нюра и Матрена». Оба получили большую популярность. В настоящее время видеоролики про Нюру и Матрену известны не только в Вологодской области – проект вышел на всероссийский уровень, став победителем среди блогеров России.</span></p>	\N	\N	[{"value": "79212350547", "comment": "Заведующий"}]	{"url": "https://all.culture.ru/uploads/c43bebe30f69bbd985e7085afd0b1d0a.jpg", "title": "7UG2BfJDoVk.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Центральный Дом культуры» Бабушкинского муниципального округа	Бабушкинский район	Europe/Moscow	ул. Бабушкина,63	\N	обл Вологодская,р-н Бабушкинский,с им Бабушкина,ул. Бабушкина,63	\N	3502005590	mincult	Бабушкинский район	Europe/Moscow	\N	26248	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	{"to": "16:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	72835	[{"url":"https://www.culture.ru/institutes/85948/minkovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/imeni-babushkina/dvorcy-kultury-i-kluby/88760pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-11-17T07:36:03Z	2023-07-27T06:40:49Z	0101000020E6100000F9642A8A44BE4540E30678EB76D94D40
Новостаринский дом культуры	Бабаевский район	Europe/Moscow	д 66	\N	обл Вологодская,р-н Бабаевский,д Новая Старина,д 66	{"type": "Point", "coordinates": [35.985432, 59.992839]}	<p><span><span> </span>Новостаринский дом культуры с 2016 года </span> располагается в одном здании с библиотекой, медпунктом и администрацией бывшего Борисовского поселения.</p> <p><span>В учреждении осуществляют творческую деятельность 5 клубных формирований, в которых занимаются 58 человек от 8 до 75 лет:<span> </span></span></p> <ul><li><span>вокальная группа «Бабье лето»;</span></li><li><span>театральный кружок «Маски-шоу»;</span></li><li><span>детский клуб «ВсеЗнайка»;</span></li><li><span>клуб ветеранов «Завалинка»;</span></li><li><span>молодежный клуб «Диско».</span></li></ul> <p><span> </span></p> <p><span>Творческие коллективы Новостаринского дома культуры принимают активное участие во всех поселенческих мероприятиях, районных ярмарках и фестивалях, осуществляют выездные концерты в соседние деревни. <span> </span></span></p> <p><span><span> </span></span><span></span></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/b8fe881d1b5aa3b8579226ddec60fe70.jpg", "title": "НСтарина.jpg"}	\N	\N	Дворцы культуры и клубы	МАУК «Бабаевский центр культурного развития»	Бабаевский район	Europe/Moscow	пл Привокзальная,1	\N	обл Вологодская,р-н Бабаевский,г Бабаево,пл Привокзальная,1	\N	3501008870	mincult	Бабаевский район	Europe/Moscow	[{"network":"vk","name":"Володинский Дом культуры","networkId":"158838778","updateDate":"2018-10-12T11:09:38Z","createDate":"2018-10-12T11:09:38Z","accountId":22721,"postingGroupId":20087},{"network":"vk","name":"Кдц Бабаево","networkId":"275144982","isPersonal":true,"updateDate":"2018-10-12T11:09:46Z","createDate":"2018-10-12T11:09:46Z","accountId":22721,"postingGroupId":20088},{"network":"vk","name":"МБУК \\"Бабаевский центр культурного развития\\"","networkId":"23582611","updateDate":"2018-10-12T11:09:31Z","createDate":"2018-10-12T11:09:31Z","accountId":22721,"postingGroupId":20086}]	20369	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	74994	[{"url":"https://www.culture.ru/institutes/87967/novostarinskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/babaevo/dvorcy-kultury-i-kluby/90568pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-01-17T08:41:11Z	2023-08-29T06:26:22Z	0101000020E61000004837C2A222FE4140BF982D5915FF4D40
Борисовский дом культуры	Бабаевский район	Europe/Moscow	ул Комсомольская,д 2	\N	обл Вологодская,р-н Бабаевский,с Борисово-Судское,ул Комсомольская,д 2	{"type": "Point", "coordinates": [36.003767, 59.907031]}	<p>В Борисовском доме культуры работают 3 специалиста: художественный руководитель, балетмейстер, специалист по жанрам творчества. Их них двое – с профессиональным образованием в культуре.</p> <p><span>В учреждении ведут деятельность 20 клубных формирований <span>разной направленности</span>: <span>танцевальные, вокальные, театральные, клубы ветеранов и инвалидов, детские клубы, развлекательные</span>, <span>творческие. В них </span> занимаются 325 человек от 6 до 70 лет. </span><span></span></p> <p><span>Творческие формирования – лауреаты и дипломанты различных конкурсов и фестивалей районного, областного, межрегионального, российского, международного уровня. 3 коллектива имеют звание «Народный самодеятельный коллектив». </span></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/15cb8120d3567c2ef70424317d6c98a6.jpg", "title": "борисово.jpg"}	\N	\N	Дворцы культуры и клубы	МАУК «Бабаевский центр культурного развития»	Бабаевский район	Europe/Moscow	пл Привокзальная,1	\N	обл Вологодская,р-н Бабаевский,г Бабаево,пл Привокзальная,1	\N	3501008870	mincult	Бабаевский район	Europe/Moscow	[{"network":"vk","name":"Володинский Дом культуры","networkId":"158838778","updateDate":"2018-10-12T11:09:38Z","createDate":"2018-10-12T11:09:38Z","accountId":22721,"postingGroupId":20087},{"network":"vk","name":"Кдц Бабаево","networkId":"275144982","isPersonal":true,"updateDate":"2018-10-12T11:09:46Z","createDate":"2018-10-12T11:09:46Z","accountId":22721,"postingGroupId":20088},{"network":"vk","name":"МБУК \\"Бабаевский центр культурного развития\\"","networkId":"23582611","updateDate":"2018-10-12T11:09:31Z","createDate":"2018-10-12T11:09:31Z","accountId":22721,"postingGroupId":20086}]	20369	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	74986	[{"url":"https://www.culture.ru/institutes/87968/borisovskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/babaevo/dvorcy-kultury-i-kluby/90567pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-01-17T08:03:22Z	2023-08-29T06:33:40Z	0101000020E6100000EBE6E26F7B004240A6BA809719F44D40
Заемский сельский дом культуры	Грязовецкий район	Europe/Moscow	д 19	\N	обл Вологодская,р-н Грязовецкий,д Заемье,д 19	{"type": "Point", "coordinates": [40.29617991739845, 58.737811698092194]}	<p>Заемский сельский дом культуры был основан в 1979 году. С тех пор является центром культурной жизни д. Заемье и близлежащих поселков.</p><p>В Заемском сельском доме культуры занимаются творчеством порядка 100 односельчан, посещая занятия 11 клубных формирований. Основные направления деятельности: вокал, хореография, театральное мастерство и декоративно-прикладное творчество.</p><p>Регулярно в Доме культуры проходят мастер-классы, праздничные программы, патриотические концерты, фестивали и конкурсы как для местных жителей, так и для гостей из близлежащих населенных пунктов.</p><p>Заведующая филиалом – Ольга Павловна Малеева.</p>	\N	maleeva.69@inbox.ru	[{"value": "79005066474", "comment": ""}]	{"url": "https://all.culture.ru/uploads/28567b996c89b30f4c4f264c0e46e60c.jpg", "title": "imgonline-com-ua-Resize-AUD7b49C7M.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	\N	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73687	[{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/89693pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/86766/zaemskii-selskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2022-12-02T09:53:06Z	2023-08-22T11:52:02Z	0101000020E6100000AA7A3939E9254440C3F41C9D705E4D40
Васильевский клуб	Великоустюгский район	Europe/Moscow	ул Парковая,д 33	\N	обл Вологодская,р-н Великоустюгский,с Васильевское,ул Парковая,д 33	{"type": "Point", "coordinates": [46.46353010144745, 60.93159346223962]}	<p> Васильевский клуб открылся в 1968 году. Основная деятельность направлена на сохранение и развитие разнообразных форм самодеятельного художественного творчества, в том числе посредством организации деятельности самодеятельных коллективов, организации досуга населения. Дом культуры проводит концертные, конкурсные, развлекательные, игровые, познавательные программы, литературно-музыкальные вечера, выставки. </p><p>На базе учреждения работают 8 клубных формирований: женский вокальный ансамбль «Нежность», вокальный ансамбль «Рябинушка», детский вокальный коллектив «Капельки», танцевальный коллектив для детей «Солнышко», танцевальный коллектив для подростков «Люкс», драматический кружок, кружок творческой деятельности «Самоделкин», спортивный кружок. В клубных формированиях занимаются 107 человек от 5 до 75 лет (на бесплатной основе).</p>	\N	natasha35region@yandex.ru	[{"value": "78173862477"}, {"value": "79211445721"}]	{"url": "https://all.culture.ru/uploads/fc73ba04052b1c9a55269eec43a4e932.jpeg", "title": "yXGeV_gUBvc.jpg"}	[{"url": "https://all.culture.ru/uploads/0cf251b9434d215f1cd5b15361f5588b.jpeg", "title": "ek7YJ_9i40E.jpg"}, {"url": "https://all.culture.ru/uploads/ae0c3fabe4cebc88dbb0e07e72d24903.jpeg", "title": "bWPv5IjtfN4.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Центр культурного развития г. Красавино»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 152	\N	обл Вологодская,р-н Великоустюгский,г Красавино,пр-кт Советский,д 152	\N	3526008640	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"Дом культуры и спорта г.Красавино","networkId":"33505837","updateDate":"2018-09-03T11:42:38Z","createDate":"2018-09-03T11:42:38Z","accountId":22303,"postingGroupId":19717},{"network":"vk","name":"Народная хореографическая студия \\"Улыбка\\"(г.Крас","networkId":"5759262","updateDate":"2018-09-03T11:43:10Z","createDate":"2018-09-03T11:43:10Z","accountId":22303,"postingGroupId":19718},{"network":"vk","name":"Просветительский центр \\"Светоч\\" ДКиС г.Красавино","networkId":"115057099","updateDate":"2018-09-03T11:44:09Z","createDate":"2018-09-03T11:44:09Z","accountId":22303,"postingGroupId":19720},{"network":"vk","name":"РОСТ.ОК","networkId":"114110862","updateDate":"2018-09-03T11:43:29Z","createDate":"2018-09-03T11:43:29Z","accountId":22303,"postingGroupId":19719}]	20579	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "23:00:00", "from": "20:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	48224	[{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/28256pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/47753/vasilevskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2020-11-23T08:05:59Z	2023-08-29T13:30:36Z	0101000020E6100000D53651F4543B474048BE5E743E774E40
Талицкая картинная галерея	Кирилловский район	Europe/Moscow	ул Юбилейная,д 9	\N	обл Вологодская,р-н Кирилловский,с Талицы,ул Юбилейная,д 9	{"type": "Point", "coordinates": [38.806466, 59.647938]}	<p> Первая и единственная в области сельская картинная галерея открылась в 2000 году в Талицах, в здании бывшего детского сада. Ее создателем выступил Юрий Белков – ветеран Великой Отечественной войны, заслуженный художник РФ, уроженец Талицкого сельсовета. Он старался каждый год приезжать в Талицы из Йошкар-Олы. Художник не только вез картины с собой, но и работал на родной земле.</p><p>На протяжении более чем 20 лет галерея является для жителей Талиц настоящей гордостью. Здесь находятся выставочные залы и кабинеты, где проводятся занятия с детьми по обучению художественному мастерству. В картинной галерее создана постоянная экспозиция с полотнами Юрия Белкова, а также выставки местных самодеятельных мастеров. </p>	\N	\N	[{"value": "79114436637", "comment": "Татьяна"}]	{"url": "https://all.culture.ru/uploads/269880e9757d8881d4564fdeb3d53d54.jpg", "title": "PofiX4ex8Co.jpg"}	[{"url": "https://all.culture.ru/uploads/d5b696dfd8533846079e25c8b6e6cf9a.jpg", "title": "w0-Pgj6mURU.jpg"}, {"url": "https://all.culture.ru/uploads/c78aaca847ad04ce89b6ded15326e746.jpg", "title": "uQK3zil0WE.jpg"}]	\N	Дворцы культуры и клубы	АУК КМР «ЦКР»	Кирилловский район	Europe/Moscow	ул Гагарина,д 98	\N	обл Вологодская,р-н Кирилловский,г Кириллов,ул Гагарина,д 98	\N	3511006791	mincult	Кирилловский район	Europe/Moscow	[{"network":"vk","name":"Центр культурного развития","networkId":"17831631","updateDate":"2018-05-29T07:22:36Z","createDate":"2018-05-29T07:22:36Z","accountId":21387,"postingGroupId":18946}]	20401	[{"id": 21, "name": "Выставочные залы", "sysName": "vystavochnye-zaly"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	80530	[{"url":"https://www.culture.ru/institutes/93501/talickaya-kartinnaya-galereya","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-08-15T12:03:35Z	2023-10-09T11:20:08Z	0101000020E610000000AB23473A674340F7EAE3A1EFD24D40
Морозовский клуб	Великоустюгский район	Europe/Moscow	ул Набережная,д 21	\N	обл Вологодская,р-н Великоустюгский,д Морозовица,ул Набережная,д 21	{"type": "Point", "coordinates": [46.29770446626046, 60.708649864083824]}	<p>Морозовский клуб был основан в 1973 году. Основные направления работы – патриотическое, краеведческое, пропаганда здорового образа жизни, организация досуга всех категорий населения. </p><p>При учреждении действуют клубные формирования по различным направлениям (народное творчество, вокальное и хореографическое направления, прикладное творчество, спорт, клубы по интересам): </p><ul><li>ансамбль русской песни «Завалинка»;</li><li>вокальная группа «Апрель»;</li><li>детский вокальный коллектив «Конфетти»;</li><li>детский танцевальный коллектив «Карамельки»;</li><li>танцевальный коллектив «Задоринки»;</li><li>семейный клуб «Счастливы вместе»;</li><li>женский клуб «Хорошее настроение»;</li><li>спортивная секция по джампингу.<br /></li></ul><p>На базе клуба проходят районные праздники, фестивали, конкурсы. Коллективы художественной самодеятельности участвуют в районных и межрегиональных конкурсах, фестивалях, часто становятся победителями и лауреатами конкурсов. </p>	http://кдцву.рф	mbykmorozovskoesk@mail.ru	[{"value": "79218202148", "comment": "начальник ОП Лобанова Лидия Васильевна"}, {"value": "78173826684", "comment": "менеджер Наталья Викторовна Жирохова"}]	{"url": "https://all.culture.ru/uploads/9faa0881c11fa5206cf19ba9f9a7c107.jpg", "title": "ajwRcMhe783wRJ-iv-D5HLIHHYFzRoJsLvBY5Wp30rQeKMvxJ22yxTlVYDBOc5cZavP82g4xelB1Kv8hcmCZJm.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "20:00:00", "from": "12:00:00"}	{"to": "20:00:00", "from": "12:00:00"}	{"to": "20:00:00", "from": "12:00:00"}	{"to": "20:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "11:00:00"}	{"to": "16:00:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	69932	[{"url":"https://www.culture.ru/institutes/83114/morozovskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/87740pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2022-06-24T18:22:22Z	2023-11-02T12:06:43Z	0101000020E61000001D3B112E1B2647400647EB09B55A4E40
Новаторский клуб	Великоустюгский район	Europe/Moscow	ул Советская,д 1	\N	обл Вологодская,р-н Великоустюгский,п Новатор,ул Советская,д 1	{"type": "Point", "coordinates": [46.20147585185128, 60.74630787686369]}	<p>В архивных фондах первое упоминание о клубе относится к 26 января 1924 года. Принято постановление о ремонте дома-дачи бывшего владельца фанерного завода И. Я. Львова, в дальнейшем использование первого этажа дома под рабочий клуб. К сожалению, здание клуба было утрачено в 1927 году в связи с пожаром. <br /></p><p> В 1975 году было начато строительство клубного помещения на 360 мест. В декабре 1979 года здание сдали в эксплуатацию. До 2000 года клуб был заводским. Клубная работа получила новый импульс, когда клуб был передан отделу культуры. Учреждение получило статус дома культуры. С 2005 года учредителем Новаторского дома культуры является администрация сельского поселения Самотовинское.</p><p><span>Дом культуры предоставляет широкий спектр услуг: концертные, конкурсно-развлекательные программы, шоу, литературно-музыкальные вечера, конкурсы и смотры.</span></p><p><span>В настоящее время в нем работают 16 кружков и клубов по интересам. Занимается 4 коллектива: ВИА «Старая пластинка», ансамбль русской песни «Журавушка», вокальный ансамбль «Сати», ансамбль ветеранов «С песней по жизни».</span></p>	http://novatordk.ru	novator_DK@mail.ru	[{"value": "78173865837", "comment": "Голованова Евгения Владимировна"}, {"value": "79212363854", "comment": "начальник"}]	{"url": "https://all.culture.ru/uploads/8500bf3e46c5cbdf8e6d9b24fa86a2fe.jpg", "title": "bZf8y2uFTf32VuE7mhWELfpSwMTYwKQgJ5eylbZI5BE04ZLCnRhuHI0yz48thR6uXWpYH6deCfHSyraQOr3K-pWm.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 322, "name": "Хор", "sysName": "hor"}, {"id": 325, "name": "Творческий коллектив", "sysName": "tvorcheskiy-kollektiv"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "09:00:00"}	{"to": "18:00:00", "from": "09:00:00"}	{"to": "18:00:00", "from": "09:00:00"}	{"to": "18:00:00", "from": "09:00:00"}	{"to": "20:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	55718	[{"url":"https://www.culture.ru/institutes/53437/novatorskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/76387pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2021-07-14T07:22:32Z	2023-11-02T11:55:01Z	0101000020E61000004751F1F5C919474039F03904875F4E40
Ильинский клуб	Великоустюгский район	Europe/Moscow	д 51	в летний период – паром из г. Великий Устюг; в зимний период – по ледовой переправе	обл Вологодская,р-н Великоустюгский,с Ильинское,д 51	{"type": "Point", "coordinates": [46.749351, 60.597636]}	<p>Здание действующего клуба введено в эксплуатацию в конце лета 1989 года. Руководителем была Тамара Петровна Бестужева.</p> <p> В клубе работали кружки, проходили смотры художественной самодеятельности, весело и многолюдно проводились праздники: «Проводы зимы», Масленица, день деревни, 9 Мая, «Золотая осень», Новый год. В выходные и праздники проходили дискотеки для молодежи.</p> <p> До конца 1999 года вечерами показывали художественные кинофильмы. Все организации села и их работники в то время принимали активное участие в праздничных мероприятиях. С 2016 года заведующей работает Надежда Гавриловна Краева.</p> <p> На базе клуба занимается вокальный коллектив «Надежда», созданный в мае 2017 года, который не только организует праздничные мероприятия в своем клубе, но и активно участвует в муниципальных, межрегиональных, районных фестивалях и конкурсах. </p><p> Для жителей проводятся тематические вечера, праздничные вечера отдыха, торжественные митинги, молодежные дискотеки, юбилейные вечера отдыха и день деревни. Уютный зал всегда с радостью принимает зрителей, приходящих на организуемые в Доме культуры мероприятия.</p>	http://кдцву.рф	voroninausachyova@mail.ru	[{"value": "78173861117", "comment": "Заведующая Краева Надежда Гавриловна"}, {"value": "78173865432", "comment": "Начальник Соболева Людмила Владимировна"}]	{"url": "https://all.culture.ru/uploads/bf8e95a9a2130d10828927650a6dfa06.jpg", "title": "345.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "16:00:00", "from": "14:00:00"}	{"to": "14:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "14:00:00"}	{"to": "14:00:00", "from": "12:00:00"}	{"to": "16:00:00", "from": "14:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	82080	[{"url":"https://www.culture.ru/institutes/95059/ilinskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/108026pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-12-07T08:19:38Z	2023-12-08T10:21:33Z	0101000020E6100000C91CCBBBEA5F4740C57421567F4C4E40
Покровский клуб	Великоустюгский район	Europe/Moscow	д 22	в летний период – паром из г. Великий Устюг; в зимний период – по ледовой переправе на 680-м км р. Северная Двина	обл Вологодская,р-н Великоустюгский,д Чучеры,д 22	{"type": "Point", "coordinates": [46.606843, 60.641687]}	<p>В Покровском доме культуры со времени его открытия проводились концерты ко всем календарным датам, проводы в армию, свадьбы, посиделки, вечера отдыха. Организовывались праздники деревень и праздник колодца в деревне Новоселово. Работали кружки: художественной самодеятельности, бильярдный, шахматный, шашечный, вязания и лоскутного шитья. </p><p>Сейчас при Доме культуры действует ансамбль «Покровляночки» в составе пяти человек. Он участвует в городских фестивалях и в мероприятиях на территории поселения. По приглашению проводит выездные концерты в других домах культуры. Для жителей проходят праздничные мероприятия: 8 Марта, 9 Мая, праздник деревни, День пожилого человека, День матери, Новый год, вечера отдыха и дни рождения.</p>	http://кдцву.рф	galochkamedvedchikova@yandex.ru	[{"value": "79211414716", "comment": "Заведующая Медведчикова Галина Геннадьевна"}, {"value": "78173865432", "comment": "Начальник Соболева Людмила Владимировна"}]	{"url": "https://all.culture.ru/uploads/1de82eb467f394ae8c8088fd1fefe819.jpg", "title": "покрово 23.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 59, "name": "Ансамбли", "sysName": "ansambli"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	82079	[{"url":"https://www.culture.ru/institutes/95058/pokrovskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/108025pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-12-07T08:16:27Z	2023-12-08T10:35:43Z	0101000020E61000003C670B08AD4D474059A2B3CC22524E40
Палемский клуб	Великоустюгский район	Europe/Moscow	д 51	в летний период – паром из г. Великий Устюг; в зимний период – по ледовой переправе	обл Вологодская,р-н Великоустюгский,д Измарухово,д 51	{"type": "Point", "coordinates": [46.868809, 60.644409]}	<p> Палемский сельский клуб начал свое существование в 1951 году. Здесь организовывают досуг для сельчан, развивают творческие способности и открывают новые таланты. </p><p> Для детей ведется кружковая работа: «Лоскутное шитье», «Макраме» (руководитель – Галина Николаевна Бебякина) «Поделки своими руками», «Настольные игры». Действуют два любительских объединения: «Лоскутная мозаика» (4 человека) и «Художественная самодеятельность» (6 человек).</p><p> В летний период и на каникулах школьники с удовольствием посещают мероприятия в Доме культуры: викторины, детские дискотеки, игры на свежем воздухе и у реки. </p><p>Для жителей проводятся тематические вечера, праздничные вечера отдыха, отчетно-выборные собрания, культурно-массовые мероприятия, торжественные митинги, молодежные дискотеки, юбилейные вечера отдыха и день деревни. Уютный зал всегда с радостью принимает зрителей, приходящих на праздники.</p><p> </p>	http://кдцву.рф	warya68@mail.ru	[{"value": "78173820833", "comment": "Заведующая Воронина Елена Юрьевна"}, {"value": "78173865432", "comment": "Начальник Соболева Людмила Владимировна"}]	{"url": "https://all.culture.ru/uploads/79a9c452f5772b0d5221c1839ea7fd60.JPG", "title": "IMG_3134.JPG"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "12:00:00", "from": "09:00:00"}	{"to": "12:00:00", "from": "09:00:00"}	{"to": "12:00:00", "from": "09:00:00"}	{"to": "12:00:00", "from": "09:00:00"}	{"to": "12:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	82078	[{"url":"https://www.culture.ru/institutes/95044/palemskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/108014pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-12-07T08:16:03Z	2023-12-07T10:31:22Z	0101000020E610000038BC2022356F4740C11F7EFE7B524E40
Викторовский клуб	Великоустюгский район	Europe/Moscow	ул Полевая,д 15	в летний период – паром из г. Великий Устюг; в зимний период – по ледовой переправе на 680-м км р. Северная Двина	обл Вологодская,р-н Великоустюгский,д Первомайское,ул Полевая,д 15	{"type": "Point", "coordinates": [46.86774, 60.609883]}	<p>Викторовский клуб начал свою работу в 1953 году. </p><p>Здесь проводятся юбилеи жителей, концерты, праздники деревни, выставки цветов, рисунков, поделок, вязаных изделий, выпечных изделий, тематические вечера, устные журналы, викторины, игровые и танцевальные программы для детей и взрослых, вечера отдыха и др.<br /></p> <p> Коллектив артистов за 70 лет периодически обновлялся, с 2011 года он называется «Первомайские Любавушки». В Викторовском клубе также работают кружки «Художественная самодеятельность», «Давайте рисовать», любительское объединение «Поговорим о том о сем и про любовь споем».</p> <p>Направления деятельности Викторовского клуба:</p><ol><li>Развитие творческих способностей.</li><li>Популяризация знаний о Великой Отечественной войне.</li><li>Сбор и оформление материала о ветеранах Великой Отечественной войны, о людях хороших, о юбилярах.</li></ol>	http://кдцву.рф	meledina50@yandex.ru	[{"value": "78173861184", "comment": "Заведующая Перминова Галина Витальевна"}, {"value": "78173865432", "comment": "Начальник Соболева Людмила Владимировна"}]	{"url": "https://all.culture.ru/uploads/52892159fbc5b311a570c0c6516aa22a.JPG", "title": "DSCN2246[1].JPG"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"МБУК \\"Великоустюгский культурно-досуговый центр\\"","networkId":"117993849","updateDate":"2020-06-01T12:13:49Z","createDate":"2018-05-28T14:42:01Z","accountId":21245,"postingGroupId":18943},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	{"to": "12:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	82076	[{"url":"https://www.culture.ru/institutes/95043/viktorovskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/108013pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-12-07T08:14:32Z	2023-12-07T10:21:52Z	0101000020E61000002CB7B41A126F474075B169A5104E4E40
Томашевский клуб	Великоустюгский район	Europe/Moscow	д 9	\N	обл Вологодская,р-н Великоустюгский,д Томашево,д 9	{"type": "Point", "coordinates": [46.815872, 60.505744]}	<p>В Томашевском клубе проводятся массовые мероприятия – это концерты, праздники, выставки, вечера, посиделки, игровые и спортивные состязания, устные журналы. Учреждение ежегодно принимает участие в смотрах-фестивалях художественной самодеятельности.</p><p> Занятие найдется для всех: и для маленьких, и для больших. Для детей проводятся конкурсные и игровые программы, для молодежи – различные беседы, танцевальные и игровые вечера. На базе Томашевского клуба действуют кружки «Умелые ручки» и «Веселые ребята». Также работает самодеятельный ансамбль под названием «Ивушки» (в составе – девять человек), который выступает на концертах, посещает со своими выступлениями близлежащие деревни.</p>	https://кдцву.рф	svetaponi07@gmail.com	[{"value": "79997918932", "comment": "Зорина Любовь Михайловна, начальник Орловского клуба"}, {"value": "78173821660", "comment": "Нечаева Елена Николаевна"}]	{"url": "https://all.culture.ru/uploads/7f29d7ff7f5480ba21f4b84fabb2a904.jpg", "title": "рг гн.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"Великоустюгский культурно-досуговый центр","networkId":"117993849","updateDate":"2024-02-15T08:49:55Z","createDate":"2024-02-15T08:49:55Z","accountId":46589,"postingGroupId":44737},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "13:00:00", "from": "10:00:00"}	{"to": "13:00:00", "from": "10:00:00"}	{"to": "13:00:00", "from": "10:00:00"}	{"to": "13:00:00", "from": "10:00:00"}	{"to": "23:00:00", "from": "20:00:00"}	{"to": "16:00:00", "from": "13:00:00"}	\N	\N	\N	\N	\N	\N	\N	83485	[{"url":"https://www.culture.ru/institutes/96429/tomashevskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2024-03-05T11:29:35Z	2024-03-06T08:36:06Z	0101000020E61000006EDC627E6E684740F9122A38BC404E40
Мазский сельский клуб	Кадуйский район	Europe/Moscow	ул Центральная,зд 68	\N	обл Вологодская,р-н Кадуйский,д Маза,ул Центральная,зд 68	{"type": "Point", "coordinates": [36.713355, 59.328558]}	<p><span>В 1969 году в деревне Маза был открыт Дом культуры. В 2016 году его реорганизовали, он стал филиалом Рукавицкого дома культуры. С 2023 года является филиалом Кадуйского центра культурного развития. </span></p> <p><span>На базе сельского клуба создан вокальный ансамбль «Белые росы», который является участником местных, районных и межрайонных мероприятий. Ведут работу клубные формирования для детей, молодежи и старшего поколения. Действует театральный кружок, клуб «Оберег», мастерская художественного слова.</span></p> <p><span>Ежегодно во второе воскресенье июля работники клуба проводят праздник деревни с концертно-развлекательной программой и общим деревенским застольем. За год в Мазском клубе проходит порядка 300 мероприятий.</span></p>	\N	\N	[]	{"url": "https://all.culture.ru/uploads/28d604804cb4070a464f4cbd42e66366.jpg", "title": "маза дк.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "18:00:00", "from": "14:00:00"}	{"to": "22:00:00", "from": "18:00:00"}	{"to": "23:00:00", "from": "19:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	83354	[{"url":"https://www.culture.ru/institutes/96303/mazskii-selskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110902pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2024-02-27T12:40:17Z	2024-02-28T05:36:54Z	0101000020E610000013B875374F5B42406A6B44300EAA4D40
Рукавицкий сельский дом культуры	Кадуйский район	Europe/Moscow	пер Рабочий,зд 11	\N	обл Вологодская,р-н Кадуйский,д Малая Рукавицкая,пер Рабочий,зд 11	{"type": "Point", "coordinates": [37.19134, 59.196274]}	<p> Одноэтажное деревянное здание Дома культуры построено в 1982 году. Благодаря участию в региональных проектах «Сельский Дом культуры» и «Местный Дом культуры» в 2019 году в учреждении проведен капитальный ремонт внутренних помещений и приобретено современное звуковое и световое оборудование. В 2022 году Рукавицкий дом культуры стал одним из победителей областного конкурса на государственную поддержку лучших сельских учреждений культуры.</p><p>В учреждении функционируют 26 творческих объединений для детей и взрослых различных направлений: вокал, хореография, игровое, патриотическое, здоровый образ жизни, рукоделие. Наиболее полюбились зрителям вокальная студия «Семизерье» и вокально-инструментальный ансамбль «Верные друзья». </p><p>Ежегодно Дом культуры проводит более 500 мероприятий, которые посещает порядка 20 000 человек. На базе учреждения реализуется благотворительный проект «Волшебная комната» по прокату нарядной одежды для семей, попавших в трудную жизненную ситуацию.</p>	\N	rukavitskiydomkultury2020@mail.ru	[]	{"url": "https://all.culture.ru/uploads/8c8eb723cc90e2e6da84940207184cef.jpg", "title": "рдк.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "21:00:00", "from": "15:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	{"to": "20:00:00", "from": "14:00:00"}	{"to": "22:00:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	83333	[{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110844pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/96281/rukavickii-selskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2024-02-26T10:58:41Z	2024-02-27T06:17:40Z	0101000020E6100000543541D47D9842400E87A5811F994D40
Кадуйский центр культурного развития	Кадуйский район	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,р-н Кадуйский,рп Кадуй,ул Строителей,д 2	{"type": "Point", "coordinates": [37.104571, 59.208443]}	<p>Дом культуры был построен в 1984 году и сразу стал центром притяжения для кадуйчан. В его стенах организованы занятия для людей разных возрастов и интересов. Здесь проводят свободное время, реализуя свои таланты и способности, дети и взрослые, студенты и пенсионеры.</p><p> В Доме культуры работает более 30 клубных формирований, из них 15 самодеятельного народного творчества. 6 коллективов имеют звание народного самодеятельного коллектива, а танцевальный коллектив «Кнопочки» – звание образцового художественного коллектива. </p><p>Здесь есть эстрадная студия, театр, хор русской песни. Молодежь с удовольствием занимается в молодежном объединении «Ассоциация лидеров», участвует в волонтерской и экологической деятельности. Вокальный ансамбль Cantabile имеет множество наград международных конкурсов классического хорового вокала.</p><p>В 2020 году в рамках проекта Фонда кино и Министерства культуры РФ на втором этаже Кадуйского дома культуры открылся кинозал на 60 мест. Теперь кадуйчане могут посмотреть премьеры кинофильмов, не выезжая для этого в другие города. </p><p> </p>	https://mbuk-kdk.ru	calturehome@mail.ru	[{"value": "78174252431", "comment": "Художественный руководитель"}]	{"url": "https://all.culture.ru/uploads/0d9c3a39ac37226c18002d9dc8ab74d4.jpg", "title": "14082020x33f89b77.jpg"}	\N	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 753, "name": "Кинозал", "sysName": "kinozal"}]	\N	{"to": "23:00:00", "from": "09:00:00"}	{"to": "23:00:00", "from": "09:00:00"}	{"to": "23:00:00", "from": "09:00:00"}	{"to": "23:00:00", "from": "09:00:00"}	{"to": "23:00:00", "from": "09:00:00"}	{"to": "23:00:00", "from": "09:00:00"}	{"to": "23:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	83291	[{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110796pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/96239/kaduiskii-centr-kulturnogo-razvitiya","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2024-02-21T20:18:38Z	2024-02-26T05:28:51Z	0101000020E6100000158E2095628D4240420A9E42AE9A4D40
Андроновский сельский дом культуры	Кадуйский район	Europe/Moscow	ул Надежды,д 11	\N	обл Вологодская,р-н Кадуйский,д Андроново,ул Надежды,д 11	{"type": "Point", "coordinates": [37.259306, 59.400625]}	<p> Андроновский дом культуры был открыт в 1972 году. Более 50 лет он является центром культурной жизни деревни Андроново и близлежащих населенных пунктов. </p><p>На базе Дома культуры работают 11 клубных формирований. С особой любовью в селе относятся к участникам вокально-танцевальной детской группы «Овация». Дети учатся не только петь и танцевать, но и быть добрыми, раскованными, учатся общению. Для взрослых создан клуб «Рябинушка» и формирование «Юбиляр». Сельская молодежь активно участвует в клубе «Буги-вуги» и кружке «Зажигай». Вокальный ансамбль «Горлица» по праву является украшением Дома культуры.</p><p> </p><p>Среди детей и подростков проводится большая работа по формированию здорового образа жизни, для взрослых регулярно организуются познавательно-развлекательные программы. </p>	\N	\N	[]	{"url": "https://all.culture.ru/uploads/c71b4a803f8c0849fe3c0b83a4de4c2b.jpg", "title": "IMG_20220520_175250.jpg"}	[{"url": "https://all.culture.ru/uploads/6f65bcd6cab501c3b79731e8d47869bc.jpg", "title": "Андроновский ДК (3).jpg"}, {"url": "https://all.culture.ru/uploads/1192179cb993810b5633f6ee6bf6ef7c.JPG", "title": "IMG_1537 (1).JPG"}]	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "14:00:00", "from": "11:00:00"}	{"to": "14:00:00", "from": "11:00:00"}	{"to": "14:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	{"to": "18:00:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	83243	[{"url":"https://www.culture.ru/institutes/96192/andronovskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110615pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2024-02-19T12:56:07Z	2024-02-20T05:10:01Z	0101000020E61000000BD462F030A14240E17A14AE47B34D40
Нюксенский этнокультурный центр «Пожарище»	Нюксенский район	Europe/Moscow	д 25	авт. «Нюксеница – Пожарище» один раз в день	обл Вологодская,р-н Нюксенский,д Пожарище,д 25	{"type": "Point", "coordinates": [44.07472171211021, 60.474300560123666]}	<p>Этнокультурный центр является важным туристским объектом Вологодской области, как юридическое лицо создан в 2008 году. Возрождение созидательного народного мировоззрения, воссоздание праздников, гуляний, обрядов, предметов народного быта и искусства, приобщение к культурному наследию – важнейшие направления деятельности центра. </p><p>Восстановлением региональных традиций Уфтюги занимаются участники шести клубных формирований самодеятельного народного творчества и клубы по интересам «Народный архив» и «Лад». Все направления работы творческих формирований имеют культурно-познавательную значимость, призваны пробудить интерес к малой родине, к родовым корням. Кроме заслуженного коллектива народного творчества фольклорно-этнографического ансамбля «Уфтюжаночка» почетное звание «образцовый» имеет самодеятельный фольклорный театр. </p><p>В помещении экспозиционного зала работают сменные фольклорно-этнографические выставки, обеспечивающие доступ желающих к фондам. Организована уличная выставка исторических банеров «Сохраняя наследие», «Традиционный народный костюм Уфтюгско-Кокшенгского пограничья», «Праздничные головные платки: шелковики, репсовики, аглицкие», «Семейные реликвии», «Изготовлено по старинным образцам», «Этнографические куклы из фондов этнокультурного центра», «Куклы бабушки Поли», фотовыставка «Откроем мир забытых вещей и названий». </p>	https://рэц-пожарище.рф	centruftuga@mail.ru	[{"value": "78174722160", "comment": ""}]	{"url": "https://all.culture.ru/uploads/4228c3761d19e65f21814d534834f2d7.jpg", "title": "80c4959b-bcdf-57a4-86ff-f2db2b0a2b1a.jpg"}	[{"url": "https://all.culture.ru/uploads/ece9e358e3d6942d678a8e900604a51c.jpg", "title": "m0r6NBCCl70.jpg"}, {"url": "https://all.culture.ru/uploads/bae91f684e5e49191277683fb387102a.jpg", "title": "fta_j6o4DQQ.jpg"}, {"url": "https://all.culture.ru/uploads/cd6e888b6eb25551121256629434f9b1.jpg", "title": "yl8Z6m8Jjz0.jpg"}, {"url": "https://all.culture.ru/uploads/952813e6836a94ba2202bfb99f029e9c.jpg", "title": "kollektiv.jpg"}, {"url": "https://all.culture.ru/uploads/ecb63ae65ee85fdf3bc179a4046e2149.jpg", "title": "w_d5cc654d.jpg"}, {"url": "https://all.culture.ru/uploads/0e47b4a12873427eeeeed2f0edc15b0f.jpg", "title": "69vcchaowfu.jpg"}, {"url": "https://all.culture.ru/uploads/d9dc1fe472b4fe8a79b6962d55e4e76f.jpg", "title": "07.jpg"}]	\N	Дворцы культуры и клубы	МБУК и Т «НЭЦ Пожарище»	Нюксенский район	Europe/Moscow	25 д	\N	обл Вологодская,р-н Нюксенский,д Пожарище,25 д	\N	3515004040	mincult	Нюксенский район	Europe/Moscow	\N	36574	[{"id": 24, "name": "История", "sysName": "istoriya"}, {"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 152, "name": "Этнография", "sysName": "etnografiya"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	{"to": "17:15:00", "from": "09:00:00"}	{"to": "17:15:00", "from": "09:00:00"}	{"to": "17:15:00", "from": "09:00:00"}	{"to": "17:15:00", "from": "09:00:00"}	{"to": "17:15:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	83240	[{"url":"https://afisha7.ru/nyuksenica/dvorcy-kultury-i-kluby/110596pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/96189/nyuksenskii-etnokulturnyi-centr-pozharishe","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2024-02-19T11:26:48Z	2024-02-19T13:18:36Z	0101000020E610000041E8267B90094640521A79E1B53C4E40
Никольский сельский дом культуры	Кадуйский район	Europe/Moscow	ул Городская,д 4	\N	обл Вологодская,р-н Кадуйский,с Никольское,ул Городская,д 4	{"type": "Point", "coordinates": [37.179123, 59.355228]}	<p><span>Никольский сельский дом культуры создан в августе 1968 года для организации досуга и приобщения жителей сельского поселения к творчеству, культурному развитию и самообразованию, любительскому искусству и ремеслам. </span></p> <p><span>В учреждении работают любительские творческие коллективы, кружки, студии и другие клубные формирования. У детей пользуется популярностью клуб «МАСТЕР.ок», клуб «Веселая горница», клуб «Карусель». Для юношества создан клуб «Сверстники» и КВН. Взрослое население с удовольствием посещает клуб «Огонек», клуб «Дом», мини-театр «Миниатюра». </span></p><p><span>Большое внимание сотрудники Дома культуры уделяют развитию коллективов художественной самодеятельности. Ансамбль ветеранов «Вдохновение», народный ансамбль лирической песни «Зоренька», детский ансамбль танца «Веселинка», детский ансамбль «Задоринки» не раз становились лауреатами районных и межмуниципальных конкурсов. </span></p> <p><span></span><span></span><span>На базе Никольского сельского клуба ежегодно проходит М</span>ежмуниципальный фестиваль-конкурс художественной самодеятельности среди сельских учреждений культуры «Мое село – моя Россия». <span>Работники Дома культуры оказывают консультативную, методическую и организационно-творческую помощь в подготовке и проведении культурно-досуговых мероприятий.</span></p>	\N	mkuk.ndk@yandex.ru	[{"value": "78174234168"}]	{"url": "https://all.culture.ru/uploads/61c68358b70e7e900c49f8e02f88a1fe.jpg", "title": "1.jpg"}	[{"url": "https://all.culture.ru/uploads/92ad729e179a09756e8b84928ec4bf8d.jpg", "title": "3d72ecb6a073b0910534501f34f2cd1d.jpg"}, {"url": "https://all.culture.ru/uploads/05e70906b5f8e91f51e8492696e67ea3.jpg", "title": "WWrV3IueZ8s.jpg"}, {"url": "https://all.culture.ru/uploads/ae35a4a2c574525652f27a0dfabdba21.jpg", "title": "e1ba62ecd02faaa69f13ca0143260311.jpg"}]	\N	Дворцы культуры и клубы	МБУ «Кадуйский ЦКР»	Вологодская область	Europe/Moscow	ул Строителей,д 2	\N	обл Вологодская,рп Кадуй,ул Строителей,д 2	\N	3510010837	mincult	Вологодская область	Europe/Moscow	[{"network":"ok","name":"Культура. Кадуй","networkId":"61103236120724","updateDate":"2024-02-16T11:35:59Z","createDate":"2024-02-16T11:35:59Z","accountId":49941,"postingGroupId":44748}]	36609	[{"id": 25, "name": "Классическое искусство", "sysName": "klassicheskoe-iskusstvo"}, {"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	\N	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "21:00:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	83231	[{"url":"https://www.culture.ru/institutes/96178/nikolskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/110613pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2024-02-19T05:18:13Z	2024-02-20T06:20:26Z	0101000020E61000000F7BA180ED964240CE4F711C78AD4D40
Верхнешарденьгский клуб	Великоустюгский район	Europe/Moscow	д 79а	\N	обл Вологодская,р-н Великоустюгский,с Верхняя Шарденьга,д 79а	{"type": "Point", "coordinates": [46.318241, 60.395201]}	<p>В здании бывшей школы расположен Верхнешарденьгский клуб, в котором проходят самые различные мероприятия. Для жителей и гостей поселения активно организуются и проводятся тематические праздники, концертные программы, народные гулянья, театрализованные представления, веселые игровые программы, вечера отдыха, занимательные конкурсы, интересные викторины, выставки, полезные мастер-классы. </p><p>Большее количество жителей села Верхняя Шарденьга – пенсионеры. Для них созданы два клубных формирования: клуб «Околица», в котором занимаются восемь человек, и театральный коллектив «Таланты», в составе которого десять человек. </p>	http://кдцву.рф	mukuadk@mail.ru	[{"value": "78173868187", "comment": "специалист Забелинская Марина Сергеевна"}, {"value": "78173868187", "comment": "Бычихина Елена Евгеньевна начальник обособленного подразделения"}]	{"url": "https://all.culture.ru/uploads/18970ec9978879835dea2b3ec1aaab50.jpg", "title": "2nJWgzZiVTw.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"Великоустюгский культурно-досуговый центр","networkId":"117993849","updateDate":"2024-02-15T08:49:55Z","createDate":"2024-02-15T08:49:55Z","accountId":46589,"postingGroupId":44737},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "14:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83214	[{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/110583pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/96164/verkhneshardengskii-klub","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2024-02-16T11:11:43Z	2024-02-19T06:18:44Z	0101000020E6100000889FFF1EBC2847405A2C45F295324E40
Кадуйский центр народной традиционной культуры и ремесел	Кадуйский район	Europe/Moscow	ул Строителей,д 5	\N	обл Вологодская,р-н Кадуйский,п Хохлово,ул Строителей,д 5	{"type": "Point", "coordinates": [37.40572214126587, 59.150057058887406]}	<p>Кадуйский центр народной традиционной культуры и ремесел создан в сентябре 1994 года. Он занимается изучением и содействием восстановлению традиционной народной культуры. Располагается в Доме культуры поселка Хохлово, где занимает 6 помещений, и в отдельном здании Дома народных ремесел. В нем работают 13 человек. </p><p>При центре постоянно занимаются фольклорные коллективы «Сударушка» и «Веретенце», коллектив муниципального  клуба гармонистов. Образцовый детский фольклорный коллектив «Веретенце» является лауреатом всероссийских и международных фольклорных фестивалей. Для всех желающих открыты художественная студия «Гончарики», студия традиционных ремесел. Центр участвует в фольклорных праздниках и фестивалях на территории Кадуйского округа, огранизует праздники и фестивали. Ежегодно проводит фольклорно-этнографические экспедиции в западных районах Вологодской области.</p>	https://sites.google.com/site/kcntcr/about	kcntcr@gmail.com	[{"value": "78174242559", "comment": ""}]	{"url": "https://all.culture.ru/uploads/fcd7652c9cef484832405b1193cf2271.jpg", "title": "3.jpg"}	[{"url": "https://all.culture.ru/uploads/ff6518222fe6c2d137d344d2030ae0ac.jpg", "title": "80.jpg"}, {"url": "https://all.culture.ru/uploads/54ce5d1bab32947215f66631b0db2d3a.jpg", "title": "R7JlFO6JiU.jpg"}, {"url": "https://all.culture.ru/uploads/eb84a3c78b97b30e7aa4cb5311ad39c2.jpg", "title": "DSC_0914_2.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Кадуйский центр народной традиционной культуры и ремесел»	Кадуйский район	Europe/Moscow	ул Строителей,д 5	\N	обл Вологодская,р-н Кадуйский,п Хохлово,ул Строителей,д 5	\N	3510006870	mincult	Кадуйский район	Europe/Moscow	[{"network":"vk","name":"Кадуйский районный фестиваль юных сказителей","networkId":"215277785","updateDate":"2022-12-14T11:48:22Z","createDate":"2022-12-14T11:48:22Z","accountId":10507,"postingGroupId":38305},{"network":"vk","name":"Кадуйский центр народной традиционной культуры","networkId":"73205523","updateDate":"2021-05-21T10:06:03Z","createDate":"2021-05-21T10:06:03Z","accountId":10507,"postingGroupId":34536},{"network":"ok","name":"Культура.Кадуй","networkId":"61103236120724","updateDate":"2022-04-29T08:50:22Z","createDate":"2022-04-29T08:50:22Z","accountId":41664,"postingGroupId":36735}]	16749	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "19:00:00", "from": "08:00:00"}	{"to": "19:00:00", "from": "08:00:00"}	{"to": "19:00:00", "from": "08:00:00"}	{"to": "19:00:00", "from": "08:00:00"}	{"to": "16:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	35982	[{"url":"https://afisha7.ru/kaduy/dvorcy-kultury-i-kluby/19649pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/36541/kaduiskii-centr-narodnoi-tradicionnoi-kultury-i-remesel","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2018-10-03T08:18:22Z	2024-02-19T08:52:02Z	0101000020E6100000000000B4EEB34240493AD81135934D40
Кадниковский дом культуры	Вожегодский район	Europe/Moscow	ул Первомайская,д 7	\N	обл Вологодская,р-н Вожегодский,п Кадниковский,ул Первомайская,д 7	{"type": "Point", "coordinates": [40.26798, 60.322771]}	<p><span>Кадниковский дом культуры был открыт 7 марта 1975 года. </span><span>Он обслуживает жителей сельского поселения Кадниковское и является единственным культурно-досуговым учреждением на этой территории. В зону обслуживания входят поселки Яхренга и Бекетово.</span></p> <p><span></span><span>Для жителей созданы все условия для комфортного проведения досуга: уютный зрительный зал на 260 мест, танцевальный зал, комнаты для кружковых занятий. </span><span></span><span>Традиционно организуются мероприятия, посвященные праздничным календарным датам. </span></p><p><span></span><span>В работе с несовершеннолетними<span> </span>первостепенное место занимают патриотическое, духовно-нравственное и эстетическое воспитание, пропаганда здорового образа жизни, э</span><span>стетическое воспитание (игровые, праздничные, музыкальные программы, мастер-классы). Проводятся тематические программы, беседы, устные журналы, спортивные мероприятия.</span></p> <p><span>Творческие коллективы Дома культуры принимают участие в межпоселенческих и районных фестивалях и конкурсах. </span><span></span></p>	\N	\N	[{"value": "78174422647", "comment": ""}]	{"url": "https://all.culture.ru/uploads/4912d3bcd752d90f261e44ba7e1199e0.jpg", "title": "Дом культуры.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Вожегодский ЦКР»	Вожегодский район	Europe/Moscow	ул Садовая,д 10	\N	обл Вологодская,р-н Вожегодский,рп Вожега,ул Садовая,д 10	\N	3506005231	mincult	Вожегодский район	Europe/Moscow	\N	26662	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	83941	[{"url":"https://afisha7.ru/vozhega/dvorcy-kultury-i-kluby/112023pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/96885/kadnikovskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2024-04-02T11:58:38Z	2024-04-03T13:41:41Z	0101000020E6100000B5FD2B2B4D224440728C648F50294E40
Великоустюгский культурно-досуговый центр	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	центральный вход с пер. Красный, д. 8	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	{"type": "Point", "coordinates": [46.303527, 60.759561]}	<p><span style="vertical-align:inherit">За более 60 лет творческой деятельности коллектив Дома культуры прошел большой путь. Формировались вкусы, оттачивалось мастерство, рождались и крепли традиции.</span></p><p>В настоящее время в центре работают 43 клубных формирования – это клубы по интересам, коллективы художественной самодеятельности, кружки прикладного творчества: 6 вокальных клубных формирований, 5 танцевальных, цирковое, 4 любительских объединения. Из них половина занимается на бесплатной основе.</p><p>Более 500 мероприятий в год проводится на базе культурно-досугового центра, в которых принимают участие и коллективы учреждений, и приглашенные артисты из других регионов. </p><p><span>Великоустюгский культурно-досуговый центр не <span>остается</span> в стороне от всероссийского проекта «Великий Устюг – родина Деда Мороза» и принимает активное участие в реализации этой программы.</span></p>	http://кдцву.рф	vukdc@vumr.ru	[{"value": "78173823192", "comment": "директор - Ирина Сергеевна Зубова"}, {"value": "78173823050", "comment": "заместитель директора по творческой деятельности - Светлана Павловна Корепина"}]	{"url": "https://all.culture.ru/uploads/5f86dd9f24591db71c1116c65a2c6286.jpeg", "title": "fasad.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"Великоустюгский культурно-досуговый центр","networkId":"117993849","updateDate":"2024-02-15T08:49:55Z","createDate":"2024-02-15T08:49:55Z","accountId":46589,"postingGroupId":44737},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 329, "name": "Ремесла и художественные промыслы", "sysName": "remesla-i-hudozhestvennye-promysly"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	{"to": "21:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	35091	[{"url":"https://www.culture.ru/institutes/36136/velikoustyugskii-kulturno-dosugovyi-centr","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/19164pl","serviceName":"Афиша7"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=686b45a7-9457-4ee6-b96d-96542fdb6698&shareType=venue","serviceName":"ФанТам"},{"url":"https://www.2do2go.ru/places/52254/dom-kultury-g-velikii-ustyug","serviceName":"2do2go.ru"}]	\N	\N	\N	\N	2018-05-29T07:28:59Z	2024-04-12T07:36:33Z	0101000020E6100000FC3905F9D926474095287B4B39614E40
Тарногский центр традиционной народной культуры	Тарногский район	Europe/Moscow	ул Кирова,д 8	\N	обл Вологодская,р-н Тарногский,с Тарногский Городок,ул Кирова,д 8	{"type": "Point", "coordinates": [43.573151, 60.500893]}	<p>Центр создан для сохранения, изучения, восстановления и развития традиционной народной культуры. Сотрудники учреждения занимаются развитием местного народного художественного творчества, самобытной национальной культуры, народного творчества и фольклорного наследия. </p><p>На базе центра осуществляют деятельность четыре ансамбля, два из которых имеют статус «народный»: народный фольклорный коллектив «Сударушка», народный семейный коллектив братьев Никулиных, семейный коллектив Череповецких, женский вокальный ансамбль «Росстань». Сотрудники учреждения организуют и проводят мероприятия по традиционной народной культуре для взрослых и детей.</p>	https://tarnogakultura.vlg.muzkult.ru	tarnogactnk@yandex.ru	[{"value": "78174821247"}]	{"url": "https://all.culture.ru/uploads/c0d42c1839d6e859d7d8dfc1769229c4.jpg", "title": "1_SfU8gss6c.jpg"}	[{"url": "https://all.culture.ru/uploads/07e4bb2f5d7b7b6511243d52996b0ecf.jpg", "title": "b1bIFOey0v4.jpg"}, {"url": "https://all.culture.ru/uploads/4f1740031838dbd022fdbfd253cd52cc.jpg", "title": "tEcxFCxminE.jpg"}, {"url": "https://all.culture.ru/uploads/d7c840f3881136d52b722d9dbab23f68.jpg", "title": "FSgaeV4-buE.jpg"}, {"url": "https://all.culture.ru/uploads/be022ce0d8bfa1b68132818cb6b7593b.jpg", "title": "03.jpg"}]	\N	Дворцы культуры и клубы	БУК «Тарногский ЦТНК»	Тарногский район	Europe/Moscow	ул Кирова,д 8	\N	обл Вологодская,р-н Тарногский,с Тарногский Городок,ул Кирова,д 8	\N	3517003571	mincult	Тарногский район	Europe/Moscow	\N	37098	[{"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 350, "name": "Народная культура", "sysName": "narodnaya-kultura"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "17:00:00", "from": "09:00:00"}	{"to": "17:00:00", "from": "09:00:00"}	{"to": "17:00:00", "from": "09:00:00"}	{"to": "17:00:00", "from": "09:00:00"}	{"to": "17:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	84620	[{"url":"https://www.culture.ru/institutes/97542/tarnogskii-centr-tradicionnoi-narodnoi-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/tarnogskiy-gorodok/dvorcy-kultury-i-kluby/113131pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2024-05-20T06:59:54Z	2024-05-20T07:32:51Z	0101000020E6100000B95510035DC94540CDE506431D404E40
Центр традиционной народной культуры «Лад»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 89	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 89	{"type": "Point", "coordinates": [46.301182, 60.76058]}	<p>Центр традиционной народной культуры «Лад» основан в 2008 году, в нем разработаны и успешно реализуются<span> </span>долгосрочные проекты:<span> </span>«Шемогодская береста», «Живая нить традиций», «Кружевная сказка».</p> <p><span>Большое внимание уделяется возрождению<span> </span>самобытных народных промыслов и ремесел. Около 140 мастеров города и района сотрудничают с отделом. Сотрудники восстанавливают традиции многих местных ремесел: различные виды ткачества, плетения поясов, вышивки, кружевоплетения, народной куклы, росписи и резьбы по бересте и др.</span></p><p><span><span> </span>Мастера передают свой опыт молодому поколению. При отделе созданы объединения великоустюгских<span> </span>мастериц: «Великоустюгские узоры» (роспись),<span> </span>«Шемогодские узоры» (резьба по бересте) и «Кружевная сказка» (кружевоплетение). </span></p> <p><span> Центр традиционной народной культуры реализует творческие программы и проекты – фестивали, праздники, конкурсы, выставки:</span></p><ul><li><span><span> </span></span><span>«</span><span>Круглый год</span><span>»;</span></li><li><span>«</span><span>Традиции через века</span><span>»;</span></li><li><span></span><span>«</span><span>Зимняя сказка</span><span>»;</span></li><li><span>«</span><span>Кружево из белой бересты</span><span>»;</span></li><li><span>«</span><span>Узоры Севера</span><span>»;</span><span></span></li><li><span></span><span>«</span><span>Пасхальный вернисаж</span><span>»;</span><span></span></li><li><span>«</span><span>Мастер золотые руки</span><span>» и другие. </span></li></ul> <p>Из числа сотрудников отдела создан фольклорный коллектив «Ромода», в котором специалисты изучают местную музыкальную культуру и воспроизводят ее. <span>Для молодых устюжан открыты клубные объединения по освоению местных промыслов и<span> </span>ремесел –</span><span> 20 клубных формирований.</span></p> <p><span> </span>В течение года для устюжан и гостей города проходят игровые театрализованные программы по народному календарю: «Рождественские посиделки», «Праздник Масленицы», «Осенины», «Покровские посиделки», «Кузьминки».</p> <p><span> </span></p>	http://кдцву.рф	ztnk_lad73@mail.ru	[{"value": "78173821006", "comment": ""}, {"value": "78173823192"}]	{"url": "https://all.culture.ru/uploads/09ed544628fcf618c0ce8828df479a73.jpeg", "title": "rKbl0OcCego.jpg"}	[{"url": "https://all.culture.ru/uploads/30a2c27d36a701c8248322676f0d089d.jpeg", "title": "D-UsNQ2-IsI.jpg"}, {"url": "https://all.culture.ru/uploads/c30bc087f4c8e2423af7b1731a88015d.jpeg", "title": "iU3_-ccIMJA.jpg"}, {"url": "https://all.culture.ru/uploads/46ab0b71d8a4aade84fd01691767cfa8.jpeg", "title": "y7QdCLg0A3k.jpg"}, {"url": "https://all.culture.ru/uploads/a03271d226fb5e3db11b22ad1a2bd33d.jpeg", "title": "uWjBEFG9IuA.jpg"}, {"url": "https://all.culture.ru/uploads/891f3740273eda8d12985977c1fec7df.jpeg", "title": "f_vPAViPVo.jpg"}, {"url": "https://all.culture.ru/uploads/89c556949704939e33ef1e622e5a3cb4.jpeg", "title": "xHAdkebBPkE.jpg"}, {"url": "https://all.culture.ru/uploads/60607b5b1eb90317f663a776bfa42fd1.jpeg", "title": "IaWHwYV23rY.jpg"}, {"url": "https://all.culture.ru/uploads/0b3e98a7650fc8ae84c6c569093630da.jpeg", "title": "ix8YUc_sMP8.jpg"}]	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"Великоустюгский культурно-досуговый центр","networkId":"117993849","updateDate":"2024-02-15T08:49:55Z","createDate":"2024-02-15T08:49:55Z","accountId":46589,"postingGroupId":44737},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 152, "name": "Этнография", "sysName": "etnografiya"}, {"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}, {"id": 321, "name": "Традиции", "sysName": "tradicii"}, {"id": 324, "name": "Традиционное искусство", "sysName": "tradicionnoe-iskusstvo"}, {"id": 329, "name": "Ремесла и художественные промыслы", "sysName": "remesla-i-hudozhestvennye-promysly"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-117993849&id=456239175&hash=6f032d93ab2abd4d&hd=2\\" width=\\"853\\" height=\\"480\\" frameborder=\\"0\\" allowfullscreen></iframe>"}]	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	39071	[{"url":"https://www.culture.ru/institutes/54044/centr-tradicionnoi-narodnoi-kultury-lad","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/57597pl","serviceName":"Афиша7"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=579aa68c-1c62-44fd-b91c-e37614e047b6&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2019-05-22T13:58:56Z	2024-04-24T05:31:13Z	0101000020E61000006A12BC218D264740EFFE78AF5A614E40
Волокославинский сельский дом культуры	Кирилловский район	Europe/Moscow	ул Школьная,д 11	\N	обл Вологодская,р-н Кирилловский,с Волокославинское,ул Школьная,д 11	{"type": "Point", "coordinates": [38.782993, 59.916789]}	<p><span><span> </span>Волокославинский<span> </span>сельский<span> </span>дом культуры<span> находится в одноэтажном здании</span>. Официально был открыт в 1972 году.</span><span> В здании расположены музейные<span> </span>экспозиции<span> </span>«Кирилловская гармонь» <span>и </span>«Жизнь и подвиг Героя Советского Союза Евгения Николаевича Преображенского» и зрительный зал на 96 мест. </span></p><p><span>В зоне обслуживания </span><span>517 человек. </span><span>Дом культуры работает в тесном контакте со всеми учреждениями, с населением<span> </span>с. Волокославинского<span> </span>и округа. Сотрудники стараются привлекать к подготовке и проведению мероприятий все категории населения, стремятся заинтересовать всех – от детей до пожилых людей. Самые активные и отзывчивые – это, конечно, дети и ветераны, сложнее с молодежью и семьями.</span></p> <p></p>	\N	\N	[{"value": "79215322449"}]	{"url": "https://all.culture.ru/uploads/9e46f2f3fb62fa803ad4888298a4d942.jpg", "title": "Волокославвино ДК.jpg"}	\N	\N	Дворцы культуры и клубы	АУК КМР «ЦКР»	Кирилловский район	Europe/Moscow	ул Гагарина,д 98	\N	обл Вологодская,р-н Кирилловский,г Кириллов,ул Гагарина,д 98	\N	3511006791	mincult	Кирилловский район	Europe/Moscow	[{"network":"vk","name":"Центр культурного развития","networkId":"17831631","updateDate":"2018-05-29T07:22:36Z","createDate":"2018-05-29T07:22:36Z","accountId":21387,"postingGroupId":18946}]	20401	[{"id": 24, "name": "История", "sysName": "istoriya"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}]	\N	{"to": "19:30:00", "from": "11:00:00"}	{"to": "19:30:00", "from": "11:00:00"}	{"to": "19:30:00", "from": "11:00:00"}	{"to": "19:30:00", "from": "11:00:00"}	{"to": "19:30:00", "from": "11:00:00"}	{"to": "19:30:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77344	[{"url":"https://afisha7.ru/kirillov/dvorcy-kultury-i-kluby/95941pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/90227/volokoslavinskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=af7ecc71-d397-4f09-acc4-fdade0405511&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-03-03T06:19:24Z	2024-09-02T12:02:36Z	0101000020E61000009BFF571D39644340912A8A5759F54D40
Слободской сельский дом культуры	Грязовецкий район	Europe/Moscow	ул Школьная,д 5а	\N	обл Вологодская,р-н Грязовецкий,д Слобода,ул Школьная,д 5а	{"type": "Point", "coordinates": [40.231032, 58.958485]}	<p><span>Слободской сельский дом культуры работает с 1973 года. Для культурно-досуговой деятельности оборудованы танцевальный, хореографический, зрительный залы, а также кружковая комната и методический кабинет. Зрительный зал рассчитан на 255 посадочных мест.</span><br /></p> <p><span><span>В филиале для населения работают клубные формирования разных направлений и для разных возрастных групп. На сегодняшний день действуют </span>26<span> формирований различной жанровой направленности</span>, <span>в которых занимаются </span>409 человек<span>. </span></span><span>Популярны среди коллективы вокальной, танцевальной, театральной направленности. Они принимают участие в мероприятиях различного уровня. </span><span></span></p><p> </p>	\N	sloboda.agov@yandex.ru	[{"value": "78175542267"}]	{"url": "https://all.culture.ru/uploads/2c6631eb3f986e654bfe8af3e0cc6a4d.jpg", "title": "слобод.jpg"}	\N	\N	Дворцы культуры и клубы	БУК Грязовецкого муниципального округа Вологодской области «Культурно-досуговый центр»	Грязовецкий район	Europe/Moscow	ул Карла Маркса,д 46	\N	обл Вологодская,р-н Грязовецкий,г Грязовец,ул Карла Маркса,д 46	\N	3509010367	mincult	Грязовецкий район	Europe/Moscow	[{"network":"vk","name":"БУК \\"Культурно-досуговый центр\\"","networkId":"86530729","updateDate":"2021-06-24T12:11:18Z","createDate":"2021-06-24T12:11:18Z","accountId":38444,"postingGroupId":34915},{"network":"vk","name":"КиноГрязовец","networkId":"176595226","updateDate":"2023-05-03T08:03:55Z","createDate":"2023-05-03T08:03:55Z","accountId":38444,"postingGroupId":42088}]	17441	[{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	{"to": "19:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77100	[{"url":"https://afisha7.ru/gryazovec/dvorcy-kultury-i-kluby/95000pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/89989/slobodskoi-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=a130fd74-1b1b-48c0-84b2-b0470ced45ce&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-02-28T08:58:33Z	2024-08-28T11:28:15Z	0101000020E61000002C2AE274921D4440715AF0A2AF7A4D40
Культурный центр «МаэстRо»	Череповец	Europe/Moscow	пр-кт Октябрьский,д 34	Авт. №7, 9, 13, 25, 31, ост. «Ул. Ленинградская».	обл Вологодская,г Череповец,пр-кт Октябрьский,д 34	{"type": "Point", "coordinates": [37.911807, 59.099545]}	<p>Культурный центр «МаэстRо» – многофункциональная площадка для проведения культурных мероприятий, занятий по творческим направлениям для детей и взрослых, проживающих на территории Зашекснинского района Череповца. Основан в 2019 году. Основной принцип работы – культурный максимум – предоставление услуг максимально разнообразных по жанрам, творческим и досуговым задачам. </p><p>В центре действуют коллективы вокальных, хореографических, цирковых и инструментальных жанров: ансамбль «Наша песня», цирк «Антре», хор мальчиков, хор ветеранов «Душа поет», танцевальный клуб «Академия танца», студия русского балета «Артклассик», вокальная студия CHarm Voice, группа «Имидж dance», ансамбль «Вдохновение», ансамбль гитаристов «Струны маэстро». </p><p>На сценической площадке проводятся мероприятия самых разнообразных форматов: концерты, спектакли, мастер-классы, выставки, презентации, конкурсы, праздники. Слоган центра – «Сообщество творческих и неравнодушных». Центр является точкой притяжения творческой молодежи, молодых авторов и исполнителей, специалистов различных сфер культуры. Уникальная особенность – сочетание культурно-досуговой и образовательной деятельности: в центре ведется обучение по образовательным программам художественной направленности (игра на музыкальных инструментах, вокал, хореография, школа ведущих и другие). </p>	https://vk.link/maestro_kc	\N	[{"value": "79115051073", "comment": "Администратор"}, {"value": "79211350050", "comment": "Руководитель"}]	{"url": "https://all.culture.ru/uploads/198c3c7d0a4d0688da637a267075b9c3.jpg", "title": "IMG_20230205_094125.jpg"}	[{"url": "https://all.culture.ru/uploads/7e8012aed8a9d6c34a1e51b7b197440e.JPG", "title": "DSCN0019.JPG"}, {"url": "https://all.culture.ru/uploads/e97b50bbf2b4f551772fac5f6071e971.JPG", "title": "DSCN0008.JPG"}, {"url": "https://all.culture.ru/uploads/4a0535413c4c4b84decf256a46022223.jpg", "title": "IMG_20221126_170316.jpg"}, {"url": "https://all.culture.ru/uploads/692919452acb5b7f181fcd123710b6f3.jpg", "title": "IMG_20221126_160451.jpg"}, {"url": "https://all.culture.ru/uploads/60a98b102cd58c3d5ae16e084555b0d0.jpg", "title": "IMG_20221210_175806.jpg"}, {"url": "https://all.culture.ru/uploads/9b6d7dc5139f7f2eb53ba65d71fff899.jpg", "title": "МК 17.12.jpg"}, {"url": "https://all.culture.ru/uploads/1fb220109f2ac3f8a9c70eb3e076c923.jpg", "title": "A3HCJmYu7Ao.jpg"}]	\N	Дворцы культуры и клубы	Частное негосударственное образовательное учреждение дополнительного образования «Школа современного творчества «Мастер-класс»	Череповец	Europe/Moscow	пр-кт Октябрьский,д 34	\N	обл Вологодская,г Череповец,пр-кт Октябрьский,д 34	\N	3528999989	commercial	Череповец	Europe/Moscow	\N	32520	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	{"to": "22:00:00", "from": "08:00:00"}	{"to": "22:00:00", "from": "08:00:00"}	{"to": "22:00:00", "from": "08:00:00"}	{"to": "22:00:00", "from": "08:00:00"}	{"to": "22:00:00", "from": "08:00:00"}	{"to": "22:00:00", "from": "08:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	75817	[{"url":"https://afisha7.ru/cherepovec/dvorcy-kultury-i-kluby/92365pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/88749/kulturnyi-centr-maestro","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-02-05T09:49:10Z	2024-08-15T06:05:16Z	0101000020E6100000C7A17E17B6F442407BBDFBE3BD8C4D40
Полутовский клуб	Великоустюгский район	Europe/Moscow	ул Луговая,д 1	\N	обл Вологодская,р-н Великоустюгский,д Полутово,ул Луговая,д 1	{"type": "Point", "coordinates": [46.431294, 60.864607]}	<p>На базе Дома культуры д. Полутово работают три клубных формирования: вокальный ансамбль «Сударушка», вокальный коллектив «Притяжение», танцевальный коллектив «Затмение». </p><p>В клубных формированиях занимается 24 человека в возрасте от 7 до 75 лет (на бесплатной основе).</p><p> </p><p>Услуги, оказываемые в учреждении: концертные, конкурсные, развлекательные, познавательные программы.</p><p>Предоставление платных услуг: аренда помещения, концерты, молодежные дискотеки.</p><p> Работа клуба направлена на сохранение и развитие разнообразных форм самодеятельного художественного творчества, в том числе посредством организации деятельности самодеятельных коллективов, организации досуга населения с учетом различных категорий и возрастов.</p>	http://www.dciskrasavino.ru	dia06091999@gmail.com	[{"value": "79991681029"}]	{"url": "https://all.culture.ru/uploads/9363827bc0e2431c3772b4d687730f5f.jpg", "title": "8Vtgy4XSYFY.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Центр культурного развития г. Красавино»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 152	\N	обл Вологодская,р-н Великоустюгский,г Красавино,пр-кт Советский,д 152	\N	3526008640	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"Дом культуры и спорта г.Красавино","networkId":"33505837","updateDate":"2018-09-03T11:42:38Z","createDate":"2018-09-03T11:42:38Z","accountId":22303,"postingGroupId":19717},{"network":"vk","name":"Народная хореографическая студия \\"Улыбка\\"(г.Крас","networkId":"5759262","updateDate":"2018-09-03T11:43:10Z","createDate":"2018-09-03T11:43:10Z","accountId":22303,"postingGroupId":19718},{"network":"vk","name":"Просветительский центр \\"Светоч\\" ДКиС г.Красавино","networkId":"115057099","updateDate":"2018-09-03T11:44:09Z","createDate":"2018-09-03T11:44:09Z","accountId":22303,"postingGroupId":19720}]	20579	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "20:00:00", "from": "17:00:00"}	\N	{"to": "20:00:00", "from": "17:00:00"}	\N	{"to": "18:00:00", "from": "15:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	75350	[{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/91583pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/88304/polutovskii-klub","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=e8f655f0-95f0-4d1e-a701-6273656c70b5&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-01-25T09:06:09Z	2024-08-06T11:42:12Z	0101000020E6100000037B4CA43437474043723271AB6E4E40
Новолукинский дом культуры	Бабаевский район	Europe/Moscow	д 13	\N	обл Вологодская,р-н Бабаевский,д Новое Лукино,д 13	{"type": "Point", "coordinates": [36.123153, 59.883205]}	<p><span>Новолукинский<span> </span>дом культуры – это центр культуры и досуга населения<span> </span>д. Новое-Лукино и близлежащих деревень.<span> </span>На территории д. Новое-Лукино находятся библиотека, колхоз, почта, ФАП. </span>Здание было построено в 1964 году. Зрительный зал рассчитан на 100 мест.</p> <p><span>Заведующий филиалом –<span> </span>Елена Евгеньевна Ершова.</span></p> <p><span><span> </span>Штат учреждения составляет 2 человека:<span> </span>заведующий<span> </span>и художественный руководитель. Оба специалиста имеют профессиональное образование в культуре.<span> </span></span></p> <p><span>Осуществляют деятельность 10 клубных формирований, в которых занимаются 111 человек от 7 лет до 75 лет:<span> </span></span></p> <ol><li><span>Вокальная группа «Лукиночка».</span><span></span></li><li><span>Театральный кружок «Лицедеи».</span><span></span></li><li><span>Кружок «Сольное пение».</span><span></span></li><li><span>Клуб молодой бабушки «Золотое сердечко».</span><span></span></li><li><span>Вокальная группа «РетроТЛ».</span><span></span></li><li><span>Кружок «Наши руки не для скуки».</span><span></span></li><li><span>Клуб ветеранов «Старинные напевы».</span><span></span></li><li><span>Клуб игрового дня «Гном».</span><span></span></li><li><span>Интеллектуальный клуб «ЧГК».</span><span></span></li><li><span>Клуб «Бильярд».</span></li></ol> <p><span>Участниками клубных формирований также являются работники различных сфер деятельности: торговые работники, врачи, бухгалтера, мастера лесной промышленности, школьники.</span></p>  <p><span>Творческие коллективы принимают активное участие во всех поселенческих мероприятиях, ярмарках и фестивалях. Осуществляют выездные концерты в отдаленные деревни, дома ветеранов. Проводят выездные праздники малых деревень.</span><span><span> </span></span></p> <p><span> </span></p> <p style="text-align:justify"><span></span></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/c6dafe03536327fa3864dbc73b8fa998.jpg", "title": "Н Лукино.jpg"}	\N	\N	Дворцы культуры и клубы	МАУК «Бабаевский центр культурного развития»	Бабаевский район	Europe/Moscow	пл Привокзальная,1	\N	обл Вологодская,р-н Бабаевский,г Бабаево,пл Привокзальная,1	\N	3501008870	mincult	Бабаевский район	Europe/Moscow	[{"network":"vk","name":"Володинский Дом культуры","networkId":"158838778","updateDate":"2018-10-12T11:09:38Z","createDate":"2018-10-12T11:09:38Z","accountId":22721,"postingGroupId":20087},{"network":"vk","name":"Кдц Бабаево","networkId":"275144982","isPersonal":true,"updateDate":"2018-10-12T11:09:46Z","createDate":"2018-10-12T11:09:46Z","accountId":22721,"postingGroupId":20088},{"network":"vk","name":"МБУК \\"Бабаевский центр культурного развития\\"","networkId":"23582611","updateDate":"2018-10-12T11:09:31Z","createDate":"2018-10-12T11:09:31Z","accountId":22721,"postingGroupId":20086}]	20369	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	74997	[{"url":"https://afisha7.ru/babaevo/dvorcy-kultury-i-kluby/92106pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/87970/novolukinskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=c4dce4b5-cc76-45fe-918c-f8853b4a457d&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-01-17T08:51:00Z	2024-08-08T08:24:01Z	0101000020E6100000C0B33D7AC30F4240F35487DC0CF14D40
Пожарский дом культуры	Бабаевский район	Europe/Moscow	ул Школьная,д 2	\N	обл Вологодская,р-н Бабаевский,д Пожара,ул Школьная,д 2	{"type": "Point", "coordinates": [36.099824, 59.956615]}	<p><span>Пожарский дом культуры – это центр культуры и досуга населения бывшего сельского поселения Пожарское. На территории бывшего поселения Пожарское находятся детский сад, начальная школа, колхоз «ПК Пожарское», почта, ФАП, магазины. Здание было построено в 1970 году. </span>Зрительный зал рассчитан на 100 мест.<br /></p> <p><span>Заведующий филиалом – Татьяна Викторовна Матвеева.</span></p> <p><span>С 2016 года, в связи с объединением и оптимизацией поселений, штат Пожарского дома культуры составляет 2 человека:<span> </span>заведующий<span> </span>и культорганизатор<span> </span>по совместительству. Оба специалиста имеют профессиональное образование в культуре.<span> </span></span></p> <p><span>Осуществляют деятельность 9 клубных формирований, в которых занимаются 108 человек от 6 лет до 70 лет:<span> </span></span></p> <ol><li><span>Вокальная группа «Зоренька».</span><span></span></li><li><span>Театральный кружок «Задоринки».</span><span></span></li><li><span>Кружок «Сольное пение».</span><span></span></li><li><span>Клуб пенсионеров «Общение».</span><span></span></li><li><span>Интеллектуальный клуб «Гарри Поттер».</span><span></span></li><li><span>Клуб игрового общения для молодежи.</span><span></span></li><li><span>Клуб «Веселая продленка».</span><span></span></li><li><span>Кружок «Очумелые ручки».</span><span></span></li><li><span>Клуб семейные встречи «25+».</span></li></ol> <p><span>Участниками клубных формирований также являются работники различных сфер деятельности: торговые работники, врачи, бухгалтера, мастера лесной промышленности, школьники.</span></p> <p><span>Творческие коллективы принимают активное участие во всех поселенческих мероприятиях, ярмарках и фестивалях. Осуществляют выездные концерты в отдаленные деревни, дома ветеранов. Проводят выездные праздники малых деревень.</span></p> <p><span>В 2022 году дом культуры принял<span> </span>участие в программе губернатора области «Сельский дом культуры». Проведен капитальный ремонт на </span><span>3 356 430</span><span><span> </span>рублей.</span></p> <p><span> </span></p> <p><span><span> </span></span></p> <p><span><span> </span></span></p> <p><span><span> </span></span><span></span></p> <p><span> </span></p>	\N	\N	\N	{"url": "https://all.culture.ru/uploads/b5fd9e987ba5de0408b6a6b385c4b44b.jpg", "title": "пожара.jpg"}	\N	\N	Дворцы культуры и клубы	МАУК «Бабаевский центр культурного развития»	Бабаевский район	Europe/Moscow	пл Привокзальная,1	\N	обл Вологодская,р-н Бабаевский,г Бабаево,пл Привокзальная,1	\N	3501008870	mincult	Бабаевский район	Europe/Moscow	[{"network":"vk","name":"Володинский Дом культуры","networkId":"158838778","updateDate":"2018-10-12T11:09:38Z","createDate":"2018-10-12T11:09:38Z","accountId":22721,"postingGroupId":20087},{"network":"vk","name":"Кдц Бабаево","networkId":"275144982","isPersonal":true,"updateDate":"2018-10-12T11:09:46Z","createDate":"2018-10-12T11:09:46Z","accountId":22721,"postingGroupId":20088},{"network":"vk","name":"МБУК \\"Бабаевский центр культурного развития\\"","networkId":"23582611","updateDate":"2018-10-12T11:09:31Z","createDate":"2018-10-12T11:09:31Z","accountId":22721,"postingGroupId":20086}]	20369	[{"id": 26, "name": "Современное искусство", "sysName": "sovremennoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	74989	[{"url":"https://afisha7.ru/babaevo/dvorcy-kultury-i-kluby/92105pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/87976/pozharskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=39a914ff-3c7c-4da6-93d1-f86b2c0163af&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-01-17T08:20:13Z	2024-08-08T08:35:02Z	0101000020E61000008EAD6708C70C424078EE3D5C72FA4D40
Фетининский клуб	Вологодский район	Europe/Moscow	д 17	\N	обл Вологодская,р-н Вологодский,п Фетинино,д 17	{"type": "Point", "coordinates": [39.76575, 59.359787]}	<p>Фетининский клуб был создан в 1986 году. Основное направление деятельности – культурно-досуговое. </p><p>Сегодня на базе учреждения работают шесть клубных формирований хореографического, вокального и театрального направлений. Проводятся различные мастер-классы для детей, молодежи и взрослой части населения. В стенах клуба ведет работу организация «Ветеран». </p><p>Работник клуба проводит культурно-массовые мероприятия, освещает важные даты. Деятельность клуба тесно связана с работой школы и библиотеки поселка. Недавно в клубе была создана театральная студия «Авокадо». Ребята принимают активное участие в концертных программах и конкурсах. </p>	https://vk.link/public198795633	\N	[]	{"url": "https://all.culture.ru/uploads/cf99719fbbeebc85dbe1d7fc8469015d.jpg", "title": "5LE3cGsrKdw.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Семёнковское клубное объединение»	Вологодский район	Europe/Moscow	ул Первомайская,д 17	\N	обл Вологодская,р-н Вологодский,п Семенково (Семенковское МО),ул Первомайская,д 17	\N	3507303470	mincult	Вологодский район	Europe/Moscow	\N	14048	[{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	\N	{"to": "17:30:00", "from": "10:00:00"}	\N	{"to": "17:30:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	{"to": "18:00:00", "from": "12:00:00"}	\N	\N	\N	\N	\N	\N	\N	51594	[{"url":"https://www.culture.ru/institutes/77745/fetininskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/vologda/dvorcy-kultury-i-kluby/75400pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2021-04-16T08:41:06Z	2024-08-30T08:13:31Z	0101000020E6100000BC74931804E2434052431B800DAE4D40
Ломоватский клуб	Великоустюгский район	Europe/Moscow	ул Культуры,д 15	\N	обл Вологодская,р-н Великоустюгский,п Ломоватка,ул Культуры,д 15	{"type": "Point", "coordinates": [45.529754162734974, 61.124822760826625]}	<p>Дом культуры был построен в 1960 году.</p><p>Его работа направлена на сохранение и развитие разнообразных форм самодеятельного художественного творчества, в том числе посредством организации деятельности самодеятельных коллективов, организации досуга населения с учетом различных категорий и возрастов.<br /></p><p><a></a>Дом культуры предоставляет широкий спектр услуг: концертные, конкурсные, развлекательные, игровые, познавательные программы, вечера отдыха, литературно-музыкальные вечера, выставки, спортивно-развлекательные программы, дискотеки, детские программы.</p><p>На базе учреждения работают 8 клубных формирований: спортивные клуб, две танцевальные детские группы, театральный кружок, вокальная группа «Околица», кружок вокального пения, детская группа «Затейники», вокально-инструментальный ансамбль. В клубных формированиях занимается 63 человек в возрасте от 5 до 76 лет (на бесплатной основе).</p>	http://www.dciskrasavino.ru	club_lomovatka@mail.ru	[{"value": "79114473737"}]	{"url": "https://all.culture.ru/uploads/fb6507e946258d09f3dc344b872257d8.jpeg", "title": "QcSyYcB-AWc.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Центр культурного развития г. Красавино»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 152	\N	обл Вологодская,р-н Великоустюгский,г Красавино,пр-кт Советский,д 152	\N	3526008640	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"Дом культуры и спорта г.Красавино","networkId":"33505837","updateDate":"2018-09-03T11:42:38Z","createDate":"2018-09-03T11:42:38Z","accountId":22303,"postingGroupId":19717},{"network":"vk","name":"Народная хореографическая студия \\"Улыбка\\"(г.Крас","networkId":"5759262","updateDate":"2018-09-03T11:43:10Z","createDate":"2018-09-03T11:43:10Z","accountId":22303,"postingGroupId":19718},{"network":"vk","name":"Просветительский центр \\"Светоч\\" ДКиС г.Красавино","networkId":"115057099","updateDate":"2018-09-03T11:44:09Z","createDate":"2018-09-03T11:44:09Z","accountId":22303,"postingGroupId":19720}]	20579	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}, {"id": 323, "name": "Исполнительское искусство", "sysName": "ispolnitelskoe-iskusstvo"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	\N	\N	\N	{"to": "18:00:00", "from": "09:00:00"}	{"to": "18:00:00", "from": "09:00:00"}	{"to": "16:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	46841	[{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/27152pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/45626/lomovatskii-klub","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=fb191bdc-e094-495d-8237-adf307f5129c&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2020-09-28T08:10:19Z	2024-08-15T14:56:49Z	0101000020E6100000ECEE01FCCEC34640FDC53531FA8F4E40
Ферапонтовский сельский дом культуры	Кирилловский район	Europe/Moscow	ул Слободская,д 4	\N	обл Вологодская,р-н Кирилловский,с Ферапонтово,ул Слободская,д 4	{"type": "Point", "coordinates": [38.568034287448256, 59.954636770676935]}	<p><span>В здании имеется зрительный зал на 100 мест, кружковая комната, выставочный зал, зал для проведения вечеров отдыха.</span></p> <p><span>В зоне обслуживания находится 59 деревень, где проживает 891 человек. В Ферапонтовском доме культуры проводятся различные по форме и тематике культурно-массовые мероприятия: праздники, представления, концерты, спектакли. Дети с интересом<span> посещают</span> игровые программы и мастер-классы. Организована работа с любительскими творческими коллективами, работают кружки и клубы по интересам. Дом культуры работает в тесном контакте со всеми учреждениями и населением с. Ферапонтово. Для проведения мероприятия сотрудники учреждения стараются привлекать все категории населения, заинтересовать всех – от детей до пожилых людей.</span></p>	\N	\N	[{"value": "79212374960"}]	{"url": "https://all.culture.ru/uploads/db3a4a229210479677c8819b757aab94.jpg", "title": "20230306_082305.jpg"}	[{"url": "https://all.culture.ru/uploads/77ba7b1427ea0ca3f8c7a855ce896fb0.jpg", "title": "20220508_152126.jpg"}]	\N	Дворцы культуры и клубы	АУК КМР «ЦКР»	Кирилловский район	Europe/Moscow	ул Гагарина,д 98	\N	обл Вологодская,р-н Кирилловский,г Кириллов,ул Гагарина,д 98	\N	3511006791	mincult	Кирилловский район	Europe/Moscow	[{"network":"vk","name":"Центр культурного развития","networkId":"17831631","updateDate":"2018-05-29T07:22:36Z","createDate":"2018-05-29T07:22:36Z","accountId":21387,"postingGroupId":18946}]	20401	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	77796	[{"url":"https://afisha7.ru/kirillov/dvorcy-kultury-i-kluby/96894pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/90652/ferapontovskii-selskii-dom-kultury","serviceName":"Культура.рф"}]	\N	\N	\N	\N	2023-03-16T12:44:33Z	2024-09-03T12:05:34Z	0101000020E610000068CCF758B5484340E9CEA68931FA4D40
Марковский дом культуры	Сокольский район	Europe/Moscow	д 9	\N	обл Вологодская,р-н Сокольский,д Марковское,д 9	{"type": "Point", "coordinates": [40.45592277350226, 59.430196976403586]}	<p>Марковский дом культуры начал свою работу в 1988 году, а в 2018 году вошел в состав Центра народной культуры и художественных ремесел «Сокольский».</p><p> Здесь проводятся поселенческие мероприятия организационного, информационного, спортивного и культурного характера. Кроме того, ведется работа с пожилыми людьми, ветеранами труда и Великой Отечественной войны, тружениками тыла, с детьми и молодыми семьями. </p><p>Проводятся календарные праздники, выпускные, вечера отдыха, концертные программы, торжественные и юбилейные вечера, ярмарки. На базе учреждения работают 13 клубных формирований, из них 2 – на платной основе. Клубные формирования посещают 244 участника. </p>  <p><span></span></p>	\N	mr.ksc@yandex.ru	[{"value": "78173351167"}]	{"url": "https://all.culture.ru/uploads/b248668cf46b62ab00383cf67146634f.jpg", "title": "марк.jpg"}	\N	\N	Дворцы культуры и клубы	БУК СМО ЦНКИХР «Сокольский»	Сокольский район	Europe/Moscow	ул Советская,д 16	\N	обл Вологодская,р-н Сокольский,г Сокол,ул Советская,д 16	\N	3527011797	mincult	Сокольский район	Europe/Moscow	\N	15137	\N	\N	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77654	[{"url":"https://www.culture.ru/institutes/90509/markovskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/sokol/dvorcy-kultury-i-kluby/96873pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-13T09:01:47Z	2024-09-05T07:32:28Z	0101000020E6100000CFD86CAD5B3A4440E93ECCB110B74D40
Воробьевский дом культуры	Сокольский район	Europe/Moscow	ул Центральная,д 2	\N	обл Вологодская,р-н Сокольский,д Воробьево,ул Центральная,д 2	{"type": "Point", "coordinates": [40.884745, 59.625609]}	<p>Воробьевский дом культуры начал свою работу в 1972 году, а в 2018 году вошел в состав Центра народной культуры и художественных ремесел «Сокольский». </p><p><span>Приоритетными<span> </span>направлениями деятельности являются сохранение традиционной народной культуры на основе местного фольклорного материала; работа с пожилыми людьми, ветеранами труда и Великой Отечественной войны, тружениками тыла; работа с детьми, молодыми<span> </span>семьями. </span></p><p><span>Проводятся календарные праздники, выпускные, вечера отдыха, концертные программы, торжественные и юбилейные вечера, ярмарки. </span><span>Н</span>а базе учреждения работают 14 клубных формирований, из них 2 – на платной основе. Клубные формирования посещают 263 участника. </p> 	\N	dk.vorobevo@mail.ru	[{"value": "78173342140"}]	{"url": "https://all.culture.ru/uploads/7b9118d5a18d26a47eb8b189379557c8.jpg", "title": "воробьево.jpg"}	\N	\N	Дворцы культуры и клубы	БУК СМО ЦНКИХР «Сокольский»	Сокольский район	Europe/Moscow	ул Советская,д 16	\N	обл Вологодская,р-н Сокольский,г Сокол,ул Советская,д 16	\N	3527011797	mincult	Сокольский район	Europe/Moscow	\N	15137	\N	\N	\N	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	{"to": "17:00:00", "from": "08:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77653	[{"url":"https://afisha7.ru/sokol/dvorcy-kultury-i-kluby/96872pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/90511/vorobevskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=15c8d258-6aa1-4dcc-9768-6f57b13ef2b9&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-03-13T08:52:33Z	2024-09-05T07:19:08Z	0101000020E61000005726FC523F714440A88AA9F413D04D40
Центр культурного развития с. Шуйского	Междуреченский район	Europe/Moscow	ул Советская,д 12	\N	обл Вологодская,р-н Междуреченский,с Шуйское,ул Советская,д 12	{"type": "Point", "coordinates": [41.025423275589525, 59.37437934510924]}	<p>Центр культурного развития начал свою историю в 1960 году. </p><p>В Центре культурного развития проходят мероприятия различного уровня и направленности: районные торжественные вечера, массовые народные гулянья, детские игровые программы, дни рождения, тематические вечера, встречи для людей старшего возраста, дискотеки для подростков и молодежи, сельские ярмарки, конкурсные программы, праздники и концертные программы.</p><p> В рамках туристического маршрута бренда «Междуречье – клюквенный край» на базе учреждения проводится интерактивно-игровая программа «В гостях у Клюковки». На площадке центра проходят гастрольные мероприятий театрально-концертных и прочих коллективов области, других регионов. На базе учреждения действуют творческие коллективы: вокальные ансамбли «Девчата», «Криницы», народный самодеятельный вокальный ансамбль «Купава». </p><p><span></span></p> 	https://dk296.esgms.ru	kultura.60@mail.ru	[{"value": "78174921417", "comment": ""}]	{"url": "https://all.culture.ru/uploads/980763ae19c49333b97fd2a8ba9cf926.jpg", "title": "ЦКР вх..jpg"}	\N	\N	Дворцы культуры и клубы	БУК ММР «Центр культурного развития»	Междуреченский район	Europe/Moscow	ул Советская,12	\N	обл Вологодская,р-н Междуреченский,с Шуйское,ул Советская,12	\N	3513003690	mincult	Междуреченский район	Europe/Moscow	[{"network":"vk","name":"БУК ММО \\"Центр культурного развития\\"","networkId":"116053663","updateDate":"2023-07-19T08:26:04Z","createDate":"2023-07-19T08:26:04Z","accountId":48099,"postingGroupId":42785}]	20410	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	\N	{"to": "18:15:00", "from": "09:00:00"}	{"to": "18:15:00", "from": "09:00:00"}	{"to": "18:15:00", "from": "09:00:00"}	{"to": "18:15:00", "from": "09:00:00"}	{"to": "18:15:00", "from": "09:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	\N	77553	[{"url":"https://www.culture.ru/institutes/90423/centr-kulturnogo-razvitiya-s-shuiskogo","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/shuyskoe/dvorcy-kultury-i-kluby/96866pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2023-03-10T05:13:17Z	2024-09-05T06:49:38Z	0101000020E61000006B9BE4114183444063C591A9EBAF4D40
Николоторжский сельский дом культуры	Кирилловский район	Europe/Moscow	ул Захарьинская,д 17	\N	обл Вологодская,р-н Кирилловский,с Никольский Торжок,ул Захарьинская,д 17	{"type": "Point", "coordinates": [38.768215, 59.872028]}	 <p>Дом культуры был построен в 1970 на средства профсоюза колхоза «Николоторжский». Несколько лет назад был проведен капитальный ремонт здания. Теперь здесь привлекательный зрительный зал, оснащенный разнообразным музыкальным оборудованием, обновленной одеждой сцены, комфортными зрительскими местами. Есть большой танцевальный зал, который позволяет проводить не только танцевальные вечера, но и Вечера отдыха, игровые и спортивные программы.</p>  <p><span> </span>Большая прилегающая территория и уличная сцена позволяет проводить мероприятия не только в здании, но и на свежем воздухе.</p> <p><span> </span>На базе ДК работает 16 клубных формирований для всех категорий населения.</p> <p><span> </span>Большая работа ведется с ветеранами: Клубы«Ветеран», «Мастерица», «Здоровье»,<span> </span>ансамбль «Околица».</p> <p><span> </span>Детям также предложены различные кружки: вокальный кружок «Домисолька», театральный кружок «Радуга», танцевальный кружок «Флауэс», ИЗО-студия «Волшебная палитра», клубы «Родничок», «Возрождение» и семейный клуб «ТЫ+Я=СЕМЬЯ».</p> <p><span> </span>Молодежь и люди среднего возраста посещают вокальные студии «Я – солист» и «Созвучие сердец», вокальные кружки «Родники» и «Красна горка»</p>	\N	\N	[{"value": "79626729469"}]	{"url": "https://all.culture.ru/uploads/5f748f93bfbd744f48626100d807773c.jpg", "title": "НИКОЛА ДК.jpg"}	\N	\N	Дворцы культуры и клубы	АУК КМР «ЦКР»	Кирилловский район	Europe/Moscow	ул Гагарина,д 98	\N	обл Вологодская,р-н Кирилловский,г Кириллов,ул Гагарина,д 98	\N	3511006791	mincult	Кирилловский район	Europe/Moscow	[{"network":"vk","name":"Центр культурного развития","networkId":"17831631","updateDate":"2018-05-29T07:22:36Z","createDate":"2018-05-29T07:22:36Z","accountId":21387,"postingGroupId":18946}]	20401	[{"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}]	\N	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "18:00:00", "from": "11:00:00"}	{"to": "21:00:00", "from": "11:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	77363	[{"url":"https://www.culture.ru/institutes/90281/nikolotorzhskii-selskii-dom-kultury","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/kirillov/dvorcy-kultury-i-kluby/96601pl","serviceName":"Афиша7"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=419d21d5-3792-4d77-b90c-08de37ac5ab4&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2023-03-03T09:51:11Z	2024-09-03T08:11:30Z	0101000020E6100000F8A57EDE5462434020990E9D9EEF4D40
Теплогорский клуб	Великоустюгский район	Europe/Moscow	ул Центральная,д 7	\N	обл Вологодская,р-н Великоустюгский,д Теплогорье,ул Центральная,д 7	{"type": "Point", "coordinates": [46.679489, 60.458322]}	<p>На продолжении нескольких десятков лет для взрослых и детей проводятся мероприятия различной направленности: патриотического воспитания, к государственным праздникам, обучающие, развлекательного характера. Также односельчане активно развивают творческий потенциал, выступая на сцене клуба, на празднике деревни, ездят с концертными номерами на конкурсы, фестивали и в соседние поселения.</p> <p>Работают объединения по интересам для всех возрастных категорий:</p><ul><li> театральный кружок «Я – артист»;<br /></li><li>вокальный ансамбль ветеранов «Вдохновение»;<br /></li><li>спортивно-оздоровительный клуб «Здоровье – это я»;<br /></li><li>вокальный ансамбль «Рябинушка»;<br /></li><li>вокальная группа «Кураж».</li></ul> <p>В клубе есть комната-музей «Мы родом из СССР», комната-музей «Предметы народного быта». </p>	http://кдцву.рф	teplkeltyra@yandex.ru	[{"value": "79997919686", "comment": "Начальник подразделения Вологдина Наталья Анатольевна"}, {"value": "79814380719", "comment": "Художественный руководитель Мария Валериевна Шорохова"}]	{"url": "https://all.culture.ru/uploads/585b39d7ce8399eb51e861284177682b.jpg", "title": "U17J2_A-mZI.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"Великоустюгский культурно-досуговый центр","networkId":"117993849","updateDate":"2024-02-15T08:49:55Z","createDate":"2024-02-15T08:49:55Z","accountId":46589,"postingGroupId":44737},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 24, "name": "История", "sysName": "istoriya"}, {"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 28, "name": "Литература", "sysName": "literatura"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 392, "name": "Книги", "sysName": "knigi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-97047864&id=456239061&hash=ed29c845a0e885e8&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-97047864&id=456239056&hash=3d9e8bf124fcfb81&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe width=\\"607\\" height=\\"360\\" src=\\"https://www.youtube.com/embed/AjFU-fx8htE\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-53437447&id=456242161&hash=eea4ad7fb6b0eb28&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"}]	{"to": "15:00:00", "from": "10:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	{"to": "15:00:00", "from": "10:00:00"}	{"to": "23:00:00", "from": "20:00:00"}	\N	\N	\N	\N	\N	\N	\N	\N	73510	[{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/96574pl","serviceName":"Афиша7"},{"url":"https://www.culture.ru/institutes/86614/teplogorskii-klub","serviceName":"Культура.рф"},{"url":"https://map.funtam.ru/offer/poi?showMainEvent=false&shareId=52cfae86-2798-4211-aafa-b3fabea31316&shareType=venue","serviceName":"ФанТам"}]	\N	\N	\N	\N	2022-11-29T12:12:03Z	2024-09-03T08:28:27Z	0101000020E6100000F17EDC7EF9564740C784984BAA3A4E40
Орловский клуб	Великоустюгский район	Europe/Moscow	д 100	\N	обл Вологодская,р-н Великоустюгский,д Чернево,д 100	{"type": "Point", "coordinates": [46.635535, 60.500312]}	<p>Первый клуб в деревне Орлово появился в 1950 году. Он находился в отдельном приспособленном доме. Заведующим был С. И. Мелехин. Учитель начальных классов, гармонист-самоучка, он собрал возле себя талантливых людей. Был организован хор песни, который гастролировал далеко за пределами своей деревни. В 1968 году был выстроен новый типовой Дом культуры. Его директором была назначена Р. И. Кресцова. В 2017 году был создан ансамбль русской песни «Россиянки», руководитель – Е. Н. Нечаева. В 2018 году директором была назначена Л. М. Зорина.</p><p> Здесь ведут работу самодеятельный ансамбль русской песни «Наюнаяночки», танцевальный ансамбль «Сударушки», группа здоровья «Девчата». Ведут деятельность 8 клубных формирований, их посещает 71 человек. Творческие коллективы активно принимают участие в различных фестивалях конкурсах и занимают призовые места. В 2019 и 2020 годах Дом культуры получил I место за лучшее мероприятие в районе. В 2020 году ему было присвоено звание «Лучшее учреждение культуры». В 2021 году разработан новый проект – «Фестиваль водных фонариков», который планируется организовывать ежегодно. </p> <p> </p>   	http://кдцву.рф	lubovzorina@inbox.ru	[{"value": "78173821660", "comment": "нач. подразделения Зорина Любовь"}, {"value": "78173865837", "comment": "менеджер Жирохова Наталья"}]	{"url": "https://all.culture.ru/uploads/d099787ef2ea02f1eb917e59a1a2198b.jpg", "title": "JVKIx7k3ST0.jpg"}	\N	\N	Дворцы культуры и клубы	МБУК «Великоустюгский культурно-досуговый центр»	Великоустюгский район	Europe/Moscow	пр-кт Советский,д 101	\N	обл Вологодская,р-н Великоустюгский,г Великий Устюг,пр-кт Советский,д 101	\N	3526015975	mincult	Великоустюгский район	Europe/Moscow	[{"network":"vk","name":"\\"Кузинский клуб\\"","networkId":"170421267","updateDate":"2023-04-05T11:45:45Z","createDate":"2023-04-05T11:45:45Z","accountId":46589,"postingGroupId":41531},{"network":"vk","name":"\\"Усть-Алексеевский клуб\\"","networkId":"196143083","updateDate":"2023-04-05T13:11:25Z","createDate":"2023-04-05T13:11:25Z","accountId":46589,"postingGroupId":41534},{"network":"vk","name":"«Верхневарженский клуб»","networkId":"219499380","updateDate":"2023-04-05T11:45:28Z","createDate":"2023-04-05T11:45:28Z","accountId":46589,"postingGroupId":41530},{"network":"vk","name":"«Морозовский клуб»","networkId":"219948363","updateDate":"2023-07-05T08:23:07Z","createDate":"2023-07-05T08:23:07Z","accountId":46589,"postingGroupId":42638},{"network":"vk","name":"«Новаторский клуб»","networkId":"217628593","updateDate":"2023-03-17T08:05:55Z","createDate":"2023-03-17T08:05:55Z","accountId":46589,"postingGroupId":41030},{"network":"vk","name":"Анюта Красникова","networkId":"17613040","updateDate":"2023-03-17T10:43:29Z","createDate":"2023-03-17T10:43:29Z","accountId":46594,"postingGroupId":41037},{"network":"vk","name":"БУК \\"Юдинский дом культуры\\" п. Стрига 6а","networkId":"160210512","updateDate":"2023-04-11T12:03:48Z","createDate":"2023-04-11T12:03:48Z","accountId":46589,"postingGroupId":41660},{"network":"vk","name":"Великоустюгский культурно-досуговый центр","networkId":"117993849","updateDate":"2024-02-15T08:49:55Z","createDate":"2024-02-15T08:49:55Z","accountId":46589,"postingGroupId":44737},{"network":"vk","name":"Обособленное подразделение \\"Аристовский клуб\\"","networkId":"195948369","updateDate":"2023-03-17T08:06:12Z","createDate":"2023-03-17T08:06:12Z","accountId":46589,"postingGroupId":41031},{"network":"vk","name":"Обособленное подразделение \\"Сусоловский клуб\\"","networkId":"219106681","updateDate":"2023-04-07T11:43:09Z","createDate":"2023-04-07T11:43:09Z","accountId":46589,"postingGroupId":41581},{"network":"vk","name":"Обособленное подразделение \\"Теплогорский клуб\\"","networkId":"97047864","updateDate":"2023-04-07T11:43:26Z","createDate":"2023-04-07T11:43:26Z","accountId":46589,"postingGroupId":41582},{"network":"vk","name":"Окультурено молодежью","networkId":"199241624","updateDate":"2023-03-17T10:42:43Z","createDate":"2023-03-17T10:42:43Z","accountId":46594,"postingGroupId":41036},{"network":"vk","name":"Парк культуры и отдыха /Великий Устюг/","networkId":"153198570","updateDate":"2023-04-05T11:46:08Z","createDate":"2023-04-05T11:46:08Z","accountId":46589,"postingGroupId":41532},{"network":"vk","name":"Полдарский клуб","networkId":"206228726","updateDate":"2023-07-05T08:23:33Z","createDate":"2023-07-05T08:23:33Z","accountId":46589,"postingGroupId":42639},{"network":"vk","name":"Театр Деда Мороза","networkId":"199304892","updateDate":"2020-11-03T05:54:59Z","createDate":"2020-11-03T05:54:59Z","accountId":21245,"postingGroupId":30273}]	20409	[{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}, {"id": 29, "name": "Музыка", "sysName": "muzyka"}, {"id": 39, "name": "Для детей", "sysName": "dlya-detey"}, {"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}, {"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}, {"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}]	[{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195507731&id=456239097&hash=ffeeeeae725dc415&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195507731&id=456239095&hash=b261923c7c6c1dd7&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195507731&id=456239089&hash=a55dfcd0094bcfcb&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=237192581&id=456240193&hash=d559fa49a86caae1&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195507731&id=456239084&hash=9453204304f9ae4b&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"},{"hosting":"vk","id":"<iframe src=\\"https://vk.com/video_ext.php?oid=-195507731&id=456239081&hash=48970de35ba54e97&hd=2\\" width=\\"853\\" height=\\"480\\"></iframe>"}]	\N	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	{"to": "22:00:00", "from": "10:00:00"}	{"to": "18:00:00", "from": "10:00:00"}	\N	\N	\N	\N	\N	\N	\N	35774	[{"url":"https://www.culture.ru/institutes/70422/orlovskii-klub","serviceName":"Культура.рф"},{"url":"https://afisha7.ru/velikiy-ustyug/dvorcy-kultury-i-kluby/96549pl","serviceName":"Афиша7"}]	\N	\N	\N	\N	2018-08-16T17:26:51Z	2024-09-03T13:31:51Z	0101000020E61000004F3BFC3559514740EFE53E390A404E40
\.


--
-- TOC entry 5858 (class 0 OID 30410)
-- Dependencies: 233
-- Data for Name: m2m_culture_palaces_clubs_tags; Type: TABLE DATA; Schema: culture_data; Owner: postgres
--

COPY culture_data.m2m_culture_palaces_clubs_tags (id, culture_palace_id, tag_id) FROM stdin;
1	83243	18
2	83291	8
3	78770	24
4	72981	18
5	78196	18
6	84620	7
7	75350	15
8	78781	18
9	78973	14
10	78770	7
11	78628	16
12	75350	8
13	72835	14
14	83354	11
15	78192	15
16	80030	8
17	83214	16
18	79404	3
19	35774	12
20	77911	4
21	78271	23
22	35774	5
23	78670	8
24	78781	25
25	48224	6
26	83214	19
27	80530	15
28	77100	22
29	72843	13
30	55718	13
31	75817	3
32	78457	24
33	78226	22
34	78192	17
35	77911	15
36	78646	9
37	69932	15
38	77796	18
39	78781	12
40	78608	1
41	75350	5
42	35774	11
43	73688	25
44	78334	15
45	78301	3
46	55718	22
47	78973	23
48	77553	20
49	83231	13
50	78356	12
51	78399	9
52	83231	15
53	83214	1
54	75350	9
55	82079	6
56	39071	17
57	46841	7
58	78301	7
59	78781	3
60	78973	20
61	74994	21
62	80530	2
63	78670	25
64	78196	4
65	78723	6
66	78200	16
67	72843	14
68	77344	12
69	83333	22
70	80065	7
71	83941	9
72	78301	17
73	72835	6
74	74989	1
75	39071	16
76	78669	5
77	80065	2
78	35982	2
79	35091	20
80	61727	11
81	80530	6
82	83485	12
83	83214	17
84	83328	11
85	78233	9
86	78726	1
87	78236	4
88	79008	3
89	80530	7
90	48224	17
91	83941	15
92	83328	19
93	35982	10
94	78200	7
95	61727	18
96	78726	12
97	73512	6
98	78232	1
99	79274	21
100	78196	17
101	69932	22
102	83354	4
103	39071	18
104	78627	16
105	83329	25
106	69932	16
107	74986	11
108	78472	6
109	83354	6
110	79404	21
111	78271	18
112	80065	23
113	72843	20
114	72843	9
115	78200	12
116	78226	10
117	78627	14
118	69932	10
119	73688	9
120	75350	11
121	35982	9
122	78236	20
123	78773	17
124	78973	11
125	78233	23
126	75350	14
127	39071	15
128	80030	13
129	79404	23
130	72981	5
131	78726	14
132	73626	23
133	78781	22
134	51594	1
135	78438	22
136	78222	8
137	78438	1
138	78646	8
139	83485	6
140	73688	7
141	78399	22
142	78222	17
143	75817	20
144	78669	25
145	73512	19
146	78457	18
147	74989	10
148	78590	15
149	51594	9
150	78236	12
151	78226	15
152	78764	16
153	78628	1
154	79404	5
155	69932	18
156	72843	24
157	78233	7
158	73510	19
159	82080	7
160	78657	10
161	51594	16
162	78200	23
163	78236	1
164	73688	10
165	80530	23
166	77100	20
167	73512	22
168	73512	11
169	46841	9
170	82076	25
171	79008	25
172	83240	9
173	78334	16
174	78232	7
175	75817	10
176	78646	1
177	84620	5
178	78192	25
179	78764	7
180	46841	13
181	46841	16
182	78399	17
183	82079	7
184	80065	21
185	77363	23
186	61727	15
187	78236	19
188	78226	16
189	78608	24
190	78670	12
191	51594	13
192	78301	25
193	78773	25
194	77911	2
195	73510	5
196	35774	21
197	82080	14
198	83214	3
199	78773	20
200	83214	23
201	78232	14
202	80065	6
203	77100	12
204	72843	11
205	74989	7
206	78233	3
207	78236	25
208	82076	16
209	75817	2
210	78232	18
211	78356	4
212	78723	5
213	78438	9
214	74997	15
215	80530	24
216	35091	19
217	78770	25
218	78726	5
219	78232	4
220	61727	3
221	83240	7
222	79274	16
223	72835	24
224	83333	18
225	78773	24
226	80030	20
227	78770	1
228	73626	10
229	74997	17
230	80065	24
231	77100	8
232	78590	3
233	83240	12
234	78472	25
235	80030	17
236	78773	21
237	78627	24
238	78236	3
239	78781	2
240	78334	21
241	80065	20
242	78670	24
243	77100	25
244	73510	18
245	78764	25
246	51594	19
247	74994	5
248	73688	15
249	78773	3
250	84620	4
251	78200	25
252	78628	19
253	78226	24
254	35774	13
255	35982	22
256	77911	7
257	72835	13
258	83329	4
259	77363	6
260	83485	16
261	73512	23
262	78399	2
263	78196	13
264	73510	1
265	78472	1
266	79008	6
267	73510	14
268	78301	10
269	78472	24
270	78399	15
271	74994	9
272	77911	25
273	73512	9
274	78781	24
275	78301	15
276	77553	14
277	78399	16
278	84620	9
279	79274	9
280	72843	10
281	78472	4
282	74986	15
283	75350	20
284	78669	24
285	79008	19
286	83243	9
287	83354	1
288	35774	25
289	73512	21
290	78457	2
291	82076	19
292	78628	21
293	78764	18
294	82080	25
295	83231	7
296	78669	20
297	74986	24
298	83354	24
299	39071	21
300	72843	25
301	78723	9
302	78232	9
303	83941	3
304	75350	22
305	80030	12
306	78781	21
307	73510	13
308	78301	21
309	72843	17
310	78646	20
311	83291	11
312	83354	2
313	78356	6
314	35774	19
315	78334	7
316	78438	8
317	78399	6
318	83243	23
319	78670	3
320	69932	6
321	74994	19
322	78192	10
323	83240	2
324	83328	25
325	78232	19
326	51594	20
327	79274	6
328	74997	11
329	83214	12
330	78233	21
331	72843	5
332	35982	13
333	73626	22
334	74986	2
335	78233	19
336	75350	23
337	77344	16
338	83214	10
339	83240	3
340	83240	19
341	72981	21
342	78770	9
343	80065	11
344	79404	18
345	55718	11
346	35774	8
347	83328	16
348	78646	12
349	82078	9
350	78608	5
351	78334	19
352	80530	10
353	82079	21
354	82080	12
355	72835	20
356	78670	16
357	73510	10
358	83329	22
359	72843	2
360	74997	14
361	55718	19
362	77363	18
363	78973	8
364	74997	18
365	78973	4
366	78236	10
367	39071	24
368	77553	13
369	35982	3
370	80065	14
371	83485	14
372	78723	25
373	78770	18
374	78356	13
375	78608	20
376	51594	12
377	77553	25
378	78627	21
379	78669	19
380	78271	17
381	78196	25
382	35774	6
383	35091	5
384	78438	14
385	72835	8
386	77553	7
387	83485	20
388	74989	13
389	78764	4
390	78457	17
391	74989	23
392	79397	15
393	78608	15
394	83485	5
395	48224	2
396	79008	11
397	83333	7
398	46841	2
399	77553	24
400	82076	3
401	46841	12
402	83485	24
403	78657	15
404	78399	21
405	55718	2
406	51594	14
407	74994	3
408	48224	14
409	79008	9
410	39071	25
411	78356	20
412	78196	16
413	78627	1
414	46841	10
415	78590	8
416	72843	21
417	74994	2
418	78233	6
419	79397	11
420	78222	12
421	83333	24
422	78192	14
423	78233	18
424	83243	19
425	74986	22
426	74986	23
427	78399	23
428	79404	2
429	74986	4
430	83485	1
431	84620	2
432	80065	19
433	78670	19
434	79397	10
435	80530	14
436	35982	16
437	79397	3
438	79274	8
439	78334	2
440	73510	15
441	78301	1
442	83941	13
443	83354	16
444	69932	20
445	78726	15
446	78226	7
447	83485	19
448	75350	18
449	78723	12
450	82079	1
451	74994	6
452	72835	19
453	83214	4
454	35091	3
455	83291	23
456	78723	19
457	83231	17
458	78438	12
459	83354	8
460	78200	5
461	78773	4
462	51594	22
463	78773	14
464	83243	13
465	78271	6
466	78608	23
467	83333	14
468	83354	10
469	78770	5
470	83240	11
471	78608	12
472	78627	10
473	78669	18
474	78399	7
475	77363	7
476	83328	8
477	72843	19
478	77363	20
479	72981	2
480	74994	7
481	78438	23
482	78628	3
483	78670	10
484	74989	25
485	75817	5
486	79274	20
487	83240	4
488	83243	15
489	83291	13
490	78233	16
491	79404	6
492	84620	6
493	78726	24
494	78457	10
495	78301	6
496	73512	25
497	78196	14
498	78192	11
499	78301	22
500	77344	19
501	78457	9
502	35091	9
503	78438	13
504	77363	14
505	78726	7
506	74997	5
507	73626	13
508	77911	18
509	82076	4
510	78628	18
511	82080	24
512	72981	1
513	80530	18
514	83231	14
515	78271	15
516	77553	9
517	78723	1
518	78192	5
519	73688	14
520	79008	24
521	82078	22
522	83243	8
523	82078	21
524	77796	1
525	84620	10
526	78222	23
527	46841	5
528	78973	12
529	48224	13
530	73512	12
531	83328	7
532	35982	19
533	35774	10
534	51594	10
535	83328	15
536	78200	15
537	78438	3
538	78764	2
539	78271	19
540	78356	14
541	39071	4
542	78773	11
543	83231	4
544	78657	11
545	78770	15
546	78472	5
547	83485	13
548	61727	2
549	83328	18
550	78670	18
551	78232	10
552	35091	13
553	69932	17
554	78628	24
555	78301	18
556	73512	8
557	77363	11
558	35091	6
559	78226	19
560	39071	3
561	82080	8
562	84620	19
563	78233	17
564	78669	14
565	72835	15
566	80030	7
567	78723	17
568	77363	24
569	73688	1
570	48224	9
571	83231	18
572	82079	14
573	77553	8
574	74997	9
575	74986	14
576	83941	21
577	77796	8
578	78301	5
579	83328	9
580	74986	7
581	78770	3
582	78628	17
583	78657	23
584	78226	4
585	55718	24
586	77796	9
587	73688	12
588	78192	7
589	78472	15
590	35091	24
591	61727	21
592	75817	23
593	82079	10
594	78200	19
595	83240	24
596	78457	16
597	77344	13
598	78196	15
599	77796	7
600	78226	18
601	78232	25
602	79274	14
603	82079	16
604	78646	14
605	78657	7
606	78334	23
607	78356	1
608	79008	14
609	78236	6
610	80030	18
611	80530	21
612	78200	9
613	72835	3
614	83354	12
615	73626	1
616	77911	13
617	78232	21
618	72981	15
619	35774	14
620	82080	18
621	79397	19
622	80030	23
623	74989	6
624	82078	16
625	72843	8
626	51594	4
627	35982	6
628	77796	5
629	74989	11
630	80065	3
631	78457	4
632	83333	8
633	78608	8
634	83329	16
635	78271	4
636	78669	6
637	78657	3
638	78764	1
639	46841	19
640	83328	12
641	46841	21
642	77796	25
643	77796	22
644	83329	6
645	78657	22
646	77363	3
647	79008	8
648	78196	12
649	78781	10
650	78773	1
651	78773	5
652	83231	22
653	74997	3
654	78233	4
655	73626	19
656	78271	2
657	82078	13
658	78457	13
659	73626	7
660	78590	19
661	77344	5
662	73510	24
663	73510	4
664	77344	22
665	83328	20
666	74994	4
667	78271	21
668	78196	19
669	78271	12
670	78973	1
671	78669	15
672	78334	4
673	83328	23
674	78472	18
675	39071	6
676	46841	24
677	84620	25
678	79397	8
679	80065	5
680	74994	23
681	83291	12
682	78627	22
683	48224	18
684	72981	20
685	61727	14
686	78472	3
687	83941	23
688	83328	13
689	61727	8
690	82080	21
691	73512	13
692	72843	18
693	78627	23
694	73512	5
695	82080	23
696	77344	25
697	77363	2
698	73510	8
699	78356	21
700	73688	6
701	83329	7
702	35091	12
703	78192	9
704	72981	11
705	74994	24
706	83291	17
707	83231	25
708	83231	2
709	83354	7
710	55718	7
711	74986	17
712	75817	1
713	77344	8
714	78973	5
715	74989	19
716	78222	16
717	78233	5
718	73688	3
719	78356	16
720	75817	11
721	35091	17
722	78236	7
723	78196	21
724	77553	5
725	83329	12
726	77363	8
727	69932	11
728	83485	2
729	78770	13
730	83328	14
731	77363	5
732	72981	9
733	78670	5
734	78764	12
735	51594	2
736	78770	8
737	78781	6
738	75350	3
739	77796	2
740	72981	10
741	78399	5
742	73688	4
743	80065	9
744	77553	6
745	73688	24
746	55718	5
747	78399	10
748	78764	21
749	72981	12
750	74997	1
751	78726	25
752	78334	9
753	78608	7
754	72835	5
755	82079	9
756	77100	1
757	35091	11
758	78628	10
759	83243	6
760	78356	17
761	72981	23
762	78764	20
763	78356	18
764	73626	12
765	78657	17
766	75350	2
767	77100	5
768	73510	16
769	82076	14
770	77911	5
771	78646	6
772	35774	3
773	72835	16
774	78472	11
775	78764	11
776	39071	22
777	84620	3
778	78764	23
779	84620	21
780	48224	7
781	78438	20
782	83941	6
783	74994	15
784	78192	6
785	83485	7
786	35774	1
787	83329	3
788	82076	23
789	79404	9
790	84620	12
791	46841	20
792	82076	2
793	61727	5
794	77363	10
795	78646	22
796	35982	17
797	39071	2
798	78301	16
799	55718	17
800	51594	25
801	78438	7
802	78726	18
803	82078	4
804	73688	8
805	78590	5
806	78472	17
807	75350	19
808	78646	23
809	73626	8
810	75817	14
811	77553	16
812	78233	10
813	35982	7
814	78723	23
815	80530	22
816	78646	11
817	78627	11
818	83941	11
819	75817	15
820	78196	3
821	78628	12
822	80065	8
823	78271	22
824	83328	24
825	72835	12
826	78669	10
827	78773	10
828	79008	12
829	74997	16
830	83214	22
831	79008	21
832	74989	16
833	78726	13
834	35982	1
835	84620	15
836	35774	17
837	80530	9
838	78334	20
839	78301	24
840	69932	14
841	79404	20
842	80030	6
843	79404	24
844	77911	19
845	79404	8
846	78770	22
847	78472	10
848	83231	20
849	82079	25
850	73510	11
851	84620	1
852	35982	5
853	78457	23
854	83291	6
855	83291	2
856	80030	15
857	83243	3
858	78226	21
859	77100	19
860	75817	4
861	78334	10
862	77344	18
863	78233	12
864	77911	16
865	83354	14
866	72843	23
867	61727	12
868	82076	15
869	73626	11
870	83941	25
871	78590	24
872	77344	11
873	83485	9
874	83214	20
875	79397	5
876	48224	8
877	72981	3
878	78627	4
879	82076	8
880	73688	20
881	74989	22
882	78646	7
883	78192	23
884	78200	24
885	83291	25
886	83243	14
887	78222	13
888	83354	22
889	61727	1
890	82078	6
891	73626	14
892	78723	10
893	77100	2
894	74989	20
895	80065	15
896	78781	4
897	78457	15
898	78628	11
899	83214	18
900	78627	3
901	35774	20
902	83333	11
903	48224	11
904	78590	20
905	35982	20
906	78628	20
907	83333	13
908	82079	3
909	78646	5
910	78399	8
911	79397	4
912	74994	16
913	39071	7
914	78723	11
915	79397	9
916	82078	17
917	78770	19
918	78301	11
919	73626	16
920	78301	8
921	78657	21
922	74989	9
923	78628	6
924	69932	25
925	83243	1
926	82078	10
927	78301	13
928	35982	11
929	78590	11
930	78973	18
931	69932	1
932	78233	11
933	77100	11
934	79404	17
935	78590	10
936	78627	17
937	78196	2
938	78590	1
939	78646	16
940	78472	2
941	78726	6
942	83240	21
943	78608	21
944	73688	2
945	83941	18
946	35774	7
947	78723	15
948	83485	18
949	73512	17
950	78627	2
951	79274	25
952	78222	14
953	78781	20
954	39071	5
955	78233	15
956	82080	9
957	78973	2
958	83214	2
959	73626	9
960	78608	18
961	74986	25
962	72835	1
963	35091	10
964	78590	17
965	74989	8
966	78271	3
967	78222	9
968	78232	2
969	78399	1
970	78670	7
971	83333	15
972	78726	22
973	78222	18
974	78669	2
975	82079	4
976	78669	1
977	83214	24
978	79274	5
979	78669	23
980	78200	21
981	83485	4
982	78271	10
983	48224	12
984	78457	19
985	77553	12
986	48224	15
987	35091	23
988	80530	25
989	75350	6
990	78726	8
991	78973	15
992	78457	5
993	78723	14
994	80065	16
995	77911	23
996	78723	22
997	69932	13
998	83354	17
999	78438	24
1000	82079	8
1001	83333	6
1002	73512	16
1003	78438	11
1004	78334	11
1005	78457	14
1006	77344	20
1007	73626	5
1008	78200	6
1009	79274	22
1010	79008	10
1011	83941	14
1012	78438	10
1013	78222	15
1014	78301	20
1015	75350	13
1016	79008	1
1017	77796	12
1018	46841	8
1019	78973	22
1020	77344	1
1021	78723	4
1022	83240	5
1023	77911	22
1024	35091	2
1025	78196	20
1026	83941	17
1027	78222	3
1028	83485	17
1029	78773	15
1030	61727	6
1031	78196	5
1032	82078	8
1033	78628	25
1034	78226	12
1035	78973	6
1036	78608	6
1037	77911	24
1038	80030	24
1039	78627	18
1040	74997	10
1041	72843	15
1042	78646	13
1043	77911	9
1044	78226	1
1045	78271	11
1046	35774	15
1047	51594	15
1048	78196	1
1049	78232	5
1050	83240	15
1051	78472	9
1052	80065	18
1053	78232	17
1054	83354	21
1055	82078	19
1056	83333	17
1057	83941	8
1058	78200	4
1059	79404	15
1060	83291	3
1061	78226	6
1062	78669	4
1063	80530	11
1064	78271	5
1065	78200	14
1066	78399	13
1067	78356	15
1068	79008	23
1069	78764	6
1070	35982	12
1071	74994	22
1072	80065	17
1073	75817	6
1074	73510	2
1075	78399	4
1076	77363	12
1077	73510	9
1078	78781	14
1079	79397	7
1080	48224	3
1081	83231	16
1082	79397	24
1083	78627	25
1084	80030	25
1085	78764	8
1086	78192	21
1087	77363	19
1088	78657	19
1089	83291	9
1090	78334	14
1091	35982	24
1092	69932	19
1093	74994	17
1094	78457	3
1095	83329	14
1096	77363	4
1097	78301	4
1098	83328	3
1099	82078	5
1100	78334	22
1101	72981	24
1102	83240	10
1103	51594	8
1104	74986	20
1105	78773	13
1106	78399	3
1107	35774	9
1108	77911	3
1109	78646	2
1110	78590	2
1111	78233	14
1112	80030	2
1113	82078	18
1114	80065	13
1115	55718	9
1116	83231	5
1117	78356	10
1118	79008	22
1119	78200	11
1120	72835	22
1121	74986	19
1122	46841	18
1123	83291	16
1124	74986	18
1125	82080	6
1126	82080	15
1127	46841	23
1128	78657	16
1129	72981	14
1130	46841	14
1131	74997	2
1132	79397	1
1133	78472	16
1134	77363	22
1135	78334	25
1136	83243	11
1137	51594	24
1138	77796	21
1139	83329	18
1140	83328	1
1141	78236	2
1142	82079	22
1143	77363	1
1144	55718	6
1145	78608	19
1146	77796	20
1147	77344	14
1148	72843	3
1149	78669	9
1150	80530	8
1151	78669	16
1152	77100	18
1153	80530	19
1154	78271	8
1155	73626	6
1156	82079	24
1157	77796	19
1158	78438	15
1159	78438	5
1160	83231	23
1161	75350	12
1162	78764	17
1163	78669	11
1164	82080	2
1165	78271	1
1166	82076	20
1167	78670	11
1168	83291	5
1169	80030	14
1170	78627	20
1171	73512	2
1172	78271	16
1173	78457	11
1174	77553	15
1175	82078	24
1176	83240	22
1177	77911	21
1178	35774	24
1179	73688	11
1180	78399	12
1181	77796	13
1182	48224	25
1183	79404	25
1184	74997	23
1185	83333	23
1186	55718	1
1187	78590	7
1188	61727	10
1189	72835	11
1190	78438	19
1191	83333	12
1192	78236	21
1193	78271	20
1194	39071	19
1195	77796	23
1196	83231	19
1197	35774	18
1198	69932	7
1199	78233	8
1200	79397	2
1201	78627	13
1202	73688	22
1203	78608	13
1204	77911	17
1205	78657	18
1206	83329	13
1207	78773	12
1208	73688	18
1209	69932	21
1210	80530	17
1211	77344	3
1212	83243	21
1213	77363	15
1214	78781	19
1215	78726	20
1216	72835	7
1217	78670	15
1218	78973	25
1219	78726	10
1220	79008	16
1221	78657	4
1222	74997	19
1223	83354	23
1224	79404	14
1225	73626	24
1226	83941	5
1227	77363	25
1228	72835	25
1229	78301	9
1230	82080	5
1231	75817	24
1232	82079	11
1233	61727	9
1234	78301	23
1235	75350	1
1236	78222	22
1237	80030	9
1238	83329	23
1239	75350	24
1240	83240	8
1241	73510	7
1242	46841	4
1243	83333	10
1244	78770	17
1245	83941	1
1246	77796	4
1247	78657	25
1248	48224	10
1249	78590	25
1250	73510	25
1251	78657	9
1252	83243	5
1253	83485	11
1254	83485	23
1255	73512	3
1256	72843	1
1257	78764	19
1258	35982	14
1259	79397	18
1260	55718	21
1261	69932	5
1262	83329	8
1263	51594	11
1264	78628	2
1265	78301	2
1266	83941	10
1267	83240	20
1268	78222	6
1269	77911	1
1270	79397	6
1271	74994	14
1272	78669	17
1273	78334	5
1274	78608	22
1275	77553	17
1276	55718	25
1277	79404	4
1278	78232	24
1279	78723	18
1280	77796	14
1281	83485	22
1282	73512	7
1283	78196	9
1284	82078	14
1285	35091	25
1286	79008	15
1287	82078	25
1288	51594	6
1289	78457	25
1290	75350	4
1291	78608	14
1292	77100	4
1293	78973	7
1294	75350	25
1295	72835	9
1296	84620	16
1297	79274	4
1298	82076	1
1299	83941	16
1300	78770	14
1301	78233	22
1302	82078	7
1303	82076	11
1304	77911	8
1305	83485	15
1306	39071	23
1307	78334	6
1308	72843	6
1309	78973	17
1310	39071	9
1311	78590	4
1312	69932	9
1313	77911	20
1314	83231	24
1315	75350	16
1316	83243	22
1317	82080	4
1318	79008	2
1319	79008	4
1320	78399	19
1321	74994	8
1322	73510	17
1323	82079	12
1324	74997	20
1325	51594	7
1326	83329	17
1327	83329	19
1328	79008	17
1329	78646	17
1330	78973	3
1331	78222	10
1332	78192	24
1333	78438	17
1334	78669	3
1335	78646	3
1336	84620	22
1337	75817	19
1338	69932	3
1339	82076	17
1340	73688	17
1341	83291	4
1342	74994	10
1343	35982	4
1344	82076	10
1345	79274	3
1346	78472	22
1347	82079	15
1348	78590	16
1349	55718	20
1350	72835	23
1351	78196	10
1352	79274	12
1353	83214	15
1354	77344	10
1355	83231	1
1356	69932	2
1357	79404	16
1358	78646	15
1359	74997	12
1360	79397	23
1361	83333	20
1362	55718	14
1363	77911	6
1364	72835	17
1365	78399	18
1366	72981	8
1367	74989	5
1368	78196	7
1369	77911	10
1370	83231	10
1371	78233	20
1372	82076	12
1373	83214	9
1374	78770	23
1375	35091	1
1376	78271	25
1377	74986	12
1378	83291	1
1379	83333	19
1380	78657	20
1381	74994	13
1382	78973	9
1383	78646	25
1384	77100	6
1385	77796	24
1386	78226	13
1387	83329	21
1388	78628	9
1389	78222	7
1390	73510	12
1391	82079	19
1392	78628	4
1393	72843	7
1394	78590	21
1395	83333	16
1396	78222	24
1397	83328	17
1398	61727	23
1399	78657	5
1400	83231	12
1401	83243	7
1402	83354	15
1403	83291	20
1404	78356	23
1405	78627	9
1406	73626	18
1407	73510	23
1408	78200	22
1409	78226	17
1410	78657	13
1411	82078	2
1412	79404	22
1413	78438	18
1414	46841	15
1415	78356	24
1416	78669	22
1417	77553	10
1418	83354	9
1419	78764	15
1420	78192	16
1421	82079	17
1422	73510	21
1423	78670	4
1424	83240	25
1425	83214	6
1426	61727	20
1427	78628	13
1428	78723	2
1429	77100	17
1430	74994	12
1431	72843	4
1432	77553	1
1433	73626	20
1434	78646	10
1435	55718	23
1436	78670	23
1437	78200	2
1438	82080	11
1439	78200	20
1440	77553	11
1441	73688	19
1442	78590	6
1443	78457	1
1444	78196	22
1445	72835	18
1446	78236	16
1447	78236	15
1448	75817	25
1449	69932	8
1450	83329	5
1451	74989	21
1452	78764	5
1453	77553	3
1454	78236	9
1455	78457	7
1456	78399	11
1457	77796	15
1458	78334	12
1459	78627	5
1460	78773	7
1461	82079	13
1462	78781	17
1463	78472	21
1464	78973	16
1465	83240	16
1466	82078	3
1467	51594	18
1468	78232	3
1469	69932	23
1470	80530	3
1471	78271	7
1472	77363	21
1473	78628	15
1474	78781	23
1475	78472	19
1476	72981	7
1477	55718	16
1478	77344	24
1479	83243	2
1480	82076	6
1481	79404	19
1482	83941	4
1483	78334	17
1484	78723	20
1485	83240	14
1486	78226	5
1487	83240	13
1488	39071	12
1489	78726	16
1490	83291	18
1491	46841	1
1492	48224	19
1493	84620	13
1494	80530	16
1495	84620	24
1496	83214	25
1497	79274	24
1498	78457	22
1499	83231	6
1500	82078	20
1501	78608	2
1502	84620	8
1503	78457	12
1504	78226	20
1505	73512	4
1506	48224	20
1507	78222	19
1508	77796	11
1509	82080	10
1510	78200	3
1511	78236	24
1512	78764	13
1513	78236	18
1514	83291	7
1515	78590	12
1516	78657	24
1517	78723	24
1518	83328	10
1519	83214	14
1520	78723	8
1521	79274	7
1522	78781	9
1523	82076	24
1524	78764	3
1525	77553	22
1526	78472	14
1527	80030	19
1528	78196	6
1529	78773	8
1530	78356	9
1531	82080	16
1532	79274	17
1533	78399	24
1534	83941	2
1535	78608	9
1536	78973	21
1537	77344	17
1538	55718	4
1539	75817	18
1540	78222	5
1541	48224	22
1542	78670	14
1543	79397	16
1544	78438	4
1545	74994	25
1546	78646	19
1547	74986	21
1548	78236	22
1549	77796	3
1550	83354	5
1551	72981	22
1552	84620	17
1553	78781	1
1554	74986	5
1555	77553	19
1556	79008	5
1557	74989	17
1558	83941	20
1559	78192	20
1560	78608	25
1561	79397	21
1562	78773	19
1563	73626	21
1564	82080	22
1565	83485	25
1566	77553	21
1567	83354	3
1568	51594	17
1569	78628	7
1570	83291	22
1571	74994	20
1572	78356	2
1573	78356	3
1574	55718	12
1575	72835	2
1576	78236	5
1577	35091	14
1578	83941	24
1579	78670	1
1580	78726	9
1581	83485	10
1582	83329	10
1583	35091	8
1584	46841	3
1585	78232	23
1586	74986	16
1587	83240	1
1588	78973	10
1589	84620	14
1590	83240	18
1591	74989	3
1592	78770	16
1593	78669	7
1594	69932	12
1595	78196	8
1596	75350	10
1597	78657	6
1598	78232	13
1599	83328	21
1600	80065	10
1601	78472	7
1602	77344	23
1603	78192	2
1604	78222	25
1605	80030	3
1606	78608	10
1607	61727	25
1608	78764	10
1609	78192	13
1610	78627	12
1611	78726	3
1612	82078	12
1613	84620	11
1614	74989	12
1615	83243	12
1616	82076	13
1617	78232	22
1618	78764	24
1619	77100	9
1620	79274	13
1621	78723	21
1622	83214	7
1623	55718	15
1624	80530	4
1625	78233	2
1626	78192	4
1627	79008	13
1628	78222	1
1629	78608	11
1630	78670	6
1631	77344	6
1632	74997	8
1633	78232	8
1634	78628	14
1635	79397	17
1636	72981	4
1637	83240	17
1638	78356	25
1639	83231	21
1640	78457	20
1641	77911	12
1642	79274	23
1643	78236	17
1644	80530	5
1645	80030	11
1646	77344	9
1647	83329	20
1648	78334	1
1649	79404	13
1650	78356	8
1651	78973	24
1652	72835	4
1653	77100	14
1654	39071	13
1655	83231	8
1656	74986	9
1657	74989	14
1658	78192	8
1659	83354	13
1660	78301	12
1661	83941	19
1662	77100	7
1663	39071	20
1664	78973	13
1665	77344	4
1666	79274	10
1667	77911	14
1668	78773	18
1669	83240	23
1670	35774	4
1671	74997	6
1672	78670	20
1673	73626	17
1674	72843	12
1675	35982	23
1676	78646	21
1677	51594	3
1678	82080	13
1679	80030	1
1680	73626	4
1681	77363	16
1682	73512	15
1683	78236	8
1684	78192	1
1685	46841	11
1686	78590	22
1687	78334	13
1688	46841	22
1689	61727	7
1690	82080	1
1691	78196	23
1692	80030	21
1693	35091	16
1694	79274	11
1695	84620	18
1696	78200	18
1697	83333	25
1698	77796	10
1699	39071	14
1700	80065	4
1701	61727	17
1702	82078	11
1703	78590	9
1704	78233	13
1705	83243	4
1706	61727	16
1707	80530	1
1708	78232	15
1709	78226	14
1710	79008	7
1711	78200	10
1712	75817	16
1713	74994	11
1714	39071	8
1715	77100	21
1716	35774	23
1717	78438	2
1718	35091	15
1719	77100	15
1720	74989	18
1721	78764	9
1722	78764	22
1723	72981	6
1724	78590	18
1725	80065	25
1726	77100	16
1727	75350	21
1728	51594	5
1729	78627	19
1730	77344	15
1731	78646	18
1732	78200	8
1733	77344	21
1734	77100	23
1735	35091	22
1736	78196	24
1737	78781	13
1738	78226	11
1739	83291	19
1740	35982	18
1741	78301	14
1742	73512	1
1743	78773	16
1744	35091	4
1745	78723	13
1746	78192	3
1747	78457	8
1748	78608	4
1749	48224	24
1750	82078	1
1751	75817	17
1752	79274	2
1753	78222	2
1754	77100	24
1755	83354	19
1756	78781	16
1757	80530	13
1758	78192	22
1759	78781	15
1760	78723	3
1761	78196	11
1762	73688	23
1763	74989	24
1764	78657	14
1765	82078	23
1766	83333	3
1767	78192	18
1768	39071	1
1769	78438	16
1770	80065	1
1771	83243	17
1772	82079	18
1773	78222	11
1774	78670	13
1775	82079	20
1776	83291	10
1777	73510	20
1778	79274	18
1779	78608	3
1780	78438	21
1781	78271	14
1782	74997	25
1783	79404	12
1784	78628	8
1785	78334	3
1786	77363	9
1787	55718	8
1788	78399	25
1789	83329	9
1790	78233	24
1791	78627	8
1792	78627	7
1793	82080	17
1794	78192	12
1795	82080	19
1796	51594	23
1797	78200	13
1798	79404	7
1799	72835	10
1800	79274	15
1801	78608	16
1802	80030	10
1803	78657	12
1804	78670	22
1805	83333	21
1806	78781	8
1807	83941	7
1808	73626	15
1809	75350	17
1810	46841	6
1811	83240	6
1812	73510	22
1813	35091	7
1814	83291	15
1815	78271	9
1816	78781	7
1817	75817	22
1818	83941	22
1819	82076	18
1820	83291	24
1821	75350	7
1822	74986	3
1823	78726	17
1824	82078	15
1825	77344	2
1826	78670	17
1827	79008	20
1828	78334	18
1829	69932	24
1830	83354	18
1831	83333	2
1832	79274	19
1833	74986	6
1834	78232	16
1835	74986	13
1836	61727	19
1837	83329	2
1838	78457	21
1839	84620	23
1840	78669	13
1841	74986	1
1842	73688	5
1843	35774	22
1844	78781	5
1845	51594	21
1846	74994	1
1847	83231	9
1848	78670	21
1849	74994	18
1850	35091	21
1851	78726	4
1852	80530	20
1853	78236	11
1854	78200	17
1855	78669	8
1856	79404	11
1857	78356	22
1858	83243	10
1859	82076	22
1860	82079	5
1861	83333	9
1862	77911	11
1863	78628	22
1864	78356	19
1865	78438	6
1866	83333	5
1867	78773	2
1868	77100	10
1869	78222	21
1870	74997	21
1871	77796	16
1872	77553	18
1873	78773	9
1874	48224	21
1875	82076	5
1876	55718	10
1877	77363	17
1878	73510	6
1879	61727	22
1880	78670	9
1881	78764	14
1882	78670	2
1883	73512	10
1884	78770	10
1885	83231	11
1886	83291	21
1887	83214	11
1888	74986	8
1889	79397	13
1890	78723	7
1891	35774	2
1892	78770	2
1893	78723	16
1894	35982	15
1895	75817	21
1896	78236	23
1897	78770	21
1898	78222	20
1899	78472	13
1900	73626	25
1901	78770	4
1902	77344	7
1903	83231	3
1904	83214	21
1905	48224	5
1906	83329	24
1907	74989	4
1908	74986	10
1909	78271	13
1910	61727	4
1911	46841	17
1912	78334	24
1913	78726	23
1914	78226	3
1915	78726	11
1916	73510	3
1917	78472	8
1918	78770	6
1919	83485	8
1920	73688	16
1921	78222	4
1922	83243	16
1923	72843	22
1924	78627	6
1925	78233	25
1926	79404	1
1927	61727	24
1928	78657	8
1929	79397	14
1930	77363	13
1931	35774	16
1932	78301	19
1933	78628	5
1934	78226	2
1935	82079	2
1936	78356	11
1937	55718	18
1938	72981	19
1939	72981	13
1940	78657	2
1941	78781	11
1942	78770	20
1943	78472	23
1944	78236	14
1945	78770	11
1946	74989	15
1947	79397	25
1948	80030	22
1949	35091	18
1950	74997	24
1951	83941	12
1952	78773	23
1953	74989	2
1954	83329	15
1955	79404	10
1956	78472	20
1957	83328	4
1958	74997	4
1959	78646	24
1960	74997	7
1961	78770	12
1962	79397	22
1963	84620	20
1964	83333	4
1965	82080	20
1966	72981	25
1967	46841	25
1968	75817	8
1969	79397	20
1970	48224	1
1971	83328	2
1972	78457	6
1973	78646	4
1974	80065	22
1975	78726	19
1976	82076	21
1977	73512	20
1978	79397	12
1979	82076	9
1980	77553	2
1981	78669	21
1982	35982	25
1983	73688	21
1984	82076	7
1985	83328	5
1986	83329	1
1987	78472	12
1988	72835	21
1989	77796	6
1990	78773	22
1991	39071	11
1992	83485	21
1993	72843	16
1994	80030	16
1995	61727	13
1996	78399	14
1997	82080	3
1998	72981	16
1999	73688	13
2000	35982	8
2001	55718	3
2002	78226	25
2003	83333	1
2004	48224	16
2005	78356	7
2006	74997	22
2007	78232	12
2008	83328	22
2009	77553	4
2010	78232	11
2011	78192	19
2012	78236	13
2013	78232	6
2014	78438	25
2015	72981	17
2016	78271	24
2017	78628	23
2018	78356	5
2019	77100	3
2020	83243	20
2021	83214	5
2022	35982	21
2023	78608	17
2024	83485	3
2025	75817	13
2026	48224	4
2027	78590	13
2028	78399	20
2029	78233	1
2030	83354	20
2031	73512	18
2032	78657	1
2033	80065	12
2034	80030	5
2035	78726	21
2036	78200	1
2037	75817	7
2038	77100	13
2039	73512	24
2040	78726	2
2041	78232	20
2042	83291	14
2043	83214	13
2044	78773	6
2045	83243	24
2046	78627	15
2047	78669	12
2048	78226	9
2049	74997	13
2050	73626	3
2051	48224	23
2052	82079	23
2053	83329	11
2054	83354	25
2055	77796	17
2056	78226	23
2057	78590	23
2058	69932	4
2059	83243	25
2060	75817	9
2061	78334	8
2062	80030	4
2063	39071	10
2064	80530	12
2065	79274	1
2066	78590	14
2067	78973	19
2068	78226	8
2069	79008	18
2070	83328	6
2071	73512	14
2072	75817	12
2073	73626	2
2074	83214	8
2075	77553	23
\.


--
-- TOC entry 5680 (class 0 OID 29613)
-- Dependencies: 226
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: culture_data; Owner: postgres
--

COPY culture_data.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5856 (class 0 OID 30399)
-- Dependencies: 231
-- Data for Name: tags; Type: TABLE DATA; Schema: culture_data; Owner: postgres
--

COPY culture_data.tags (id, tag_name) FROM stdin;
1	{"id": 39, "name": "Для детей", "sysName": "dlya-detey"}
2	{"id": 25, "name": "Классическое искусство", "sysName": "klassicheskoe-iskusstvo"}
3	{"id": 24, "name": "История", "sysName": "istoriya"}
4	{"id": 392, "name": "Книги", "sysName": "knigi"}
5	{"id": 26, "name": "Современное искусство", "sysName": "sovremennoe-iskusstvo"}
6	{"id": 329, "name": "Ремесла и художественные промыслы", "sysName": "remesla-i-hudozhestvennye-promysly"}
7	{"id": 122, "name": "Искусство", "sysName": "iskusstvo"}
8	{"id": 42, "name": "Культурные центры", "sysName": "kulturnye-centry"}
9	{"id": 27, "name": "Декоративно-прикладное искусство", "sysName": "dekorativno-prikladnoe-iskusstvo"}
10	{"id": 317, "name": "Для молодежи", "sysName": "dlya-molodezhi"}
11	{"id": 753, "name": "Кинозал", "sysName": "kinozal"}
12	{"id": 751, "name": "Культура для школьников", "sysName": "kultura-dlya-shkolnikov"}
13	{"id": 350, "name": "Народная культура", "sysName": "narodnaya-kultura"}
14	{"id": 323, "name": "Исполнительское искусство", "sysName": "ispolnitelskoe-iskusstvo"}
15	{"id": 322, "name": "Хор", "sysName": "hor"}
16	{"id": 21, "name": "Выставочные залы", "sysName": "vystavochnye-zaly"}
17	{"id": 152, "name": "Этнография", "sysName": "etnografiya"}
18	{"id": 321, "name": "Традиции", "sysName": "tradicii"}
19	{"id": 206, "name": "Народное творчество", "sysName": "narodnoe-tvorchestvo"}
20	{"id": 29, "name": "Музыка", "sysName": "muzyka"}
21	{"id": 325, "name": "Творческий коллектив", "sysName": "tvorcheskiy-kollektiv"}
22	{"id": 59, "name": "Ансамбли", "sysName": "ansambli"}
23	{"id": 596, "name": "Доступная среда", "sysName": "dostupnaya-sreda"}
24	{"id": 28, "name": "Литература", "sysName": "literatura"}
25	{"id": 324, "name": "Традиционное искусство", "sysName": "tradicionnoe-iskusstvo"}
\.


--
-- TOC entry 5866 (class 0 OID 0)
-- Dependencies: 223
-- Name: culture_palaces_clubs_json_id_seq; Type: SEQUENCE SET; Schema: culture_data; Owner: postgres
--

SELECT pg_catalog.setval('culture_data.culture_palaces_clubs_json_id_seq', 1, false);


--
-- TOC entry 5867 (class 0 OID 0)
-- Dependencies: 222
-- Name: data_general_id_seq; Type: SEQUENCE SET; Schema: culture_data; Owner: postgres
--

SELECT pg_catalog.setval('culture_data.data_general_id_seq', 1, false);


--
-- TOC entry 5868 (class 0 OID 0)
-- Dependencies: 232
-- Name: m2m_culture_palaces_clubs_tags_id_seq; Type: SEQUENCE SET; Schema: culture_data; Owner: postgres
--

SELECT pg_catalog.setval('culture_data.m2m_culture_palaces_clubs_tags_id_seq', 2075, true);


--
-- TOC entry 5869 (class 0 OID 0)
-- Dependencies: 224
-- Name: seq_culture_palaces_clubs_id; Type: SEQUENCE SET; Schema: culture_data; Owner: postgres
--

SELECT pg_catalog.setval('culture_data.seq_culture_palaces_clubs_id', 1, false);


--
-- TOC entry 5870 (class 0 OID 0)
-- Dependencies: 230
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: culture_data; Owner: postgres
--

SELECT pg_catalog.setval('culture_data.tags_id_seq', 25, true);


--
-- TOC entry 5694 (class 2606 OID 30418)
-- Name: m2m_culture_palaces_clubs_tags m2m_culture_palaces_clubs_tags_culture_palace_id_tag_id_key; Type: CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.m2m_culture_palaces_clubs_tags
    ADD CONSTRAINT m2m_culture_palaces_clubs_tags_culture_palace_id_tag_id_key UNIQUE (culture_palace_id, tag_id);


--
-- TOC entry 5696 (class 2606 OID 30416)
-- Name: m2m_culture_palaces_clubs_tags m2m_culture_palaces_clubs_tags_pkey; Type: CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.m2m_culture_palaces_clubs_tags
    ADD CONSTRAINT m2m_culture_palaces_clubs_tags_pkey PRIMARY KEY (id);


--
-- TOC entry 5689 (class 2606 OID 30408)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 5685 (class 2606 OID 29283)
-- Name: culture_palaces_clubs unique_inn; Type: CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.culture_palaces_clubs
    ADD CONSTRAINT unique_inn UNIQUE ("data.general.id");


--
-- TOC entry 5691 (class 2606 OID 30453)
-- Name: tags unique_tag_name; Type: CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.tags
    ADD CONSTRAINT unique_tag_name UNIQUE (tag_name);


--
-- TOC entry 5692 (class 1259 OID 30429)
-- Name: idx_m2m_tag_id; Type: INDEX; Schema: culture_data; Owner: postgres
--

CREATE INDEX idx_m2m_tag_id ON culture_data.m2m_culture_palaces_clubs_tags USING btree (tag_id);


--
-- TOC entry 5697 (class 2606 OID 30419)
-- Name: m2m_culture_palaces_clubs_tags m2m_culture_palaces_clubs_tags_culture_palace_id_fkey; Type: FK CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.m2m_culture_palaces_clubs_tags
    ADD CONSTRAINT m2m_culture_palaces_clubs_tags_culture_palace_id_fkey FOREIGN KEY (culture_palace_id) REFERENCES culture_data.culture_palaces_clubs("data.general.id");


--
-- TOC entry 5698 (class 2606 OID 30424)
-- Name: m2m_culture_palaces_clubs_tags m2m_culture_palaces_clubs_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: culture_data; Owner: postgres
--

ALTER TABLE ONLY culture_data.m2m_culture_palaces_clubs_tags
    ADD CONSTRAINT m2m_culture_palaces_clubs_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES culture_data.tags(id);


-- Completed on 2025-10-24 13:36:19

--
-- PostgreSQL database dump complete
--

\unrestrict iHMV3gDOm1pzHMr3hhhUHtpMjmDw7iSh3VFkxHDSMdxEmvdma6YxioQNoX6WBzB

