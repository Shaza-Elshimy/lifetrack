require_relative 'handler'
class ConsoleHandler < Handler
    def handle(event)
        puts "Event Type: #{event.type}"
        puts "Description: #{event.description}"
        puts "Duration: #{event.duration} minutes"
        puts "Timestamp: #{event.timestamp}"
    end
end