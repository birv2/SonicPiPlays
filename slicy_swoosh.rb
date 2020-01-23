use_bpm 110

live_loop :beats do
  sample :bd_mehackit
  sleep 1
  sample :bd_sone
  sleep 0.5
  sample :bd_sone
  sleep 0.5
  
end

live_loop :bass, sync: :beats do
  #stop
  with_fx :echo do
    use_synth :hollow
    play :e2
    sleep 0.5
    play :f2
    sleep 0.75
    play :g2
    sleep 0.75
    
  end
end


live_loop :swoosh, sync: :beats do
  #stop
  with_fx :slicer, phase: 2, wave: 1, mix: 0.25 do
    sample :ambi_lunar_land, amp: 2
    sleep 4
  end
end

live_loop :chords, sync: :beats do
  stop
  use_synth :chiplead
  play_pattern_timed chord(:e2, :m7), [1, 1.5], amp: 0.7, attack: 2, sustain: 1
  
end





