defmodule RumblReact.Router do
  use RumblReact.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug RumblReact.Auth, repo: RumblReact.Repo
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RumblReact do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController, only: [:index, :show, :new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
    get "/watch/:id", WatchController, :show
  end

  scope "/manage", RumblReact do
    pipe_through [:browser, :authenticate_user]

    resources "/videos", VideoController
  end
  # Other scopes may use custom stacks.
  # scope "/api", RumblReact do
  #   pipe_through :api
  # end
end
