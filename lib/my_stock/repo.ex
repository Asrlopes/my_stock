defmodule MyStock.Repo do
  use Ecto.Repo,
    otp_app: :my_stock,
    adapter: Ecto.Adapters.Postgres
end
