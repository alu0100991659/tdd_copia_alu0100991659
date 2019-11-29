require "Nutrientes/version"

class Plato < Lista
    attr_reader :nombre
    def initialize(nombre)
      @nombre = nombre
    end

    def p_proteinas
        x = collect{|a| 100.0*a.nPorciones}
        y = collect{|a| a.proteinas}
        gramosTotales = x.inject(0.0, :+)
        gramosProteinas = y.inject(0.0, :+)
        return ((gramosProteinas*100)/gramosTotales).round(3)
    end

    def p_lipidos
        x = collect{|a| 100.0*a.nPorciones}
        y = collect{|a| a.lipidos}
        gramosTotales = x.inject(0.0, :+)
        gramosProteinas = y.inject(0.0, :+)
        return ((gramosProteinas*100)/gramosTotales).round(3)
    end

    def p_carbs
        x = collect{|a| 100.0*a.nPorciones}
        y = collect{|a| a.carbohidratos}
        gramosTotales = x.inject(0.0, :+)
        gramosProteinas = y.inject(0.0, :+)
        return ((gramosProteinas*100)/gramosTotales).round(3)
    end

    def kcal
        x = collect{|a| a.kcal}
        y = x.inject(0, :+)
        y.round(3)
    end

end
