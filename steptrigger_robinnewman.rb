use_bpm 120
use_synth :dsaw
use_synth_defaults attack: 0.125, sustain: 1.5, release: 1
chords = (ring
          (chord :d, :m7),
          (chord :d, :m7),
          (chord :g, :sus4),
          (chord :g, :dom7, invert: -1),
          (chord :c, :maj9),
          (chord :c, :maj9),
          (chord :a, :minor7, invert: -1),
          (chord :a, :minor7, invert: -2))

live_loop :chordees do
  with_fx :slicer do
    play chords.tick
  end
  sleep 2
end
