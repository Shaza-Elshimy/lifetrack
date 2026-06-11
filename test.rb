# require_relative 'life_event'
# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# puts event.type
# puts event.description
# puts event.duration
# puts event.timestamp
# ######################################################
#test handler
# require_relative 'handler'
# handler = Handler.new
# handler.handle(nil)
# #####################################################
#test event router
# require_relative 'event_router'
# router = EventRouter.new
# p router
# ###########################################################
# test console handler
# require_relative 'console_handler'
# require_relative 'life_event'
# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# handler = ConsoleHandler.new
# handler.handle(event)
# ##########################################################3
#test event router with console handler
# require_relative 'event_router'
# require_relative 'console_handler'
# require_relative 'life_event'
# router = EventRouter.new
# console_handler = ConsoleHandler.new
# router.register(console_handler)
# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# router.dispatch(event)

# #############################################################
# test file handler
# require_relative 'file_handler'
# require_relative 'life_event'

# event = LifeEvent.new("study","Rudy SOLID" ,"45")
# handler = FileHandler.new
# handler.handle(event)
# ###############################################################
#test router with console +file
# require_relative 'life_event'
# require_relative 'event_router'
# require_relative 'console_handler'
# require_relative 'file_handler'

# router = EventRouter.new

# router.register(ConsoleHandler.new)
# router.register(FileHandler.new)

# event = LifeEvent.new(
#   "study",
#   "Ruby Observer Pattern",
#   45
# )
# router.dispatch(event)

# test html handler
# require_relative 'life_event'
# require_relative 'html_handler'

# event = LifeEvent.new(
#   "exercise",
#   "Gym Workout",
#   60
# )

# handler = HtmlHandler.new

# handler.handle(event)

# test console handler +file handler + html handler

require_relative 'life_event'
require_relative 'event_router'
require_relative 'console_handler'
require_relative 'file_handler'
require_relative 'html_handler'

router = EventRouter.new

router.register(ConsoleHandler.new)
router.register(FileHandler.new)
router.register(HtmlHandler.new)

event = LifeEvent.new(
  "study",
  "Ruby Observer Pattern",
  45
)

router.dispatch(event)