defmodule Lasagna do
  
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven do
    40
  end
  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(real_minutes) do
    time = Lasagna.expected_minutes_in_oven - real_minutes
    time
  end
  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layer) do
    layers = layer * 2
    layers
  end
  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layer, real_minutes) do
    layers = preparation_time_in_minutes(layer)
    total_time = layers + real_minutes
    total_time
  end
  # Please define the 'alarm/0' function
  def alarm do
    "Ding!"
  end
end