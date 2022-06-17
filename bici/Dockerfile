FROM library/elixir
WORKDIR /app
COPY . .
RUN echo `whoami`
RUN apt-get --help
RUN apt search inotify
RUN mix local.hex --force
# RUN mix archive.install hex phx_new
RUN mix compile
CMD mix phx.server
EXPOSE 4000
