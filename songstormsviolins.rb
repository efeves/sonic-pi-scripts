use_bpm 170
h = :drum_snare_soft
intro = 120
t=1
j=0.25
p=2
g= :drum_bass_hard
array = [:a, :d, :f]
sleeps = [1, 1, 0.5]
i=0
violins = "C:/Users/edward_feves/Desktop/Sampled/sampled sos.wav"

#defined functions

define :introduction do
  use_synth :piano
  2.times do
    play :d
    sleep 0.5
    play :f
    sleep 0.5
    play :d5, release: 1.5
    sleep 2
  end
  play :e5, release: 1.25
  sleep 1.5
  2.times do
    play :f5
    sleep 0.5
    play :e5
    sleep 0.5
  end
  play :c5
  sleep 0.5
  play :a, release: 1.5
  sleep 2
  play array[0]
  sleep sleeps[0]
  play array[1]
  sleep sleeps[1]
  play array[2]
  sleep sleeps[2]
  play :g
  sleep 0.5
  play :a, release: 2.5
  sleep 3
  play :a
  sleep 1
  play :d
  sleep 1
  play :f
  sleep 0.5
  play :g
  sleep 0.5
  play :e, release: 2.5
  sleep 3
  
  2.times do
    play :d
    sleep 0.5
    play :f
    sleep 0.5
    play :d5, release: 1.5
    sleep 2
  end
  play :e5, release: 1.25
  sleep 1.5
  2.times do
    play :f5
    sleep 0.5
    play :e5
    sleep 0.5
  end
  play :c5
  sleep 0.5
  play :a, release: 1.5
  sleep 2
  play :a
  sleep 1
  play :d
  sleep 1
  play :f
  sleep 0.5
  play :g
  sleep 0.5
  play :a, release: 2.5
  sleep 2
  play :a
  sleep 1
  play :d, sustain: 2, release: 5.5
  sleep 5
end

define :bassclef do
  use_synth :piano
  play :d2, amp: t
  sleep 1
  2.times do
    play :f3, amp: t
    play :a4, amp: t
    sleep 1
  end
  play :e2, amp: t
  sleep 0.5
  play :e3, amp: t
  sleep 0.5
  play :g, release: 1.5, amp: t
  play :b4, release: 1.5, amp: t
  sleep 2
  play :f2, amp: t
  sleep 1
  2.times do
    play :g4, amp: t
    play :c5, amp: t
    sleep 1
  end
  play :e2, amp: t
  sleep 0.5
  play :e3, amp: t
  sleep 0.5
  play :g, release: 1.5, amp: t
  play :b4, release: 1.5, amp: t
  sleep 2
end

define :treblepiano do
  use_synth :piano
  2.times do
    play :d, amp: t
    sleep 0.5
    play :f, amp: t
    sleep 0.5
    play :d5, release: 1.5, amp: t
    sleep 2
  end
  play :e5, release: 1.25, amp: t
  sleep 1.5
  2.times do
    play :f5, amp: t
    sleep 0.5
    play :e5, amp: t
    sleep 0.5
  end
  play :c5, amp: t
  sleep 0.5
  play :a, release: 1.5, amp: t
  sleep 2
  play :a, amp: t
  sleep 1
  play :d, amp: t
  sleep 1
  play :f, amp: t
  sleep 0.5
  play :g, amp: t
  sleep 0.5
  play :a, release: 2.5, amp: t
  sleep 3
  play :a, amp: t
  sleep 1
  play :d, amp: t
  sleep 1
  play :f, amp: t
  sleep 0.5
  play :g, amp: t
  sleep 0.5
  play :e, release: 2.5, amp: t
  sleep 3
  
  2.times do
    play :d, amp: t
    sleep 0.5
    play :f, amp: t
    sleep 0.5
    play :d5, release: 1.5, amp: t
    sleep 2
  end
  play :e5, release: 1.25, amp: t
  sleep 1.5
  2.times do
    play :f5, amp: t
    sleep 0.5
    play :e5, amp: t
    sleep 0.5
  end
  play :c5, amp: t
  sleep 0.5
  play :a, release: 1.5, amp: t
  sleep 2
  play :a, amp: t
  sleep 1
  play :d, amp: t
  sleep 1
  play :f, amp: t
  sleep 0.5
  play :g, amp: t
  sleep 0.5
  play :a, release: 2.5, amp: t
  sleep 2
  play :a, amp: t
  sleep 1
  play :d, sustain: 2, release: 5.5, amp: t
  sleep 5
end

define :trebleoverlay do
  use_synth :pretty_bell
  2.times do
    play :d, amp: t
    sleep 0.5
    play :f, amp: t
    sleep 0.5
    play :d5, release: 1.5, amp: t
    sleep 2
  end
  play :e5, release: 1.25, amp: t
  sleep 1.5
  2.times do
    play :f5, amp: t
    sleep 0.5
    play :e5, amp: t
    sleep 0.5
  end
  play :c5, amp: t
  sleep 0.5
  play :a, release: 1.5, amp: t
  sleep 2
  play :a, amp: t
  sleep 1
  play :d, amp: t
  sleep 1
  play :f, amp: t
  sleep 0.5
  play :g, amp: t
  sleep 0.5
  play :a, release: 2.5, amp: t
  sleep 3
  play :a, amp: t
  sleep 1
  play :d, amp: t
  sleep 1
  play :f, amp: t
  sleep 0.5
  play :g, amp: t
  sleep 0.5
  play :e, release: 2.5, amp: t
  sleep 3
  
  2.times do
    play :d, amp: t
    sleep 0.5
    play :f, amp: t
    sleep 0.5
    play :d5, release: 1.5, amp: t
    sleep 2
  end
  play :e5, release: 1.25, amp: t
  sleep 1.5
  2.times do
    play :f5, amp: t
    sleep 0.5
    play :e5, amp: t
    sleep 0.5
  end
  play :c5, amp: t
  sleep 0.5
  play :a, release: 1.5, amp: t
  sleep 2
  play :a, amp: t
  sleep 1
  play :d, amp: t
  sleep 1
  play :f, amp: t
  sleep 0.5
  play :g, amp: t
  sleep 0.5
  play :a, release: 2.5, amp: t
  sleep 2
  play :a, amp: t
  sleep 1
  play :d, release: 5.5, amp: t
  sleep 6
end
#end defined functions

1.times do
  use_bpm intro
  introduction
end
=begin
live_loop :kick do
  sync :hihat

  sample g, amp: j
  sleep 3
end

live_loop :hihat do
  o=rrand(0.5,1)
  with_fx :hpf do
    sample h, amp: o #o is the random variable in this case randomizing between 0.5 and 1
    print o
    sleep 1
  end
end
=end
live_loop :bassclef do
  bassclef
end

live_loop :violins do
  sync :bassclef
  sample violins, rate: 0.68, amp: p
  sleep sample_duration violins
  sleep 1
end

sleep 24

live_loop :treblepiano do
  sync :bassclef
  treblepiano
end

sleep 48

live_loop :trebleoverlay do
  sync :bassclef
  trebleoverlay
  t=0
  j=0
  o=0
end
sleep 49
sleep sample_duration violins
p=0