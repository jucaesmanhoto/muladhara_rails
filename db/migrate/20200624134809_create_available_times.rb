class CreateAvailableTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :available_times do |t|
      t.datetime :initial_timestamp
      t.datetime :final_timestamp

      t.timestamps
    end
  end
end
