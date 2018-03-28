#Introduction

use_bpm 100
#BPM



#Let Me Know Song Project
introduction_track = "/Users/brittneyfranco/Desktop/school/Computer Science/samples"
lmk_looped_vocals = "/Users/brittneyfranco/Desktop/school/Computer Science/Otherfolderformusic"
xdf1RneEDjQf= "/Users/brittneyfranco/Desktop"
intro= introduction_track
j = lmk_looped_vocals
movin=xdf1RneEDjQf

# Brock_Hampton
queer_remix_for_Sonic_pi = "/Users/brittneyfranco/Desktop/school"
the_next = queer_remix_for_Sonic_pi

#Vampires intro
vampiro="/Users/brittneyfranco/Downloads/Vampires_data"
second_try = vampiro


# Introduction to Mix
sample :vinyl_hiss #Start off my song with the vinyl record hiss
sample second_try # very soft Background Build from the Song Vampires by the Midnight
sample intro, amp: 3.5  #Introduction of the Normal LMK song by Kelelela with an amplitude of 3
sleep 25# The Next Sample with wait 25 seconds
sample :vinyl_rewind #the sample Vinyl rewind, so it will act as if the music that is is being played backwards then it will move to the remix of the LMK song.
sleep 3 #Remix will wait three seconds
sample movin, amp: 6 # Remix of orginal song will play with an amplitude of 6
sleep 14 #The next sample wil wait 14 seconds
sample :vinyl_rewind,rate: -1, attack: 4, amp: 5,sustain: 3#Vinyl rewind will be played backwards becuase the rate is negative 1. With an amplitude of 5, and will stay/ sustain for three seconds
sleep 12# Next Sample will wait 12 seconds.
sample the_next, amp: 3, sustain: 8.2# Introduction of Brockhamptons begins, with an amplitude of 3 and will sustain for eight point two seconds.



