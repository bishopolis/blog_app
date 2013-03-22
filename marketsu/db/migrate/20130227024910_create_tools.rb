class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :budget
      t.string :channel
      t.string :experience_level
      t.text   :summary
      t.string :image
      t.string :logo
      t.string :price
      t.string :url

      t.timestamps
    end
  end
end
