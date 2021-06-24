class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :github
      t.integer :grade_id
      t.integer :major_id
      t.integer :bureau_id

      t.timestamps
    end
  end
end
