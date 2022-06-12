defmodule BiciWeb.ActionController do
  use BiciWeb, :controller

  def subscribe(conn, _params) do
    # get the lang, subscribe to the mailing list
    redirect(conn, to: "/en/subscribed")
  end
end
