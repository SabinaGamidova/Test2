require_relative 'print'

index = 1
first_printer = Printer.new(1, index)
second_printer = Printer.new(2, index)

#First variant
#threads = [Thread.new { first_printer.run }, Thread.new { second_printer.run }]

#Second variant
threads = [
  Thread.new(&first_printer.method(:run)),
  Thread.new(&second_printer.method(:run)),
]

threads.each(&:join)