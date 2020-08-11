defmodule Subscriber do
  @doc """

    ## Example:

    sub1 = %Subscriber{}

    sub2 = %Subscriber{ name: "Dave" }

    sub3 = %Subscriber{ name: "Mary", paid: true }

    sub4 = %Subscriber{ name: "John", paid: true, over_18: false }

    sub5 = %Subscriber{ name: "Nikka", over_18: false }

    %Subscriber{name: a_name} = sub3
    sub3.name
    a_name

    sub6 = %Subscriber{sub3 | name: "Marrie"}
  """

  defstruct name: "", paid: false, over_18: true
end
