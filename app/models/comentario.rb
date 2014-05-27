class Comentario < ActiveRecord::Base
  attr_accessible :articulo_id, :contenido


  belongs_to :articulo
  
  default_scope order('created_at DESC')


end
