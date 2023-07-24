defmodule Manft.Repo do
  use Ecto.Repo,
    otp_app: :manft,
    adapter: Ecto.Adapters.Postgres
end
