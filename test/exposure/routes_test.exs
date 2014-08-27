defmodule Exposure.RoutesTest do
  use ExUnit.Case
  alias Exposure.Routes

  test "get" do
    assert %{method: :get, path: "/", params: [], func: nil} == Routes.get "/", [], do: nil
  end

  test "post" do
    assert %{method: :post, path: "/", params: [], func: nil} == Routes.post "/", [], do: nil
  end

  test "put" do
    assert %{method: :put, path: "/", params: [], func: nil} == Routes.put "/", [], do: nil
  end

  test "patch" do
    assert %{method: :patch, path: "/", params: [], func: nil} == Routes.patch "/", [], do: nil
  end

  test "delete" do
    assert %{method: :delete, path: "/", params: [], func: nil} == Routes.delete "/", [], do: nil
  end
end
