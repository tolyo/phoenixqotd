defmodule Phoenixqotd.HelloController do
  use Phoenixqotd.Web, :controller

  def world(conn, _params) do
    render conn, "hello.html"
  end
end
