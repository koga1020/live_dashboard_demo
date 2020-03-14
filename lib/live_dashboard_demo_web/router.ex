defmodule LiveDashboardDemoWeb.Router do
  use LiveDashboardDemoWeb, :router
  import Phoenix.LiveDashboard.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveDashboardDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  if Mix.env() == :dev do
    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard"
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveDashboardDemoWeb do
  #   pipe_through :api
  # end
end
