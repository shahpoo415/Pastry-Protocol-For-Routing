defmodule Routing do
    def prefix_matcher(len,id,list,i,list2) do
        node_slice = String.slice(id,0..len-1)
        node_slice_next = String.slice(id,0..len)
        item = Enum.at(list,i)
        item_slice = String.slice(item,0..len-1)
        item_slice_next = String.slice(item,0..len)
        if(item_slice==node_slice && !(item_slice_next==node_slice_next)) do
            list2 = [item|list2]
        #IO.inspect list2
        end
        if i+1<length list do
            prefix_matcher(len,id,list,i+1,list2)
        else
            list3 = list2 
        end
    end
    def create_routing(node_id) do
        len = String.length node_id
        list = [node_id]
        Enum.each 0..len-1, fn l ->
            neighbors = prefix_matcher(l,node_id,["7212","140455","1034444","1433","14333333"],0,[])
            IO.puts "#{l} length matched with #{inspect neighbors}"
            list = [[list]|[neighbors]]
            
        end
        IO.inspect list
        
    end

end