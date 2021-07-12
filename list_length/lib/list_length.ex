defmodule ListLength do
  # def call_enum(list), do: Enum.count(list)

  def call(list), do: count(list, 0)

  defp count([], acc), do: acc

  defp count([_head | tail], acc) do
    acc = acc + 1
    count(tail, acc)
  end
end

# "Teste de mesa"
# [0,1,2,3,4],0
# 1 ex: [0,1,2,3,4] hd: 0, tl: [1,2,3,4],0 -> acc = 0 + 1, count([1,2,3,4],1)
# 2 ex: [1,2,3,4] hd: 1, tl: [2,3,4],1 -> acc = 1 + 1, count([1,2,3,4],2)
# 3 ex: [2,3,4] hd: 2, tl: [3,4],2 -> acc = 2 + 1, count([3,4],3)
# 4 ex: [3,4] hd: 3, tl: [4],3 -> acc = 3 + 1, count([4],4)
# 5 ex: [4] hd: 4, tl: [],4 -> acc = 4 + 1, count([],5)
# 6 ex: [] acc = 5
