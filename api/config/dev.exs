use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :slack_clone, SlackClone.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []


# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :slack_clone, SlackClone.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "slack_clone_dev",
  hostname: "localhost",
  pool_size: 10

config :guardian, Guardian,
  secret_key: "Ea27S5Kk9XcdkV+irNPKZkiGHbUzNm5nycp1Hh7O2Yjx66kdM3+Dm18UmVY2W0di"
