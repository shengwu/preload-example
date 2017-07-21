defmodule Testproj.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :name, :string
    end

    create table(:pages) do
      add :text, :string
      add :book_id, references(:books)
    end
  end
end
