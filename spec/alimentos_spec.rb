require 'spec_helper'

RSpec.describe Alimentos do
  before :all do
    @carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 0.5)
  end

  context "Pruebas básicas para los alimentos" do
    it "Tiene nombre" do
      expect(@carneVaca).to have_attributes(:nombre => "Carne de vaca")
    end
    it "Tiene porciones" do
      expect(@carneVaca).to have_attributes(:nPorciones => 0.5)
    end
  end
end
