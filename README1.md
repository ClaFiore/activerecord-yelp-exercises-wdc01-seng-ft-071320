Restaurant -< Dish -< DishTag >- Tag

Restaurant (name)
* has many dishes

Dish (name, restaurant)
* belongs to restaurant
* has many DishTags
* has many tags, through DishTags


DishTag
* belongs to a dish
* belongs to a tag

Tag (name)
* has many DishTags
* has many dishes, through DishTags