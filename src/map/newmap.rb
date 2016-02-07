#problem with ruby, no overloading constructors can be used, can be bypassed
#by using a case statement, which of course isn't something that is necessarily
#Ruby like



class EmptyRoom
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

class Room
  attr_reader :value
  attr_accessor :n, :w, :e, :s, :nw, :ne, :sw, :se

  def initialize string_args, value
    case string_args
    when 'n'
      self.north value
    when 's'
      self.south value
    when 'w'
      self.west value
    when 'e'
      self.east value
    when 'ne'
      self.neast value
    when 'nw'
      self.nwest value
    when 'sw'
      self.swest value
    when 'se'
      self.seast value
    end
  end

  def north v
    @n = EmptyRoom.new
    @value = v
  end

  def south v
    @s = EmptyRoom.new
    @value = v
  end

  def east v
    @e = EmptyRoom.new
    @value = v
  end

  def west v
    @w = EmptyRoom.new
    @value = v
  end

  def northwest v
    @nw = EmptyRoom.new
    @value = v
  end

  def northeast v
    @ne = EmptyRoom.new
    @value = v
  end

  def southwest v
    @sw = EmptyRoom.new
    @value = v
  end

  def southeast v
    @se = EmptyRoom.new
    @value = v
  end


  
end
