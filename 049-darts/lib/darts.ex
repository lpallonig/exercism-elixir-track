defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = x * x + y * y
    calculate_radius = fn n -> Integer.pow(n, 2) end
    cond do
      distance <= calculate_radius.(1) -> 10
      distance <= calculate_radius.(5) -> 5
      distance <= calculate_radius.(10) -> 1
      true -> 0
    end
  end
end
