list = Enum.to_list(1..1_000_000)
item = 42

Benchee.run(%{
  insert_at: fn -> List.insert_at(list, -1, item) end,
  append: fn -> list ++ [item] end
})
