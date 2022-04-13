defmodule Demo.Matching do
  def list_demo do

    [a, b, c] = [1, 2, 3]
    # a = 1, b = 2, c = 3
    
    [ head | rest ] = [1, 2, 3, 4, 5]
    # head = 1, rest = [2, 3, 4, 5]
    

    [a, b, c, head, rest ] # supress unused variable warning
  end



  defp perform_action(1), do: {:ok, "data"}
  defp perform_action(2), do: {:error, :not_implemented}
  
  def tuple_demo! do
    {:ok, result1} = perform_action(1) # this will pass and bind "data" to result1
    {:ok, result2} = perform_action(2) # this will panic (MatchError)


    [result1, result2] # supress unused variable warning
  end

  def some_function([1 | rest]) do
    #...
  end





end
