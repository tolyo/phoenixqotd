# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixqotd,
  ecto_repos: [Phoenixqotd.Repo]

# Configures the endpoint
config :phoenixqotd, Phoenixqotd.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RoomEL3kVeY2ijgL4pbwTWUhSmgn2jB4O4ShxiB/wHq4n1pd5sHBpg34R9SA31e2",
  render_errors: [view: Phoenixqotd.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixqotd.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
