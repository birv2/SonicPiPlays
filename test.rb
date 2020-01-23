

live_loop :nation do
  use_bpm 62
  use_synth :pluck
  use_transpose -3
  play 59
  sleep 0.75
  play 59
  sleep 0.4
  play 62
  sleep 0.4
  play 59
  sleep 0.4
  play 57
  sleep 0.4
  play 55, sustain: 0.75
  sleep 1.3
  play 54
  sleep 1
end

