defmodule Testproj.Router do
  use Testproj.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Testproj do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/books", BookController, only: [:index, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Testproj do
  #   pipe_through :api
  # end
end
