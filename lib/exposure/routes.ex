defmodule Exposure.Routes do

  for verb <- ["GET", "POST", "PUT", "PATCH", "DELETE"] do
    method = verb |> String.downcase |> String.to_atom

    def unquote(method)(path, params, do: func) do
      %{method: unquote(method), path: path, params: params, func: func}
    end
  end
end
