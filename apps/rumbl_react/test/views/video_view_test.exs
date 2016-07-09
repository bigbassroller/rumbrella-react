defmodule RumblReact.VideoViewTest do
	use RumblReact.ConnCase, Async: true
	import Phoenix.View

	test "renders index.html", %{conn: conn} do
		videos = [%RumblReact.Video{id: "1", title: "dogs"},
							%RumblReact.Video{id: "2", title: "cats"}]
		content = render_to_string(RumblReact.VideoView, "index.html",
															 conn: conn, videos: videos)

		assert String.contains?(content, "Listing videos")
		for video <- videos do
			assert String.contains?(content, video.title)
		end
	end

	test "renders new.html", %{conn: conn} do
		changeset = RumblReact.Video.changeset(%RumblReact.Video{})
		categories = [{"cats", 123}]
		content = render_to_string(RumblReact.VideoView, "new.html",
			conn: conn, changeset: changeset, categories: categories)

		assert String.contains?(content, "New video")
	end
end