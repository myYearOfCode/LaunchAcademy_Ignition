def greet(name, language = nil)
  if language.nil?
    greetings = ["Hi", "yo", "hey", "howdy"]
    return "#{greetings[rand(4)]} #{name}!"
  else
    localized_hellos = {"English": "Hi, #{name}!",
      "Spanish": "Hola, #{name}!",
      "Italian": "Ciao #{name}!",
      "Irken": "DOOM de doom #{name}!"
    }
    return localized_hellos[language.to_sym]
  end
end

puts greet(gets.chomp, "English" )
