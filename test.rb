# require_relative 'life_event'
# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# puts event.type
# puts event.description
# puts event.duration
# puts event.timestamp

#test handler
# require_relative 'handler'
# handler = Handler.new
# handler.handle(nil)

#test event router
# require_relative 'event_router'
# router = EventRouter.new
# p router

# test console handler
# require_relative 'console_handler'
# require_relative 'life_event'
# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# handler = ConsoleHandler.new
# handler.handle(event)

#test event router with console handler
# require_relative 'event_router'
# require_relative 'console_handler'
# require_relative 'life_event'
# router = EventRouter.new
# console_handler = ConsoleHandler.new
# router.register(console_handler)
# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# router.dispatch(event)


# test file handler
require_relative 'file_handler'
require_relative 'life_event'

event = LifeEvent.new("study","Rudy SOLID" ,"45")
handler = FileHandler.new
handler.handle(event)