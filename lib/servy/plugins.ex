defmodule Servy.Plugins do

  require Logger

  alias Servy.Conv

  def track(%Conv{status: 404, path: path} = conv) do
    if Mix.env != :test do
      Logger.warning("#{path} is on the loose! \n")
    end
	  conv
  end

  def track(%Conv{} = conv), do: conv

  def rewrite_path(%Conv{path: "/wildlife"} = conv) do
	  %{conv | path: "/wildthings"}
  end

  def rewrite_path(%Conv{} = conv), do: conv

  def log(%Conv{} = conv) do
    if (Mix.env == :dev) do
      IO.inspect conv
    end
    conv
  end

end
