require 'Nutricional/alimentos.rb'

class Persona
  attr_reader :nombre, :sexo
  def initialize(nombre,sexo)
    @nombre = nombre
    @sexo = sexo
  end
end
