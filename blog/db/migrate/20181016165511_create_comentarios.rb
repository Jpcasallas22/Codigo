class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentarista
      t.text :contenido
 
      # esta línea añade un entero llamado `articulo_id`.
      t.references :articulo, index: true
 
      t.timestamps null: false
    end
#     add_foreign_key :comentarios, :articulos
  end
end