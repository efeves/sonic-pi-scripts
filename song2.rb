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

define :bringthebeat do #this does the opposite, starting concurrently, and ending sequentially
  live_loop :beat do
    sync :bass
    sample downtownbeat, amp: t
    sleep sample_duration downtownbeat
  end
end

define :someb do
  sleep 5
  1.times do
    sync :bass
    sample somebody
    sleep sample_duration somebody
  end
end

define :dont do
  sync :bass
  sleep 15.8
  sample whatgoodmel
  sleep sample_duration whatgoodmel
end

define :mean do
  sync :bass
  sleep 7.89
  sample whatgoodmus, amp: 1
  sleep sample_duration whatgoodmus
end

define :a do
  sync :bass
  sleep 7.98
  sample ifaint, amp: 1
  sleep sample_duration ifaint
end

define :thing do
  sleep 5
  sync :bass
  sample theressomething, amp: 1
  sleep sample_duration theressomething
  sample yeah, amp: 2, release: 0.5
  sleep sample_duration yeah
end

define :ifitaint do
  sync :bass
  sample gotthatswing, amp: 1, attack: 0.2
  sleep sample_duration gotthatswing
end

define :gotthat do
  sleep 1
  sync :bass
  sample make, attack: 0.2
  sleep sample_duration make
end

define :fade do
  4.times do
    x=x-0.5
    sync :bass
    it
  end
end

define :whyshould do
  sleep 4
  sync :beat
  t=0
  sample why, amp: 3, attack: 0.2
  sleep sample_duration why
end

define :iworry do
  sample riff, amp: 3, release: 0.5
  sleep 8.75
  sample whoo, release: 0.2
  sleep 4.75
end

define :tellme do
  sample street, amp: 2
  sleep 6.77
  sample whoo, release: 0.2
  sleep 4.75
  sample smart, amp: 2
  sleep 7.9
end

define :whyshouldi do
  sample care, amp: 2
  sleep sample_duration care
  sample wind, amp: 2
  sleep sample_duration wind
end

define :drmsolo do
  with_fx :compressor do
    sample solo, amp: 0.5
    sleep drumsleeparray[0]
    sample low, amp: 0.5
    sleep drumsleeparray[1]
    sample solo, amp: 0.5
    sleep drumsleeparray[2]
    sample low, amp: 0.5
    sleep drumsleeparray[3]
    sample low, amp: 0.5
    sleep drumsleeparray[4]
  end
end

define :drums do
  sample drms, amp: 2
  sleep 1.1
end

#////////////////////////////////////

whyshould
iworry
tellme
#drmsolo
drums
whyshouldi
