defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    IO.puts("User function hit!")
    users = [
      %{id: 1, name: "Matthew", color: "blue"},
      %{id: 2, name: "Frax", color: "red"},
      %{id: 3, name: "Butt", color: "pink"}
    ]

    # render(conn, :users, users: users, layout: false)
    json(conn, %{users: users})
  end
end
