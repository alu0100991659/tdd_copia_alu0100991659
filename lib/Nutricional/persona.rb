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

  def proteinasMenu
    proteinas = 0.0
    @menu.each do |i|
      proteinas += i.proteinas
    end
    return proteinas
  end

  def menuValido
    if (sexo == "Hombre")
      return (kcalMenu.round == 3000 && proteinasMenu > 54.0)
    else
      return (kcalMenu.round == 2300 && proteinasMenu > 41.0)
    end
  end
end
