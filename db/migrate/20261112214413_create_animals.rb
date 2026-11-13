class CreateAnimals < ActiveRecord::Migration[8.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :sex
      t.string :breed
      t.integer :age_in_months
      t.boolean :vaccinated
      t.boolean :sterilized
      t.date :intake_date
      t.string :adoption_status, default: "available"
      t.text :notes

      t.timestamps
    end
  end
end
