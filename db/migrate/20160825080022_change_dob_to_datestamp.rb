class ChangeDobToDatestamp < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :date_of_birth, :date
  end
end
