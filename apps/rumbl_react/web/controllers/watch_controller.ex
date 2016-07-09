defmodule RumblReact.WatchController do
  use RumblReact.Web, :controller
  alias RumblReact.Video

  def show(conn, %{"id" => id}) do
  	video = Repo.get!(Video, id)
  	render conn, "show.html", video: video
  end

  def index(conn, _params) do
    render conn, "index.html"
  end
end
