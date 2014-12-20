class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :description

      t.timestamps
    end
  end
end
