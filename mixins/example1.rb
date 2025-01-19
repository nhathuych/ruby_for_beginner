# Dùng ActiveSupport::Concern
# -> Hỗ trợ việc mở rộng class một cách an toàn và dễ đọc.
# -> Tự động xử lý các dependency nếu module cần phụ thuộc vào các module khác.

module MyMixin
  extend ActiveSupport::Concern

  # Instance methods
  def instance_method_ne
    puts "This is an instance method"
  end

  # Class methods
  class_methods do
    def class_method_ne
      puts "This is a class method"
    end
  end
end

# Sử dụng mixin trong một class
class MyClass
  include MyMixin
end

# Kiểm tra kết quả
obj = MyClass.new
obj.instance_method_ne    # => "This is an instance method"

MyClass.class_method_ne   # => "This is a class method"
