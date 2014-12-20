class CreateOrnamentHasColors < ActiveRecord::Migration
  def change
    create_table :ornament_has_colors do |t|
      t.references :color, index: true
      t.references :ornament, index: true

      t.timestamps
    end
  end
end
