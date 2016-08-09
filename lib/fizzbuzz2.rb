class Integer
  def fizzbuzz
    fizz = self % 3 == 0
    buzz = self % 5 == 0
    if self == 0
      return self
    end
    fizz && buzz ? "fizzbuzz" : fizz ? "fizz" : buzz ? "buzz" : self
  end
end
