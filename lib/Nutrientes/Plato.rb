require "Nutrientes/version"

class Plato < Lista
    include Comparable

    def to_s
      x = collect{|a| a.nombre + ", "}
      y = x.inject("", :+)
      return y
    end

end
