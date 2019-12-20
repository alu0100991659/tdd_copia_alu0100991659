require "Nutrientes/version"

class PlatoHuella < Plato
  attr_reader :geiTotal, :terrenoTotal

    def initialize(nombre,ingredientes)
        super(nombre,ingredientes)
        @geiTotal=0
        @terrenoTotal=0

        @ingredientes.each{|a|
          @geiTotal = @geiTotal + a.gei
          @terrenoTotal = @terrenoTotal + a.terreno
        }
    end

    def to_s
      super + "\nHuella nutricional, GEI: #{@geiTotal} y Uso de Terreno: #{@terrenoTotal}"
    end
end
