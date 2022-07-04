FROM library/elixir:slim
WORKDIR /app
ENV MIX_ENV=prod
COPY . .
RUN echo `whoami`
RUN mix local.hex --force
# RUN mix archive.install hex phx_new
RUN mix compile
CMD mix phx.server
EXPOSE 4000
