use_bpm 60
live_loop :break do
  sample :loop_breakbeat, beat_stretch: 2
  sleep 2
end

live_loop :beat do
  sample :drum_tom_mid_hard, beat_stretch: 2
  sleep 4
end

live_loop :cymb do
  with_fx :wobble, mix: 0.8 do
    sample :drum_splash_soft, beat_stretch: 2
    sleep 8
  end
end


live_loop :bmika do
  sample :loop_mika, beat_stretch: 8, amp: 0.25
  sleep 8
end



