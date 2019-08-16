class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor, max)
        if (valor > self.saldo)
            self.mensagem = "Saldo insuficiente para saque!"   
        elsif (valor > 700)
            self.mensagem = "Limite máximo por saque é de R$ 700"
        else 
            self.saldo -= valor   
        end
    end

end

class ContaCorrente < Conta

    def saca(valor)
        
    end

end

class ContaPoupanca < Conta

    def saca(valor)
        if (valor > self.saldo)
            self.mensagem = "Saldo insuficiente para saque!"   
        elsif (valor > 500)
            self.mensagem = "Limite máximo por saque é de R$ 500"
        else 
            self.saldo -= valor   
        end
    end

end