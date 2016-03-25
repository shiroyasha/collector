defmodule Listener.Server do
  use GenServer

  @initial_state %{socket: nil}
  @port 30000

  def start_link do
    GenServer.start_link(__MODULE__, @initial_state)
  end

  def init(state) do
    opts = [:binary, active: false, reuseaddr: true]

    {:ok, socket} = :gen_tcp.connect('localhost', @port, opts)
    {:ok, %{state | socket: socket}}
  end

end
