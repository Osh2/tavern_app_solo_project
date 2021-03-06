DROP TABLE IF EXISTS weapons;
DROP TABLE IF EXISTS guests;
DROP TABLE IF EXISTS rooms; 


CREATE TABLE rooms(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT
);

CREATE TABLE guests(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    race VARCHAR(255),
    room_id INT REFERENCES rooms(id) ON DELETE CASCADE
);

CREATE TABLE weapons(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    damage VARCHAR(255),
    type VARCHAR(255),
    magic BOOLEAN,
    value INT,
    owner_id INT REFERENCES guests(id) ON DELETE CASCADE 
);

