class CreateEras < ActiveRecord::Migration
  def change
    create_table :eras do |t|
      t.text :description
      t.text :circa

      t.timestamps
    end
  end
end
