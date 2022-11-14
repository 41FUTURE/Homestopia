class AddCountryToHomestays < ActiveRecord::Migration[7.0]
  def change
    add_column :homestays, :country, :string
  end
end
