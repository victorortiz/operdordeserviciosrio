class Articulo < ActiveRecord::Base
  attr_accessible :cuerpo, :titulo


  has_many :comentarios
  
  def self.search(search)
       if search
         where('titulo LIKE ?', "%#{search}%")
       else
         #the following line showw all the articulos, interesting command 'scoped'
         
         ##scoped
         
         # the following line create an empty array
         @busqueda = []
         
       end
   end
  
default_scope :order => 'articulos.created_at DESC'

end
