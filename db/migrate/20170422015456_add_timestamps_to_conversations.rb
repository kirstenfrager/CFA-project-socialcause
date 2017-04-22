class AddTimestampsToConversations < ActiveRecord::Migration[5.0]
  def change
     add_timestamps(:conversations)
   end
end
