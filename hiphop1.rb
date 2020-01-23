#pretty sure this is from mehackit amazing website

use_bpm 90

live_loop :biitti do
  stop
  sample :bd_808, rate: 2, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1
  sample :bd_808, rate: 2, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1
end

live_loop :luuppi do
  #stop
  sample :loop_breakbeat, beat_stretch: 4
  sleep 4
end

live_loop :kitaramelodia do
  stop
  sample :guit_e_fifths, rate: 0.5, amp: 1.5
  sample :guit_e_fifths, rate: 1, amp: 0.8
  sleep 1.5
  sample :guit_e_fifths, rate: 1.5, amp: 0.8
  sleep 1.5
  sample :guit_e_fifths, rate: 1.4, amp: 0.8
  sleep 3
  sample :guit_e_slide, rate: 1, amp: 0.8
  sleep 2
end

live_loop :hihat do
  #stop
  16.times do
    sample :elec_cymbal, start: 0.05, finish: 0.4, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.125
  end
  4.times do
    sample :elec_cymbal, start: 0.05, finish: 0.6, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.25
  end
  16.times do
    sample :elec_cymbal, start: 0.1, finish: 0.3, rate: 3, amp: 0.5 + rrand(-0.1, 0.1)
    sleep 0.0625
  end
end






