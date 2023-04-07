require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  # attr_accessor :list

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
    # puts @list
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}