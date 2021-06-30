# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :live_view_light, LiveViewLightWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6k8jQQ0G5/cSPrldRX2g9FWCFOBAbgKvIWd/AAA6Ub6DR187yq77izyii+PNaOaS",
  render_errors: [view: LiveViewLightWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewLight.PubSub,
  live_view: [signing_salt: "D7jHSDXO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
