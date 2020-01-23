use_bpm 110

live_loop  :chords do
  with_fx :echo, phase: 0.3, decay: 5 do
    4.times do
      play (chord :e, :minor)
      #sleep [0.5, 0.25, 1.5, 1].choose
      sleep 1
    end
    4.times do
      play (chord :g, :major)
      sleep 1
    end
    4.times do
      play (chord :d, :minor)
      sleep 1
    end
    4.times do
      play (chord :g, :major)
      sleep 1
    end
  end
  
end

live_loop :beats, sync: :chords do
  #stop
  sample :bd_boom
  sleep 0.5
  sample :bd_boom
  sleep 0.5
  sample :drum_tom_hi_soft
  sleep 0.5
  sample :drum_tom_lo_soft
  sleep 0.5
end

live_loop :melody, sync: :chords do
  #stop
  use_synth :dsaw
  play chord( :e2, :minor).tick, amp: 0.2
  sleep 0.5
end

live_loop :highmelody, sync: :chords do
  #stop
  use_synth :mod_fm
  play chord(:a5, :minor).choose, amp: 0.25
  sleep 0.5
end









