defmodule MyList do
  @doc """

    # example:

    iex[1]> MyList.len([])
    0
    iex[2]> MyList.len(["cat", "dog"])
    2
    iex[3]> MyList.len([11, 12, 13, 14, 15])
    5
    MyList.len([11, 12, 13, 14, 15])
    = 1 + MyList.len([12, 13, 14, 15])
    = 1 + 1 + MyList.len([13, 14, 15])
    = 1 + 1 + 1 + MyList.len([14, 15])
    = 1 + 1 + 1 + 1 + MyList.len([15])
    = 1 + 1 + 1 + 1 + 1 + MyList.len([])
    = 1 + 1 + 1 + 1 + 1 + 0
    = 5
  """
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  @doc """

    # example:

    iex[1]> MyList.square([])
    []
    iex[2]> MyList.square([4,5,6])
    [16, 25, 36]
  """
  def square([]), do: []
  def square([head | tail]), do: [ head*head | square(tail) ]

  @doc """

    # example:

    iex[1]> MyList.add_1([])
    []
    iex[2]> MyList.add_1([1000])
    [1001]
    iex[3]> MyList.add_1([4, 6, 8])
    [5, 7, 9]
  """
  def add_1([]), do: []
  def add_1([head | tail]), do: [head+1 | add_1(tail)]

  @doc """

    # example:

    iex[1]> MyList.map([], fn (n) -> n*n end)
    []
    iex[2]> MyList.map([1,2,3,4], fn (n) -> n*n end)
    [1, 4, 9, 16]

    iex[3]> MyList.map([1,2,3,4], fn (n) -> n + 1 end)
    [2, 3, 4, 5]
    iex[4]> MyList.map([1,2,3,4], &(&1 + 1))
    [2, 3, 4, 5]

    iex[5]> MyList.map([1,2,3,4], fn (n) -> n > 2 end)
    [false, false, true, true]
    iex[6]> MyList.map([1,2,3,4], &(&1 > 2))
    [false, false, true, true]
  """
  def map([], _fun), do: []
  def map([head | tail], fun), do: [fun.(head) | map(tail, fun)]

  def reduce([], accumulator, _) do
    accumulator
  end
  def reduce([head | tail], accumulator, fun) do
    reduce(tail, fun.(head, accumulator), fun)
  end
end
