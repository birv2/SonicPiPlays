#experiment to get my midi controller working with Sonic Pi
live_loop :midicheck do
  #use_real_time
  use_sched_ahead_time 0.0001
  note, velocity = sync "/midi/arturia_minilab_mkii/0/1/note_on"
  synth :tb303, note: note, amp: velocity / 127.0
end

live_loop :beats do
  sample :bd_klub
  sleep 0.5
end








