class Alimentos
  attr_reader :nombre, :nPorciones, :proteinas
  def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
  end
end
