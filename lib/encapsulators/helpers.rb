module Encapsulators
  class Helpers
    def self.ruby_style_trace(exception)
      exception.backtrace.join("\n\t").sub("\n\t", ": #{exception}#{exception.class ? " (#{exception.class})" : ''}\n\t")
    end
  end
end
