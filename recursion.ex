defmodule DoTimes do
    def do_times(n) when  n < 1 do
        IO.puts(n)
    end

    def do_times(n) do
       IO.puts(n) 
       do_times(n-1) 
    end
end


# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

# [10, 343445353, 3453445, 3453545353453] should return 3453455.

defmodule SmallSummer do
  def sum_two_smallest_numbers(numbers) when length(numbers) <= 2 do
    Enum.sum(numbers)
  end

  def sum_two_smallest_numbers(numbers) do
      max_num = Enum.max(numbers)
      numbers = numbers -- [max_num]
      sum_two_smallest_numbers(numbers)
  end
end




defmodule Bus do
  def number(stops) do
    stops
    |>Enum.map(&calculate_total/1)
    |>Enum.sum
  end

  def calculate_total(tple) do
      {x,y} = tple
      x - y
  end
end