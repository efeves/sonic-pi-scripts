use_bpm 60
use_synth :piano

var = 21
88.times do
  play var
  sleep 0.25
  var=var+1
end
