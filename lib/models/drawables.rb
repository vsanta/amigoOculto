class Drawables

  def initialize participants
    @drawables = participants.dup
  end

  def valid_names participant
    @drawables.select {|drawable| valid?(participant, drawable)}
  end

  def remove(drawn)
    @drawables.delete drawn
  end

  private

  def valid?(participant, drawn)
    !drawn.nil? && !participant.black_list.include?(drawn.name)
  end
end