require 'rails'

module Postit
  class Engine < Rails::Engine
    isolate_namespace Postit
  end
end
