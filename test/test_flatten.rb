# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/spec'
require 'flatten'

describe Flatten do
  let(:flatten) { Flatten.new }

  describe 'processes valid array' do
    let(:result) { flatten.process(array) }

    describe 'flat array' do
      let(:array) { [1, 2, 3] }

      it 'returns the original array' do
        assert_equal array, result
      end
    end

    describe 'flat bidimensional array' do
      let(:array) { [1, [2, 3, 4], [3], [4, 5]] }

      it 'returns the right array' do
        assert_equal [1, 2, 3, 4, 3, 4, 5], result
      end
    end

    describe 'flat multidimensional array' do
      let(:array) do
        [1, 2, [3], [[5], [5], [[7]]], [[[[[3, [4], [[[[[[[[6, [[[[9]]]]]]]]]]]]]]]]]]
      end

      it 'returns the right array' do
        assert_equal [1, 2, 3, 5, 5, 7, 3, 4, 6, 9], result
      end
    end
  end

  describe 'processes invalid array' do
    it 'returns error message' do
      result = flatten.process('WRONG_PARAM_TYPE')
      assert_equal 'Wrong param type, an Array required', result
    end
  end
end
