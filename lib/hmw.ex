defmodule Example do
  def run do
    IO.puts("Hello RIT")
    :timer.sleep(5000)
    run()
  end
end
