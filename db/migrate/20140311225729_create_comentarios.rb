class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :contenido
      t.integer :articulo_id

      t.timestamps
    end
  end
end
