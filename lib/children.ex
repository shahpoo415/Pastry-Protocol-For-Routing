defmodule Children do
    use GenServer
    def start_link(pid1,x) do
        {:ok, item} = GenServer.start_link(__MODULE__, {pid1,x}, name: x)
        IO.puts("hi")
        GenServer.cast(item,{:add_pid,item})
    end
end
