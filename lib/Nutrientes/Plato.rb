require "Nutrientes/version"

# Clase para trabajar con informacion nutricional de platos
class Plato

    include Comparable

    attr_reader :ingredientes, :nombre, :grTotal, :grProteinas, :grCarbohidratos, :grLipidos

    # Constructor de la clase
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

    # Porcentaje de proteinas
    def p_proteinas
      ((@grProteinas*100)/@grTotal).round(3)
    end

    # Porcentaje de lipidos
    def p_lipidos
      ((@grLipidos*100)/@grTotal).round(3)
    end

    # Porcentaje de carbohidratos
    def p_carbs
      ((@grCarbohidratos*100)/@grTotal).round(3)
    end

    # KiloCalorias del plato
    def kcalPlato
        @grProteinas*4+@grCarbohidratos*4+@grLipidos*4
    end

    # Sobrecarga del operador de comparacion
    def <=> (other)
        kcalPlato <=> other.kcalPlato
    end

    # Etiqueta formateada
    def to_s
      "Nombre: #{@nombr}, Kcal: #{kcalPlato}, Gramos Totales:  #{@grTotal}, Gramos Proteinas: #{@grProteinas}, Gramos Carboidratos: #{@grCarbohidratos}, Gramos Lipidos: #{@grLipidos}"
    end

end
