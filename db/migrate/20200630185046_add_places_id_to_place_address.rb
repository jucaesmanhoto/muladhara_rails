class AddPlacesIdToPlaceAddress < ActiveRecord::Migration[6.0]
  def change
    add_reference :place_addresses, :place, null: false, foreign_key: true
  end
end
