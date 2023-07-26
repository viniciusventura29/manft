defmodule Manft.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias Manft.Schema.Types

  import_types (Type.Art)
  import_types (Type.UUID4)
end
