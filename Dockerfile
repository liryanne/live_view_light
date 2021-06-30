# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:latest

# Create app directory and copy the Elixir projects into it
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix do local.hex --force, local.rebar --force

# Compile the project
RUN mix do deps.get --only dev
RUN mix do compile

RUN mix phx.server