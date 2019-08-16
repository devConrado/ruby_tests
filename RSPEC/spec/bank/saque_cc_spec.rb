require_relative '../../app/bank'

describe ContaCorrente do

    describe 'Saque' do

        context 'quando o valor e positivo' do

            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200) 
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 800.00
            end

        end

        context 'quando o valor e zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque!'
            end
            it ' e saldo final com zero' do
                expect(@cc.saldo).to eql 0.00
            end
        end

        context 'quando o valor e insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(100.00)
                @cc.saca(101)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque!'
            end
            it 'e o saldo permanece' do
                expect(@cc.saldo).to eql 100.00
            end
        end

        context 'quando o valor excede o permitido' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'e o saldo permance' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end