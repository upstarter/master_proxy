# MasterProxy

Generate a mix umbrella node equipped for federation in a [Service Mesh](https://blog.envoyproxy.io/service-mesh-data-plane-vs-control-plane-2774e720f7fc).

Create a Pull Request or join the discussion on the [slack channel](https://join.slack.com/t/masterproxy/shared_invite/enQtNTQxNDYxMjM1MTI3LTM1Y2U3OTZkZTI5ZTlhZThiMjJhYTVjYTdiM2QzMTIzZjYyZjY5MDQ0NzU3MWI0OTVjZDc0NjMwNmE4NDcxNGQ). For context see the [acme_bank](https://github.com/wojtekmach/acme_bank) example.

## Installation

```elixir
@deps [
  master_proxy: "~> 0.1.0"
]
```

## Seeking Contributors

  - depends on [this fork](https://github.com/ericsteen/mix_templates) of pragdave/mix_templates

## Roadmap
###### Bootstrap Config
- [ ] Data Plane Sidecar Proxy
- [ ] Docker Containerization
- [ ] k8 Deployment Orchestration
- [ ] Control Plane Istio Integration
- [ ] App Plane OAuth2 resource and service provider generation

## Aim High

Refine generation schematics  for [evolvable](https://www.thoughtworks.com/insights/blog/microservices-evolutionary-architecture) service architectures.

###### Application Plane
- Thematic service generation, design patterns, IOT. Novel proxies/gateways, AI systems, enterprise patterns, crypto network governance protocols.

- Integration of various service mesh & elixir and OTP capabilities, including:

  - Elixir Patterns:  *[gen_stage](https://github.com/elixir-lang/gen_stage), [gen_state_machine](https://github.com/ericentin/gen_state_machine), custom resource definitions*

###### Control Plane
  - Governance, Security, Observability, Reliability, Traffic Management, Customization: *[istio](https://istio.io/), [glasnotic](https://glasnostic.com/), serverless*
 *[prometheus](https://github.com/deadtrickster/prometheus.erl)*.

###### Data Plane
  - Envoy + Elixir Clustering? A marriage made in heaven?: *[horde](https://github.com/derekkraan/horde) / [swarm](https://github.com/bitwalker/swarm) / [libcluster](https://github.com/bitwalker/libcluster), [kazan](https://github.com/obmarg/kazan), [bonny](https://github.com/coryodaniel/bonny)*.


### Resources & Inspiration

#### Service Mesh
- [Understanding Microservices & Service Mesh](https://medium.com/microservices-learning/understanding-microservices-communication-and-service-mesh-e888d1adc41)
- [What is a Service Mesh?](https://glasnostic.com/blog/what-is-a-service-mesh-istio-linkerd-envoy-consul)

#### CodeGen
- [Dave Thomas mix_templates video](https://pragdave.me/blog/2017/04/18/elixir-project-generator.html)

#### Crypto Network Governance
- [x-Ilities & Governance Efficiency](https://medium.com/@andrew_young/crypto-network-fundamentals-dfa11f15d026)

#### IOT & Fog Computing
- [geonnave/gen_mcast](https://github.com/geonnave/gen_mcast)

## Features

##### Data Plane Bootstrapping

##### Control Plane Bootstrapping

##### Application Plane Custom Resource Generation Toolkit

##### Crypto Network Protocol & Governance Bootstrapping

## Example Configuration

### _Coming Soon!_

## Strategy Configuration

### _Coming Soon!_

## Third Party Strategies

### _Coming Soon!_

## Testing
1. clone [master_proxy](https://github.com/ericsteen/master_proxy) and [code gen](https://github.com/ericsteen/mix_templates) capabilities into a dir
2. `export MP=/path/to/dir` where MP is your custom env var
3. run below shell function for testing your code generation, replacing project and proxy names for your desired functionality

```bash
test_mp() {
  cd $MP/mix_templates;
  mix do archive.build, archive.install;
  cd $MP
  mix gen ./master_proxy $1Data$2Gateway \
    --port 4000 \
    --master-proxy-name LocalAPIGateway \
    --app1 auth \
    --app2 brain \
    --app3 data \
}
```

## License

Apache 2.0. See [LICENSE.md](LICENSE.md) for details.
