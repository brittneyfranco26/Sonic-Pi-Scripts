=begin

DIRECTIONS: Remix this synth sound + drum beat using variables to increase the efficiency of the code.

=end

use_bpm 125
use_synth :dtri
# here's a variable to start you off; feel free to delete the line below and use your own!
x = 0

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
use_synth :dpulse
song = [:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3]
index = 0


with_fx :distortion do
  20.times do
    #Will play the first variable which is c2
    play song[index]
    sleep 0.5
    index= index + 1
    #will then play the following variables which are in the array aboven
    
    
  end
  index=0
end

