require_relative './models/participant'
require_relative './models/drawables'
require_relative './models/result'

class Draw
  attr_reader :participants

  def initialize participants
    @participants = participants
  end

  def start
    result = []

    while result.length < participants.length
      result = draw_names
    end

    result
  end

  private

  def draw_names
    result = []

    names_to_draw = Drawables.new(participants)

    participants.each do |participant|
      valid_names = names_to_draw.valid_names(participant)
      drawn = valid_names.sample
      unless drawn.nil?
        names_to_draw.remove(drawn)
        result.push(Result.new(participant, drawn))
      end
    end
    result
  end

end