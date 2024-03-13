CREATE TABLE galaxy(
	galaxy_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	stars_count INT,
	planets_count INT,
	age_in_millions_of_years NUMERIC NOT NULL,
	description TEXT
	
);

CREATE TABLE star(
	star_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	age_in_millions_of_years NUMERIC NOT NULL,
	has_planets BOOLEAN,
	description TEXT,
	galaxy_id INTEGER,
	FOREIGN KEY (galaxy_id) 
		REFERENCES galaxy(galaxy_id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE planet(
	planet_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	age_in_millions_of_years NUMERIC NOT NULL,
	has_life BOOLEAN,
	description TEXT,
	star_id INTEGER,
	FOREIGN KEY (star_id)
		REFERENCES star(star_id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE moon(
	moon_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	age_in_millions_of_years NUMERIC NOT NULL,
	distance_from_planet NUMERIC,
	description TEXT,
	planet_id INTEGER,
	FOREIGN KEY (planet_id)
		REFERENCES planet(planet_id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE blackhole(
	blackhole_id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	age_in_millions_of_years NUMERIC NOT NULL,
	distance_from_earth NUMERIC,
	description TEXT
);


INSERT INTO galaxy (name, stars_count, planets_count, age_in_millions_of_years, description) VALUES
('Milky Way', 100, 100, 10000, 'Our galaxy'),
('Andromeda', 200, 200, 12000, 'Nearest spiral galaxy'),
('Triangulum', 300, 300, 13000, 'Part of the Local Group'),
('Sombrero', 400, 400, 11000, 'A galaxy in the constellation Virgo'),
('Whirlpool', 500, 500, 14000, 'Interacting grand-design spiral galaxy'),
('Pinwheel', 600, 600, 15000, 'Face-on spiral galaxy')
;


INSERT INTO star (name, age_in_millions_of_years, has_planets, description, galaxy_id) VALUES
('Sun', 4600, TRUE, 'The star at the center of our solar system', 1),
('Sirius', 200, TRUE, 'The brightest star in the Earth''s night sky', 1),
('Alpha Centauri', 5400, TRUE, 'The closest star system to the Solar System', 2),
('Betelgeuse', 8000, FALSE, 'A red supergiant star', 2),
('Rigel', 10000, TRUE, 'A blue supergiant', 3),
('Vega', 455, TRUE, 'The fifth-brightest star in the night sky', 3),
('Proxima Centauri', 4800, TRUE, 'A red dwarf in the Alpha Centauri system', 4),
('Canopus', 10000, FALSE, 'The second-brightest star in the night sky', 4),
('Arcturus', 7300, TRUE, 'The fourth-brightest star in the night sky', 5),
('Capella', 4900, TRUE, 'A quadruple star system', 5),
('Altair', 1250, TRUE, 'The twelfth-brightest star in the night sky', 6),
('Antares', 11000, FALSE, 'A red supergiant star', 6)
;


INSERT INTO planet (name, age_in_millions_of_years, has_life, description, star_id) VALUES
('Earth', 4500, TRUE, 'Our home planet', 1),
('Mars', 4600, FALSE, 'The red planet', 1),
('Kepler-22b', 3000, TRUE, 'An exoplanet in the habitable zone', 2),
('Kepler-69c', 4000, FALSE, 'A super-Earth-size planet', 2),
('Proxima Centauri b', 4800, TRUE, 'An exoplanet orbiting Proxima Centauri', 3),
('Gliese 667 Cc', 5000, TRUE, 'A super-Earth exoplanet', 3),
('HD 209458 b', 1000, FALSE, 'A hot Jupiter', 4),
('51 Pegasi b', 8000, FALSE, 'The first exoplanet discovered orbiting a sun-like star', 4),
('WASP-12b', 2000, FALSE, 'A hot Jupiter', 5),
('WASP-17b', 3000, FALSE, 'A puffy planet', 5),
('TrES-2b', 5000, FALSE, 'The darkest known exoplanet', 6),
('HAT-P-1b', 4000, FALSE, 'An exoplanet known for its large radius', 6)
;


INSERT INTO moon (name, age_in_millions_of_years, distance_from_planet, description, planet_id) VALUES
('Moon', 4500, 384400, 'Earth''s only natural satellite', 1),
('Deimos', 4600, 23460, 'One of Mars'' moons', 2),
('Phobos', 4600, 9376, 'The larger of Mars'' two moons', 2),
('Europa', 4500, 670900, 'A moon of Jupiter with potential sub-surface ocean', 3),
('Io', 4500, 421700, 'The most volcanically active body in the Solar System', 3),
('Ganymede', 4500, 1070400, 'The largest moon in the Solar System', 3),
('Callisto', 4500, 1882700, 'The second-largest moon of Jupiter', 3),
('Titan', 4600, 1221870, 'The largest moon of Saturn', 4),
('Enceladus', 4600, 237948, 'A small moon of Saturn with geysers', 4),
('Miranda', 4500, 129900, 'One of Uranus'' moons', 5),
('Ariel', 4500, 191020, 'Another moon of Uranus', 5),
('Umbriel', 4500, 266000, 'A moon of Uranus', 5),
('Triton', 4600, 354759, 'The largest moon of Neptune', 6),
('Nereid', 4600, 5513818, 'A moon of Neptune', 6),
('Charon', 4500, 19571, 'The largest moon of Pluto', 7),
('Nix', 4500, 48675, 'A small moon of Pluto', 7),
('Hydra', 4500, 64738, 'Another small moon of Pluto', 7),
('Kerberos', 4500, 57783, 'A moon of Pluto', 7),
('Styx', 4500, 42656, 'The outermost moon of Pluto', 7),
('StyxC2', 4600, 50000, 'A newly discovered moon orbiting the outer edges of the solar system', 8)
;

INSERT INTO blackhole (name, age_in_millions_of_years, distance_from_earth, description) VALUES
('Sagittarius A*', 4600, 25900, 'A supermassive black hole at the center of the Milky Way galaxy.'),
('M87*', 6700, 53000000, 'A supermassive black hole in the center of the Virgo A galaxy, famous for the first black hole image captured.'),
('Cygnus X-1', 5000, 6070, 'One of the strongest X-ray sources seen from Earth, believed to be a stellar black hole.')
;



