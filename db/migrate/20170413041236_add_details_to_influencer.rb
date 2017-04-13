class AddDetailsToInfluencer < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :mobile, :string
    add_column :influencers, :instagram, :boolean
    add_column :influencers, :youtube, :boolean
    add_column :influencers, :social_media, :string
  end
end
