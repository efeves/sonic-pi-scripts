# Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4
use_bpm 160
use_synth :saw
array= [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2] #this variable 'array' stands in place for multiple notes
i=0 #'i' will indicate the position in the above array

live_loop :stranger do
  with_fx :distortion do
    8.times do
      play array[i] #play array at place 'i'
      sleep 0.5
      i=i+1 #make 'i' one count higher
    end
    i=0 #reset i
  end
end




