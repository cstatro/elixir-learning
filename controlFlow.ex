# returns true if value is a string
defmodule Validator  do   
    def is_string(str) do
       cond do
        String.valid?(str)  ->
            true
        true -> 
            false        
       end 
    end
end

# can use patern matching for  case statements
defmodule Jeb do
    def do_it(str) do
        case str do
            "jeb" ->
                "Jeb!"
           _ ->
                "might as well not vote..."
                
        end   
    end
end

