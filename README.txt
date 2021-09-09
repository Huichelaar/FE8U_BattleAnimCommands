Hiya. This thing can be used to assign new effects to battle animation commands 0x7C and up. You can add your 
command to the list in "Commands/Commands.event". There's another list for playing sound effects here as well. 
Take a look at some vanilla command implementations to see how it works. If you add any commands, make sure to 
increase the value of the CommandCount variable in "BattleAnimCommands.event"

This version comes with three new commands taking up slot 0x7C-0x7E.
  - C7C is basically the same as C2E, but the rune's palette is more reddish instead of blue.
  - Analogous to above for C7D and C2F.
  - C7E plays a sound effect by using a charID as index to a table. This table consists of two songID (size short) 
  per entry: one for the melee critical animation, another for the ranged critical animation. If C7E is used during 
  a different mode (dodge, regular melee, etc.) no sound will play. If the songID is -1 (0xFFFF) no sound will play. 
  You can find the table in "Commands/VoiceCommand/VoiceCommand.event". You can use the 
  VoiceCommandTableEntry(charID, meleeSongID, rangedSongID) macro to change entries in the table.

21/5/2021. This fortunately only took a day. I had fun making this. I'll try experimenting with more custom 
commands at some other point in time.

7/9/2021. Added a command for playing a sound effect based on the charID of the unit performing the anim.

Credits to me, Huichelaar.