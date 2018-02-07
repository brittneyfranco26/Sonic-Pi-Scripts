feburary_7th=21
use_synth :piano
use_bpm 60
87.times do
  play feburary_7th
  sleep 0.25
  play feburary_7th=feburary_7th+1
end