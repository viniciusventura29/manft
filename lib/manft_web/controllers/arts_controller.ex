defmodule ManftWeb.ArtsController do
  use ManftWeb, :controller
  use Absinthe.Phoenix.Controller, schema: ManftWeb.Schema, action: [mode: :internal]

  @graphql """
  {
    arts{
      id
      artists_name
      hash
      description
    }
  }
  """

  def index(conn, data) do
    conn
    |>put_status(:ok)
    |>render("arts.json", data: data)
  end
end
