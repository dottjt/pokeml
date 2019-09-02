defmodule MlpWeb.PageController do
  use MlpWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
