class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.text :description

      t.timestamps
    end
  end
end
