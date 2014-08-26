Exposure
========

A Compojure-like library for Elixir

## Usage

```elixir
defmodule MyApp.routes.home
  import Exposure.Routes
  import Exposure.Response

  # Define a function that returns a Resonse struct
  defp say_hello(name) do
    %Response{status: 200,
              headers: %{'Content-Type' => 'text/html'},
              body: "<h1>#{name}</h1>"}
  end

  # Use the defroutes macro to define your routes
  defroutes home_routes
    [
      GET "/", [:name], do: say_hello(name),
      POST "/", [:name], do: fn(name) -> %Response{status: 401} end
    ]
  end
end
```
