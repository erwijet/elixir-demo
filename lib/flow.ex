defmodule Demo.Flow do
  def if_unless_demo do
    tyler = %{:firstname => "Tyler", :lastname => "Holewinski", :age => 18}

    if tyler[:unknown_key] != nil do
      IO.puts("well this is impossible 🤔")
    else 
      IO.puts("this is more like it 😀")
    end

    unless tyler[:unknown_key] != nil, do: IO.puts("this is more like it 😀")
  end


  def case_example do
    case {1, 2, 3} do
      {1, x, 3} when x > 0 ->
        :will_match # x bound to 2
      _ ->
        :would_have_matched
    end
  end


  #def with_example do
    #case File.read(path) do
      #{:ok, data} ->
        #case process(data) do
          #{:ok, result} ->
            #{:ok, wrap(result)}
          #error ->
            #error
        #end
      #error ->
        #error
    #end

    ## or: 

    #with {:ok, data} <- File.read(path),
         #{:ok, result} <- process(data),
         #do: {:ok, wrap(result)}
  #end
end
