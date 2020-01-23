live_loop :stepchords do
  #stop
  use_synth :prophet
  #with_fx :lpf, cutoff: 50 do
  4.times do
    play chord(:e4, :minor),decay: 0.2, release: 0.2, amp: 0.5
    sleep 0.25
  end
  4.times do
    play chord(:g4, :major), decay: 0.2, release: 0.2, amp: 0.5
    sleep 0.25
  end
  4.times do
    play chord(:d4, :major), decay: 0.2, release: 0.2, amp: 0.5
    sleep 0.25
  end
  4.times do
    play chord(:e4, :minor),decay: 0.2, release: 0.2, amp: 0.5
    sleep 0.25
  end
  #end
  
  
  
end

live_loop :beats do
  sample :bd_haus
  sleep 0.5
end

live_loop :melody do
  use_synth :saw
  use_random_seed 94
  
  with_fx :lpf, cutoff: 100 do
    12.times do
      play scale(:e3, :minor, num_octaves: 3).choose, lpf: 40,amp: 0.3
      sleep (ring, 0.25, 0.25, 0.5).tick
    end
  end
  
end











