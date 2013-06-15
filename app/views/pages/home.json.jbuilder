json.array! @drinks do |d|
  json.name d.name
  json.ingredients d.ingredients, :name
end