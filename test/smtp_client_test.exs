defmodule SmtpClientTest do
  use ExUnit.Case
  doctest SmtpClient

  test "greets the world" do
    assert SmtpClient.hello() == :world
  end
end
