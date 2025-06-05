defmodule PhoenixTutorialWeb.NewViewsHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use PhoenixTutorialWeb, :html

  embed_templates "new_views/*"
end
