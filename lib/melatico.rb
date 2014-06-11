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
    results = []

    PICKS.times do
      pick = rand(NUMBERS_RANGE)
      add_to_results(pick, results)
    end

    results.sort
  end

  def self.add_to_results(number, collection)
    number = confirm_uniqueness(number, collection)
    collection << number
  end

  def self.confirm_uniqueness(number, collection)
    until is_unique?(number, collection)
      number = rand(NUMBERS_RANGE)
    end

    number
  end

  def self.is_unique?(number, collection)
    not collection.include?(number)
  end
end
