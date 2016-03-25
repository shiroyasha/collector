defmodule Listener.PageController do
  use Listener.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
