How many recipes are there in total?
<!-- SELECT count(*) FROM recipes -->
How many comments are there in total?
<!-- SELECT count(*) FROM comments -->
Add a new recipe titled Brussels Sprouts with Goat Cheese. Add two comments to it.
INSERT INTO recipes (title)
  VALUES ('Brussels Sprouts with Goat Cheese');

SELECT id FROM RECIPES
  WHERE title = 'Brussels Sprouts with Goat Cheese'

INSERT INTO comments (author, body, recipe_id)
VALUES ('ross', 'this doesnt have any goat in it', 12),
('troy', 'Sprouting is for suckers', 12);

How would you find out how many comments each of the recipes have? (Optional)

What is the name of the recipe that is associated with a specific comment? (Optional)
