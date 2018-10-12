class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titular
      t.text :contenido

      t.timestamps null: false
    end
  end
end
