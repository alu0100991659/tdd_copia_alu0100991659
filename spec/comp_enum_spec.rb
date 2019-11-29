require "spec_helper"
RSpec.describe Alimentos do
  it "has a version number" do
    expect(Alimentos::VERSION).not_to be nil
  end

  before :all do
    @carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 0.5)
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
  end
end
