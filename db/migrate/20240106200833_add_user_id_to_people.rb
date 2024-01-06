class AddUserIdToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :user, null: false, foreign_key: true
  end
end
