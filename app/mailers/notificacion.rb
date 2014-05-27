class Notificacion < ActionMailer::Base
  default from: "david.sarabia@ss-logistics.com"

  def notificacion_usuario(user)
  
    @usuario = user

    mail(to: @usuario.apodo, subject: 'Bienvenido a Blog')
  end

end
