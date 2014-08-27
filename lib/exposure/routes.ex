defmodule Exposure.Routes do

  defmacro __using__(_opts) do
    quote do
      import Exposure.Routes
    end
  end

  for verb <- ["GET", "POST", "PUT", "PATCH", "DELETE"] do
    method = verb |> String.downcase |> String.to_atom

    def unquote(method)(path, params, do: func) do
      %{method: unquote(method), path: path, params: params, func: func}
    end
  end

  defmacro defroutes(name, routes) do
    method = name |> String.downcase |> String.to_atom

    quote do
      def unquote(method)() do
        unquote(routes)
      end
    end
  end
end
