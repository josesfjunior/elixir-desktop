defmodule ElixirDesktopWeb.SomarLive do
  use ElixirDesktopWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :contador, 0)}
  end

  def handle_event("incrementar", _value, socket) do
    {:noreply, update(socket, :contador, &(&1 + 1))}
  end

  def handle_event("decrementar", _value, socket) do
    {:noreply, update(socket, :contador, &(&1 - 1))}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <a href="/">Home</a>
      <h1>Contador: <%= @contador %></h1>
      <button phx-click="decrementar">-</button>
      <button phx-click="incrementar">+</button>
    </div>
    """
  end
end
