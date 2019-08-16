# Ruby é uma linguagem considerada puramente orientada a objeto
# Porque tudo é objeto

# Classe possui atributos e métodos
# Caracteristicas e Ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade de Portas, etc)

class Carro 
    attr_accessor :Nome

    def ligar
        puts 'O carro esta pronto'        
    end
end

civic = Carro.new

civic.Nome = 'Civic'

puts civic.Nome
