# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Menu.create(foodname: 'Wild Mushroom Pasta',
            fooddescription: ' Wild Mushroom Pasta! The NO CREAM, creamy pasta recipe with rich, full flavor of the porcini, baby bellas and oyster mushrooms burst on your pallet. What can be better then that combination of gourmet funghi?',
            foodurl: 'http://www.josephsgourmetpasta.com/wp-content/uploads/2014/09/Mushroom-Ravioli-Small-Round-2000x1000.jpg',
            votes: '10', date: '20-JAN-2017', price: 21)
Menu.create(foodname: 'Cuban Fish Tacos',
            fooddescription: ' Cuban Fish Tacos with Citrus Mango Slaw + Chipotle Lime Crema // mahi mahi or salmon, corn tortillas, grapefruit, cara cara or blood orange, jalapeno, lime, red cabbage, chipotle crema',
            foodurl: 'http://www.halfbakedharvest.com/wp-content/uploads/2015/02/Cuban-Fish-Tacos-with-Citrus-Mango-Slaw-Chipotle-Lime-Crema.-1.jpg',
            votes: '10', date: '21-JAN-2017', price: 23)
Menu.create(foodname: 'Sushi',
            fooddescription: ' 2pcs Tuna, 2pcs Salmon, 2pcs Hamachi, 2pcs Shrimp and a California Roll',
            foodurl: 'http://intelliwires.com/wp-content/uploads/2016/02/19.jpg',
            votes: '10', date: '22-JAN-2017', price: 25)
