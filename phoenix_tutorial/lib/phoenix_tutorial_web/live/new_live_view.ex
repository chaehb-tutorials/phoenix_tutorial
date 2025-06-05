defmodule PhoenixTutorialWeb.NewLiveView do
  use PhoenixTutorialWeb, :live_view

  def render(assigns) do
    ~H"""
      <div class="min-h-screen flex flex-col justify-center items-center">
        <p class="p-4">Current temperature: <span class={@temperature_class}>{@temperature}°F</span></p>
        <div>
          <button class={"btn btn-primary"} phx-click="inc_temperature">Plus Button</button>
          <button class={"btn btn-error"} phx-click="dec_temperature">Minus Button</button>
        </div>
      </div>
    """
  end

  def mount(_params, _session, socket) do
    temperature = 70 # Let's assume a fixed temperature for now
    temperature_class = "text-primary"
    socket = assign(socket, :temperature, temperature)
            |> assign(:temperature_class, temperature_class)

    {:ok, socket}
  end

  def handle_event("inc_temperature", _params, socket) do
    socket = update(socket, :temperature, &(&1 + 1))
    socket = case socket.assigns.temperature do
      70 ->
        assign(socket, :temperature_class,"text-primary")
      x when x > 70 ->
        assign(socket, :temperature_class,"text-success")
      _ ->
        socket
    end

    {:noreply, socket}
  end

  def handle_event("dec_temperature", _params, socket) do
    socket = update(socket, :temperature, &(&1 - 1))
    socket = case socket.assigns.temperature do
      70 ->
        assign(socket, :temperature_class,"text-primary")
      x when x < 70 ->
        assign(socket, :temperature_class,"text-error")
      _ ->
        socket
    end
    {:noreply, socket }
  end
end
