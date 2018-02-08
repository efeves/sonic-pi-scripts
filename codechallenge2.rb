use_bpm 60
use_synth :piano

var = 21 #sets a variable "var" as the value 21
88.times do #play this code 88 times
  play var #play the aforementioned variable
  sleep 0.25
  var=var+1 #increase the value of the variable by one and make this the new variable.
end
