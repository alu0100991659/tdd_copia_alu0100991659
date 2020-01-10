require "Nutrientes/version"

class MenuDSL
  include Enumerable

  attr_reader :nombreMenu, :descripcionMenu, :componentes, :precios, :energias, :emisiones

  def initialize(nombre, &block)
      @nombreMenu = nombre
      @alimentos = []
      @componentes = []
      @precios = []
      @kcal =[]
      @huella = []

      if block_given?
          if block.arity == 1
              yield self
          else
              instance_eval(&block)
          end
      end
  end

  def to_s
      "#{@nombreMenu} de #{@descripcionMenu}, Platos: #{@componentes.join(', ')}, Precio: #{@precios.reduce(:+)}, Kcal: #{@kcal.reduce(:+).round(1)}, Huella Ambiental: #{@huella.reduce(:+).round(1)}"
  end

  def descripcion(descripcion)
    @descripcionMenu = descripcion
  end

  def componente(options = {})
    componente = options[:plato]
    @huella << componente.huellaDSL
    @kcal << componente.kcalDSL

    nombreDesc = componente.nombre
    nombrePlato = componente.nombrePlato
    precioPlato = options[:precio]
    @precios << precioPlato

    componenteFinal = " #{nombreDesc}:"
    componenteFinal << " #{nombrePlato}"
    componenteFinal << " (#{precioPlato})"

    @componentes << componenteFinal
  end

end
