defmodule Demo.EnumTypes do
  def run do
    list = [1, 2, 3, 4, 5]
    tuple = {1, 2, 3, 4, 5}

    map = %{
      name: "Tyler",
      lastname: "Holewinski",
      age: 18
    }

    # "1"
    Enum.at(list, 0) |> IO.puts()
    # "3"
    Enum.at(tuple, 2) |> IO.puts()
    # "18"
    Map.fetch(map, "age") |> IO.puts()
  end
end
