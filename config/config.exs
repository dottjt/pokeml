# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mlp,
  ecto_repos: [Mlp.Repo]

# Configures the endpoint
config :mlp, MlpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jXOeYVJsTnLzu5OJ1ryR6Fxk8HeAt1a248r9FOY63DACRUTDT0cmtGgzAX2KHpYS",
  render_errors: [view: MlpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mlp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
