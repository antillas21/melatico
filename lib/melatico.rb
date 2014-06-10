require "melatico/version"

module Melatico
  PICKS = 6
  NUMBERS_RANGE = (1..56)

  def self.draw
    @results = []
    pick_numbers
  end

  private

  def self.pick_numbers
    PICKS.times do
      pick = rand(NUMBERS_RANGE)
      add_to_results(pick)
    end

    @results.sort
  end

  def self.add_to_results(number)
    number = confirm_uniqueness(number)
    @results << number
  end

  def self.confirm_uniqueness(number)
    until is_unique?(number)
      number = rand(NUMBERS_RANGE)
    end

    number
  end

  def self.is_unique?(number)
    not @results.include?(number)
  end
end
