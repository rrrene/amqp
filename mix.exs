defmodule AMQP.Mixfile do
  use Mix.Project

  def project do
    [app: :amqp,
     version: "0.0.5",
     elixir: "~> 1.0.0",
     description: description,
     package: package,
     deps: deps,
     docs: [readme: true, main: "README"]]
  end

  def application do
    [applications: [:amqp_client, :rabbit_common]]
  end

  defp deps do
    [{:earmark, "~> 0.1", only: :docs},
     {:ex_doc, "~> 0.5", only: :docs},
     {:amqp_client, "~> 3.0"}]
  end

  defp description do
    """
    Idiomatic Elixir client for RabbitMQ.
    """
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     contributors: ["Paulo Almeida", "Eduardo Gurgel"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/pma/amqp"}]
  end
end
