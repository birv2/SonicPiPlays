use_bpm 64

live_loop :stepchords do
  #stop
  use_synth :dsaw
  with_fx :wobble do
    4.times do
      play chord(:e4, :minor),decay: 0.2, release: 0.01, amp: 0.9
      sleep 0.25
    end
    4.times do
      play chord(:g4, :major), decay: 0.2, release: 0.01, amp: 0.9
      sleep 0.25
    end
    4.times do
      play chord(:d4, :major), decay: 0.2, release: 0.01, amp: 0.9
      sleep 0.25
    end
    4.times do
      play chord(:e4, :minor),decay: 0.2, release: 0.01, amp: 0.9
      sleep 0.25
    end
  end
  
  
  
end

live_loop :beats do
  #stop
  sample :bd_haus, amp: 1.5
  sample :drum_cymbal_closed
  sleep 0.5
end

live_loop :melody do
  #stop
  use_synth :prophet
  
  
  12.times do
    play scale(:e3, :minor, num_octaves: 5).choose, amp: 1
    sleep (ring, 0.25, 0.75, 0.5).tick
  end
end












