module SortingSuite
  # Bubble sort class uses the classic bubble sort algorithm to sort an array
  class BubbleSort
    def sort(array)
      loop do
        swaps = []
        for i in 1..array.length - 1
          current = array[i]
          previous = array[i - 1]
          if current < previous
            array[i] = previous
            array[i - 1] = current
            swaps << true
          else
            swaps << false
          end
        end
        break if !(swaps.include?(true))
      end
      array
    end
  end
end
