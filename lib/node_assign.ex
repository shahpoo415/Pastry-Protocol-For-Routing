defmodule Nodes do
    def create_node do
        a = Enum.map(1..100,fn i-> i+1 end)
        list =[]
        for i in 1.. 10 do
            list = [i|list]
        end
    end
end