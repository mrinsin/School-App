json.extract! school, :id, :name, :year_founded, :street_address_1, :street_address_2, :city, :state, :zipcode, :database, :profile, :created_at, :updated_at
json.url school_url(school, format: :json)