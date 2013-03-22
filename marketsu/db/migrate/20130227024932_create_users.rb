class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :budget
      t.string :channel
      t.string :experience_level

      
      t.timestamps
    end
  end
end
