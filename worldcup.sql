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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
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
    name character(100) NOT NULL
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

INSERT INTO public.games VALUES (74, 2018, 'Final', 411, 412, 4, 2);
INSERT INTO public.games VALUES (75, 2018, 'Third Place', 413, 414, 2, 0);
INSERT INTO public.games VALUES (76, 2018, 'Semi-Final', 412, 414, 2, 1);
INSERT INTO public.games VALUES (77, 2018, 'Semi-Final', 411, 413, 1, 0);
INSERT INTO public.games VALUES (78, 2018, 'Quarter-Final', 412, 420, 3, 2);
INSERT INTO public.games VALUES (79, 2018, 'Quarter-Final', 414, 422, 2, 0);
INSERT INTO public.games VALUES (80, 2018, 'Quarter-Final', 413, 424, 2, 1);
INSERT INTO public.games VALUES (81, 2018, 'Quarter-Final', 411, 426, 2, 0);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 414, 428, 2, 1);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 422, 430, 1, 0);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 413, 432, 3, 2);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 424, 434, 2, 0);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 412, 436, 2, 1);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 420, 438, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 426, 440, 2, 1);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 411, 442, 4, 3);
INSERT INTO public.games VALUES (90, 2014, 'Final', 443, 442, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Third Place', 445, 424, 3, 0);
INSERT INTO public.games VALUES (92, 2014, 'Semi-Final', 442, 445, 1, 0);
INSERT INTO public.games VALUES (93, 2014, 'Semi-Final', 443, 424, 7, 1);
INSERT INTO public.games VALUES (94, 2014, 'Quarter-Final', 445, 452, 1, 0);
INSERT INTO public.games VALUES (95, 2014, 'Quarter-Final', 442, 413, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Quarter-Final', 424, 428, 2, 1);
INSERT INTO public.games VALUES (97, 2014, 'Quarter-Final', 443, 411, 1, 0);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 424, 460, 2, 1);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 428, 426, 2, 0);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 411, 464, 2, 0);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 443, 466, 2, 1);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 445, 434, 2, 1);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 452, 470, 2, 1);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 442, 430, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 413, 474, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (411, 'France                                                                                              ');
INSERT INTO public.teams VALUES (412, 'Croatia                                                                                             ');
INSERT INTO public.teams VALUES (413, 'Belgium                                                                                             ');
INSERT INTO public.teams VALUES (414, 'England                                                                                             ');
INSERT INTO public.teams VALUES (420, 'Russia                                                                                              ');
INSERT INTO public.teams VALUES (422, 'Sweden                                                                                              ');
INSERT INTO public.teams VALUES (424, 'Brazil                                                                                              ');
INSERT INTO public.teams VALUES (426, 'Uruguay                                                                                             ');
INSERT INTO public.teams VALUES (428, 'Colombia                                                                                            ');
INSERT INTO public.teams VALUES (430, 'Switzerland                                                                                         ');
INSERT INTO public.teams VALUES (432, 'Japan                                                                                               ');
INSERT INTO public.teams VALUES (434, 'Mexico                                                                                              ');
INSERT INTO public.teams VALUES (436, 'Denmark                                                                                             ');
INSERT INTO public.teams VALUES (438, 'Spain                                                                                               ');
INSERT INTO public.teams VALUES (440, 'Portugal                                                                                            ');
INSERT INTO public.teams VALUES (442, 'Argentina                                                                                           ');
INSERT INTO public.teams VALUES (443, 'Germany                                                                                             ');
INSERT INTO public.teams VALUES (445, 'Netherlands                                                                                         ');
INSERT INTO public.teams VALUES (452, 'Costa Rica                                                                                          ');
INSERT INTO public.teams VALUES (460, 'Chile                                                                                               ');
INSERT INTO public.teams VALUES (464, 'Nigeria                                                                                             ');
INSERT INTO public.teams VALUES (466, 'Algeria                                                                                             ');
INSERT INTO public.teams VALUES (470, 'Greece                                                                                              ');
INSERT INTO public.teams VALUES (474, 'United States                                                                                       ');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 105, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 474, true);


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
-- Name: games opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

