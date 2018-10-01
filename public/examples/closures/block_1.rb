def saudacao
	puts "Olá"
	yield
	puts "Seja bem-vindo!"
end

saudacao { puts 'Fernando' }
