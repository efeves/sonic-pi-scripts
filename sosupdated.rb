#Song name is Song of Storms from the legend of Zelda 
#find it here: https://musescore.com/user/4957541/scores/1545401
#Song bpm was found here: https://musescore.com/user/4957541/scores/1545401

use_bpm 170
h = :drum_snare_soft
intro = 120
t=1
j=0.25
g= :drum_bass_hard
array = [:a, :d, :f]
sleeps = [1, 1, 0.5]
i=0
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
  play array[0] #these lines are for the array; i was getting an error when i tried to include it in a loop. I orriginally tried to put it in the 2.times do loop, but an error challenged the play ("array cannot be in a number loop" or something like that)
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

live_loop :kick do
  sync :hihat
  sample g, amp: j
  sleep 3
end

live_loop :hihat do
  with_fx :hpf do
    sample h, amp: t
    sleep 1
  end
end

live_loop :bassclef do
  bassclef #use defined function
end

sleep 24

live_loop :treblepiano do
  sync :bassclef
  treblepiano #use defined function
end

sleep 48

live_loop :trebleoverlay do
  sync :bassclef
  trebleoverlay #use defined function
  t=0
  j=0
end

