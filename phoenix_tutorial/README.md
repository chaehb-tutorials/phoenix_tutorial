# PhoenixTutorial
> Phoenix Version
> - 1.8.0-rc.3

> Create Project
```sh
$ mix phx.new phoenix_tutorial --binary-id --no-install
```

> Change Default Settings
```elixir
# config/config.exs
# ...
# change timestamp_type :utc_datetime to :utc_datetime_usec
  generators: [timestamp_type: :utc_datetime_usec, binary_id: true]

#...
# change esbuild version to lates
config :esbuild,
  version: "0.25.5",

# ...
# change tailwindcss version to lates
config :esbuild,
  version: "4.1.8",

# ...
```

```elixir
# config/dev.exs
# ...
# change database name "phoenix_tutorial_dev" to "phoenix_tutorial"
  database: "phoenix_tutorial",
# ...
```

```elixir
# mix.exs
# change to latest version
# heroicons, dns_cluster
```

> Create Tutorial Database
```sql
CREATE DATABASE phoenix_tutorial WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C.UTF-8'
    LC_CTYPE = 'C.UTF-8'
    BUILTIN_LOCALE = 'C.UTF-8'
    LOCALE_PROVIDER = 'builtin'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE = template0
    IS_TEMPLATE = False;
```
