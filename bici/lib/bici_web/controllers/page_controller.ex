defmodule BiciWeb.PageController do
  use BiciWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
