require "Nutrientes/version"

# Clase para trabajar con platos con informacion sobre su huella ambiental
class PlatoHuella < Plato

    attr_reader :geiTotal, :terrenoTotal

    # Constructor de la clase
    def initialize(nombre,ingredientes)
        super(nombre,ingredientes)
        @geiTotal=0
        @terrenoTotal=0

        @ingredientes.each{|a|
          @geiTotal = @geiTotal + a.gei
          @terrenoTotal = @terrenoTotal + a.terreno
        }
    end

    # Metodo para obtener la huella ambiental de un plato
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

    #Sobrecarga metodo de comparacion
    def <=> (other)
      huellaAmbiental <=> other.huellaAmbiental
    end

    #Metodo para obtener etiqueta formateada
    def to_s
      super + "\nHuella nutricional, GEI: #{@geiTotal} y Uso de Terreno: #{@terrenoTotal}"
    end
end
