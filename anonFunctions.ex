add_two = fn (x) ->  x + 2 end

# add_two.(2)
# => 4

add_three = fn(x) -> x + 3 end

apply_func = fn(x,func) -> func.(x) end

# higher order functions
apply_func.(5,add_three)
# => 8
apply_func.(5,add_two)
# => 7