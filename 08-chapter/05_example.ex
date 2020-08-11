defmodule HotelRoom do
  @doc """

    ## Example:

    iex[1]> import HotelRoom
    HotelRoom
    
    iex[2]> people |> Enum.each(&book/1)
    Need low shower controls for Grumpy
    Need regular bed for Dave
    Need regular bed for Dopey
    Need extra-long bed for Shaquille
    Need low shower controls for Sneezy
    :ok
  """
  def book(%{name: name, height: height}) when height > 1.9 do
    IO.puts("Need extra-long bed for #{name}")
  end

  def book(%{name: name, height: height}) when height < 1.3 do
    IO.puts("Need low shower controls for #{name}")
  end

  def book(person) do
    IO.puts("Need regular bed for #{person.name}")
  end

  def people do
    [
      %{name: "Grumpy", height: 1.24},
      %{name: "Dave", height: 1.88},
      %{name: "Dopey", height: 1.32},
      %{name: "Shaquille", height: 2.16},
      %{name: "Sneezy", height: 1.28}
    ]
  end
end
