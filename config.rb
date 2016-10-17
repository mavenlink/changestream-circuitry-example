require 'circuitry'
require 'dotenv'

Dotenv.load

Circuitry.subscriber_config do |c|
  c.access_key = ENV.fetch('AWS_ACCESS_KEY')
  c.secret_key = ENV.fetch('AWS_SECRET_KEY')
  c.region     = ENV.fetch('AWS_REGION')

  c.async_strategy = :thread

  c.on_async_exit = proc do
    puts "Subscriber done."
  end

  # TODO: rename the queue to something more meaningful for your project
  c.queue_name = 'changestream-example'

  # TODO: replace this with the name of the topic that you configured ChangeStream to publish to
  c.topic_names = %W[
    firehose
  ]
end
