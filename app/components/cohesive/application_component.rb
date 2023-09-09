# frozen_string_literal: true

module Cohesive
  class ApplicationComponent < ViewComponent::Base
    def initialize(*args, **keyword_args)
      @classes = class_names(keyword_args.delete(:classes))

      post_initialize(*args, **keyword_args)
    end

    private

    # Ruby utility for ViewComponents to conditionally join CSS classes together
    # inspired by https://github.com/JedWatson/classnames
    def format_as_class_names(classes)
      [].tap do |class_names|
        if classes.is_a?(Array)
          classes.each do |class_name|
            class_names << format_as_class_names(class_name)
          end
        elsif classes.is_a?(Hash)
          class_names << classes.select { |key| classes[key] == true }.keys
        else
          class_names << classes
        end
      end.join(" ")
    end

    def post_initialize(*args, **keyword_args)
    end
  end
end
