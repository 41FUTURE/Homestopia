class AddCoordinatesToHomestays < ActiveRecord::Migration[7.0]
  def change
    add_column :homestays, :latitude, :float
    add_column :homestays, :longitude, :float
  end
end
