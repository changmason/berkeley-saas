# saas-class hw2 - part 1


# (a)
class Numeric
  @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    self.dollar / 1.send(currency)
  end
end

# (b)
class String
  def palindrome?
    str = self.gsub(/\W+/, "").downcase
    str == str.reverse
  end
end

# (c)
module Enumerable
  def palindrome?
    ary = self.to_a
    return ary == ary.reverse
  end
end
