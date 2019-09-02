defmodule Mlp.Repo do
  use Ecto.Repo,
    otp_app: :mlp,
    adapter: Ecto.Adapters.Postgres
end
