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
end
