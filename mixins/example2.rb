module MyMixin
  def instance_method_ne
    puts "This is an instance method"
  end

  # Dùng `included` để định nghĩa class methods
  def self.included(base)
    base.extend(ClassMethods)
  end

  # Module chứa class methods
  module ClassMethods
    def class_method_ne
      puts "This is a class method"
    end
  end
end

# Sử dụng mixin trong một class
class MyClass
  include MyMixin
end

# Kiểm tra
obj = MyClass.new
obj.instance_method_ne    # => "This is an instance method"

MyClass.class_method_ne   # => "This is a class method"
