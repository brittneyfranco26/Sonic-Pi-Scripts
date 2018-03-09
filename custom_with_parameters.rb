=begin

DIRECTIONS: Remix this synth sound + drum beat using variables to increase the efficiency of the code.

=end

use_bpm 125

song1 = [:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3]
song2 =[:ab4,:as4,:bs4,:as4,:cs5,:bs4,:es5,:eb5]
index = 0
x=1

define :custom do |n,b|
  #'n' and 'b' work as variables or in computer science terms they serve as parameters, so I can place a number or note of my choosing in place of that parameter.In my case the number that I choose for 'n' will be the sleep and the number that should be added to the index.
  with_fx :distortion do
    20.times do
      #Will play the first variable which is c2
      play song1[index]
      sleep n
      index= index + b
      #will then play the following variables which are in the array aboven
      
      
    end
    index=0
  end
end
use_synth :dtri
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
use_synth :dpulse
play custom 0.5,1 ,attack: 0.7
play custom 0.55,1
#So in the line above I have placed a number as the two parameters 0.5 will take the place of n and 1 will take the place of b.