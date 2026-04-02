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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    planets_with_life numeric(1,1) NOT NULL,
    color character varying(20),
    stars_amount_in_billion integer NOT NULL,
    diameter_in_lightyear integer NOT NULL
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
    name character varying(20) NOT NULL,
    history text,
    landed boolean,
    planet_id integer,
    speed numeric(10,2)
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
    name character varying(20),
    has_life boolean NOT NULL,
    population integer NOT NULL,
    surface_area_km2 integer,
    temperature numeric(10,2),
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
-- Name: specie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.specie (
    specie_id integer NOT NULL,
    name character varying(20) NOT NULL,
    geography text,
    history text
);


ALTER TABLE public.specie OWNER TO freecodecamp;

--
-- Name: specie_specie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.specie_specie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specie_specie_id_seq OWNER TO freecodecamp;

--
-- Name: specie_specie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.specie_specie_id_seq OWNED BY public.specie.specie_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    mass numeric(10,4),
    radius numeric(10,4),
    age integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_star_id_seq OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_star_id_seq OWNED BY public.star.star_id;


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
-- Name: specie specie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie ALTER COLUMN specie_id SET DEFAULT nextval('public.specie_specie_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mily Way', 0.1, 'purple', 400, 100000);
INSERT INTO public.galaxy VALUES (2, 'LMC', 0.0, 'purple', 20, 14000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 0.0, 'Red', 1000, 220000);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 0.0, 'Orange', 30, 40800);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 0.0, 'White', 1000, 50000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 0.0, 'White', 100, 170000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Only natural satellite of Earth', true, 2, 1.02);
INSERT INTO public.moon VALUES (2, 'Aurelion', 'Rocky moon with frozen surface', false, 3, 0.80);
INSERT INTO public.moon VALUES (3, 'Glacius', 'Icy moon with extreme cold storms', false, 4, 0.60);
INSERT INTO public.moon VALUES (4, 'Velaris', 'Thick atmosphere, possible gas clouds', false, 5, 1.10);
INSERT INTO public.moon VALUES (5, 'Nerius', 'Habitable moon, possible colonies', true, 6, 1.30);
INSERT INTO public.moon VALUES (6, 'Eldris', 'Volcanic moon with lava activity', false, 7, 0.95);
INSERT INTO public.moon VALUES (7, 'Zenor', 'Small rocky moon', false, 8, 0.40);
INSERT INTO public.moon VALUES (8, 'Pyros', 'Extremely hot molten surface', false, 9, 1.80);
INSERT INTO public.moon VALUES (9, 'Helios Minor', 'Radiated moon close to star', false, 10, 2.10);
INSERT INTO public.moon VALUES (10, 'Phobos', 'Inner moon of Mars', false, 11, 2.14);
INSERT INTO public.moon VALUES (11, 'Deimos', 'Outer moon of Mars', false, 11, 1.35);
INSERT INTO public.moon VALUES (12, 'Europa', 'Ice-covered ocean moon', false, 13, 13.70);
INSERT INTO public.moon VALUES (13, 'Ganymede', 'Largest moon in solar system', false, 13, 10.90);
INSERT INTO public.moon VALUES (14, 'Io', 'Most volcanic body known', false, 13, 17.30);
INSERT INTO public.moon VALUES (15, 'Venera I', 'Hypothetical artificial satellite remains', true, 12, 1.20);
INSERT INTO public.moon VALUES (16, 'Callisto', 'Heavily cratered outer moon', false, 13, 8.20);
INSERT INTO public.moon VALUES (17, 'Helion Beta', 'Dense rocky moon with high gravity', false, 10, 1.70);
INSERT INTO public.moon VALUES (18, 'Ignis', 'Molten moon with constant lava flow', false, 9, 2.00);
INSERT INTO public.moon VALUES (19, 'Nereth', 'Secondary moon with thin atmosphere', false, 6, 1.10);
INSERT INTO public.moon VALUES (20, 'Aurora', 'Bright reflective icy moon', false, 3, 0.75);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', true, 8, 510072000, -18.00, 7);
INSERT INTO public.planet VALUES (3, 'Aurelia', false, 0, 510, 45.50, 1);
INSERT INTO public.planet VALUES (4, 'Cryon', false, 0, 320, -120.00, 1);
INSERT INTO public.planet VALUES (5, 'Velora', false, 0, 600, 80.20, 2);
INSERT INTO public.planet VALUES (6, 'Nerion', true, 12, 495, 18.30, 3);
INSERT INTO public.planet VALUES (7, 'Eldara', false, 0, 702, 60.00, 3);
INSERT INTO public.planet VALUES (8, 'Zenthis', false, 0, 210, -50.00, 4);
INSERT INTO public.planet VALUES (9, 'Pyron', false, 0, 910, 300.00, 5);
INSERT INTO public.planet VALUES (10, 'Helion', false, 0, 845, 250.00, 6);
INSERT INTO public.planet VALUES (11, 'Mars', false, 0, 145, -63.00, 7);
INSERT INTO public.planet VALUES (12, 'Venus', false, 0, 460, 464.00, 7);
INSERT INTO public.planet VALUES (13, 'Jupiter', false, 0, 61420, -108.00, 7);


--
-- Data for Name: specie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.specie VALUES (1, 'Humans', 'Earth, Nerion colonies', 'Originated on Earth and expanded to nearby planets');
INSERT INTO public.specie VALUES (2, 'Nerionians', 'Nerion', 'Native intelligent species of Nerion with advanced technology');
INSERT INTO public.specie VALUES (3, 'Martians', 'Mars underground', 'Ancient civilization now mostly extinct');
INSERT INTO public.specie VALUES (4, 'Venusians', 'Upper atmosphere of Venus', 'Adapted to extreme heat and pressure');
INSERT INTO public.specie VALUES (5, 'Jovians', 'Gas layers of Jupiter', 'Floating lifeforms in dense atmosphere');
INSERT INTO public.specie VALUES (6, 'Cryons', 'Cryon planet', 'Ice-based organisms surviving extreme cold');
INSERT INTO public.specie VALUES (7, 'Aurelians', 'Aurelia', 'Primitive life evolving slowly');
INSERT INTO public.specie VALUES (8, 'Zenthari', 'Zenthis', 'Small tribal species with low population');
INSERT INTO public.specie VALUES (9, 'Pyronites', 'Pyron', 'Heat-resistant species living in lava zones');
INSERT INTO public.specie VALUES (10, 'Helions', 'Helion', 'Radiation-adapted organisms');
INSERT INTO public.specie VALUES (11, 'Eldarans', 'Eldara', 'Volcanic planet species with strong resistance');
INSERT INTO public.specie VALUES (12, 'Velorians', 'Velora', 'Gas-based floating organisms');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 2.7000, 3.8000, 70, 3);
INSERT INTO public.star VALUES (2, 'Mirach', 2.4900, 86.4000, NULL, 3);
INSERT INTO public.star VALUES (3, 'Procyon', 1.4780, 2.0430, 187, 1);
INSERT INTO public.star VALUES (4, 'Groombridge 34', 0.3930, 0.3850, 7, 3);
INSERT INTO public.star VALUES (5, 'R136a1', 291.0000, 42.7000, 0, 2);
INSERT INTO public.star VALUES (6, 'HDE 269810', 130.0000, 18.0000, 0, 2);
INSERT INTO public.star VALUES (7, 'Sun', 1.9880, 695508.0000, 8, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: specie_specie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.specie_specie_id_seq', 12, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: specie specie_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_name_key UNIQUE (name);


--
-- Name: specie specie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_pkey PRIMARY KEY (specie_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: specie unique_specie_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT unique_specie_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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
-- Name: star stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

