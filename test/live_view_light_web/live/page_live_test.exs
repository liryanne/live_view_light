defmodule LiveViewLightWeb.PageLiveTest do
  use LiveViewLightWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Front Porch Light"
    assert render(page_live) =~ "Front Porch Light"
  end
end
