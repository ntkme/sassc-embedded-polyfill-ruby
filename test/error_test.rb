# frozen_string_literal: true

require_relative 'test_helper'

module SassC
  class ErrorTest < Minitest::Test
    def render(data, opts = {})
      Engine.new(data, opts).render
    end

    def test_first_backtrace_is_sass
      filename = 'app/assets/stylesheets/application.scss'

      begin
        template = <<~SCSS
          .foo {
            baz: bang;
            padding top: 10px;
          }
        SCSS

        render(template, filename:)
      rescue SassC::SyntaxError => e
        expected = "#{filename}:3"

        assert_equal expected, e.backtrace.first
      end
    end
  end
end
