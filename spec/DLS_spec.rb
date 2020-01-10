require "spec_helper"

RSpec.describe PlatoDSL do
  before :each do

    carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 1.0)
    camarones = Alimentos.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0, 1.0)
    @platodsl = PlatoDSL.new("Plato Gallego") do
      nombre_plato  "Carne de vaca con camarones"
      alimento    :objetoAlimento => carneVaca, :gramos => 100
      alimento    :objetoAlimento => camarones, :gramos => 50
    end
  end

  context "Etiqueta formateada" do
    it "Prueba para comprobar que se obtiene la etiqueta formateada de un plato." do
      expect(@platodsl.to_s).to eq("Plato Gallego de Carne de vaca con camarones, Alimentos:  Carne de vaca (100 g),  Camarones (50 g), Kcal: 175.6, Huella Ambiental: 0.5")
    end
  end

end

RSpec.describe MenuDSL do
  before :each do
    pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 1.0)
    chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 1.0)
    cafe = Alimentos.new("Cafe", 0.1, 0.0, 0.0, 0.4, 1.0, 1.0)

    primerPlato = PlatoDSL.new("Primer Plato") do
      nombre_plato  "Pollo frito"
      alimento    :objetoAlimento => pollo, :gramos => 70
    end

    postre = PlatoDSL.new("Postre") do
      nombre_plato "Cafe con chocolate"
      alimento :objetoAlimento => cafe, :gramos => 10
      alimento :objetoAlimento => chocolate, :gramos => 20
    end

    @menudsl = MenuDSL.new("Menu Especial") do
      descripcion "Pollo frito con Chocolate y Cafe"
      componente :plato => primerPlato, :precio => 12.0
      componente :plato => postre, :precio => 3.0
    end
  end

  context "Etiqueta formateada del menu" do
    it "Prueba para comprobar que se obtiene la etiqueta formateada de un menu." do
      expect(@menudsl.to_s).to eq("Menu Especial de Pollo frito con Chocolate y Cafe, Platos:  Primer Plato: Pollo frito (12.0),  Postre: Cafe con chocolate (3.0), Precio: 15.0, Kcal: 434.4, Huella Ambiental: 1.0")
    end
  end
end
