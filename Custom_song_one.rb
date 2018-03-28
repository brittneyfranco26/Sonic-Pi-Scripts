#Cutsom_Song_1
# Brockhampton
# I really enjoy this artist, and I really wanted to put a few more songs from this artist so I decided to make two songs as my Custom Song
queersample1 ="/Users/brittneyfranco/Desktop/school/Computer Science/customsong1"
custom_part_i = queersample1
blech ="/Users/brittneyfranco/Desktop/school/Computer Science/customsong1/bleach"
custom_part_ii = blech
#The notes below are the chords for the second Song which is called Bleach. The code below will serve as Abstraction, since I couldn't find the notes of the song explicity they did provide the chords online.
use_bpm 79 # the Beats per minute
s=[3,3,3,3,1,3,1,1,3,3]
index=0
use_synth :pretty_bell
define :bleach_notes do #this is put as "define" because I will cal this code later, as you can see if you scroll below.
  2.times do
    play chord(:Fs, :minor)
    sleep s[index]
    play chord(:B,:major)
    sleep s[index]
    play chord(:Fs, :minor)
    sleep s[index]
    play chord(:Gs, :minor)
    sleep s[index]
    play chord(:B, :major)
    sleep s[index]
    play chord(:Fs,:minor)
    sleep s[index]
    play chord(:Gs,:minor)
    sleep s[index]
    play chord(:B,:major)
    sleep s[index]
    play chord(:Fs,:minor)
    sleep s[index]
    play chord(:Gs ,:minor)
    index=index+1
  end
  index=0
end
#I defined space, as space becasuse in audacity I intentionally left a space between the track so that I could include other noises that weren't from the samples
define :space do
  sample :vinyl_backspin, amp: 4
  sleep 1
  sample :ambi_swoosh, rate: 1.5, amp: 4
  sleep 1
  sample :vinyl_scratch, amp: 4
  sleep 1
end
#Drums with a live_loop
x=10
define :drums_for_cs1 do
  live_loop :drums_for_custom_sing do
    sample :bd_boom, amp: x
    sleep 3
    sample :drum_cymbal_closed,amp: x, rate: -1
    sleep 1
    x=x-1
    if x==0
      stop
    end
  end
end

# Here is where the music begins

sample custom_part_i, amp: 3 # This is playing the first song which is queer by brockhampton
play drums_for_cs1
sleep 27
play space #this is where there is space in the track that I filled up using other samples straight from sonic pi
sleep 35
play space#this is where there is space in the track that I filled up using other samples straight from sonic pi
play bleach_notes#this is where I called the notes from above
sample :ambi_lunar_land #this is another sample from sonic pi
sleep 0.1
sample custom_part_ii,cuttoff: rrand(0.5,3), amp: 3 # My cuttoff has a random variable