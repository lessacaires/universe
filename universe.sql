--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_of_health numeric
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellation_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    width numeric(10,2),
    description text,
    is_spheric boolean,
    star_id integer,
    distance_of_health numeric
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
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_of_health numeric,
    is_spheric boolean,
    width integer,
    planet_id integer
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
    name character varying(60) NOT NULL,
    qte_moon integer,
    distance_of_health numeric,
    is_spheric boolean,
    star_id integer
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
    name character varying(60) NOT NULL,
    qtde_star integer,
    is_spheric boolean,
    distance_of_health numeric,
    galaxy_id integer,
    planet_id integer
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellation_id_seq'::regclass);


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
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Orion', 1340.00);
INSERT INTO public.constellations VALUES (2, 'Ursa Major', 120.00);
INSERT INTO public.constellations VALUES (3, 'Scorpius', 570.00);
INSERT INTO public.constellations VALUES (4, 'Sagittarius', 2600.00);
INSERT INTO public.constellations VALUES (5, 'Cassiopeia', 240.00);
INSERT INTO public.constellations VALUES (6, 'Cygnus', 1500.00);
INSERT INTO public.constellations VALUES (7, 'Lyra', 25.00);
INSERT INTO public.constellations VALUES (8, 'Canis Major', 25.00);
INSERT INTO public.constellations VALUES (9, 'Taurus', 444.00);
INSERT INTO public.constellations VALUES (10, 'Leo', 250.00);
INSERT INTO public.constellations VALUES (11, 'Aquila', 430.00);
INSERT INTO public.constellations VALUES (12, 'Andromeda', 2540.00);
INSERT INTO public.constellations VALUES (13, 'Perseus', 1000.00);
INSERT INTO public.constellations VALUES (14, 'Virgo', 260.00);
INSERT INTO public.constellations VALUES (15, 'Carina', 2300.00);
INSERT INTO public.constellations VALUES (16, 'Crux', 88.00);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000.00, 'Nossa galáxia; contém o Sistema Solar e cerca de 100 bilhões de estrelas.', true, 1, 27000.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000.00, 'Galáxia espiral vizinha, a maior do Grupo Local.', true, 2, 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000.00, 'Pequena galáxia espiral M33, próxima da Andromeda.', true, 3, 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 49000.00, 'M104; galáxia com bojo central e um anel escuro de poeira.', true, 4, 29000000.00);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 76000.00, 'M51; famosa por sua interação com uma galáxia companheira.', true, 5, 23000000.00);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 170000.00, 'M101; galáxia espiral de grande diâmetro com muitos braços.', true, 6, 21000000.00);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 14000.00, 'Galáxia satélite da Via Láctea, visível do hemisfério sul.', false, 7, 163000.00);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 7000.00, 'Galáxia anã irregular, companheira da Via Láctea.', false, 8, 200000.00);
INSERT INTO public.galaxy VALUES (9, 'Messier 87', 120000.00, 'Galáxia elíptica gigante no aglomerado de Virgem, com buraco negro supermassivo.', true, 9, 53000000.00);
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', 60000.00, 'Galáxia ativa com jato de rádio intenso, a 12 milhões de anos-luz.', true, 10, 12000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0.38, true, 3475, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.00006, true, 22, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.00016, true, 12, 1);
INSERT INTO public.moon VALUES (4, 'Io', 628.30, true, 3643, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 628.30, true, 3122, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 628.30, true, 5262, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 628.30, true, 4821, 1);
INSERT INTO public.moon VALUES (8, 'Titan', 1200.00, true, 5150, 1);
INSERT INTO public.moon VALUES (9, 'Rhea', 1200.00, true, 1527, 1);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1200.00, true, 1469, 1);
INSERT INTO public.moon VALUES (11, 'Dione', 1200.00, true, 1123, 1);
INSERT INTO public.moon VALUES (12, 'Tethys', 1200.00, true, 1062, 1);
INSERT INTO public.moon VALUES (13, 'Enceladus', 1200.00, true, 504, 1);
INSERT INTO public.moon VALUES (14, 'Mimas', 1200.00, true, 396, 1);
INSERT INTO public.moon VALUES (15, 'Triton', 4300.00, true, 2707, 1);
INSERT INTO public.moon VALUES (16, 'Proteus', 4300.00, true, 420, 1);
INSERT INTO public.moon VALUES (17, 'Nereid', 4300.00, true, 340, 1);
INSERT INTO public.moon VALUES (18, 'Charon', 5900.00, true, 1212, 1);
INSERT INTO public.moon VALUES (19, 'Hydra', 5900.00, true, 65, 1);
INSERT INTO public.moon VALUES (20, 'Kerberos', 5900.00, true, 19, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 0.39, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 0.72, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1.00, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 1.52, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 95, 5.20, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 83, 9.58, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 19.20, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 30.05, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 39.48, true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 0, 600.00, true, 1);
INSERT INTO public.planet VALUES (11, 'Proxima b', 0, 4.20, true, 1);
INSERT INTO public.planet VALUES (12, 'HD 209458b', 0, 150.00, true, 1);
INSERT INTO public.planet VALUES (13, 'WASP-12b', 0, 870.00, true, 1);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1e', 0, 39.00, true, 1);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1f', 0, 39.50, true, 1);
INSERT INTO public.planet VALUES (16, 'Gliese 581g', 0, 20.30, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 0.00, 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, true, 8.60, 1, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, true, 642.00, 1, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 1, true, 863.00, 1, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, true, 4.24, 1, 1);
INSERT INTO public.star VALUES (6, 'Vega', 1, true, 25.00, 1, 1);
INSERT INTO public.star VALUES (7, 'Altair', 1, true, 16.70, 1, 1);
INSERT INTO public.star VALUES (8, 'Deneb', 1, true, 2600.00, 1, 1);
INSERT INTO public.star VALUES (9, 'Polaris', 3, true, 433.00, 1, 1);
INSERT INTO public.star VALUES (10, 'Arcturus', 1, true, 36.70, 1, 1);


--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellation_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

