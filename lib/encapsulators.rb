require 'easy_logging'
require 'reflection_utils'

require_relative 'encapsulators/helpers'

module Encapsulators
  include EasyLogging

  attr_reader :exception_handling, :user_interaction_before_return, :lifecycle_signals

  def self.exception_handling(callback:, params: nil)
    begin
      ReflectionUtils.call(callback, params)
    rescue Exception => e
      logger.error(Helpers.ruby_style_trace(e))
    end
  end
  @exception_handling = self.method(:exception_handling)

  def self.user_interaction_before_return(callback:, params: nil)
    ReflectionUtils.call(callback, params)
    logger.info('Press any key to continue')
    gets
  end
  @user_interaction_before_return = self.method(:user_interaction_before_return)

  def self.lifecycle_signals(callback:, params: nil)
    logger.debug("Method '#{callback}' started")
    ReflectionUtils.call(callback, params)
    logger.debug("Method '#{callback}' finished")
  end
  @lifecycle_signals = self.method(:lifecycle_signals)

end
