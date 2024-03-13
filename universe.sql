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
    name character varying(100) NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth numeric,
    description text
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
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    stars_count integer,
    planets_count integer,
    age_in_millions_of_years numeric NOT NULL,
    description text
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_planet numeric,
    description text,
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
    name character varying(100) NOT NULL,
    has_life boolean,
    age_in_millions_of_years numeric NOT NULL,
    description text,
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
    name character varying(100) NOT NULL,
    has_planets boolean,
    age_in_millions_of_years numeric NOT NULL,
    description text,
    galaxy_id integer
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

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 4600, 25900, 'A supermassive black hole at the center of the Milky Way galaxy.');
INSERT INTO public.blackhole VALUES (2, 'M87*', 6700, 53000000, 'A supermassive black hole in the center of the Virgo A galaxy, famous for the first black hole image captured.');
INSERT INTO public.blackhole VALUES (3, 'Cygnus X-1', 5000, 6070, 'One of the strongest X-ray sources seen from Earth, believed to be a stellar black hole.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 100, 10000, 'Our galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 200, 200, 12000, 'Nearest spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 300, 300, 13000, 'Part of the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 400, 400, 11000, 'A galaxy in the constellation Virgo');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 500, 500, 14000, 'Interacting grand-design spiral galaxy');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 600, 600, 15000, 'Face-on spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 384400, 'Earth''s only natural satellite', 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 4600, 23460, 'One of Mars'' moons', 2);
INSERT INTO public.moon VALUES (3, 'Phobos', 4600, 9376, 'The larger of Mars'' two moons', 2);
INSERT INTO public.moon VALUES (4, 'Europa', 4500, 670900, 'A moon of Jupiter with potential sub-surface ocean', 3);
INSERT INTO public.moon VALUES (5, 'Io', 4500, 421700, 'The most volcanically active body in the Solar System', 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 1070400, 'The largest moon in the Solar System', 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 1882700, 'The second-largest moon of Jupiter', 3);
INSERT INTO public.moon VALUES (8, 'Titan', 4600, 1221870, 'The largest moon of Saturn', 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4600, 237948, 'A small moon of Saturn with geysers', 4);
INSERT INTO public.moon VALUES (10, 'Miranda', 4500, 129900, 'One of Uranus'' moons', 5);
INSERT INTO public.moon VALUES (11, 'Ariel', 4500, 191020, 'Another moon of Uranus', 5);
INSERT INTO public.moon VALUES (12, 'Umbriel', 4500, 266000, 'A moon of Uranus', 5);
INSERT INTO public.moon VALUES (13, 'Triton', 4600, 354759, 'The largest moon of Neptune', 6);
INSERT INTO public.moon VALUES (14, 'Nereid', 4600, 5513818, 'A moon of Neptune', 6);
INSERT INTO public.moon VALUES (15, 'Charon', 4500, 19571, 'The largest moon of Pluto', 7);
INSERT INTO public.moon VALUES (16, 'Nix', 4500, 48675, 'A small moon of Pluto', 7);
INSERT INTO public.moon VALUES (17, 'Hydra', 4500, 64738, 'Another small moon of Pluto', 7);
INSERT INTO public.moon VALUES (18, 'Kerberos', 4500, 57783, 'A moon of Pluto', 7);
INSERT INTO public.moon VALUES (19, 'Styx', 4500, 42656, 'The outermost moon of Pluto', 7);
INSERT INTO public.moon VALUES (20, 'StyxC2', 4600, 50000, 'A newly discovered moon orbiting the outer edges of the solar system', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 4500, 'Our home planet', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 4600, 'The red planet', 1);
INSERT INTO public.planet VALUES (3, 'Kepler-22b', true, 3000, 'An exoplanet in the habitable zone', 2);
INSERT INTO public.planet VALUES (4, 'Kepler-69c', false, 4000, 'A super-Earth-size planet', 2);
INSERT INTO public.planet VALUES (5, 'Proxima Centauri b', true, 4800, 'An exoplanet orbiting Proxima Centauri', 3);
INSERT INTO public.planet VALUES (6, 'Gliese 667 Cc', true, 5000, 'A super-Earth exoplanet', 3);
INSERT INTO public.planet VALUES (7, 'HD 209458 b', false, 1000, 'A hot Jupiter', 4);
INSERT INTO public.planet VALUES (8, '51 Pegasi b', false, 8000, 'The first exoplanet discovered orbiting a sun-like star', 4);
INSERT INTO public.planet VALUES (9, 'WASP-12b', false, 2000, 'A hot Jupiter', 5);
INSERT INTO public.planet VALUES (10, 'WASP-17b', false, 3000, 'A puffy planet', 5);
INSERT INTO public.planet VALUES (11, 'TrES-2b', false, 5000, 'The darkest known exoplanet', 6);
INSERT INTO public.planet VALUES (12, 'HAT-P-1b', false, 4000, 'An exoplanet known for its large radius', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 4600, 'The star at the center of our solar system', 1);
INSERT INTO public.star VALUES (2, 'Sirius', true, 200, 'The brightest star in the Earth''s night sky', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', true, 5400, 'The closest star system to the Solar System', 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', false, 8000, 'A red supergiant star', 2);
INSERT INTO public.star VALUES (5, 'Rigel', true, 10000, 'A blue supergiant', 3);
INSERT INTO public.star VALUES (6, 'Vega', true, 455, 'The fifth-brightest star in the night sky', 3);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', true, 4800, 'A red dwarf in the Alpha Centauri system', 4);
INSERT INTO public.star VALUES (8, 'Canopus', false, 10000, 'The second-brightest star in the night sky', 4);
INSERT INTO public.star VALUES (9, 'Arcturus', true, 7300, 'The fourth-brightest star in the night sky', 5);
INSERT INTO public.star VALUES (10, 'Capella', true, 4900, 'A quadruple star system', 5);
INSERT INTO public.star VALUES (11, 'Altair', true, 1250, 'The twelfth-brightest star in the night sky', 6);
INSERT INTO public.star VALUES (12, 'Antares', false, 11000, 'A red supergiant star', 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

