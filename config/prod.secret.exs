use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  url: [host: "lit-basin-94277.herokuapp.com", port: 443],
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

