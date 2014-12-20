class CreateOrnaments < ActiveRecord::Migration
  def change
    create_table :ornaments do |t|
      t.references :giver, index: true
      t.references :story, index: true
      t.references :form, index: true

      t.timestamps
    end
  end
end
