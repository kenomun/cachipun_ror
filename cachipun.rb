# opciones del juego
opciones = ['piedra', 'papel', 'tijera']

def jugar(opciones)
  # Solicitar al usuario que ingrese una opción
	puts '********** Cachipun ***********'
  puts 'Ingresa una opción para jugar (piedra, papel, tijera): '
  eleccion_usuario = gets.chomp.downcase

  # Verifica si la elección del usuario es válida
  until opciones.include?(eleccion_usuario) || eleccion_usuario == 'salir'
    puts 'Opción inválida. Inténtalo nuevamente o ingresa "salir" para cerrar la aplicación'
    puts 'Ingresa una opción válida (piedra, papel, tijera):'
    eleccion_usuario = gets.chomp.downcase
  end

  if eleccion_usuario == 'salir'
    puts '!!! Vuelve pronto'
    return
  end

  eleccion_computador = opciones[rand(opciones.length)]
  puts "Computador juega #{eleccion_computador}."

  # Determinar el resultado del juego
  if eleccion_usuario == eleccion_computador
    puts 'Empataste.'
  elsif (eleccion_usuario == 'piedra' && eleccion_computador == 'tijera') ||
        (eleccion_usuario == 'papel' && eleccion_computador == 'piedra') ||
        (eleccion_usuario == 'tijera' && eleccion_computador == 'papel')
    puts 'Felicitaciones, ganaste.'
  else
    puts 'Perdiste.'
  end

  # Preguntar si el usuario quiere volver a jugar
	puts '*********************'
  puts '¿Quieres volver a jugar? (si/no):'
  respuesta = gets.chomp.downcase

  if respuesta == 'si'
    jugar(opciones)
  else
    puts '!!! Vuelve pronto'
  end
end

jugar(opciones)