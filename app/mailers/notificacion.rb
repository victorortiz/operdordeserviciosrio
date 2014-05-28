class Notificacion < ActionMailer::Base
  default from: "david.sarabia@ss-logistics.com"

  def notificacion_usuario(user)
  
    @usuario = user

    mail(to: @usuario.apodo, subject: 'Bienvenido al buzón de sugerencias')
  end

end
