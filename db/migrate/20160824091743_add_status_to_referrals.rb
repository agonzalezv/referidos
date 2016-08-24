class AddStatusToReferrals < ActiveRecord::Migration[5.0]
  def change
    change_table :referrals do |t|
      t.string :status, null: false, default: 'new'
    end
  end
end
