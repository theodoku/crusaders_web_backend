class AddBiographyToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :biography, :text
  end
end
