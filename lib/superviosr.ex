defmodule Manager do
    use Supervisor
    def start_link do
         Supervisor.start_link(__MODULE__, [], name: :me_supervisor)
      end
      def start_node(pid1,x) do
        IO.puts("hiiii")
        Supervisor.start_child(:me_supervisor, [pid1,x])
        
      end
      def init(_) do
        children = [
          worker(Children, [])
        ]
        
        supervise(children, strategy: :simple_one_for_one)
      end
  end
