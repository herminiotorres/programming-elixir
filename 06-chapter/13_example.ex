defmodule Example do
  # import Module [, only:|except: ]
  # import​ List, ​only:​ [ ​flatten:​ 1, ​duplicate:​ 2 ]

  def func1 do
    List.flatten([1, [2, 3], [[4]]])
  end

  def func2 do
    import List, only: [flatten: 1]
    flatten([5, [6, 7], [[8]]])
  end
end

Example.func1() |> IO.inspect()
IO.puts("")
Example.func2() |> IO.inspect()
