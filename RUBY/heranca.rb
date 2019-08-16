class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto!"
    end

    def buzinar
        puts 'beep, beep !!'
    end

    class Carro < Veiculo
        def dirigir
            puts "O(A) #{nome} está pronto para ser dirigido"
        end
    end

    class Moto < Veiculo
        def pilotar
            puts "O(A) #{nome} está pronto para ser pilotado"
        end
    end

    civic = Carro.new('Civic', 'Honda', 'SI')
    lancer = Carro.new('Lancer', 'Mitsubish', 'Evo')
    fazer = Moto.new('Fazer', 'Yamaha', '250X')

    puts civic.ligar
    puts civic.buzinar
    puts civic.dirigir

    puts lancer.ligar
    puts lancer.buzinar
    puts lancer.dirigir

    puts fazer.ligar
    puts fazer.buzinar
    puts fazer.pilotar

end