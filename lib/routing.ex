defmodule Routing do
    def prefix_matcher(len,id,list,i,list2) do
        node_slice = String.slice(id,0..len-1)
        item = Enum.at(list,i)
        item_slice = String.slice(item,0..len-1)
        if(item_slice==node_slice) do
            list2 = [item|list2]
        #IO.inspect list2
        end
        if i+1<length list do
        prefix_matcher(len,id,list,i+1,list2)
        
        else
            list3 = list2 
        end
    end

end