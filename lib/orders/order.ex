defmodule Exlivery.Orders.Order do
  @keys [:user_cpf, :delivery_address, :items, :total_price]
  @enforce_keys @keys

  defstruct @keys

  def build(user_cpf, delivery_address, items, total_price) when is_bitstring(user_cpf) do
    {:ok,
     %__MODULE__{
       user_cpf: user_cpf,
       delivery_address: delivery_address,
       items: items,
       total_price: total_price
     }}
  end

  def build(_user_cpf, _delivery_address, _items, _total_price) do
    {:error, "Invalid Parameters"}
  end
end
