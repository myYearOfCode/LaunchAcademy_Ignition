require "pg"

# TITLES = [
#   "Roasted Brussels Sprouts",
#   "Fresh Brussels Sprouts Soup",
#   "Brussels Sprouts with Toasted Breadcrumbs, Parmesan, and Lemon",
#   "Cheesy Maple Roasted Brussels Sprouts and Broccoli with Dried Cherries",
#   "Hot Cheesy Roasted Brussels Sprout Dip",
#   "Pomegranate Roasted Brussels Sprouts with Red Grapes and Farro",
#   "Roasted Brussels Sprout and Red Potato Salad",
#   "Smoky Buttered Brussels Sprouts",
#   "Sweet and Spicy Roasted Brussels Sprouts",
#   "Smoky Buttered Brussels Sprouts",
#   "Brussels Sprouts and Egg Salad with Hazelnuts"
# ]
#
# def db_connection
#   begin
#     connection = PG.connect(dbname: "brussels_sprouts_recipes")
#     yield(connection)
#   ensure
#     connection.close
#   end
# end
#
# db_connection do |conn|
#   TITLES.each do |title|
#     conn.exec_params('INSERT INTO recipes (title) VALUES (($1));',[title])
#   end
# end

COMMENTS = [
  {name: 'mike', body: 'this is a recipe', recipe_id: 1},
  {name: 'ross', body: 'this is not a recipe', recipe_id: 2},
  {name: 'heather', body: 'this is really a recipe', recipe_id: 3},
  {name: 'nick', body: 'this is a dog recipe, not food', recipe_id: 2}
]

def db_connection
  begin
    connection = PG.connect(dbname: 'brussels_sprouts_recipes')
    yield(connection)
  ensure
    connection.close
  end
end

db_connection do |conn|
  COMMENTS.each do |comment|
    conn.exec_params('INSERT INTO comments (recipe_id, author, body) VALUES (($1),($2),($3));',[comment[:recipe_id], comment[:name], comment[:body]])
  end
end
