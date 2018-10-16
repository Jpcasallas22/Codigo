class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentarista
      t.text :contenido
      t.references :articulo, index: true

      t.timestamps
    end
  end
end
