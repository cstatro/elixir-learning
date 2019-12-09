import Integer

example = [1,2,3,4,5]

for x <- example, do: x+2
# [3, 4, 5, 6, 7]

for x <- example, is_even(x), do: x+2
#[4, 6]