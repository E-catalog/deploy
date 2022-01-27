--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: individuals; Type: TABLE; Schema: public; Owner: dash
--

CREATE TABLE public.individuals (
    uid integer NOT NULL,
    place_uid integer NOT NULL,
    name character varying NOT NULL,
    year_of_excavation integer,
    individual_type character varying,
    sex character varying,
    age character varying,
    preservation character varying,
    epoch character varying,
    comments text
);


ALTER TABLE public.individuals OWNER TO dash;

--
-- Name: individuals_uid_seq; Type: SEQUENCE; Schema: public; Owner: dash
--

CREATE SEQUENCE public.individuals_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individuals_uid_seq OWNER TO dash;

--
-- Name: individuals_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dash
--

ALTER SEQUENCE public.individuals_uid_seq OWNED BY public.individuals.uid;


--
-- Name: places; Type: TABLE; Schema: public; Owner: dash
--

CREATE TABLE public.places (
    uid integer NOT NULL,
    name character varying NOT NULL,
    head_of_excavations character varying,
    type_of_burial_site character varying,
    coordinates character varying,
    comments text
);


ALTER TABLE public.places OWNER TO dash;

--
-- Name: places_uid_seq; Type: SEQUENCE; Schema: public; Owner: dash
--

CREATE SEQUENCE public.places_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.places_uid_seq OWNER TO dash;

--
-- Name: places_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dash
--

ALTER SEQUENCE public.places_uid_seq OWNED BY public.places.uid;


--
-- Name: individuals uid; Type: DEFAULT; Schema: public; Owner: dash
--

ALTER TABLE ONLY public.individuals ALTER COLUMN uid SET DEFAULT nextval('public.individuals_uid_seq'::regclass);


--
-- Name: places uid; Type: DEFAULT; Schema: public; Owner: dash
--

ALTER TABLE ONLY public.places ALTER COLUMN uid SET DEFAULT nextval('public.places_uid_seq'::regclass);


--
-- Data for Name: individuals; Type: TABLE DATA; Schema: public; Owner: dash
--

COPY public.individuals (uid, place_uid, name, year_of_excavation, individual_type, sex, age, preservation, epoch, comments) FROM stdin;
1	10	Погребение 1	2000	Ингумация	Мужчина	25-35	Средняя	Средневековье	
2	10	Погребение 2	2000	Ингумация	Мужчина	50-60	Средняя	Позднее средневековье	
3	10	Погребение 3	2000	Ингумация	Женщина	20-30	Плохая	Средневековье	
4	10	Погребение 4	2000	Ингумация	Женщина	30-40	Плохая	Средневековье	
5	10	Погребение 5	2000	Ингумация	Мужчина	20-30	Средняя	Раннее средневековье	
6	2	Индивид 1	1990	Кремация	Не определен		Не определена	Ранний железный век	
7	2	Индивид 2	1990	Кремация	Мужчина		Не определена	Ранний железный век	
8	2	Индивид 3	1990	Кремация	Не определен		Не определена	Ранний железный век	
9	2	Индивиды 4-5	1990	Кремация	Не определен		Не определена	Не определена	Две кремации в одном погребении
10	8	Погребение 1	1999	Ингумация	Мужчина	30-40	Хорошая	Бронзовый век	
11	8	Погребение 3	1999	Ингумация	Женщина	35-45	Средняя	Бронзовый век	
12	8	Погребение 5	1999	Ингумация	Женщина	50-60	Средняя	Бронзовый век	
13	8	Погребение 6	1999	Ингумация	Мужчина	30-40	Плохая	Бронзовый век	
14	8	Погребение 6	1999	Ингумация	Мужчина	30-40	Плохая	Бронзовый век	
15	8	Погребение 6	1999	Ингумация	Мужчина	30-40	Плохая	Бронзовый век	
\.


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: dash
--

COPY public.places (uid, name, head_of_excavations, type_of_burial_site, coordinates, comments) FROM stdin;
1	Первомайский	Федоров А.Б.	Курганный	11.223344, 44.332211	
2	Старица-III	Ильин И.И.	Курганный	11.223355, 55.332211	Частично разграблен
3	Федоровка	Прилукова А.В.	Грунтовый	22.334455, 55.443322	
4	Торфяная балка	Нечаев О.Ю.	Грунтовый	22.446688, 22.334455	Раскопки шли в течение 3 лет
5	Приозерье	Тимонина А.Б.	Поселенческий	11.223344, 44.332211	
6	Дивеево-1	Ильин И.И.	Грунтовый	22.334455, 55.443322	
7	Пермяковское городище	Прилукова А.В.	Поселенческий	33.221144, 44.332211	
8	Кривой стог	Авдеева А.А.	Курганный	22.446688, 22.334455	
9	Мякшово-91	Федоров А.Б.	Грунтовый	12.345678, 21.876543	
10	Фирновское	Нечаев О.Ю.	Курганный	33.221144, 44.332211	
\.


--
-- Name: individuals_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: dash
--

SELECT pg_catalog.setval('public.individuals_uid_seq', 15, true);


--
-- Name: places_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: dash
--

SELECT pg_catalog.setval('public.places_uid_seq', 10, true);


--
-- Name: individuals individuals_pkey; Type: CONSTRAINT; Schema: public; Owner: dash
--

ALTER TABLE ONLY public.individuals
    ADD CONSTRAINT individuals_pkey PRIMARY KEY (uid);


--
-- Name: places places_name_key; Type: CONSTRAINT; Schema: public; Owner: dash
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE (name);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: dash
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (uid);


--
-- Name: individuals individuals_place_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dash
--

ALTER TABLE ONLY public.individuals
    ADD CONSTRAINT individuals_place_uid_fkey FOREIGN KEY (place_uid) REFERENCES public.places(uid);


--
-- PostgreSQL database dump complete
--

