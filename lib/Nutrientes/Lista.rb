require "Nutrientes/version"

 Node = Struct.new(:value, :next, :prev)

  # Clase para trabajar con listas
  class Lista

    include Enumerable

    attr_reader :head, :tail

    # Metodo para insertar un elemento por el head
    def push_head(value)
      if(@head == nil)
        node=Node.new(value,nil,nil)
        @head = node
        @tail = node

      else
        node=Node.new(value,@head,nil)
        @head.prev = node
        @head = node

      end
    end

    # Metodo para insertar un elemento por el tail
    def push_tail(value)
      if(@tail == nil)
        node=Node.new(value,nil,nil)
        @head = node
        @tail = node
      else
        node=Node.new(value,nil,@tail)
        @tail.next = node
        @tail = node
      end
    end

    # Metodo para extraer un elemento por el head
    def pop_head()
      if(@head == nil)
        return nil
      else
        val= @head
        node = @head.next
        @head = node
        if @head != nil
          @head.prev = nil
        end
        return val
      end
    end

    # Metodo para extraer un elemento por el tail
    def pop_tail()
      if(@tail == nil)
        return nil
      else
        val = @tail
        node = @tail.prev
        @tail = node
        if @tail != nil
          @tail.next = nil
        end
        return val
      end
    end

    # Etiqueta formateada
    def to_s
        s = ""
        each {|i| s += "#{i.to_s}\n"}
        s
    end

    # Metodo each
    def each
      x = @head
      while(x != nil)
        yield x.value
        x = x.next
      end
    end
  end
