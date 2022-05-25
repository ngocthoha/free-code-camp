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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    num1 integer,
    num2 integer,
    "float" numeric(4,1),
    bool1 boolean,
    boo21 boolean,
    galaxy_id integer NOT NULL,
    name2 text
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
-- Name: madness; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.madness (
    name character varying NOT NULL,
    madness_id integer NOT NULL,
    des text,
    name2 text
);


ALTER TABLE public.madness OWNER TO freecodecamp;

--
-- Name: madness_madness_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.madness_madness_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.madness_madness_id_seq OWNER TO freecodecamp;

--
-- Name: madness_madness_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.madness_madness_id_seq OWNED BY public.madness.madness_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    des text,
    des1 text,
    name2 text
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    des text,
    des1 text,
    name2 text
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
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    des text,
    des1 text,
    name2 text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: madness madness_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.madness ALTER COLUMN madness_id SET DEFAULT nextval('public.madness_madness_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, 2, 1.1, true, false, 1, NULL);
INSERT INTO public.galaxy VALUES ('galaxy2', 1, 2, 1.1, true, false, 2, NULL);
INSERT INTO public.galaxy VALUES ('galaxy3', 1, 2, 1.1, true, false, 3, NULL);
INSERT INTO public.galaxy VALUES ('galaxy4', 1, 2, 1.1, true, false, 4, NULL);
INSERT INTO public.galaxy VALUES ('galaxy5', 1, 2, 1.1, true, false, 5, NULL);
INSERT INTO public.galaxy VALUES ('galaxy6', 1, 2, 1.1, true, false, 6, NULL);


--
-- Data for Name: madness; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.madness VALUES ('madness1', 1, NULL, NULL);
INSERT INTO public.madness VALUES ('maddness2', 2, NULL, NULL);
INSERT INTO public.madness VALUES ('madness3', 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moo76', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 1, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', 1, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 6, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: madness_madness_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.madness_madness_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name2_key UNIQUE (name2);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: madness madness_name2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.madness
    ADD CONSTRAINT madness_name2_key UNIQUE (name2);


--
-- Name: madness madness_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.madness
    ADD CONSTRAINT madness_pkey PRIMARY KEY (madness_id);


--
-- Name: moon moon_name2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name2_key UNIQUE (name2);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name2_key UNIQUE (name2);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name2_key UNIQUE (name2);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

