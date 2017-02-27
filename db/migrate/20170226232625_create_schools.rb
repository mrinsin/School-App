class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.datetime :year_founded
      t.string :street_address_1
      t.text :street_address_2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :database
      t.string :profile

      t.timestamps
    end
  end
end
