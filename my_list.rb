require_relative 'enumerables'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each { |item| yield item }
  end
end
