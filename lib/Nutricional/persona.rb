require 'Nutricional/alimentos.rb'

class Persona
  attr_reader :nombre, :sexo, :menu
  def initialize(nombre,sexo,menu)
    @nombre = nombre
    @sexo = sexo
    @menu = menu
  end
  def kcalMenu
    kcal = 0.0
    @menu.each do |i|
      kcal += i.kcal
    end
    return kcal
  end
end
