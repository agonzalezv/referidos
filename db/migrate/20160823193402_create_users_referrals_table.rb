class CreateUsersReferralsTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :referrals do |t|
      t.index :user_id
      t.index :referral_id
    end
  end
end
