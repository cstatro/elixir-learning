int_list = [1,2,3,4]
mixed_types = [1,2,"x"]

Enum.all?(int_list, fn(x) -> is_integer(x) end )
# => true

Enum.all?(mixed_types, fn(x) -> is_integer(x) end )
# => false


# there is no is_string so is_binary is used to check for strings
Enum.any?(mixed_types, fn(x) -> is_binary(x) end)
# => true


Enum.each(int_list, fn(x) -> IO.puts(x+1) end)
# prints out each int in the list with 1 added to the number

Enum.map(int_list, fn(x) -> x+1 end)
# [2, 3, 4, 5]

more_ints = [1,1,2,2,3,3,3]

Enum.uniq(more_ints)
# [1, 2, 3]