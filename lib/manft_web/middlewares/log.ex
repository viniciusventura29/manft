defmodule ManftWeb.Middlewares.Log do
  require Logger
  @behaviour Absinthe.Middleware

  @filtered_string "***"

  def call(resolution, _context) do
    Logger.info(resolution.value)
    resolution
    |>log_message()
    |>filter_info()
    |>Logger.debug()

    resolution
  end

  defp log_message(%Absinthe.Resolution{value: value}, do: "Resolution value: #{inspect(value)}")

  defp filter_info(log) do
    String.replace(log, ~r/hash: "\w*"/, "hash: #{@filtered_string}")
  end
end
