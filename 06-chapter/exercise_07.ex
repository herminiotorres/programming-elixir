defmodule Tools do
  # http://erlang.org/doc/man/io_lib.html#format-2
  def parse_float_to_string(digits) when is_float(digits) do
    :io_lib.format("~.2f", [digits]) |> IO.puts()
  end

  # https://hexdocs.pm/elixir/System.html#get_env/0
  # System.get_env()
  # System.get_env("HOME")
  def get_env(env) when is_binary(env) do
    System.get_env(env)
  end

  def get_envs do
    System.get_env()
  end

  # https://hexdocs.pm/elixir/Path.html#extname/1
  def get_extension(path) do
    Path.extname(path)
  end

  # https://hexdocs.pm/elixir/File.html#cwd/0
  # File.cwd()
  # {:ok, "/home/herminio/Workspace/learn/elixir/programming-elixir"}
  # File.cwd!()
  # "/home/herminio/Workspace/learn/elixir/programming-elixir"
  def current_dir do
    File.cwd!()
  end

  # https://hexdocs.pm/elixir/System.html#cmd/3
  # System.cmd "ls", [".", "/home"]
  def shell_cmd(command, options) when is_binary(command) && is_list(options) do
    System.cmd(command, options)
  end

  # "{\"result\":\"this will be an Elixir result\"}"
  def parse_string_json_to_struct(json) do
    [head | tail] = json
    |> String.split(":")
    |> Enum.map(
      fn
        item ->  String.split(item, ~r{\W}, trim: true) |> Enum.join(" ")
      end)

    %{String.to_atom(head) => tail}
end
