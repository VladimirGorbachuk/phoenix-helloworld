defmodule Elapi.AuthorSchemaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Elapi.AuthorSchema` context.
  """

  @doc """
  Generate a author.
  """
  def author_fixture(attrs \\ %{}) do
    {:ok, author} =
      attrs
      |> Enum.into(%{
        biography: "some biography",
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> Elapi.AuthorSchema.create_author()

    author
  end
end
