defmodule TestProj.Book do
  use Ecto.Schema

  schema "books" do
    field :name, :string
    has_many :pages, TestProj.Page
  end
end
