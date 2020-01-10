require "Nutrientes/version"

class PlatoDSL
  attr_accessor :nombre, :alimentos, :nombrePlato, :gramos, :alimentosPlato

  def initialize(nombre, &block)
      @nombre = nombre
      @alimentos = []
      @alimentosPlato = Lista.new()
      @gramos = Lista.new()

      if block_given?
          if block.arity == 1
              yield self
          else
              instance_eval(&block)
          end
      end
  end

  def to_s
      "#{@nombre} de #{@nombrePlato}, Alimentos: #{@alimentos.join(', ')}, Kcal: #{kcalDSL.round(1)}, Huella Ambiental: #{huellaDSL.round(1)}"
  end

  def nombre_plato(nombre)
      @nombrePlato = nombre
  end

  def alimento(options = {})
      alimento = options[:objetoAlimento]
      nombreAlimento = alimento.nombre
      @alimentosPlato.push_head(alimento)

      gramosAlimento = options[:gramos]
      @gramos.push_head(gramosAlimento)

      alimento = " #{nombreAlimento}"
      alimento << " (#{gramosAlimento} g)"

      @alimentos << alimento
  end

  def kcalDSL
    platoaux = PlatoHuella.new(@nombrePlato, @alimentosPlato)
    platoaux.kcalPlato
  end

  def huellaDSL
    platoaux = PlatoHuella.new(@nombrePlato, @alimentosPlato)
    platoaux.huellaAmbiental
  end
end
