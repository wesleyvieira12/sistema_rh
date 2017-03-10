
############### CRIAÇÃO DE USUARIOS #######################

puts "Criando usuários"
puts "Administrador"

usuario_administrador = User.create(email: "administrador@email.com", password:"12345678", kind:"administrador")
usuario_administrador.save

puts "Cliente"

usuario_client = User.create(email:"cliente@email.com", password:"12345678", kind:"cliente")
usuario_client.save
#cliente = Client.create(name:"José de freitas", cpf:"00011133344", user:usuario_client)
#cliente.save

puts "Psicologa"

usuario_psicologa = User.create(email:"psicologa@email.com", password:"12345678", kind:"psicologa")
usuario_psicologa.save
#psicologa = Psicologa.create(name:"Maria santos", n_orgao:"111111", user:usuario_psicologa)
#psicologa.save

puts "Empresa"

usuario_empresa = User.create(email:"empresa@email.com", password:"12345678", kind:"empresa")
usuario_empresa.save
#empresa = Empresa.create(name:"José de freitas", agent:"Manoel da silva", cnpj:"00011133344", user:usuario_empresa)
#empresa.save
