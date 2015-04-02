class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch","take a nap soon","stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

# Hmm, okay, now it looks like predict_the_future will select from the choices 
# array that's in the RoadTrip class? 

# Yup, I'm right! Yay! 