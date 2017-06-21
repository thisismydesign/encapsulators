require 'easy_logging'
require 'reflection_utils'

require_relative 'encapsulators/helpers'

module Encapsulators

  def self.exception_handling(callback:, params: nil)
    begin
      ReflectionUtils.call(callback, params)
    rescue Exception => e
      logger.error(Helpers.ruby_style_trace(e))
    end
  end

  def self.user_interaction_before_return(callback:, params: nil)
    ReflectionUtils.call(callback, params)
    logger.info('Press any key to continue')
    gets
  end

  def self.lifecycle_signals(callback:, params: nil)
    logger.debug("Method '#{callback}' started")
    ReflectionUtils.call(callback, params)
    logger.debug("Method '#{callback}' finished")
  end

  module EncapsulatorReferences

    # Upon include this will create class level methods as well
    def self.included(base)
      base.extend(self)
    end

    (Encapsulators.methods - Object.methods).each do |encapsulator|
      define_method(encapsulator) do
        Encapsulators.method(encapsulator)
      end

      define_singleton_method(encapsulator) do
        Encapsulators.method(encapsulator)
      end
    end

  end

  include EasyLogging

end
