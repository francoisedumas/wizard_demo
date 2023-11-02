json.extract! house, :id, :address, :current_family_last_name, :interior_color, :exterior_color, :rooms, :square_feet, :created_at, :updated_at
json.url house_url(house, format: :json)
