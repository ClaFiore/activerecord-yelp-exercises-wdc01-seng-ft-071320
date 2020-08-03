require 'pry'
require 'faker'

Dish.destroy_all
Restaurant.destroy_all
Tag.destroy_all
DishTag.destroy_all

tag_list =[]
15.times do 
    tag_list << Tag.create(name: Faker::Food.ingredient) end

restaurant_list = []
20.times do 
    restaurant_list << Restaurant.create(name: Faker::Restaurant.name)
end

restaurant_list.each do |restaurant|
    10.times do Dish.create(name: Faker::Food.dish, restaurant_id: restaurant.id) end 
    end

Dish.all.each do |dish| 
    3.times do 
        DishTag.create(dish_id: dish.id, tag_id: tag_list.sample.id) end
    end

