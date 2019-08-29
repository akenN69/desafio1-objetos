require_relative 'Desafio1-objetos'


while true
    puts 'Bienvenido al menú de las cartas! Qué deseas hacer?'
    puts 'Escribir una de las siguientes opciones:'
    puts 'Jugar, Mostrar o Salir'
    option = gets.chomp.downcase.to_sym
    player = Player.new

    case option
    when :jugar
        player.play
        puts 'Jugando'
    when :mostrar
        puts 'Mostrando'
        player.show_hand
    when :salir
        puts 'adios'
        exit
    else
        puts 'Elegir una opción válida'
    end
end