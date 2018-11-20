namespace :utils do
  desc "Cria Administradores Fake"
  task generate_admins: :environment do
    puts "Cadastrando os ADMINISTRADORES..."

    10.times do
      Admin.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "123",
        password_confirmation: "123",
        role: [0,1].sample
      )
    end

    puts "ADMINISTRADORES cadastrados com sucesso!"
  end

end
