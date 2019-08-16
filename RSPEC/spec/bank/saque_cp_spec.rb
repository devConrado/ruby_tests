require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do

        context 'quando o valor e positivo' do

            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200) 
            end
            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 800.00
            end

        end

        context 'quando o valor e zero' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque!'
            end
            it ' e saldo final com zero' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'quando o valor e insuficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(100.00)
                @cp.saca(101)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque!'
            end
            it 'e o saldo permanece' do
                expect(@cp.saldo).to eql 100.00
            end
        end

        context 'quando o valor excede o permitido' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(501)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Limite máximo por saque é de R$ 500'
            end
            it 'e o saldo permance' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end