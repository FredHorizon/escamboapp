# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Cadastrando as CATEGORIAS..."
categories = [ "Animais e acessórios",
               "Esportes",
               "Para sua casa",
               "Eletrônicos e celulares",
               "Músicas e hobbies",
               "Moda e beleza",
               "Veículos e barcos",
               "Imóveis",
               "Empregos e negócio" ]

categories.each do |category|
    Category.find_or_create_by!(description: category) # 'find_or_create_by' Evita que a categoria seja duplicada. Funciona como uma validação.
end
puts "CATEGORIAS cadastradas com sucesso!"

###################

puts "Cadastrando o ADMINISTRADOR Padrão..."

Admin.create!(
    name: "AdmDefault",
    email: "admin@admin.com",
    password: "123",
    password_confirmation: "123",
    role: 0
)

puts "ADMINISTRADOR cadastrado com sucesso!"