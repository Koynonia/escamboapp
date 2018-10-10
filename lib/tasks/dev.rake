namespace :dev do

	desc "Setup Development"
	task setup: :environment do
		images_path = Rails.root.join('public', 'system')

		puts ">> Executando o setup para DESENVOLVIMENTO:"
		puts
		puts "[-] IMAGENS            |  Apagando... #{%x(rm -rf #{images_path})}"
		puts "[!] IMAGENS            |  ==> Sucesso!"
		puts "[-] BANCO DE DADOS     |  Apagando... #{%x(rake db:drop)}"
		puts "[+] BANCO DE DADOS     |  Criando... #{%x(rake db:create)}"
		%x(rake db:migrate)
		puts "[!] BANCO DE DADOS     |  ==> Sucesso!" 
		puts %x(rake db:seed)
		puts %x(rake dev:generate_admins)
		puts %x(rake dev:generate_members)
		puts %x(rake dev:generate_ads)
		puts
		puts ">> Setup completado com sucesso!"
		puts
	end

	desc "Cria Administradores Fake"
	task generate_admins: :environment do
		puts "[+] ADMINISTRADORES    |  Cadastrando..."

		10.times do
			Admin.create!(
				name: Faker::Name.name, 
				email: Faker::Internet.email,
				password: "123456",
				password_confirmation: "123456", 
				role: [0,0,1,1,1].sample
				)
		end
		puts "[!] ADMINISTRADORES    |  ==> Sucesso!"
	end

	desc "Cria Membros Fake"
	task generate_members: :environment do
		puts "[+] MEMBROS            |  Cadastrando..."

		100.times do
			Member.create!(
				#name: Faker::Name.name, 
				email: Faker::Internet.email,
				password: "123456",
				password_confirmation: "123456"
				)
		end
		puts "[!] MEMBROS            |  ==> Sucesso!"
	end

	desc "Cria Anúncios Fake"
	task generate_ads: :environment do
		puts "[+] ANÚNCIOS           |  Cadastrando..."

		5.times do
			Ad.create!(
				title: Faker::Lorem.sentence([2,3,4,5].sample), 
				description: LeroleroGenerator.paragraph(Random.rand(2)), 
				member: Member.first, 
				category: Category.all.sample, 
				price: "#{Random.rand(500)},#{Random.rand(99)}", 
				picture: File.new(Rails.root.join(
					'public', 
					'templates', 
					'images-for-ads', 
					"#{Random.rand(9)}.jpg"), 'r')
				)
		end

		100.times do
			Ad.create!(
				title: Faker::Lorem.sentence([2,3,4,5].sample), 
				description: LeroleroGenerator.paragraph(Random.rand(2)), 
				member: Member.all.sample, 
				category: Category.all.sample, 
				price: "#{Random.rand(500)},#{Random.rand(99)}", 
				picture: File.new(Rails.root.join(
					'public', 
					'templates', 
					'images-for-ads', 
					"#{Random.rand(9)}.jpg"), 'r')
				)
		end

		puts "[!] ANÚNCIOS           |  => Sucesso!"
	end

end
