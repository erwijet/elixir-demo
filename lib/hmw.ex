defmodule Example do
  def run do
    IO.puts("Hello World")
    :timer.sleep(5000)
    run()
  end
end
