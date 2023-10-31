--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_types character varying(30)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_types character varying(30),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(30),
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'NGC 1277', false, 1356, 'black hole');
INSERT INTO public.blackhole VALUES (2, 'Messier 87', false, 1756, 'black hole');
INSERT INTO public.blackhole VALUES (3, 'White hole', false, 1756, 'black hole');
INSERT INTO public.blackhole VALUES (4, 'Quasar', false, 195, 'black hole');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('abc', 'chscd', 124, 'hahaha', 1);
INSERT INTO public.galaxy VALUES ('defg', 'chscd', 124, 'hahaha', 3);
INSERT INTO public.galaxy VALUES ('jacob', 'chscd', 124, 'hahaha', 4);
INSERT INTO public.galaxy VALUES ('Karl', 'chscd', 124, 'hahaha', 5);
INSERT INTO public.galaxy VALUES ('Dizhu', 'chscd', 124, 'hahaha', 6);
INSERT INTO public.galaxy VALUES ('whirlpool galaxy', 'cbhjbcdhs', 6, 'cnjdscd', 7);
INSERT INTO public.galaxy VALUES ('pinwheel galaxy', 'cbhjbcdhs', 6, 'cnjdscd', 8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('titan', 'cbhsbja', false, true, 123.45, 345, 1, 1);
INSERT INTO public.moon VALUES ('europa', 'ru cbhsbja', false, true, 127.45, 3445, 2, 1);
INSERT INTO public.moon VALUES ('oberon', 'ru ccjkk cbhsbja', false, true, 127.45, 3445, 3, 1);
INSERT INTO public.moon VALUES ('helene', 'ru ccjkk cbhsbja', false, true, 127.45, 3445, 4, 1);
INSERT INTO public.moon VALUES ('blue moon', 'ru ccjkk cbhsbja', false, true, 127.46, 3445, 5, 2);
INSERT INTO public.moon VALUES ('chandra', 'ru ccjkk cbhsbja', false, false, 127.6, 3495, 6, 2);
INSERT INTO public.moon VALUES ('elara', 'ru ccjkk cbhsbja', false, false, 127.6, 3495, 7, 2);
INSERT INTO public.moon VALUES ('senelen', 'ru ccjkk cbcs', false, false, 127.643, 349, 9, 3);
INSERT INTO public.moon VALUES ('buck moon', 'ru ccjkk cbcs', false, false, 127.64, 666, 10, 4);
INSERT INTO public.moon VALUES ('triton', 'ru ccjkkcmd', false, false, 127.164, 6366, 11, 4);
INSERT INTO public.moon VALUES ('hala', 'ru ccj kkcmd', false, true, 127.164, 6366, 12, 5);
INSERT INTO public.moon VALUES ('deimos', 'ru ccj kkcmd', false, true, 127.1, 696, 13, 6);
INSERT INTO public.moon VALUES ('neoma', 'ru ccj kkcmd', false, true, 127.1, 696, 14, 6);
INSERT INTO public.moon VALUES ('indu', 'ru ccj kkcmd', false, true, 127.1, 696, 16, 6);
INSERT INTO public.moon VALUES ('mona', 'ru rr ccj kkcmd', false, true, 174.1, 696, 17, 6);
INSERT INTO public.moon VALUES ('rosalind', 'ru rr ccj kkc', false, true, 174.351, 696, 18, 5);
INSERT INTO public.moon VALUES ('Ariel', 'ru rr ccjg kkc', true, true, 174.351, 696, 19, 4);
INSERT INTO public.moon VALUES ('Rosa', 'ru rr ccjg kkc', true, true, 174.351, 696, 20, 3);
INSERT INTO public.moon VALUES ('Portia', 'ru rr ccjg kkc', true, true, 174.351, 696, 21, 3);
INSERT INTO public.moon VALUES ('Amaris', 'ru ko', true, true, 174.351, 696, 22, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 'bcahb', true, true, 67, '??', 0, 1, 2);
INSERT INTO public.planet VALUES ('mars', 'bccsahb', false, false, 670, '??', 123.45, 3, 4);
INSERT INTO public.planet VALUES ('jupiter', 'aadbccsahb', false, false, 1670, '??', 123.435, 2, 5);
INSERT INTO public.planet VALUES ('neptune', 'cfgg fvaadbccsahb', false, false, 140, '??', 1486.435, 6, 1);
INSERT INTO public.planet VALUES ('pluto', 'cfgg fva  adb ccsahb', false, false, 170, '??', 14386.435, 8, 3);
INSERT INTO public.planet VALUES ('venus', 'cfgg fva t adb ccsahb', false, false, 170, '??', 14386.435, 9, 3);
INSERT INTO public.planet VALUES ('ceres', 'cfgg fva t adb ccsahb', false, false, 750, '??', 14486.435, 10, 5);
INSERT INTO public.planet VALUES ('mercury', 'cfgg fva t adb ccsahb', false, false, 754, '??', 1446.435, 11, 6);
INSERT INTO public.planet VALUES ('brahe', 'cfgg fva t ahb', false, false, 791, '??uu', 1446.435, 12, 4);
INSERT INTO public.planet VALUES ('uranus', 'cvaadbccsahb', false, false, 170, '??', 1256.435, 4, 5);
INSERT INTO public.planet VALUES ('saturn', 'cffvaadbccsahb', false, false, 130, '??', 1456.435, 5, 5);
INSERT INTO public.planet VALUES ('makemake', 'bahbc', false, true, 888, 'planet', 123.567, 15, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 'xjaxnsakjxna', false, true, 5, 67.892, 1, 1);
INSERT INTO public.star VALUES ('rigel', 'xjaxnsakjxna', false, true, 7, 67.8928, 3, 2);
INSERT INTO public.star VALUES ('sirius', 'xjaxnsakjxna', false, true, 7, 67.8928, 5, 3);
INSERT INTO public.star VALUES ('Leo', 'xjaxnsakjxna', false, true, 7, 67.8928, 4, 4);
INSERT INTO public.star VALUES ('altail', 'cbshaba', false, false, 7, 567.45, 5, 5);
INSERT INTO public.star VALUES ('antares', 'rrycbshaba', false, false, 3, 567.435, 1, 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: blackhole blackhole_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_unq UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

