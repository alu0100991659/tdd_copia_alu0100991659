class Alimentos
  attr_reader :nombre, :nPorciones, :proteinas, :carbohidratos, :lipidos
  def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
    @carbohidratos = carbohidratos*nPorciones
    @lipidos = lipidos*nPorciones
  end
end
