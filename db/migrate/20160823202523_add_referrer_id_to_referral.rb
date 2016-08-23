class AddReferrerIdToReferral < ActiveRecord::Migration[5.0]
  def change
    change_table :referrals do |t|
      t.integer :user_id
    end
    add_index :referrals, :user_id
  end
end
