require "Nutrientes/version"

 Node = Struct.new(:value, :next, :prev)

  class Lista

    include Comparable
    attr_reader :head, :tail

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

    def to_s
        s = ""
        each {|i| s += "#{i.to_s}\n"}
        s
    end
  end
