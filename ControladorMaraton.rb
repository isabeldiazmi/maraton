require_relative "ModeloMaraton"
require_relative "VistaMaraton"

class ControladorMaraton
  def initialize
    @modelo = ModeloMaraton.new
    @vista = VistaMaraton.new
  end

  def juego
    deck = @modelo.deck
    malas = 0
    deck.each do |card|
      if @vista.preguntar(card.pregunta) == card.respuesta
        @vista.respuesta_correcta
      else
        @vista.respuesta_incorrecta
        malas += 1
      end
    end
    @vista.fin_juego(deck.length-malas,malas)
  end
end

controla = ControladorMaraton.new
controla.juego