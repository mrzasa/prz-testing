class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :card_number
      t.string :email

      t.timestamps
    end
  end
end
