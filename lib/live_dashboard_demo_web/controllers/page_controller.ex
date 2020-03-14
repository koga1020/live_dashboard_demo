defmodule LiveDashboardDemoWeb.PageController do
  use LiveDashboardDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
