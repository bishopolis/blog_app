class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :budget
      t.string :channel
      t.string :experience_level
      t.text :summary
      t.file :image
      t.file :logo
      t.string :price
      t.uri :url

      t.timestamps
    end
  end
end
