defmodule PhoenixTutorial.Repo.Migrations.LoadTimescaledbExtension do
  use Ecto.Migration

  def change do
    execute("CREATE EXTENSION IF NOT EXISTS timescaledb;")
  end
end
