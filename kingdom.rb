class Kingdom
  attr_accessor :a, :b

  def initialize(line)
    @a, @b = line.split(' ').map(&:to_i)
    raise 'Wrong input' if @a.nil? || @b.nil?
  end

  include Comparable

  def <=>(anOther)
    b <=> anOther.b
  end
end
