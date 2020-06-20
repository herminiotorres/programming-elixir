defmodule Example do
  def compile_and_go(source) do
    alias My.Other.Module.Parser, as: Parser
    alias My.Other.Module.Runner, as: Runner

    # alias My.Other.Module.{Parser, Runner}

    source
    |> Parser.parse()
    |> Runner.execute()
  end
end
