require_relative './config'

Circuitry.subscribe(async: false) do |message, topic|
  puts "Received change for #{message["database"]}.#{message["table"]} row #{message["primary_key"]}"
  puts "Old data: #{message["old_row_data"]}\nNew Data:#{message["row_data"]}\n\n"
end
