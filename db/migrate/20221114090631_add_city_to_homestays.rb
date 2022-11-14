class AddCityToHomestays < ActiveRecord::Migration[7.0]
  def change
    add_column :homestays, :city, :string
  end
end
