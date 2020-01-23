use_bpm 120

live_loop :drums do
  #stop
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_soft
  sleep 1
end

live_loop :bass do
  #stop
  sync :drums
  use_synth :fm
  play :c2, amp: 5
  sleep 0.25
  play :d2, amp: 5
  sleep 0.5
  play :e2, amp: 5
  sleep 0.5
end

live_loop :tune do
  #stop
  sync :drums
  use_synth :blade
  play chord(:a4, :minor).choose
  sleep 0.5
end







