json.extract! animal, :id, :name, :species, :sex, :breed, :age_in_months, :vaccinated, :sterilized, :intake_date, :adoption_status, :notes, :created_at, :updated_at
json.url animal_url(animal, format: :json)
