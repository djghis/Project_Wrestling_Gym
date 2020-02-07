DROP TABLE bookings;
DROP TABLE members;
DROP TABLE sessions;

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR (255),
  last_name VARCHAR (255)
);

CREATE TABLE sessions (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255)
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id),
  session_id INT REFERENCES sessions(id) ON DELETE CASCADE
);
