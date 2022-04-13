defmodule Stack do
  use GenServer

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, head}, tail) do
    {:noreply, [head | tail]}
  end
end


defmodule Demo.Proc do
  def run do
    children = [
      %{
        id: Stack,
        start: {Stack, :start_link, [[:hello]]}
      }
    ]

    {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)
    pid
  end
end

