require 'spec_helper'

RSpec.describe Alimentos do
  before :all do
    @carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 0.5)
    @carneCordero = Alimentos.new("Carne de cordero", 18.0, 0.0, 17.0, 10.0, 185.0, 5.0)
    @camarones = Alimentos.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0, 1.0)
    @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 1.0)
    @salmon = Alimentos.new("Salmón", 19.9, 0.0, 13.6, 6.0, 3.7, 5.0)
    @cerdo = Alimentos.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 2.0, 1.0)
    @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 2.906)

    @alberto = Persona.new("Alberto", "Hombre", [@carneCordero,@chocolate,@salmon,@pollo])
  end

  context "Pruebas básicas para los alimentos" do
    it "Tiene nombre" do
      expect(@carneVaca).to have_attributes(:nombre => "Carne de vaca")
    end
    it "Tiene porciones" do
      expect(@carneVaca).to have_attributes(:nPorciones => 0.5)
    end
    it "Tiene proteinas" do
      expect(@carneVaca).to have_attributes(:proteinas => 10.55)
    end
    it "Tiene carbohidratos" do
      expect(@carneVaca).to have_attributes(:carbohidratos => 0.0)
    end
    it "Tiene lípidos" do
      expect(@carneVaca).to have_attributes(:lipidos => 1.55)
    end
    it "Tiene GEI" do
      expect(@carneVaca).to have_attributes(:gei => 25.0)
    end
    it "Tiene uso de terreno" do
      expect(@carneVaca).to have_attributes(:terreno => 82.0)
    end
    it "Tiene kcal" do
      expect(@carneVaca.kcal.round(2)).to eq(56.15)
    end
    it "Tiene metodo para obtener la etiqueta formateada" do
      expect(@carneVaca.to_s).to eq("Nombre: Carne de vaca, Proteinas: 10.55, Carbohidratos: 0.0, Lipidos: 1.55, GEI: 25.0, Terreno: 82.0, kcal: 56.15")
    end
  end

  context "Pruebas básicas para trabajar con menus para personas" do
    it "Tiene nombre" do
      expect(@alberto).to have_attributes(:nombre => "Alberto")
    end
    it "Tiene sexo" do
      expect(@alberto).to have_attributes(:sexo => "Hombre")
    end
    it "tiene un menu" do
      expect(@alberto).to have_attributes(:menu => [@carneCordero,@chocolate,@salmon,@pollo])
    end
    it "Tiene metodo que calcula kcal totales" do
      expect(@alberto.kcalMenu.round).to eq(3000)
    end
    it "Tiene metodo para comprobar si un menú es válido" do
      expect(@alberto.menuValido).to eq(true)
    end
  end
end
