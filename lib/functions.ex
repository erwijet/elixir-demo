defmodule Demo.Functions do
  def old_enough(n) when n >= 21 do
    IO.puts("You can drink!")
  end

  def old_enough(n) when is_integer(n) do
    IO.puts("uhmmmm... well you see")
  end

  # equivalent to:

  def old_enough(n) when n >= 21, do: IO.puts("You can drink!")
  def old_enough(n) when is_integer(n), do: IO.puts("uhmmmm... well you see")

  # -------------------------------------------------- #

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n) when n > 1, do: fib(n - 1) + fib(n - 2)

  # -------------------------------------------------- #

  defp reducer(element, ""), do: element
  defp reducer(element, accumulator), do: accumulator <> " " <> element

  def join_demo() do
    Enum.reduce(["something", "wicked", "this", "way", "comes"], "", &reducer/2)
  end

  # equivalent to:

  def join_demo_fancy() do
    ["something", "wicked", "this", "way", "comes"]
    |> Enum.reduce("", fn
      element, "" -> element
      element, acc -> acc <> " " <> element
    end)
  end

  # fancy syntax #

  def format_date_nopipe(%Date{} = date) do
    Enum.join(
      Enum.map(Enum.map([date.year, date.month, date.day], fn x -> to_string(x) end), fn x ->
        String.pad_leading(x, 2, "0")
      end),
      "-"
    )
  end

  def format_date_pipe(%Date{} = date) do
    [date.year, date.month, date.day]
    |> Enum.map(fn x -> to_string(x) end)
    |> Enum.map(fn x -> String.pad_leading(x, 2, "0") end)
    |> Enum.join("-")
  end

  def format_date_pipe_fancy(%Date{} = date) do
    [date.year, date.month, date.day]
    |> Enum.map(&to_string(&1))
    |> Enum.map(&String.pad_leading(&1, 2, "0"))
    |> Enum.join("-")
  end
end
