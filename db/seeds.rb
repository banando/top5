# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.delete_all
User.delete_all

User.create(name: "Fernando Orozco", user_name: "Banando",
  password: "12345", password_confirmation: "12345")

list_examples = [
  ["pizza",
    "Stella Barra", "Hollywood", 20.00, "Simple but fantastic",
    "Hollywood Pies", "hollywood", 30.00, "best deep dish I've had",
    "Rocco's", "Hollywood", 20.00, "The best crust",
    "Jon & Vinny's", "Fairfax District", 20.00, "hot & new",
    "Pizzeria Mozza", "Hancock park", 30.00, "a pizza enthusiast must"],
  ["Sushi",
    "SugarFish", "Studio City", 40, "great introduction to good sushi",
    "Katsuya", "Studio City", 50, "Fresh and fantastic",
    "Toshi's", "Van Nuys", 30, "Super friendly",
    "Midori", "Encino", 30, "All you can eat",
    "Bell-hana", "Bell Gardens", 40, "sushi burrito!"],
  ["Burgers",
    "Stout", "Studio City", 11, "Half off food for happy hour",
    "In n out", "Various locations", 7, "It's what a hamburgers all about",
    "Umami", "Various locations", 12, "super customizable",
    "Blue Dog Tavern", "Sherman Oaks", 14, "breakfast burger with egg, bacon and maple syrup",
    "Animal", "Fairfax", 15, "There sliders are amazing!"]
]


list_examples.each do |topic, name1, spot1, price1, details1, name2, spot2, price2, details2,
  name3, spot3, price3, details3, name4, spot4, price4, details4, name5, spot5, price5, details5|
  List.create(topic: topic,
    first: name1, location1: spot1, price1: price1, description1: details1,
    second: name2, location2: spot2, price2:price2, description2: details2,
    third: name3, location3: spot3, price3: price3, description3: details3,
    fourth: name4, location4: spot4, price4: price4, description4: details4,
    fifth: name5, location5: spot5, price5: price5, description5: details5,
    user: User.first)
end

