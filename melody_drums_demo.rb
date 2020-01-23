#playing with syncing melody and drums

live_loop :drums, sync: :melody do
  sample :bd_haus
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :sn_dub
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
end

live_loop :melody do
  use_synth :saw
  use_random_seed 163
  12.times do
    play scale(:d3, :minor, num_octaves: 3).choose, amp: 0.5
    sleep (ring, 0.25, 0.25, 0.5, 1.0).tick
  end
end









