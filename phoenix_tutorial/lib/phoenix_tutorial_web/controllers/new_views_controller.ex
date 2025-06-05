defmodule PhoenixTutorialWeb.NewViewsController do
  use PhoenixTutorialWeb, :controller

  def index_page(conn, _params) do
    conn
    |> assign(:page_title,"New Page Title")
    |> render(:page_index)
  end

  def pages(conn, %{"page" => page} = params) do
    case page do
      "page_one" -> page_one(conn, params)
      "page_1" -> page_one(conn, params)
      "page_2" -> page_2(conn, params)
      _ -> index_page(conn, params)
    end
  end

  defp page_one(conn,_params) do
    conn
    |> render(:page_1)
  end

  defp page_2(conn,_params) do
    conn
    |> render(:page_2)
  end
end
