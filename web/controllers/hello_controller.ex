defmodule Phoenixqotd.HelloController do
  use Phoenixqotd.Web, :controller

  def world(conn, %{"name" => name}) do
    render conn, "hello.html", name: name
  end
end
