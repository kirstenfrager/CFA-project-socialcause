class AddNamesToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :first_name, :string
    add_column :influencers, :last_name, :string
  end
end
