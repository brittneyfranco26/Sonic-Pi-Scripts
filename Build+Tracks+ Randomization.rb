=begin
Two Tracks + Build + Randomization
Song 1 is uses the first 25 Left hand notes from Livin on Prayer https://musescore.com/user/1446466/scores/2632311, Song 2 Uses the the first 8 notes of Only Girl (in the World), https://musescore.com/user/14420686/scores/4817489

=end

use_bpm 123
use_synth :dtri

# x is my variable that stands for zero, below you can see that it slowly increments by 0.3
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


use_synth :chipbass
song1 = [:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,:e2,:e3,:b2,:d3,:e2,:e2,:b2,:d3,] #These are the notes for Livin on Prayer
song2 =[:ab4,:as4,:bs4,:as4,:cs5,:bs4,:es5,:eb5] # These notes are for Only Girl
index = 0

2.times do
  use_synth :chipbass
  with_fx :echo do
    8.times do
      play song2[index],cuttoff: rrand(30,105),amp: 0.5
      sleep 0.5
      index=index+1
    end
    index=0
  end
end

live_loop :intro do
  with_fx :distortion do
    20.times do
      #Will play the first variable which is e2
      play song1[index],cuttoff: rrand(25,40),amp: 1
      sleep 0.5
      #will then play the following variables which are in the array aboven
      index=index+1
      
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

