require 'spec_helper'

describe Melatico do
  describe '.draw' do
    let(:drawing) { Melatico.draw }

    it 'returns an Array with results' do
      expect(drawing).to be_a(Array)
    end

    it 'results in the returned array are integers' do
      drawing.each do |num|
        expect(num).to be_a(Integer)
      end
    end

    it 'returned array has 6 elements' do
      expect(drawing.size).to eq(6)
    end

    it 'each integer in the array is any number from 1 to 56' do
      1_000.times do
        drawing = Melatico.draw

        drawing.each do |num|
          expect(num).to be <= 56
        end
      end
    end

    it 'cannot have duplicate numbers in the array' do
      1_000.times do
        drawing = Melatico.draw

        drawing.each_with_index do |item, idx|
          next_item = drawing[idx + 1]
          prev_item = drawing[idx - 1]

          expect(item).to_not eq(next_item)
          expect(item).to_not eq(prev_item)
        end
      end
    end

    context 'number of drawings' do
      let(:drawing) { Melatico.draw(3) }

      it 'returns a 2D array' do
        expect(drawing).to be_a(Array)
      end

      it 'size depends on number passed as argument' do
        expect(drawing.size).to eq(3)
      end

      it 'contents are arrays' do
        drawing.each do |draw|
          expect(draw).to be_a(Array)
        end
      end
    end
  end
end
