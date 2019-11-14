require 'Nutricional/alimentos.rb'

class Persona
  attr_reader :nombre
  def initialize(nombre,sexo)
    @nombre = nombre
  end
end
