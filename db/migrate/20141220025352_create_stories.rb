class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :text
      t.references :location, index: true
      t.references :era, index: true
      t.text :duration

      t.timestamps
    end
  end
end
