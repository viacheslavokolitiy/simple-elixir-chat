defmodule ElixirChat.ConnectionHelper do
  @hostname "localhost"
  @username "postgres"
  @password "postgres"
  @database "baas-dev"

  def establish_connection do
    Postgrex.start_link(hostname: @hostname, username: @username, password: @password, database: @database)
  end
end
