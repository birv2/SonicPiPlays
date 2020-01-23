use_bpm 100

live_loop :drums do
  #stop
  with_fx :reverb, mix: 0.5 do
    sample :drum_heavy_kick
    sleep 1
    sample :elec_mid_snare
    sleep 1
    sample :drum_heavy_kick
    sleep 1
    sample :elec_mid_snare
    sleep 1
  end
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 1
end

live_loop :pads do
  use_synth :tb303
  with_fx :echo, phase: 0.75 do
    play :a3
    play :e3
    play :c3
  end
  sleep 8
end



