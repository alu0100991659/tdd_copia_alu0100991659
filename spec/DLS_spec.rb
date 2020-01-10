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
