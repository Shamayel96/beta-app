json.extract! dish, :id, :title, :recipe, :created_at, :updated_at
json.url dish_url(dish, format: :json)