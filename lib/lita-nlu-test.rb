require "lita"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/nlu_test"

Lita::Handlers::NluTest.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
