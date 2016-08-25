class AddNumberOfChildrenToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.integer :number_of_children, null: false, default: 0
    end
  end
end
