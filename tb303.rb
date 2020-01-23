
#snippet to play with tb303 synth and get an acid sound
use_synth :tb303
live_loop :squelch do
  n = (ring :e1, :f2, :g3).tick
  play n, release: 0.125, cutoff: 110, res: 0.8, wave: 0
  sleep 0.125
end


