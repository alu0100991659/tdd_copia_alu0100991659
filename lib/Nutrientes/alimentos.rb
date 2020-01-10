require "Nutrientes/version"

# Clase para trabajar con informacion nutricional y ambiental de alimentos
class Alimentos

  include Comparable

  attr_accessor :nombre, :nPorciones, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

  # Constructor de la clase
  def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
    @carbohidratos = carbohidratos*nPorciones
    @lipidos = lipidos*nPorciones
    @gei = gei*nPorciones
    @terreno = terreno*nPorciones
  end

  # KiloCalorias del alimento
  def kcal
    @proteinas*4.0+@carbohidratos*4.0+@lipidos*9.0
  end

  # Sobrecarga del operador de comparacion
  def <=> (other)
      kcal <=> other.kcal
  end

  # Etiqueta formateada
  def to_s
    "Nombre: #{@nombre}, Proteinas: #{@proteinas}, Carbohidratos: #{@carbohidratos}, Lipidos: #{@lipidos}, GEI: #{@gei}, Terreno: #{@terreno}, kcal: #{kcal.round(2)}"
  end
end
