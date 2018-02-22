#Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4
use_bpm 160
use_synth :saw
stranger_things = [:c2,:e2,:g2,:b2,:c3,:b2,:g2,:e2]
index = 0
live_loop :theme_intro do
  with_fx :distortion do
    8.times do
      #Will play the first variable which is c2
      play stranger_things[index]
      sleep 0.5
      index= index + 1
      #will then play the following variables which are in the array above
     end
   index =0
  end
end
