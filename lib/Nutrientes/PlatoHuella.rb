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

    def huellaAmbiental
      indiceCarbono = 0.0
      if @geiTotal < 800.0
        indiceCarbono = 1.0
      elsif @geiTotal <= 1200.0
        indiceCarbono = 2.0
      else
        indiceCarbono = 3.0
      end

      indiceEnergia = 0.0
      if kcalPlato < 670.0
        calorias = 1.00
      elsif kcalPlato <= 830.0
        calorias = 2.0
      else
        calorias = 3.0
      end

      return (indiceCarbono + indiceEnergia)/2
    end

    def <=> (other)
      huellaAmbiental <=> other.huellaAmbiental
    end

    def to_s
      super + "\nHuella nutricional, GEI: #{@geiTotal} y Uso de Terreno: #{@terrenoTotal}"
    end
end
