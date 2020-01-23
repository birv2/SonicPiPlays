#demo of slicer effect with a chord
use_bpm 120
live_loop :slicey do
  use_synth :tb303
  with_fx :slicer do
    play choose(chord(:E2, :minor))
    sleep 0.5
  end
end




