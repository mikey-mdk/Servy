defmodule Servy do
  use Application

  def start(_type, _args) do
    IO.puts "Starting The Application..."
    {:ok, _sup_pid} = Servy.Supervisor.start_link()
  end
end
