defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1

  @doc """

    ## Example 1:
    iex> report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "broken"}
    %BugReport{
      details: "broken",
      owner: %Customer{company: "Pragmatic", name: "Dave"},
      severity: 1
    }
    iex> report.owner.company
    "Pragmatic"
    iex> report = %BugReport{ report | owner: %Customer{ report.owner | company: "PragProg"}}
    %BugReport{
      details: "broken",
      owner: %Customer{company: "PragProg", name: "Dave"},
      severity: 1
    }
    iex> put_in(report.owner.company, "Pragmatic Programmers")
    %BugReport{
      details: "broken",
      owner: %Customer{company: "Pragmatic Programmers", name: "Dave"},
      severity: 1
    }
    iex> update_in(report.owner.name, &("Mr. " <> &1))
    %BugReport{
      details: "broken",
      owner: %Customer{company: "PragProg", name: "Mr. Dave"},
      severity: 1
    }

    ## Example 2:
    iex> report = %{owner: %{name: "Dave", company: "Pragmatic"}, severity: 1}
    %{owner: %{company: "Pragmatic", name: "Dave"}, severity: 1}

    iex> put_in(report[:owner][:company], "PragProg")
    %{owner: %{company: "PragProg", name: "Dave"}, severity: 1}

    iex> update_in(report[:owner][:name], &("Mr. " <> &1))
    %{owner: %{company: "Pragmatic", name: "Mr. Dave"}, severity: 1}


    ## Infos:
                      | Macro         | Function
    get_in            | no            | (dict, keys)
    put_in            | (path, value) | (dict, keys, value)
    update_in         | (path, fn)    | (dict, keys, fn)
    get_and_update_in | (path, fn)    | (dict, keys, fn)
  """
end
