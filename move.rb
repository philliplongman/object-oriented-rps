class Move

  attr_reader :name, :shortcut

  def initialize(name:, beats:, shortcut: nil)
    @name = name.to_sym
    @beats = beats.to_sym
    @shortcut = shortcut
  end

  def to_s
    name.to_s.capitalize
  end

  def beats?(move)
    move.name == beats
  end

  private

  attr_reader :beats

end
