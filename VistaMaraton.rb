class VistaMaraton
  puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."
  puts "Listo?  Arranca el juego!"
  
  def preguntar(preg)
    puts "#{preg}"
    resp = gets.chomp
  end

  def respuesta_correcta
    puts "Respuesta correcta"
  end

  def respuesta_incorrecta
    puts "Respuesta incorrecta"
  end

  def fin_juego(buenas, malas)
    puts "Fin del juego: tuviste #{buenas} respuestas correctas y #{malas} respuestas incorrectas"
  end
end