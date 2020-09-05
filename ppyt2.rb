def ppyt(jugar)
    puts "Seleccione una OPCIÓN. Presione el número para Jugar :
        [1]+ ENTER Piedra
        [2]+ ENTER Papel
        [3]+ ENTER Tijeras
        [4]+ ENTER Salir"
end

def validar(jugar, opciones)

    print "\t\¡ Opción NO VALIDA. Vuelva a ingresar el número!\n\n"
    return
    ppty(jugar)

    variable = gets.chomp.to_i
    return "#{opciones}"
end

ppyt(1)
opciones__1 = gets.chomp.to_i
unless (opciones__1 == 4)

    if (opciones__1 > 4 || opciones__1 < 1) 
        ppyt(1)
        opciones__1 = validar(1, opciones__1)
    end

    unless (opciones__1 == 4)
    ppyt(2)
    opciones__2 = gets.chomp.to_i

        if (opciones__2 > 4 || opciones__2 < 1) 
            ppyt(2)
            opciones__2 = validar(2, opciones__2)
        end

        unless (opciones__2 == 4 && opciones__2 > 4 && opciones__2 < 1)
        case(opciones__1)

            when 1
                puts "EMPATE" if opciones__2 == 1
                puts "Jugador GANA" if opciones__2 == 2
                puts "Jugador1 GANA" if opciones__2 == 3
            when 2
                puts "Jugador2 GANA" if opciones__2 == 3
                puts "ES EMPATE" if opciones__2 == 2
                puts "Jugador1 GANA" if opciones__2 == 1
            when 3
                puts "Jugador2 GANA" if opciones__2 == 1
                puts "Jugador1 GANA" if opciones__2 == 2
                puts "ES EMPATE" if opciones__2 == 3
            end
        end
    end
end
