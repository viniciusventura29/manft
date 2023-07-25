defmodule Manftx.Arts do
  alias Manftx.Arts.{Create, Get}

  defdelegate create(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call
end
