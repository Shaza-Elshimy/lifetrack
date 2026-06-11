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
require_relative 'event_router'
router = EventRouter.new
p router