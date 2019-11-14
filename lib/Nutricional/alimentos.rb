class Alimentos
  attr_reader :nombre, :nPorciones, :proteinas
  def initialize(nombre,proteinas,hCarbono,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
  end
end
