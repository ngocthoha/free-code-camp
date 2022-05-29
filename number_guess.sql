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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username text NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 5);
INSERT INTO public.games VALUES (1, 2, 6);
INSERT INTO public.games VALUES (2, 3, 6);
INSERT INTO public.games VALUES (3, 4, 335);
INSERT INTO public.games VALUES (3, 5, 251);
INSERT INTO public.games VALUES (4, 6, 848);
INSERT INTO public.games VALUES (4, 7, 85);
INSERT INTO public.games VALUES (3, 8, 651);
INSERT INTO public.games VALUES (3, 9, 491);
INSERT INTO public.games VALUES (3, 10, 4);
INSERT INTO public.games VALUES (1, 11, 3);
INSERT INTO public.games VALUES (5, 12, 894);
INSERT INTO public.games VALUES (5, 13, 25);
INSERT INTO public.games VALUES (6, 14, 270);
INSERT INTO public.games VALUES (6, 15, 651);
INSERT INTO public.games VALUES (5, 16, 587);
INSERT INTO public.games VALUES (5, 17, 216);
INSERT INTO public.games VALUES (5, 18, 73);
INSERT INTO public.games VALUES (7, 19, 1);
INSERT INTO public.games VALUES (8, 20, 452);
INSERT INTO public.games VALUES (8, 21, 918);
INSERT INTO public.games VALUES (9, 22, 548);
INSERT INTO public.games VALUES (9, 23, 415);
INSERT INTO public.games VALUES (8, 24, 699);
INSERT INTO public.games VALUES (8, 25, 250);
INSERT INTO public.games VALUES (8, 26, 494);
INSERT INTO public.games VALUES (10, 27, 153);
INSERT INTO public.games VALUES (10, 28, 454);
INSERT INTO public.games VALUES (11, 29, 736);
INSERT INTO public.games VALUES (11, 30, 527);
INSERT INTO public.games VALUES (10, 31, 785);
INSERT INTO public.games VALUES (10, 32, 860);
INSERT INTO public.games VALUES (10, 33, 931);
INSERT INTO public.games VALUES (12, 34, 627);
INSERT INTO public.games VALUES (12, 35, 972);
INSERT INTO public.games VALUES (13, 36, 337);
INSERT INTO public.games VALUES (13, 37, 396);
INSERT INTO public.games VALUES (12, 38, 355);
INSERT INTO public.games VALUES (12, 39, 263);
INSERT INTO public.games VALUES (12, 40, 575);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'tho');
INSERT INTO public.users VALUES (2, 'duyen');
INSERT INTO public.users VALUES (3, 'user_1653829412081');
INSERT INTO public.users VALUES (4, 'user_1653829412080');
INSERT INTO public.users VALUES (5, 'user_1653829768139');
INSERT INTO public.users VALUES (6, 'user_1653829768138');
INSERT INTO public.users VALUES (7, 'ngoc');
INSERT INTO public.users VALUES (8, 'user_1653830214850');
INSERT INTO public.users VALUES (9, 'user_1653830214849');
INSERT INTO public.users VALUES (10, 'user_1653830233952');
INSERT INTO public.users VALUES (11, 'user_1653830233951');
INSERT INTO public.users VALUES (12, 'user_1653830244855');
INSERT INTO public.users VALUES (13, 'user_1653830244854');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

