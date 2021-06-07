# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :my_stock,
  ecto_repos: [MyStock.Repo]

# Configures the endpoint
config :my_stock, MyStockWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hqtyuiMiiTrCP8SJoEEaLmkeVx1ELuHl45+XYyG+kSNf1lzc4NQxNqGJ5r1MuXJ3",
  render_errors: [view: MyStockWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MyStock.PubSub,
  live_view: [signing_salt: "xCoeN8n6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
