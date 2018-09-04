require 'Pony'
require_relative '../util/loader'

class Email

  def initialize(to, message)
    @to = to
    @message = message
    @config = Utils.load_email_config

  end

  def send
    Pony.mail(@config.merge({
                                :to => @to,
                                :body => @message,

                            }))
  end
end
