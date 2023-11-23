# Example #1
# module Functionality
#   def hello
#     "Hello method of #{self.class}"
#   end
# end


# class MyClass
#   include Functionality
#   # some logic...
# end


# cls = MyClass.new
# puts cls.hello


# Example #2
module Functionality
  def hello
    "Some method of #{self.class}"
  end
end

class MyClass
  extend Functionality
  # some logic...
end

puts MyClass.hello