defmodule ManftWeb.Resolvers.Art do
  alias Manft.Arts.{Arts, Repo}

  def get(%{id: art_id}, _context), do: Arts.get(art_id)
  def create(%{input: params},_context), do: Arts.create(params)
  def all(_,_), do: {:ok, Repo.All(Art)}

end
