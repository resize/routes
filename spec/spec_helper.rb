require './lib/routes'

RSpec.configure do |config|
  $LOAD_PATH << "../lib"

  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  # config.formatter = :documentation # :progress, :html, :textmate
end
