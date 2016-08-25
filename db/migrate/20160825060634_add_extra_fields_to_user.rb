class AddExtraFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.string :gender, null: false, default: ""
      t.datetime :date_of_birth, null: false, default: DateTime.new
      t.string :secondary_email
      t.string :occupation
      t.string :address
      t.string :mobile
      t.string :marital_status
    end
  end
end
