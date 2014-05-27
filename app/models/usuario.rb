class Usuario < ActiveRecord::Base
  attr_accessible :apodo, :password_digest, :password

  has_secure_password
  
end
