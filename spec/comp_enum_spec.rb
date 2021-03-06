require "spec_helper"
RSpec.describe Alimentos do
  it "has a version number" do
    expect(Alimentos::VERSION).not_to be nil
  end

  before :all do
    @carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 1)
    @carneCordero = Alimentos.new("Carne de cordero", 18.0, 0.0, 17.0, 10.0, 185.0, 5.0)
  end

  context "Puebas para comparar dos alimentos" do
    it "Prueba para comparable menor" do
      expect(@carneCordero < @carneVaca).to eq(false)
    end
    it "Prueba para comparable mayor" do
      expect(@carneCordero > @carneVaca).to eq(true)
    end
    it "Prueba para comparable menor o igual" do
      expect(@carneCordero <= @carneVaca).to eq(false)
    end
    it "Prueba para comparable mayor o igual" do
      expect(@carneCordero >= @carneVaca).to eq(true)
    end
    it "Prueba para comparable igual" do
      expect(@carneCordero == @carneCordero).to eq(true)
    end
    it "Prueba para comparable between" do
      pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 1)
      expect(@carneVaca.between?(pollo,@carneCordero)).to eq(false)
    end
  end
end

RSpec.describe Lista do
  it "has a version number" do
    expect(Lista::VERSION).not_to be nil
  end

  before :all do
    @carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 0.5)
    @carneCordero = Alimentos.new("Carne de cordero", 18.0, 0.0, 17.0, 10.0, 185.0, 5.0)
    @camarones = Alimentos.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0, 2.02)
    @lista1=Lista.new()
    @lista1.push_head(@carneVaca)
    @lista1.push_head(@carneCordero)
    @lista1.push_head(@camarones)

    @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 1.0)
    @salmon = Alimentos.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7, 5.0)
    @cerdo = Alimentos.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 2.0, 1.0)
    @lista2=Lista.new()
    @lista2.push_head(@chocolate)
    @lista2.push_head(@salmon)
    @lista2.push_head(@cerdo)
  end

  context "Pruebas para las listas doblemente enlazadas" do
    it "Pruebas para enumerable, collect" do
      expect(@lista1.collect { |i| i.to_s}).to eq(["#{@camarones}", "#{@carneCordero}", "#{@carneVaca}"])
    end
    it "Pruebas para enumerable etiquetas, select" do
      expect(@lista1.select { |i| i.between?(@carneVaca,@carneCordero)}).to eq([@camarones, @carneCordero, @carneVaca])
    end
    it "Pruebas para enumerable etiquetas, max" do
      expect(@lista2.max).to eq(@salmon)
    end
    it "Pruebas para enumerable etiquetas, min" do
      expect(@lista2.min).to eq(@cerdo)
    end
    it "Pruebas para enumerable etiquetas, sort" do
      expect(@lista2.sort).to eq([@cerdo, @chocolate, @salmon])
    end
  end
end
