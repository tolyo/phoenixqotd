defmodule Phoenixqotd.QuoteController do
  use Phoenixqotd.Web, :controller

  plug :action

  def world(conn) do
      conn
        |> put_resp_header("content-type", "text/html; charset=utf-8")
        |> Plug.Conn.send_file(200, "priv/static/foobar.html")
  end
end
