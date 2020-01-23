#original work
#stops are for bringing loops in and out during live coding

live_loop :chords do
  #stop
  use_synth :fm
  2.times do
    2. times do
      play :f4, attack: 0.5, decay: 0.25
      play :a4, attack: 0.5, decay: 0.25
      play :c4, attack: 0.5, decay: 0.25
      sleep 2
    end
    
    2. times do
      play :e4, attack: 0.75, release: 1
      play :a4, attack: 0.75, release: 1
      play :c4, attack: 0.75, release: 1
      sleep 2
    end
  end
  2.times do
    2. times do
      with_fx :reverb, mix: 0.6, room: 0.6 do
        play :d4, attack: 0.5
        play :a4, attack: 0.5
        play :c4, attack: 0.5
        sleep 2
      end
    end
    
    2. times do
      with_fx :reverb, mix: 0.6, room: 0.6 do
        play :c3, attack: 0.5
        play :a4, attack: 0.5
        play :c4, attack: 0.5
        sleep 2
      end
    end
    
  end
end

live_loop :beats do
  #stop
  sample :bd_haus
  sleep 0.25
  sample :drum_tom_hi_hard
  sleep 0.25
  sample :drum_tom_hi_hard
  sleep 0.25
  sample :bd_haus
  sleep 0.25
  
end

live_loop :bass do
  #stop
  use_synth :sine
  play chord(:f3, :minor, num_octaves: 3).choose, amp: 0.5
  sleep (ring, 0.75, 0.25, 0.5, 1).tick
end












