require "spec_helper"

RSpec.describe PlatoHuella do
  it "has a version number" do
    expect(PlatoHuella::VERSION).not_to be nil
  end

  before :all do
    @carneVaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 100.0)
    @camarones = Alimentos.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0, 2.0)
    @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22, 2.0)
    @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 2.0)
    @lecheVaca = Alimentos.new("Leche de Vaca", 3.3, 4.8, 3.2, 3.2, 8.9, 1.0)
    @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3, 1.0)
    @cerdo = Alimentos.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 2.0, 1.0)
    @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 2.0)

    @listaEntrante = Lista.new()
    @listaEntrante.push_head(@camarones)
    @listaEntrante.push_head(@cerveza)

    @listaPrincipal = Lista.new()
    @listaPrincipal.push_tail(@carneVaca)
    @listaPrincipal.push_tail(@pollo)
    @listaPrincipal.push_tail(@cerdo)

    @listaPostre = Lista.new()
    @listaPostre.push_head(@chocolate)
    @listaPostre.push_head(@cafe)
    @listaPostre.push_head(@lecheVaca)

    @platoEntrante = PlatoHuella.new("Entrante", @listaEntrante)
    @platoPrincipal = PlatoHuella.new("Plato principal", @listaPrincipal)
    @platoPostre = PlatoHuella.new("Postre", @listaPostre)

  end

  context "Pruebas para platos con huella nutricional" do
    it "Prueba para hallar plato con max huella de menú" do
      menu = [@platoEntrante,@platoPrincipal,@platoPostre]
      expect(menu.max.nombre).to eq ("Plato principal")
    end
  end
end
