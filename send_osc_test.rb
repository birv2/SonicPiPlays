use_osc "localhost", 57110
osc "/play/note", :c4, :tb303, 0.5, 0.2


live_loop :pl do
  use_real_time
  n, synth, dur, vol = sync "osc/play/note"
  use_synth synth
  play n, release: dur, amp: vol
  #sleep 1
end
sleep 1

osc "play/chord", :c4, :e4, :g4, :fm, 2.0, 0.8

live_loop :pc do
  use_real_time
  n1,n2,n3,synth, dur, vol = sync "osc/play/chord"
  
  use_synth synth
  play [n1,n2,n3], release: dur, amp: vol
end
















