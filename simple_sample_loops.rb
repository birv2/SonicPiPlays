live_loop :cymbals do
  sample :drum_cymbal_closed
  sleep 0.75
end

live_loop :bass do
  with_fx :ixi_techno, amp: 1.5 do
    play 44
    sleep 0.25
    play 46
    sleep 0.25
    play 48
    sleep 0.25
    play 46
    sleep 0.25
  end
end

live_loop :house do
  use_synth :dsaw
  sample :bd_ada, amp: 4
  sleep 1
end



