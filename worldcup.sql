--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(255) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 2018, 381, 382, 4, 2);
INSERT INTO public.games VALUES (2, 'Third Place', 2018, 383, 384, 2, 0);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2018, 382, 384, 2, 1);
INSERT INTO public.games VALUES (4, 'Semi-Final', 2018, 381, 383, 1, 0);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2018, 382, 385, 3, 2);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 2018, 384, 386, 2, 0);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 2018, 383, 387, 2, 1);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 2018, 381, 388, 2, 0);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 2018, 384, 389, 2, 1);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 2018, 386, 390, 1, 0);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 2018, 383, 391, 3, 2);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 2018, 387, 392, 2, 0);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 382, 393, 2, 1);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 385, 394, 2, 1);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 388, 395, 2, 1);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 381, 396, 4, 3);
INSERT INTO public.games VALUES (17, 'Final', 2014, 397, 396, 1, 0);
INSERT INTO public.games VALUES (18, 'Third Place', 2014, 398, 387, 3, 0);
INSERT INTO public.games VALUES (19, 'Semi-Final', 2014, 396, 398, 1, 0);
INSERT INTO public.games VALUES (20, 'Semi-Final', 2014, 397, 387, 7, 1);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 2014, 398, 399, 1, 0);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 2014, 396, 383, 1, 0);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 2014, 387, 389, 2, 1);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 2014, 397, 381, 1, 0);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2014, 387, 400, 2, 1);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2014, 389, 388, 2, 0);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 2014, 381, 401, 2, 0);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 2014, 397, 402, 2, 1);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 398, 392, 2, 1);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 399, 403, 2, 1);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 396, 390, 1, 0);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 383, 404, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (381, 'France');
INSERT INTO public.teams VALUES (382, 'Croatia');
INSERT INTO public.teams VALUES (383, 'Belgium');
INSERT INTO public.teams VALUES (384, 'England');
INSERT INTO public.teams VALUES (385, 'Russia');
INSERT INTO public.teams VALUES (386, 'Sweden');
INSERT INTO public.teams VALUES (387, 'Brazil');
INSERT INTO public.teams VALUES (388, 'Uruguay');
INSERT INTO public.teams VALUES (389, 'Colombia');
INSERT INTO public.teams VALUES (390, 'Switzerland');
INSERT INTO public.teams VALUES (391, 'Japan');
INSERT INTO public.teams VALUES (392, 'Mexico');
INSERT INTO public.teams VALUES (393, 'Denmark');
INSERT INTO public.teams VALUES (394, 'Spain');
INSERT INTO public.teams VALUES (395, 'Portugal');
INSERT INTO public.teams VALUES (396, 'Argentina');
INSERT INTO public.teams VALUES (397, 'Germany');
INSERT INTO public.teams VALUES (398, 'Netherlands');
INSERT INTO public.teams VALUES (399, 'Costa Rica');
INSERT INTO public.teams VALUES (400, 'Chile');
INSERT INTO public.teams VALUES (401, 'Nigeria');
INSERT INTO public.teams VALUES (402, 'Algeria');
INSERT INTO public.teams VALUES (403, 'Greece');
INSERT INTO public.teams VALUES (404, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 404, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

