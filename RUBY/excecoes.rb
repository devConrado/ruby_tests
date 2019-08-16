# begin
#    # Devo tentar algo
#    file = File.open('./ola')
#    if file
#        puts file.read
#    end
# rescue Exception => e
#     # Obter um possivel erro
#     puts e.message
#     puts e.backtrace
# end
def soma(n1, n2)
    n1 + n2
rescue Exception => e    
    puts e.message
end

soma('10',5)