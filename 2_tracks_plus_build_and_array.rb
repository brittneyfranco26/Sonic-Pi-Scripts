=begin

DIRECTIONS: Remix this synth sound + drum beat using variables to increase the efficiency of the code.

=end

use_bpm 123
use_synth :dtri

# here's a variable to start you off; feel free to delete the line below and use your own!
x = 0
12.times do
  sample :drum_cymbal_soft, amp: x
  sleep 0.5
  sample :drum_cymbal_soft, amp: x
  sleep 0.5
  sample :drum_cymbal_soft, amp: x
  sleep 0.5
  play :rest, sustain: 1
  x = x + 0.3
end


use_synth :dpulse
song1 = [:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,]
song2 =[:ab4,:as4,:bs4,:as4,:cs5,:bs4,:es5,:eb5]
index = 0
2.times do
  use_synth :fm
  with_fx :echo do
    8.times do
      play song2[index]
      sleep 0.45
      index=index+1
      print index
    end
    index=0
  end
end

live_loop :intro do
  with_fx :distortion do
    20.times do
      #Will play the first variable which is c2
      play song1[index]
      sleep 0.5
      index= index + 1
      #will then play the following variables which are in the array aboven
      print index
      
    end
    index=0
  end
end

2.times  do
  sample :drum_snare_soft
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
  sample :drum_snare_soft,sustain: 0.5
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
end
2.times  do
  sample :drum_snare_soft
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
  sample :drum_snare_soft,sustain: 0.5
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
end

3.times do
  sample :drum_splash_hard
  sleep 1
end
