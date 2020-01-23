#first attempts in controlling Processing visuals with output from Sonic Pi

use_synth :tb303
live_loop :os do
  nv=sync "/osc/notesend" #for Sonic PI 3 and later
  #puts nv #uncomment and comment next line to see OSC input
  #scale the mx and my values in nv[0] and nv[1] appropriately
  #raw mx 124(left)-516(right) and raw my 124 (top)-236(bottom
  puts (40+(nv[0]-124)/392*60).to_i.to_s+" "+(190-nv[1]/2).to_s
  play (40+(nv[0]-124)/392*60).to_i,cutoff: (190-nv[1]/2),sustain: 0.04,release: 0.01
  sleep 0.05
end
