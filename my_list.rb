require_relative 'enumerables'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each { |item| block.call(item) }
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
p(list.filter(&:even?))
