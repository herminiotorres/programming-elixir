defmodule Attendee do
  @doc """

    ## Example:

    iex[1]> attendee1 = %Attendee{name: "Dave", over_18: true}
    %Attendee{name: "Dave", over_18: true, paid: false}

    iex[2]> Attendee.may_attendee_after_party(attendee1)
    false

    iex[3]> attendee2 = %Attendee{attendee1 | paid: true}
    %Attendee{name: "Dave", over_18: true, paid: true}

    iex[4]> Attendee.may_attendee_after_party(attendee2)
    true

    iex[5]> Attendee.print_vip_badge(attendee2)
    Very cheap badge for Dave
    :ok

    iex[6]> Attendee.print_vip_badge(attendee1)
    Very cheap badge for Dave
    :ok

    iex[7]> attendee3 = %Attendee{}
    %Attendee{name: "", over_18: true, paid: false}

    iex[8]> Attendee.print_vip_badge(attendee3)
    ** (RuntimeError) missing name for badge
  """
  defstruct name: "", paid: false, over_18: true

  def may_attendee_after_party(attendee = %__MODULE__{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%__MODULE__{name: name}) when name != "" do
    IO.puts("Very cheap badge for #{name}")
  end

  def print_vip_badge(%__MODULE__{}) do
    raise("missing name for badge")
  end
end
