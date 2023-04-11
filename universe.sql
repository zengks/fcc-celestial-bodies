
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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years numeric,
    description text,
    galaxy_type character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth double precision,
    is_spherical boolean,
    has_life boolean,
    description character varying(30),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth double precision,
    planet_type character varying(30),
    is_spherical boolean,
    has_life boolean,
    description character varying(30),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    star_type character varying(30),
    description character varying(60),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: supercluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supercluster (
    supercluster_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.supercluster OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Maffei I and II', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky Way Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Virgo A', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (4, 'Adrastea', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (5, 'Aitne', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (6, 'Ananke', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (7, 'Aoede', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Arche', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (9, 'Autonoe', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (10, 'Callisto', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (11, 'Carme', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (12, 'Carpo', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'Elara', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Europa', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Ganymede', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Harpalyke', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Hegemone', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Helike', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Himalia', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Kore', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (21, 'Leda', NULL, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Pluto', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Moon', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Eris', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Mirach', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Almach', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Andromedae', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Delta Andromedae', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Iota Andromedae', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'Upsilon Andromedae', NULL, NULL, NULL, 1);


--
-- Data for Name: supercluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supercluster VALUES (1, 'Laniakea Supercluster', NULL);
INSERT INTO public.supercluster VALUES (2, 'Virgo Supercluster', NULL);
INSERT INTO public.supercluster VALUES (3, 'Pavo-Indus Supercluster', NULL);


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
-- Name: supercluster supercluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_name_key UNIQUE (name);


--
-- Name: supercluster supercluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_pkey PRIMARY KEY (supercluster_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

