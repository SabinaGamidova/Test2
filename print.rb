require 'thread'

class Printer
  attr_reader :thread_number, :index 

  def initialize(thread_number, index)
    @index = index
    @thread_number = thread_number
    @mutex = Mutex.new
  end

  def run
    while index <= 10
      mutex.synchronize do
        puts "Thread #{thread_number}: #{index}"
        @index += 1
      end
    end
    puts "\n"
  end

  private

  attr_reader :mutex
end