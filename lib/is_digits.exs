## String.t() -> boolean()
# Strict testing! (Integer.parse

Benchee.run(
  %{
    b2i: fn arg when is_binary(arg) ->
      try do
        _ = :erlang.binary_to_integer(arg, 10)
        true
      rescue
        ArgumentError -> false
      end
    end,
    s2i: fn arg when is_binary(arg) ->
      try do
        _ = String.to_integer(arg)
        true
      rescue
        ArgumentError -> false
      end
    end,
    regexp: fn arg when is_binary(arg) ->
      String.match?(arg, ~r/^\d+$/)
    end
  },
  print: %{
    fast_warning: false
  },
  inputs: %{
    empty: "",
    str: "5523523-league-of-legends-gpl-spring-2018-group-stage",
    num: "72342"
  }
)
