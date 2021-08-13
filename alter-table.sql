ALTER TABLE animals
ADD location VARCHAR(30)

INSERT INTO animals(name, location, age, type)
VALUES('jonah', 'utah', 21, 'bamf');

INSERT INTO animals(name, location, age, type)
VALUES('zach', 'utah', 21, 'cool');

INSERT INTO animals(name, location, age, type)
VALUES('jake', 'az', 25, 'dumb')

ALTER TABLE animals
RENAME COLUMN type
TO "species";

ALTER TABLE animals
ALTER species
SET data type varchar