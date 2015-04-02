class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch","take a nap soon","stay at work late"]
  end
end

oracle = Oracle.new
oracle.predict_the_future

# I think it'll return "You will <a random string sampled from the choices array>"