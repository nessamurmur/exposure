defmodule Exposure.RoutesTest do
  use ExUnit.Case
  alias Exposure.Routes

  test "get" do
    expected = %{method: :get, path: "/", params: [], func: nil}
    assert expected == Routes.get "/", [], do: nil
  end

  test "post" do
    expected = %{method: :post, path: "/", params: [], func: nil}
    assert expected == Routes.post "/", [], do: nil
  end

  test "put" do
    expected = %{method: :put, path: "/", params: [], func: nil}
    assert expected == Routes.put "/", [], do: nil
  end

  test "patch" do
    expected = %{method: :patch, path: "/", params: [], func: nil}
    assert expected == Routes.patch "/", [], do: nil
  end

  test "delete" do
    expected = %{method: :delete, path: "/", params: [], func: nil}
    assert expected == Routes.delete "/", [], do: nil
  end
end
