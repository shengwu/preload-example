defmodule Testproj.Page do
  use Ecto.Schema

  schema "pages" do
    field :text, :string
    belongs_to :book, Testproj.Book
  end
end
