class Alimentos
  attr_reader :nombre, :nPorciones
  def initialize(nombre,proteinas,hCarbono,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
  end
end
