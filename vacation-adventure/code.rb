# 20190114
# require 'pry'
activities = ["dune sailing", "anti-gravity bounce-house", "lava surfing"]
random_number = rand(3) # It's interesting that rand isn't inclusive.

# binding.pry # pry is pretty cool. not as cool as CDT though :)
if random_number == 1
  # fix the wording for the non verb activity
  puts("We are going to the #{activities[random_number]}!")
else
  puts("We are going #{activities[random_number]}!")
end
