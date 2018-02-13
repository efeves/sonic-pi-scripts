# Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4
use_bpm 160
use_synth :saw
array= [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]
i=0

live_loop :stranger do
  with_fx :distortion do
    8.times do
      play array[i]
      sleep 0.5
      i=i+1
    end
    i=0
  end
end




