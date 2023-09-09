# frozen_string_literal: true

require "pry"

module Cohesive
  class Engine < ::Rails::Engine
    isolate_namespace Cohesive

    # config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.autoload_once_paths = %W[
      #{config.root}/app/components
      #{config.root}/lib/**/
    ]
  end
end
