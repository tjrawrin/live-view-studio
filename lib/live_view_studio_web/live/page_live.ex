defmodule LiveViewStudioWeb.PageLive do
  use LiveViewStudioWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  defp example_link(socket, text, module) do
    live_patch(text,
      to:
        Routes.live_path(
          socket,
          module
        )
    )
  end
end
