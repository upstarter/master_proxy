# MasterProxy

Generate a mix umbrella project that proxies web requests on a single port to multiple apps underneath the umbrella.

The aim of this project is to create a code generation schematic for specialized high-performance umbrella clusters.

Create a Pull Request or join the discussion on the [slack channel](https://join.slack.com/t/masterproxy/shared_invite/enQtNTQxNDYxMjM1MTI3LTM1Y2U3OTZkZTI5ZTlhZThiMjJhYTVjYTdiM2QzMTIzZjYyZjY5MDQ0NzU3MWI0OTVjZDc0NjMwNmE4NDcxNGQ). For context see the [acme_bank](https://github.com/wojtekmach/acme_bank) example.

## Installation

```elixir
@deps [
  master_proxy: "~> 0.1.0"
]
```

## Seeking Contributors

## Roadmap
- [ ] Enable config files for generation schematics vs. cli
  - may require a fork of [pragdave/mix_templates](https://github.com/pragdave/mix_templates)


- [ ] Configurable OAuth2 server generation

- [ ] Enable distribution of requests via multicast, broadcast, anycast/gossip.

## Goals

#### Current
1. Formulate & Refine a generator structure for generation of evolvable proxy/gateway schemes, general AI architectures, patterns, protocols.

2. Enable generation of containerized OAuth2 resource and service providers.

#### Future
- Thematic component generation,  design patterns, enterprise integration patterns, IOT patterns.

- Other uni and multi port use cases leveraging various elixir and OTP capabilities, including:

  - generating specialized high performance containerized umbrella clusters. *[libcluster](https://github.com/bitwalker/libcluster), [kazan](https://github.com/obmarg/kazan), [bonny](https://github.com/coryodaniel/bonny)*.

  - generating one-off resource providers & services.  *[gen_stage](https://github.com/elixir-lang/gen_stage), [gen_state_machine](https://github.com/ericentin/gen_state_machine), [prometheus](https://github.com/deadtrickster/prometheus.erl)*.

### Resources & Inspiration
- [Dave Thomas mix_templates video](https://pragdave.me/blog/2017/04/18/elixir-project-generator.html)

- [geonnave/gen_mcast](https://github.com/geonnave/gen_mcast)


## Features

### _Coming Soon!_

## Example Configuration

### _Coming Soon!_

## Strategy Configuration

### _Coming Soon!_

## Third Party Strategies

### _Coming Soon!_

## License

Apache 2.0. See [LICENSE.md](LICENSE.md) for details.
