require "melatico/version"

module Melatico
  PICKS = 6
  NUMBERS_RANGE = (1..56)

  def self.draw(sets = 1)
    return pick_numbers if sets == 1
    sets.times.map { pick_numbers }
  end

  private

  def self.pick_numbers
    NUMBERS_RANGE.to_a.sample(PICKS).sort
  end
end
