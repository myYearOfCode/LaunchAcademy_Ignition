DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS comments;

CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  body VARCHAR(255),
  author VARCHAR(255)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  author VARCHAR(255),
  body VARCHAR(255)
);
