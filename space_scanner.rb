use_synth :tb303
#with_fx :reverb, room: 1 do

live_loop :space_scanner do
  play :e1, cutoff: 100, release: 7, attack: 1, cutoff_attack: 4, cutoff_release: 4
  sleep 8
end




