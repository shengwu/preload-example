defmodule TestProj.Page do
  use Ecto.Schema

  schema "pages" do
    field :text, :string
    belongs_to :book, TestProj.Book
  end
end
