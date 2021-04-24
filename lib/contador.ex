defmodule Contador do
  @moduledoc """
  Documentation for `Contador`. Este es un ejemplo de doc. para el curso de Elixir 2021.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Contador.hello()
      :world

  """
  def hello do
    :world
  end

  def main(_args) do
    {:ok, result} = count_lines()
    IO.puts result
  end

  @doc """
  Conteo de lineas.

  ## Examples

      iex> Contador.count_lines("words")
      {:ok, 235886}

  """
  def count_lines(file_name \\ "words") do
    # este programa lee un archivo que se llama words y cuenta las palabras
    num_lines =
      File.read!(file_name)
      |> String.split()
      |> Enum.count()

    {:ok, num_lines}
  end

   @doc """
  Conteo de binarios.

  ## Examples

      iex> Contador.count_binary("words")
      {:ok, 16}

  """

  def count_binary(file_name) do
    # este programa lee un archivo que se llama words y cuenta los bytes
    content = File.read!(file_name)
    hash = :crypto.hash(:md5, content)
    {:ok, byte_size(hash)}

  end
end
