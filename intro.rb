use_bpm 98

x=2 #these variables are used to changed the amplitude of the song at different points, so they are defined at the top
t=1
y=2

solo = :drum_tom_mid_hard #These two variables are used in a later section, so they are named as a variable to simplify the code
low = :drum_tom_lo_hard
drumsleeparray = [0.3,0.5,0.2,0.4,0.2] #sleeps for an array used later in the code, alongside the above samples

bass = "~/Desktop/Sampled/bass-swing.wav" #all these are custom samples that make up the lyrics of the music, along side pieces of the transition
whatgoodmel = "~/Desktop/Sampled/what-good-is-melody.wav"
whatgoodmus = "~/Desktop/Sampled/what-good-is-music.wav"
ifaint = "~/Desktop/Sampled/if-it-ain't.wav"
theressomething = "~/Desktop/Sampled/theres-something.wav"
yeah = "~/Desktop/Sampled/yea.wav"
gotthatswing = "~/Desktop/Sampled/ifitaint.wav"
downtownbeat = "~/Desktop/Sampled/downtownbeat.wav"
isthis = "~/Desktop/Sampled/isthis.wav"
somebody = "~/Desktop/Sampled/somebody.wav"
make = "~/Desktop/Sampled/makeadifference.wav"
why = "~/Desktop/Sampled/whyshould.wav"
riff = "~/Desktop/Sampled/wsiwriff.wav"
whoo = "~/Desktop/Sampled/hmhmhmhmhm.wav"
street = "~/Desktop/Sampled/streetwise.wav"
smart = "~/Desktop/Sampled/streetsmart.wav"
care = "~/Desktop/Sampled/whyshouldicare.wav"
drms = "~/Desktop/Sampled/drums.wav"
wind = "~/Desktop/Sampled/winddown.wav"


#below are all defined functions that play in pocket.
define :psd do |n| #this is the parameterized function to help me not have to continuously re-type print sample_duration
  print sample_duration n
end

define :it do #This code plays sequentially to begin the song, the concurrently as the bass line for the entire song
  1.times do
    sample bass, attack: 2, amp: 2
    sleep sample_duration bass
  end
  live_loop :bass do
    sample bass, amp: x
    sleep sample_duration bass
  end
end

#//////////////////////////////////////////////////////////////////////////////////////////////////////////
it
