defmodule Testproj.Book do
  use Ecto.Schema

  schema "books" do
    field :name, :string
    has_many :pages, Testproj.Page
  end
end
