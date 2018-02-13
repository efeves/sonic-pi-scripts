#Song name is Song of Storms from the legend of Zelda 
#find it here: https://musescore.com/user/4957541/scores/1545401
#Song bpm was found here: https://musescore.com/user/4957541/scores/1545401

use_bpm 170
h = :drum_snare_soft
intro = 120

1.times do
  use_bpm intro
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
  play :a
  sleep 1
  play :d
  sleep 1
  play :f
  sleep 0.5
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

live_loop :hihat do
  with_fx :hpf do
    sample h
    sleep 1
  end
end

live_loop :bassclef do
  use_synth :piano
  play :d2
  sleep 1
  2.times do
    play :f3
    play :a4
    sleep 1
  end
  play :e2
  sleep 0.5
  play :e3
  sleep 0.5
  play :g, release: 1.5
  play :b4, release: 1.5
  sleep 2
  play :f2
  sleep 1
  2.times do
    play :g4
    play :c5
    sleep 1
  end
  play :e2
  sleep 0.5
  play :e3
  sleep 0.5
  play :g, release: 1.5
  play :b4, release: 1.5
  sleep 2
end

sleep 24

live_loop :treblepiano do
  sync :bassclef
  use_synth :pretty_bell
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

sleep 48

live_loop :trebleoverlay do
  sync :bassclef
  use_synth :subpulse
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
  play :d, release: 5.5
  sleep 6
end
