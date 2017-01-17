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
Menu.create(foodname: 'French fries', fooddescription: 'French Fries',
            foodurl: 'https://static.pexels.com/photos/162971/potatoes-french-mourning-funny-162971.jpeg',
            votes: '10', date: '19-JAN-2017')
Menu.create(foodname: 'pizza', fooddescription: 'pizza',
            foodurl: 'https://static.pexels.com/photos/2232/vegetables-italian-pizza-restaurant.jpg',
            votes: '10', date: '20-JAN-2017')
Menu.create(foodname: 'rice bowl', fooddescription: 'rice bowl',
            foodurl: 'https://static.pexels.com/photos/47546/sushi-eat-japanese-asia-47546.jpeg',
            votes: '10', date: '21-JAN-2017')
Menu.create(foodname: 'salad', fooddescription: 'salad',
            foodurl: 'https://static.pexels.com/photos/5938/food-salad-healthy-lunch.jpg',
            votes: '10', date: '22-JAN-2017')
