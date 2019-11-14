class Alimentos
  attr_reader :nombre, :nPorciones, :proteinas, :carbohidratos
  def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
    @carbohidratos = carbohidratos*nPorciones
  end
end
