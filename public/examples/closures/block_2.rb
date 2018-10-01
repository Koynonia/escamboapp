def saudacao
	if block_given?
		puts "Olá"
		yield
	else
		puts "O bloco não foi passado!"
	end
end

saudacao #{ puts 'Fernando' }
