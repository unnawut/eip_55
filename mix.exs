defmodule EIP55.MixProject do
  use Mix.Project

  def project do
    [
      app: :eip_55,
      version: "0.1.0",
      description: "Encode and validate an Ethereum address against EIP-55 checksum in Elixir.",
      name: "EIP-55",
      package: package(),
      elixir: "~> 1.8",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["test/support", "lib"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Unnawut Leepaisalsuwanna"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/unnawut/eip_55"}
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.19.0", only: :dev},
      {:excoveralls, "~> 0.8", only: :test},
      {:ex_sha3, "~> 0.1"}
    ]
  end
end
