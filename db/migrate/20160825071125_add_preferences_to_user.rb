class AddPreferencesToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.json :preferences
    end
  end
end
