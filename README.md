# EIP-55

Encode and validate an Ethereum address against [EIP-55](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-55.md) checksum in Elixir.

## Installation

The package can be installed by adding `:eip_55` to your list of dependencies in `mix.exs`:

```elixir
defp deps do
  [
    {:eip_55, "~> 0.1"}
  ]
end
```

## Usage

Encoding:

```elixir
iex> EIP55.encode("0x5aaeb6053f3e94c9b9a09f33669435e7ef1beaed")
{:ok, "0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed"}

iex> EIP55.encode(<<90, 174, 182, 5, 63, 62, 148, 201, 185, 160,
...> 159, 51, 102, 148, 53, 231, 239, 27, 234, 237>>)
{:ok, "0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed"}
```

Validation:

```elixir
iex> EIP55.valid?("0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed")
true

iex> EIP55.valid?("0x5AAEB6053f3e94c9b9a09f33669435e7ef1beaed")
false
```

Full documentation can be found at [https://hexdocs.pm/eip_55](https://hexdocs.pm/eip_55).

## Performance

This is a fork of `eip_55` and uses the `:ex_keccak` dependency that uses a Rustler NIF for significant performance gains.

## License

EIP-55 is released under the MIT License. See [LICENSE](./LICENSE) for further details.
