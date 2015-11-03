require "csv"

class ModeloMaraton
  def deck
    arr = []
    CSV.foreach("preguntas.csv") do |row|
      arr << Card.new(row[0],row[1])
    end
    arr
  end
end

class Card
  attr_accessor :pregunta, :respuesta
  def initialize(preg,resp)
    @pregunta = preg
    @respuesta = resp
  end
end