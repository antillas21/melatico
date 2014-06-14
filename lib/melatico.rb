require "melatico/version"

module Melatico
  PICKS = 6
  NUMBERS_RANGE = (1..56)

  def self.draw(sets = 1)
    results = sets.times.map do
      NUMBERS_RANGE.to_a.sample(PICKS).sort
    end
    return results.flatten if sets == 1
    results
  end
end
