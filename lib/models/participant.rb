class Participant
  attr_accessor :name, :email, :black_list

  def initialize(name, email, black_list)
    @name = name
    @email = email
    @black_list = black_list
  end

end
