require "melatico/version"

module Melatico
  PICKS = 6
  NUMBERS_RANGE = (1..56)

  def self.draw(sets = 1)
    results = []
    until results.size == sets
      results << NUMBERS_RANGE.to_a.sample(PICKS).sort
      results = results.uniq
    end
    return results.flatten if sets == 1
    results
  end
end
