class AddPersonalsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mobile, :string
    add_column :users, :address, :text
  end
end
