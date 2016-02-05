class EmptyNode
  def to_a
    []
  end

  def include?(*)
    false
  end

  def push(*)
    false
  end
  alias_method :<<, :push

  def inspect
    "{}"
  end
end

class Node
  attr_reader :value
  attr_accessor :n, :w, :e, :s, :nw, :ne, :sw, :se

  def initialize v
    @value = v
    @n = EmptyNode.new
    @s = EmptyNode.new
    @w = EmptyNode.new
    @e = EmptyNode.new
    @nw = EmptyNode.new
    @ne = EmptyNode.new
    @sw = EmptyNode.new
    @se = EmptyNode.new
  end

  
end
