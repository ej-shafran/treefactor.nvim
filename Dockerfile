FROM ubuntu:latest

# Make `/code/` directory
RUN mkdir -p /code/plugname/

# Basic dependencies from apt
RUN apt-get update
RUN apt install -y software-properties-common
RUN apt install -y git
RUN apt install -y curl
RUN apt install -y build-essential
RUN apt install -y luarocks

# Lua dependencies
RUN luarocks install argparse && luarocks install luacheck

# Stylua via Cargo
RUN mkdir -p /tmp/
WORKDIR /tmp/
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo install stylua

# Clone dependencies
# TODO

# Run format, lint, test, etc. on container run
WORKDIR /code/plugname/
CMD make ci-install-deps && make
