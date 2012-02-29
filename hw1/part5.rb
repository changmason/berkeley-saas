# saas-class hw1 - part 5

class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_name_history = attr_name + "_history"
    
    attr_reader attr_name
    
    class_eval %Q{
      def #{attr_name}=(value)
        @#{attr_name_history} ||= []
        @#{attr_name_history} << @#{attr_name}
        @#{attr_name} = value
      end
      
      def #{attr_name_history}
        @#{attr_name_history}.to_a + [@#{attr_name}]
      end
    }
  end
end
