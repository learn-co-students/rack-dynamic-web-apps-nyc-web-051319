class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end

end

#puts outputs to  user but we're adding to our response so puts gets replaced with #write method in our rack::response object
# changes puts to resp.write statements --  #write method can be called many times to add to  full response.
# response isnt sent back until to user until #finish is called
#kernel is used to  generate some random numbers
