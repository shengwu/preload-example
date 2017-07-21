defmodule Testproj.BookController do
  use Testproj.Web, :controller

  def index(conn, _params) do
    books = Repo.all(Testproj.Book)
    render(conn, "index.html", books: books)
  end

  def show(conn, %{"id" => id}) do
    book =
      Testproj.Book
      |> Repo.get(id)
      |> Repo.preload(:pages)
    render(conn, "show.html", book: book)
  end
end
