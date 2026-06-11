require_relative 'handler'

class FileHandler < Handler
  def handle(event)
    File.open("events.log", "a") do |file|
        file.puts "Event Type: #{event.type}"
        file.puts "Description: #{event.description}"
        file.puts "Duration: #{event.duration} minutes"
        file.puts "Timestamp: #{event.timestamp}"
        file.puts "-----------------------------"
    end
  end
end