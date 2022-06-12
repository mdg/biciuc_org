defmodule BiciWeb.PageController do
  use BiciWeb, :controller

  # assumes the router already validated the path to something acceptable
  # probably should validate it here anyway
  def index(conn, _params) do
    path = Enum.join(conn.path_info, "/")
    data = File.read!("priv/static/#{path}/index.html")
    html(conn, data)
  end

  # add in a csrf token to any submission forms
  # assumes the router already validated the path to something acceptable
  # probably should validate it here anyway
  def csrf_index(conn, _params) do
    path = Enum.join(conn.path_info, "/")
    index_path = "priv/static/#{path}/index.html"
    data = File.read!(index_path)
    csrf_data = String.replace(data, "get_csrf_token()", get_csrf_token())
    html(conn, csrf_data)
  end
end
