defmodule LiveDashboardDemo.Repo do
  use Ecto.Repo,
    otp_app: :live_dashboard_demo,
    adapter: Ecto.Adapters.Postgres
end
