# Imperial March 1st Bar
#Sheet Music:https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0017607
#Right Hand
#BPM used :https://songbpm.com/imperial-march?q=Imperial%20March
use_bpm 95
live_loop :darthvader1 do
  use_synth :dpulse
  play chord(:G,:minor)
  play :G4
  sleep 1
  play :G4
  sleep 1
  play :G4
  sleep 1
  play :E4
  sleep 0.75
  play :B4
  sleep 0.50
  #Measure 2
  play :G4
  sleep 1
  play :E4
  sleep 0.75
  play :B4
  sleep 0.50
  play :G4
  sleep 2
  # Third Measure
  play :D5
  sleep 1
  play :D5
  sleep 1
  play :D5
  sleep 1
  play :E5
  sleep 0.75
  play :B4
  sleep 0.50
  #Measure 4
  play :Gb4
  sleep 1
  play :E4
  sleep 0.75
  play :B4
  sleep 0.50
  play :G4
  sleep 2
end
#Left Hand
live_loop :darthvader2 do
  use_synth :dpulse
  play :B3
  play :G3
  sleep 1
  play :B3
  play :G3
  sleep 1
  play :B3
  play :G3
  sleep 1
  play :Gb3
  play :Eb3
  sleep 1.25
  #2ND MEASURE
  play :B3
  play :G3
  sleep 1
  play :Gb3
  play :Eb3
  sleep 1
  play :B3
  play :G3
  sleep 1
  play :B3
  play :G3
  sleep 1
  #Third Measure
  play :B3
  play :G3
  sleep 1
  play :B3
  play :G3
  sleep 1
  play :B3
  play :G3
  sleep 1
  play :Gb3
  play :Eb3
  sleep 1
  #Fouth Measure
  play :Gb3
  play :Eb3
  sleep 1
  play :Gb3
  play :Eb3
  sleep 1
  play :B3
  play :G3
  sleep 1
  play :B3
  play :G3
  sleep 1
end
live_loop :drums do
  sample :bass_drop_c
  sleep 1.1
end
live_loop :hauommmhm do
  sample:ambi_choir,rate: 0.5
  sleep 2
end