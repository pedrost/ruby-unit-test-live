# Pra rodar escreva 'ruby ./nome do arquivo' em seu terminal

class SayHello

	def self.hello_class_method
		puts "Hello, I'm a calss method"
	end

	def hello_instance_method
		puts "Hello, I'm an instance method"
	end

end

# Chamando metodo de classe
SayHello.hello_class_method

# Instanciando hello
hello = SayHello.new
# Chamando metodo de instancia
hello.hello_instance_method


# Begin e rescue são para que caso o codigo que esta dentro
# de begin falhe, o codigo nao pare de rodar
# e caia em uma exceção dentro do rescue

begin
	# Aqui vai dar erro erro e entrar no rescue
	SayHello.hello_instance_method
rescue => e
	# Mostra o erro em vermelho (\033[31m) e da um pulo na linha do console com o \n
	puts "\033[31m #{e} \n"
end

begin
	# Aqui vai dar erro erro e entrar no rescue
	hello.hello_class_method
rescue => e
	# Mostra o erro em vermelho (\033[31m) e da um pulo na linha do console com o \n
	puts "\033[31m #{e} \033[0m \n "
end
