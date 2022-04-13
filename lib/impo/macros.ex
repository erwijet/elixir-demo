defmodule Demo.Impo.MyImports do
  defmacro __using__([]) do
    quote do
      def my_fun do
        IO.puts("WHOA!!")
      end
    end
  end
end

