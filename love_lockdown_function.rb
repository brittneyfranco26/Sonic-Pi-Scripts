#Love Lockdown Custom Sample + Functions
=begin

TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.

TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.

=end
love_lockdown_full_song = "/Users/brittneyfranco/Desktop/school/Computer Science/sonic_pi_challenge_7_custom_samples 3"
love_lockdown = "/Users/brittneyfranco/Desktop"
custom_1 = "/Users/brittneyfranco/Desktop/school/Computer Science"

use_bpm 120
use_synth :dtri
use_synth_defaults cutoff: 80
task1 = love_lockdown
custom = custom_1
origin = love_lockdown_full_song
sample_used = :bd_808
x=0
y=1

define :task2 do
  with_fx :distortion do
    sample custom
    sleep 32
  end
end

live_loop :drum_beat do
  sample sample_used, amp: 2
  sleep 0.5
  sample sample_used, amp: 2
  sleep 1.5
  sample sample_used, amp: 2
  sleep 2
end

# use a variable so that each time the live_loop repeats itself the volume of the synth increases in amplitude (start the amplitude at 0 so it is inaudible to start!)
live_loop :synth_sound do
  play :cs2
  sleep 0.5
  play :cs2
  sleep 0.5
  play :e2, sustain: 0.5
  sleep 1
  # play two notes concurrently (at the same time)
  play :cs2, sustain: 1, detune: 0.12
  play :cs1, sustain: 1
  sleep 2
end

live_loop :kanye_vocals do
  sample task1, amp: 3
  sleep 16 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end
5.times do
  play task2
  sleep 16
end