def send_forgot_password(montir)
    @montir = montir
    mail to: montir.email, from: "info@garage.com", subject: "Please reset your password"
end
  