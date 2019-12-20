require "Nutrientes/version"

class Plato

    include Comparable

    attr_reader :ingredientes, :nombre, :grTotal, :grProteinas, :grCarbohidratos, :grLipidos

    def initialize(nombre,ingredientes)
      @nombre = nombre
      @ingredientes = ingredientes;
      @grTotal = 0;
      @grProteinas = 0;
      @grCarbohidratos = 0;
      @grLipidos = 0;

      @ingredientes.each{|a|
        @grTotal = @grTotal + a.nPorciones*100.0
        @grProteinas = @grProteinas + a.proteinas
        @grCarbohidratos = @grCarbohidratos + a.carbohidratos
        @grLipidos = @grLipidos + a.lipidos
      }
    end

    def p_proteinas
      ((@grProteinas*100)/@grTotal).round(3)
    end

    def p_lipidos
      ((@grLipidos*100)/@grTotal).round(3)
    end

    def p_carbs
      ((@grCarbohidratos*100)/@grTotal).round(3)
    end

    def kcalPlato
        @grProteinas*4+@grCarbohidratos*4+@grLipidos*4
    end

    def <=> (other)
        kcalPlato <=> other.kcalPlato
    end

    def to_s
      "Nombre: #{@nombr}, Kcal: #{kcalPlato}, Gramos Totales:  #{@grTotal}, Gramos Proteinas: #{@grProteinas}, Gramos Carboidratos: #{@grCarbohidratos}, Gramos Lipidos: #{@grLipidos}"
    end

end
