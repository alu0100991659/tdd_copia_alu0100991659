require "Nutrientes/version"

class Plato < Lista
    include Comparable

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

    def to_s
      x = collect{|a| a.nombre + ", "}
      y = x.inject("", :+)
      return y
    end

end
