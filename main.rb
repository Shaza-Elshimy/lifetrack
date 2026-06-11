require_relative 'life_event'
require_relative 'event_router'
require_relative 'console_handler'
require_relative 'file_handler'
require_relative 'html_handler'

router = EventRouter.new

router.register(ConsoleHandler.new)
router.register(FileHandler.new)
router.register(HtmlHandler.new)

loop do
  puts
  puts "=== LifeTrack ==="
  puts "1. Log a work session"
  puts "2. Log a study session"
  puts "3. Log an exercise session"
  puts "4. Log a meal"
  puts "5. Exit"

  print "Choose an option: "
  choice = gets.chomp

  break if choice == "5"

  type =
    case choice
    when "1"
      "work"
    when "2"
      "study"
    when "3"
      "exercise"
    when "4"
      "meal"
    else
      puts "Invalid option"
      next
    end

  print "Description: "
  description = gets.chomp

  print "Duration (minutes): "
  duration = gets.to_i

  event = LifeEvent.new(type, description, duration)

  router.dispatch(event)

  puts "✓ Event logged."
end

puts
puts "Goodbye!"