class CreateGivers < ActiveRecord::Migration
  def change
    create_table :givers do |t|
      t.text :lastname
      t.text :firstname
      t.references :status, index: true

      t.timestamps
    end
  end
end
