class CreatePhotographs < ActiveRecord::Migration[5.0]
  def change
    create_table :photographs do |t|
      t.string :title
      t.string :author
      t.string :pictures
      t.references :influencer, foreign_key: true

      t.timestamps
    end
  end
end
