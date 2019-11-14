class Alimentos
  attr_reader :nombre, :nPorciones, :proteinas, :carbohidratos, :lipidos, :gei
  def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno,nPorciones)
    @nombre = nombre
    @nPorciones = nPorciones
    @proteinas = proteinas*nPorciones
    @carbohidratos = carbohidratos*nPorciones
    @lipidos = lipidos*nPorciones
    @gei = gei*nPorciones
  end
end
