uri = URI.parse("https://www.themealdb.com/api/json/v1/1/list.php?i=list")

uri.open do |f|
  JSON.parse(f.read)["meals"].each do |ingredient|
    Ingredient.create(name: ingredient["strIngredient"])
  end
end