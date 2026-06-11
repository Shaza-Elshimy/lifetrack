require_relative 'handler'

class HtmlHandler < Handler
  def handle(event)
    File.open("dashboard.html", "w") do |file|
      file.puts "<html>"
      file.puts "<body>"
      file.puts "<h1>LifeTrack Dashboard</h1>"

      file.puts "<h3>Latest Event</h3>"

      file.puts "<p>Type: #{event.type}</p>"
      file.puts "<p>Description: #{event.description}</p>"
      file.puts "<p>Duration: #{event.duration}</p>"
      file.puts "<p>Timestamp: #{event.timestamp}</p>"

      file.puts "</body>"
      file.puts "</html>"
    end
  end
end