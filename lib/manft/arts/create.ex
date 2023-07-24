defmodule Manft.Arts.Create do

  alias Manft.{Art, Repo}

  def call(params)do
    params
    |> Art.changeset()
    |>Repo.insert()
  end
end
