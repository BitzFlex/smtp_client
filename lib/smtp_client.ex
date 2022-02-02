defmodule SmtpClient do
  @moduledoc """
  Documentation for `SmtpClient`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> SmtpClient.hello()
      :world

  """
  def hello do
    :world
  end

  def send do

    sender = "bh@smtp.bitzflex.com"
    receiver = ["extvision@gmail.com" , "extvision@naver.com"]
    content = "Subject: testing from localhost\r\nFrom: BH <bh@smtp.bitzflex.com> \r\nTo: naver extvision <extvision@naver.com> , <extvision@gmail.com>\r\n\r\nThis is the email body:한글"

    option = [
      # relay: "smtp.bitzflex.com",
      relay: "localhost",
      port: 25
    ]

    :gen_smtp_client.send({sender,receiver,content},option )
  end



end
