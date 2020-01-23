#Doomy NIN stuff

use_bpm 50

live_loop :kicks do
  #stop
  with_fx :reverb, mix: 0.5 do
    
    sample :drum_heavy_kick, lpf: 70, amp: 8
    sleep 0.25
    sample :drum_heavy_kick, lpf: 70, amp: 8
    sleep 0.75
    sample :drum_heavy_kick, lpf: 70, amp: 8
    sleep 1
  end
end



live_loop :bass do
  #stop
  use_synth :prophet
  play :e2, release: 8, cutoff: rrand(60, 120)
  sleep 8
end


live_loop :tune do
  #stop
  with_fx :echo, decay: 8  do
    use_synth :tb303
    play chord(:e6, :minor).choose, amp: 0.25, hpf: 80
    sleep 8
  end
  
end

live_loop :snares do
  #stop
  sync :kicks
  sample :elec_lo_snare
  sleep 1
end

