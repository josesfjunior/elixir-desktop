defmodule ElixirDesktop.Repo do
  use Ecto.Repo,
    otp_app: :elixir_desktop,
    adapter: Ecto.Adapters.Postgres
end
