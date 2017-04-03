class Node
  attr_accessor :next
  attr_accessor :prev
  attr_accessor :data

  def initialize(data)
    @data = data
     @next = nil
     @prev = nil
  end
end