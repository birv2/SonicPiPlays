use_bpm 90

live_loop :pads do
  #stop
  use_synth :tb303
  2.times do
    play(chord :a3,:minor), attack: 3.0
    sleep 4
    play(chord :f3, :major), attack: 0.05, sustain: 1.5
    sleep 4
  end
  2.times do
    play(chord :g3, :major), attack: 3.0
    sleep 4
    play(chord :f3, :major), attack: 0.05, sustain: 1.5
    sleep 4
  end
end

live_loop :drums do
  #stop
  with_fx :reverb, mix: 0.6 do
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
  #stop
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 1
end

#live_loop :melody do


