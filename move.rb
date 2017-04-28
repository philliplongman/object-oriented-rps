class Move

  attr_reader :name

  def initialize(name:, beats:)
    @name = name.to_sym
    @beats = beats.to_sym
  end

  def to_s
    name.to_s
  end

  def beats?(move)
    move.name == beats
  end

  private

  attr_reader :beats

end
