FROM elixir:1.15-alpine

RUN apk add --update git

RUN mkdir /app

WORKDIR /app

RUN mix local.hex --force

COPY example example

RUN ls

ARG BOT_TOKEN

ENTRYPOINT ["elixir", "example/main.exs"]
