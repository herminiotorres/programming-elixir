defmodule WeatherHistory do
  @doc """
    ## Example:

    iex[1]> import WeatherHistory
    WeatherHistory
    iex[2]> for_location_27(test_data)
    [
      [1366225622, 27, 15, 0.45],
      [1366229222, 27, 17, 0.468],
      [1366232822, 27, 21, 0.05],
      [1366236422, 27, 15, 0.45]
    ]

  """

  def for_location_27([]), do: []
  def for_location_27([[time, 27, temp, rain] | tail]) do
    [[time, 27, temp, rain] | for_location_27(tail)]
  end
  def for_location_27([_ | tail]), do: for_location_27(tail)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366229222, 26, 19, 0.081],
      [1366229222, 27, 17, 0.468],
      [1366229222, 28, 15, 0.60],
      [1366232822, 26, 22, 0.095],
      [1366232822, 27, 21, 0.05],
      [1366232822, 28, 24, 0.03],
      [1366236422, 26, 17, 0.025],
      [1366236422, 27, 15, 0.45],
      [1366236422, 28, 21, 0.25]
    ]
  end
end
