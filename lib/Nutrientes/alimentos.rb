require "Nutrientes/version"

class Alimentos
  attr_reader :nombre, :nPorciones, :proteinas, :carbohidratos, :lipidos, :gei, :terreno
  def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
    @carbohidratos = carbohidratos*nPorciones
    @lipidos = lipidos*nPorciones
    @gei = gei*nPorciones
    @terreno = terreno*nPorciones
  end

  def kcal
    @proteinas*4.0+@carbohidratos*4.0+@lipidos*9.0
  end
  def to_s
    "Nombre: #{@nombre}, Proteinas: #{@proteinas}, Carbohidratos: #{@carbohidratos}, Lipidos: #{@lipidos}, GEI: #{@gei}, Terreno: #{@terreno}, kcal: #{kcal.round(2)}"
  end
end
