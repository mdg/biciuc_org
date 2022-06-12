defmodule BiciWeb.PageController do
  use BiciWeb, :controller

  # assumes the router already validated the path to something acceptable
  # probably should validate it here anyway
  def index(conn, _params) do
    path = Enum.join(conn.path_info, "/")
    data = File.read!("priv/static/#{path}/index.html")
    html(conn, data)
  end
end
