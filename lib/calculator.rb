class Calculator  # Better practice to have an attr_reader rather than referencing an instance variable

def add(number_1, number_2)
    number_1 + number_2
  end

def add_v2(num_2, num_1)
  answer = num_a + num_b
  Printer.new.pretty_print(answer)
end

def create_printer
  Printer.new
end

def add_v3(a, b)
  answer = a + b
  create_printer.pretty(answer)
end

def add_v4
  answer = a + b
  printer.pretty_print(answer)
end

def initialize(printer = Printer.new)    # def initialize (printer_klass = Printer)
  @printer = printer                     # @printer = printer_klass.new
end                                      # end

def add_v5
  answer = a + b
  printer.pretty_print(answer)
end



def subtract(number_1, number_2)
  number_1 - number_2
end

def subtract_v2(num_1, num_2)
  answer = num_1 - num_2
  Printer.new.pretty_print(answer)  # This is not great.  Calculator is dependent on the Printer class.
end

end
