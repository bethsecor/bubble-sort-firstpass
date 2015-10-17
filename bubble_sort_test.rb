gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_bubblesort_sort_returns_array
    sorter = SortingSuite::BubbleSort.new
    numbers = []
    assert_equal Array, sorter.sort(numbers).class
    assert sorter.sort(numbers).is_a?(Array)
    assert sorter.sort(numbers).kind_of?(Array)
  end

  def test_bubblesort_sorts_array_length_one
    sorter = SortingSuite::BubbleSort.new
    numbers = [1]
    assert_equal [1], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_length_two
    sorter = SortingSuite::BubbleSort.new
    numbers = [2, 1]
    assert_equal [1, 2], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_presorted_array_numbers
    sorter = SortingSuite::BubbleSort.new
    numbers = [0, 1, 2, 3, 4, 5]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_shuffled_numbers
    sorter = SortingSuite::BubbleSort.new
    numbers = [1, 3, 4, 5, 2, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_reversed_numbers
    sorter = SortingSuite::BubbleSort.new
    numbers = [5, 4, 3, 2, 1, 0]
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort(numbers)
  end

  def test_bubblesort_sorts_array_shuffled_letters
    sorter = SortingSuite::BubbleSort.new
    letters = ["g", "s", "r", "a", "w", "c"]
    assert_equal ["a", "c", "g", "r", "s", "w"], sorter.sort(letters)
  end
end
