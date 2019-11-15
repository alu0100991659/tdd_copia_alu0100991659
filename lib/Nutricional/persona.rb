require 'Nutricional/alimentos.rb'

class Persona
  attr_reader :nombre, :sexo
  def initialize(nombre,sexo,menu)
    @nombre = nombre
    @sexo = sexo
  end
end
