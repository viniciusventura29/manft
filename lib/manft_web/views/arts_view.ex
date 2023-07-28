defmodule ManftWeb.View.ArtsView do
  use ManftWeb, :view

  def render("arts.json", %{data: %{arts: arts}}) do
    %{arts: render_many(arts, Manft.ArtsView, "art.json", as: :art)}
  end

  def render("art.json", %{art: art}) do
    %{
      id: art.id,
      description: art.description,
      artist_name: art.artist_name,
      hash: art.hash
    }
  end
end
