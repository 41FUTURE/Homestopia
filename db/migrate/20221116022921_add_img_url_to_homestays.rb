class AddImgUrlToHomestays < ActiveRecord::Migration[7.0]
  def change
    add_column :homestays, :img_url, :string
  end
end
