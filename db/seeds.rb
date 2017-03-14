
############### CRIAÇÃO DE USUARIOS #######################

puts "Criando usuários"
puts "Administrador"

usuario_administrador = User.create(email: "administrador@email.com", password:"12345678", kind:"administrador")
usuario_administrador.save

puts "Cliente"

usuario_client1 = User.create(email:"cliente1@email.com", password:"12345678", kind:"cliente")
usuario_client1.save
usuario_client2 = User.create(email:"cliente2@email.com", password:"12345678", kind:"cliente")
usuario_client2.save
#cliente = Client.create(name:"José de freitas", cpf:"00011133344", user:usuario_client)
#cliente.save

puts "Psicologa"

usuario_psicologa1 = User.create(email:"psicologa1@email.com", password:"12345678", kind:"psicologa")
usuario_psicologa1.save
usuario_psicologa2 = User.create(email:"psicologa2@email.com", password:"12345678", kind:"psicologa")
usuario_psicologa2.save
#psicologa = Psicologa.create(name:"Maria santos", n_orgao:"111111", user:usuario_psicologa)
#psicologa.save

puts "Empresa"

usuario_empresa1 = User.create(email:"empresa1@email.com", password:"12345678", kind:"empresa")
usuario_empresa1.save
usuario_empresa2 = User.create(email:"empresa2@email.com", password:"12345678", kind:"empresa")
usuario_empresa2.save
#empresa = Empresa.create(name:"José de freitas", agent:"Manoel da silva", cnpj:"00011133344", user:usuario_empresa)
#empresa.save
