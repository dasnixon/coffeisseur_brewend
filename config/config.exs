# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :coffeisseur_brewend, CoffeisseurBrewend.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "/RwMpFG+zTiQKWoluSktMTuKf5V6CBdhFeTCgIM3SRKp50/3wbUoML8qlKBM8ZiX",
  render_errors: [default_format: "html"],
  pubsub: [name: CoffeisseurBrewend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
