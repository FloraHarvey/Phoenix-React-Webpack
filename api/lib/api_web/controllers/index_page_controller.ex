defmodule ApiWeb.IndexPageController do
  use ApiWeb, :controller

  def index(conn, _params) do
    index_file = File.read!(Application.app_dir(:api) <> "/priv/static/js/index.html")
    html(conn, index_file)
  end

end
