defmodule PF.PrimeFactors do
  def prime_factors(num, c \\ 2) do
    cond do
      num == 1 -> []
      num > c ->
        if (rem(num, c) == 0) do
          [c] ++ prime_factors(div(num, c), c)
        else
          prime_factors(num, c + 1)
        end
      true -> [num]
    end
  end
end
