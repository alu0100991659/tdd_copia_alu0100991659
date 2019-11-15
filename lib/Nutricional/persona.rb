require 'Nutricional/alimentos.rb'

class Persona
  attr_reader :nombre, :sexo, :menu
  def initialize(nombre,sexo,menu)
    @nombre = nombre
    @sexo = sexo
    @menu = menu
  end
end
