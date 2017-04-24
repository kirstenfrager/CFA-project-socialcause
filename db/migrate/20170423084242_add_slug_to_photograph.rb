class AddSlugToPhotograph < ActiveRecord::Migration[5.0]
  def change
    add_column :photographs, :slug, :string
    add_index :photographs, :slug, unique: true
  end
end
