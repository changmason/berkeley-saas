# saas-class hw2 - part 2


class CartesianProduct
  include Enumerable

  def initialize(ary1, ary2)
    @array1 = ary1
    @array2 = ary2
  end

  def each
    @array1.each do |ele1|
      @array2.each do |ele2|
        yield([ele1, ele2])
      end
    end
  end
end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty)