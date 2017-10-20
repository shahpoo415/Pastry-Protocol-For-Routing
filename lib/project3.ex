defmodule Project3 do
  @moduledoc """
  Documentation for Project3.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Project3.hello
      :world

  """
  def hello do
    Manager.start_link
    {:ok, pid1} = Tracker.start_link
    Enum.each 1..10, fn x ->
      Manager.start_node(pid1,x)
    end
    Tracker.get_list(pid1)
    
  end

end

