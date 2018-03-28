#Transition to Custom Song2
sample :vinyl_hiss,sustain: 3
sleep 0.5
sample :vinyl_rewind
sample :ambi_glass_hum, sustain: 5
sleep 1
sample :ambi_soft_buzz,sustain: 5
sleep 1
sample :ambi_drone,sustain: 5
sleep 1
sample :ambi_dark_woosh,sustain: 5
sample :ambi_swoosh,sustain: 5

#CUSTOM SONG2
Vampires_Custom_2 ="/Users/brittneyfranco/Desktop/school/Computer Science/Customsong2"
cs2_part_i = Vampires_Custom_2
x=5
define :drums_loop do
  live_loop :boom_boom do
    sample :bd_boom, amp: x
    sleep 0.5
    sample :bd_boom, amp: x
    x=x-0.5
    if x==0
      stop
    end
  end
  x=5
end
Kelela_Rewind_for_sonic_pi="/Users/brittneyfranco/Desktop/school/Computer Science/Customsong2/Partii"
cs2_partii=Kelela_Rewind_for_sonic_pi
b=0
define :rewind_notes do
  live_loop :boop_bop do
    use_bpm 132
    play chord(:Ab, :major), sustain: 4,amp: b
    sleep 1
    play chord(:Eb,:minor),amp: b
    sleep 1
    play chord(:B, :major),amp: b
    sleep 1
    play chord(:E, :major), sustain: 3.5, amp: b
    sleep 1
    play chord(:B, :major),sustain: 3.5, amp: b
    sleep 1
    play chord(:Gb,:major),amp: b
    sleep 1
    play chord(:Eb,:minor),sustain: 3.5,amp: b
    sleep 1
    play chord(:B,:major),amp: b
    sleep 1
    play chord(:E,:major),sustain: 3.5, amp: b
    sleep 1
    play chord(:B,:major),sustain: 3.5, amp: b
    b= b + 0.05
    if b==1
      stop
    end
  end
end
#Here are my call to actions and where the Custom Song2 Begins
use_synth :zawa
play drums_loop
sleep 1
play :G2, sustain: 5, detune: 0.6
sample cs2_part_i, amp: 4
sleep 16
sample :vinyl_backspin, sustain: 1.5, amp: 5
#Hereis where the rewind notes where before
sleep 68
sample :bd_boom, amp: 4
sample :vinyl_scratch, sustain: 1.5,amp: 5
sample :ambi_swoosh,sustain: 1.5, amp: 5
play rewind_notes,cuttoff: rrand(1,10)
sleep 24
sample :vinyl_backspin,sustain: 3 
sample :ambi_lunar_land
sleep 0.5
sample cs2_partii,amp: 5
sleep 40.5
play drums_loop
sample :vinyl_rewind, sustain: 1.5
sleep 31
sample :vinyl_scratch,sustain: 1.5
sleep 0.1
sample :vinyl_rewind, rate: -1, sustain: 1.5
