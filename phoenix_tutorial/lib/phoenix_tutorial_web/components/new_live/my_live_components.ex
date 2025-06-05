defmodule PhoenixTutorialWeb.MyLiveComponents do
  @moduledoc false

  use Phoenix.Component
  use Gettext, backend: PhoenixTutorialWeb.Gettext

  alias Phoenix.LiveView.JS

  attr :rest, :global
  slot :inner_block, required: true
  def plus_button(assigns) do
    ~H"""
      <button {@rest}>
        {render_slot(@inner_block)}
      </button>
      """
  end

  attr :name, :string, required: true
  attr :class, :string, default: "size-4"
  def my_hero_icon(%{name: "hero-" <> _} = assigns) do
    ~H"""
    <span class={[@name, @class]} />
    """
  end
end
