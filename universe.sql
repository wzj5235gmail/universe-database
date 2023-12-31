--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Chinese (Simplified)_China.936';


ALTER DATABASE universe OWNER TO postgres;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    int1 integer NOT NULL,
    int2 integer NOT NULL,
    numeric1 numeric NOT NULL,
    text1 text NOT NULL,
    boolean1 boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    int1 integer NOT NULL,
    int2 integer NOT NULL,
    numeric1 numeric NOT NULL,
    text1 text NOT NULL,
    boolean1 boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.other_info (
    other_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.other_info OWNER TO postgres;

--
-- Name: other_info_other_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.other_info_other_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_info_other_info_id_seq OWNER TO postgres;

--
-- Name: other_info_other_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.other_info_other_info_id_seq OWNED BY public.other_info.other_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    int1 integer NOT NULL,
    int2 integer NOT NULL,
    numeric1 numeric NOT NULL,
    text1 text NOT NULL,
    boolean1 boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    int1 integer NOT NULL,
    int2 integer NOT NULL,
    numeric1 numeric NOT NULL,
    text1 text NOT NULL,
    boolean1 boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other_info other_info_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.other_info ALTER COLUMN other_info_id SET DEFAULT nextval('public.other_info_other_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'planet1', 1, 2, 1.0, 'text', true);
INSERT INTO public.galaxy VALUES (2, 'planet2', 1, 2, 1.0, 'text', true);
INSERT INTO public.galaxy VALUES (3, 'planet3', 1, 2, 1.0, 'text', true);
INSERT INTO public.galaxy VALUES (4, 'planet4', 1, 2, 1.0, 'text', true);
INSERT INTO public.galaxy VALUES (5, 'planet5', 1, 2, 1.0, 'text', true);
INSERT INTO public.galaxy VALUES (6, 'planet6', 1, 2, 1.0, 'text', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 2, 1.0, 'text', true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 1, 2, 1.0, 'text', true, 1);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 2, 1.0, 'text', true, 2);
INSERT INTO public.moon VALUES (4, 'moon4', 1, 2, 1.0, 'text', true, 2);
INSERT INTO public.moon VALUES (5, 'moon5', 1, 2, 1.0, 'text', true, 3);
INSERT INTO public.moon VALUES (6, 'moon6', 1, 2, 1.0, 'text', true, 3);
INSERT INTO public.moon VALUES (7, 'moon7', 1, 2, 1.0, 'text', true, 4);
INSERT INTO public.moon VALUES (8, 'moon8', 1, 2, 1.0, 'text', true, 4);
INSERT INTO public.moon VALUES (9, 'moon9', 1, 2, 1.0, 'text', true, 5);
INSERT INTO public.moon VALUES (10, 'moon10', 1, 2, 1.0, 'text', true, 5);
INSERT INTO public.moon VALUES (11, 'moon11', 1, 2, 1.0, 'text', true, 6);
INSERT INTO public.moon VALUES (12, 'moon12', 1, 2, 1.0, 'text', true, 6);
INSERT INTO public.moon VALUES (13, 'moon13', 1, 2, 1.0, 'text', true, 7);
INSERT INTO public.moon VALUES (14, 'moon14', 1, 2, 1.0, 'text', true, 7);
INSERT INTO public.moon VALUES (15, 'moon15', 1, 2, 1.0, 'text', true, 8);
INSERT INTO public.moon VALUES (16, 'moon16', 1, 2, 1.0, 'text', true, 8);
INSERT INTO public.moon VALUES (17, 'moon17', 1, 2, 1.0, 'text', true, 9);
INSERT INTO public.moon VALUES (18, 'moon18', 1, 2, 1.0, 'text', true, 9);
INSERT INTO public.moon VALUES (19, 'moon19', 1, 2, 1.0, 'text', true, 10);
INSERT INTO public.moon VALUES (20, 'moon20', 1, 2, 1.0, 'text', true, 10);


--
-- Data for Name: other_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.other_info VALUES (1, 'name1', 'description');
INSERT INTO public.other_info VALUES (2, 'name2', 'description');
INSERT INTO public.other_info VALUES (3, 'name3', 'description');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 2, 1.0, 'text', true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 1, 2, 1.0, 'text', true, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 1, 2, 1.0, 'text', true, 2);
INSERT INTO public.planet VALUES (4, 'planet4', 1, 2, 1.0, 'text', true, 2);
INSERT INTO public.planet VALUES (5, 'planet5', 1, 2, 1.0, 'text', true, 3);
INSERT INTO public.planet VALUES (6, 'planet6', 1, 2, 1.0, 'text', true, 3);
INSERT INTO public.planet VALUES (7, 'planet7', 1, 2, 1.0, 'text', true, 4);
INSERT INTO public.planet VALUES (8, 'planet8', 1, 2, 1.0, 'text', true, 4);
INSERT INTO public.planet VALUES (9, 'planet9', 1, 2, 1.0, 'text', true, 5);
INSERT INTO public.planet VALUES (10, 'planet10', 1, 2, 1.0, 'text', true, 5);
INSERT INTO public.planet VALUES (11, 'planet11', 1, 2, 1.0, 'text', true, 6);
INSERT INTO public.planet VALUES (12, 'planet12', 1, 2, 1.0, 'text', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'star1', 1, 2, 1.0, 'text', true, 1);
INSERT INTO public.star VALUES (2, 'star2', 1, 2, 1.0, 'text', true, 2);
INSERT INTO public.star VALUES (3, 'star3', 1, 2, 1.0, 'text', true, 3);
INSERT INTO public.star VALUES (4, 'star4', 1, 2, 1.0, 'text', true, 4);
INSERT INTO public.star VALUES (5, 'star5', 1, 2, 1.0, 'text', true, 5);
INSERT INTO public.star VALUES (6, 'star6', 1, 2, 1.0, 'text', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: other_info_other_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.other_info_other_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other_info other_info_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.other_info
    ADD CONSTRAINT other_info_name_key UNIQUE (name);


--
-- Name: other_info other_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.other_info
    ADD CONSTRAINT other_info_pkey PRIMARY KEY (other_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

