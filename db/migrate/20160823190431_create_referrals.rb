class CreateReferrals < ActiveRecord::Migration[5.0]
  def change
    create_table :referrals do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :document_id, null: false
      t.string :email, null: false
      t.string :city
      t.string :phone
      t.string :mobile
      t.timestamps
    end
  end
end
