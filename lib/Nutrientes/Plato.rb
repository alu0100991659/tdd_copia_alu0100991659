require "Nutrientes/version"

class Plato < Lista
    include Comparable

    def kcal
        x = collect{|a| a.kcal}
        y = x.inject(0, :+)
        y
    end

    def is_enough(persona)
        x = kcal
        return (persona.g_en_total <= x * 1.1) && (persona.g_en_total >= x * 0.9)
    end

    def to_s
      x = collect{|a| a.nombre + ", "}
      y = x.inject("", :+)
      return y
    end

    def <=>(other)
        kcal <=> other.kcal
    end
end
