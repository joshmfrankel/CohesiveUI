# frozen_string_literal: true

module Cohesive
  module Utils

    # Ruby utility for ViewComponents to conditionally join CSS classes together
    # inspired by https://github.com/JedWatson/classnames
    class ClassNames
      def self.call(*args, **keyword_args)
        [].tap do |class_name|
          if args.present?
            args.each do |arg|
              class_name << if arg.is_a?(Hash)
                select_enabled_keyword_arguments(arg)
              else
                arg
              end
            end
          end

          if keyword_args.present?
            class_name << select_enabled_keyword_arguments(keyword_args)
          end
        end.join(" ")
      end

      private

      def self.select_enabled_keyword_arguments(keyword_args)
        keyword_args.select { |key| keyword_args[key] == true }.keys
      end
    end
  end
end
