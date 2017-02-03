class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :university, :string
    add_column :users, :graduation_year, :datetime
    add_column :users, :degree, :string
    add_column :users, :concentration, :string
    add_column :users, :portfolio, :string

  end
end
