defmodule Phoenixqotd.QuoteController do
  use Phoenixqotd.Web, :controller

  def quoteList do
      [
        %{ "author"  => "Larry Wall",
           "content" => "The is more than one method to our madness"
        },
        %{  "author"  => "Chuck Norris",
            "content" => "I only use the Roundhouse kick"
        },
        %{  "author"  => "Eric Raymond",
            "content" => "Being a social outcast helps you stay concentrated on the really important things, like thinking and hacking"
        }
      ]
  end

  def get(conn, _params) do
    json conn, Enum.random(quoteList())
  end

  def post(conn, _params) do
    quoteList = fn -> [%{ "author"  => _params["author"], "content" => _params["quote"] } | quoteList()] end
    json conn, Enum.random(quoteList())
  end
end