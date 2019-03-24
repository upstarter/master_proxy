# Alias this container as builder:
FROM frolvlad/alpine-glibc
ARG APP_NAME=<%= @project_name %>
ENV MIX_ENV=prod REPLACE_OS_VARS=true TERM=xterm
WORKDIR /opt/app

RUN apk update \
    && apk add ca-certificates \
    && apk add wget python3 \
    && apk add gmp build-base \
    && apk --no-cache --update add nodejs nodejs-npm

RUN apk add --update \
      git \
      erlang=21.3 \
      elixir=1.8.1 \
      erlang-crypto \
      erlang-parsetools \
      erlang-syntax-tools \
      erlang-runtime-tools

RUN mix local.rebar --force \
    && mix local.hex --force

ENV PATH="/opt/app/dist_binaries:${PATH}"

COPY . .
RUN mix do deps.get, deps.compile, compile

# RUN APP SETUP HERE

RUN mix release --env=prod --verbose \
    && mv _build/prod/rel/${APP_NAME} /opt/release \
    && mv /opt/release/bin/${APP_NAME} /opt/release/bin/start_server
# End Build Container

# Run Container
FROM frolvlad/alpine-glibc:latest

RUN apk update && apk --no-cache --update add \
    ncurses-libs \
    zlib \
    ca-certificates \
    bash \
    openssl-dev

ENV PORT=8080
WORKDIR /opt/app
EXPOSE ${PORT}
COPY --from=0 /opt/release .
CMD ["/opt/app/bin/start_server", "foreground"]
# End Run Container
