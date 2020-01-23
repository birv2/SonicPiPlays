
in_thread do
  loop do
    cue :tick
    sleep 0.5
  end
end

live_loop :bam do
  sample :bd_ada, amp: 3
  sample :drum_snare_soft, amp: 0.75, cutoff: 100
  sleep 0.5
  
end

live_loop :offbeat do
  #stop
  sync :tick
  sample :drum_cymbal_closed
  sleep 0.25
end

live_loop :tom do
  #stop
  sync :tick
  sample :drum_snare_soft, amp: 0.75, cutoff: 90
  sleep 0.5
end






