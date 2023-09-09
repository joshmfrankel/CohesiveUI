# frozen_string_literal: true

module Cohesive
  class ApplicationComponent < ViewComponent::Base
    def initialize(*args, **keyword_args)
      @classes = class_names(keyword_args.delete(:classes))

      post_initialize(*args, **keyword_args)
    end

    private

    def post_initialize(*args, **keyword_args)
    end
  end
end
