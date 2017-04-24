class RemoveProviderFromInfluencer < ActiveRecord::Migration[5.0]
  def change
    remove_column :influencers, :provider
  end
end
