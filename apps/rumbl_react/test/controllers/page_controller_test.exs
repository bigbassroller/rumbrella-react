defmodule RumblReact.PageControllerTest do
  use RumblReact.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to RumblReact!"
  end
end
