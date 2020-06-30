class RemoveUserIdToPlaceAddress < ActiveRecord::Migration[6.0]
  def change
    remove_column :place_addresses, :user_id
  end
end
