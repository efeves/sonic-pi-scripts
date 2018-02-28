=begin

TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.

TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.

=end

use_bpm 120
use_synth :dtri
use_synth_defaults cutoff: 80
kanye_vocals = "C:/Users/edward_feves/Desktop/sonic_pi_challenge_7_custom_samples"
kanye_chorus = "C:/Users/edward_feves/Desktop/sonic_pi_challenge_7_custom_samples/love_lockdown_chorus.wav"
sample_used = :bd_808
x=3
y=2
z=1
s=16
t=1

print sample_duration kanye_chorus

live_loop :drum_beat do
  sample sample_used, amp: y
  sleep 0.5
  sample sample_used, amp: y
  sleep 1.5
  sample sample_used, amp: y
  sleep 2
end

# use a variable so that each time the live_loop repeats itself the volume of the synth increases in amplitude (start the amplitude at 0 so it is inaudible to start!)
live_loop :synth_sound do
  play :cs2, amp: z
  sleep 0.5
  play :cs2, amp: z
  sleep 0.5
  play :e2, sustain: 0.5, amp: z
  sleep 1
  # play two notes concurrently (at the same time)
  play :cs2, sustain: 1, detune: 0.12, amp: z
  play :cs1, sustain: 1, amp: z
  sleep 2
end

4.times do
  2.times do
    sample kanye_vocals, amp: x
    sleep s # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
  end
  s=sample_duration kanye_vocals
  
end

sleep sample_duration kanye_vocals

2.times do
  x=0
  y=0
  z=0
  sample kanye_chorus, amp: 2
  sleep 32.15
end
