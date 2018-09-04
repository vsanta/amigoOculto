require_relative '../util/email'

class Result
  attr_accessor :participant, :drawn

  def initialize(participant, drawn)
    @participant = participant
    @drawn = drawn
  end

  def description
    "#{participant.name}, you are #{drawn.name}'s secret santa!"
  end

  def email_results
    Email.new(participant.email, description).send
  end
end
