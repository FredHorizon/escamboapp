namespace :utils do
  desc "Cria Administradores Fake"
  task generate_admins: :environment do
    puts "Cadastrando o ADMINISTRADORES..."

    10.times do
      Admin.create!(email: Faker::Internet.email,
                password: "123",
                password_confirmation: "123")
    end

    puts "ADMINISTRADORES cadastrados com sucesso!"
  end

end
